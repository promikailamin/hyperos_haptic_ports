#!/usr/bin/env python3
"""Parse baksmali output and inventory haptic/vibration APIs and consumers."""
import os, re, json, sys
from collections import defaultdict, Counter

ROOT = os.path.dirname(os.path.abspath(__file__))
SMALI = os.path.join(ROOT, "smali")

VERSIONS = {
    "android13": ["source13/framework", "source13/services"],
    "android16": ["target16/framework", "target16/services"],
}

HAPTIC_CLASS_RE = re.compile(r"(?:^|/)(?:[^/]*(?:vibrat|haptic)[^/]*)(?:\.smali)?$", re.I)
CLASS_LINE_RE = re.compile(r"^\.class\s+(.*)$")
SUPER_RE = re.compile(r"^\.super\s+(\S+)")
IFACE_RE = re.compile(r"^\.implements\s+(\S+)")
METHOD_RE = re.compile(r"^\.method\s+(.+)$")
FIELD_RE = re.compile(r"^\.field\s+(.+)$")
ANNOT_RE = re.compile(r"^\.annotation\s+(?:runtime|system|build)\s+(\S+)")
SOURCE_RE = re.compile(r'^\.source\s+"(.*)"')
INVOKE_RE = re.compile(r"^\s*invoke-\S+\s+\{[^}]*\},\s*L([^;]+);->([^\(]+)\((.*?)\)(\S+)")
REF_RE = re.compile(r"L(android/(?:os|view|hardware|media|provider|content|app|widget)/[^;]*(?:Vibrat|Haptic)[^;]*);")

ACCESS = ("public", "private", "protected", "static", "final", "abstract", "synthetic", "bridge", "native", "constructor", "varargs", "declared-synchronized", "strictfp", "transient", "volatile", "enum", "interface", "annotation")

def parse_smali(path):
    cls = {"file": path, "methods": [], "fields": [], "annotations": [], "refs": set(), "invokes": []}
    cur_method = None
    in_annotation = False
    ann_target = None
    try:
        with open(path, "r", errors="replace") as f:
            for line in f:
                line = line.rstrip("\n")
                m = CLASS_LINE_RE.match(line)
                if m:
                    toks = m.group(1).split()
                    cls["access"] = [t for t in toks if t in ACCESS]
                    names = [t for t in toks if t.startswith("L") and t.endswith(";")]
                    cls["name"] = names[-1][1:-1].replace("/", ".") if names else "?"
                    cls["desc"] = names[-1] if names else "?"
                    continue
                m = SUPER_RE.match(line)
                if m:
                    cls["super"] = m.group(1)[1:-1].replace("/", ".") if m.group(1).startswith("L") else m.group(1)
                    continue
                m = IFACE_RE.match(line)
                if m:
                    cls.setdefault("interfaces", []).append(m.group(1)[1:-1].replace("/", "."))
                    continue
                m = SOURCE_RE.match(line)
                if m:
                    cls["source"] = m.group(1)
                    continue
                m = METHOD_RE.match(line)
                if m:
                    body = m.group(1)
                    toks = body.split()
                    sig = toks[-1]
                    mods = toks[:-1]
                    sm = re.match(r"(.+)\((.*?)\)(.*)$", sig)
                    if sm:
                        name, params, ret = sm.groups()
                    else:
                        name, params, ret = sig, "", ""
                    cur_method = {"name": name, "params": params, "ret": ret,
                                  "access": [t for t in mods if t in ACCESS or t.startswith("greylist") or t == "whitelist" or t == "blacklist"],
                                  "annotations": [], "line": None}
                    cls["methods"].append(cur_method)
                    in_annotation = False
                    continue
                if cur_method is not None:
                    m = ANNOT_RE.match(line)
                    if m:
                        ann_target = cur_method
                        ann_target["annotations"].append(m.group(1))
                        in_annotation = True
                        continue
                    m = re.match(r"^\s*\.line\s+(\d+)", line)
                    if m and cur_method.get("line") is None:
                        cur_method["line"] = int(m.group(1))
                    if line.strip() == ".end method":
                        cur_method = None
                    continue
                m = FIELD_RE.match(line)
                if m:
                    body = m.group(1)
                    toks = body.split()
                    spec = toks[-1] if "=" not in body else body.split("=")[0].split()[-1]
                    if ":" in spec:
                        fname, ftype = spec.split(":", 1)
                    else:
                        fname, ftype = spec, ""
                    value = None
                    if "=" in body:
                        value = body.split("=", 1)[1].strip()
                    cls["fields"].append({"name": fname, "type": ftype,
                                          "access": [t for t in toks if t in ACCESS or t in ("whitelist", "blacklist") or t.startswith("greylist")],
                                          "value": value})
                    continue
    except Exception as e:
        print("ERR", path, e, file=sys.stderr)
    return cls

def is_haptic_name(name):
    return bool(re.search(r"vibrat|haptic", name, re.I))

def is_haptic_class(cls):
    return is_haptic_name(cls.get("name", "")) or is_haptic_name(os.path.basename(cls["file"]))

def main():
    classes = {}
    haptic_classes = {}
    consumers = []
    refs_by_caller = defaultdict(lambda: defaultdict(set))
    for ver, dirs in VERSIONS.items():
        classes[ver] = {}
        haptic_classes[ver] = {}
        for d in dirs:
            base = os.path.join(SMALI, d)
            for dp, _, files in os.walk(base):
                for fn in files:
                    if not fn.endswith(".smali"):
                        continue
                    p = os.path.join(dp, fn)
                    c = parse_smali(p)
                    if "name" not in c:
                        continue
                    c["version"] = ver
                    c["jar"] = d.split("/")[-1]
                    classes[ver][c["name"]] = c
                    if is_haptic_class(c):
                        haptic_classes[ver][c["name"]] = c
                    # collect haptic invocations / refs
                    with open(p, "r", errors="replace") as f:
                        txt = f.read()
                    if re.search(r"vibrat|haptic", txt, re.I):
                        invs = set()
                        for mm in INVOKE_RE.finditer(txt):
                            tgt = mm.group(1).replace("/", ".")
                            if is_haptic_name(tgt):
                                invs.add((tgt, mm.group(2), mm.group(3), mm.group(4)))
                        refs = set(x.replace("/", ".") for x in REF_RE.findall(txt))
                        if invs or refs:
                            consumers.append({"version": ver, "caller": c["name"], "file": p,
                                              "invokes": sorted(invs), "refs": sorted(refs)})
    # dump
    out = {
        "haptic_classes": {
            ver: {n: {"name": n, "super": c.get("super"), "interfaces": c.get("interfaces", []),
                       "access": c.get("access"), "jar": c["jar"], "source": c.get("source"),
                       "methods": c["methods"], "fields": c["fields"], "annotations": c["annotations"]}
                  for n, c in hs.items()} for ver, hs in haptic_classes.items()
        },
        "consumers": consumers,
        "counts": {ver: {"classes": len(classes[ver]), "haptic_classes": len(haptic_classes[ver]),
                          "consumers": sum(1 for x in consumers if x["version"] == ver)}
                    for ver in VERSIONS},
    }
    with open(os.path.join(ROOT, "inventory.json"), "w") as f:
        json.dump(out, f, indent=1)
    for ver in VERSIONS:
        print(ver, out["counts"][ver])
    # quick list
    for ver in VERSIONS:
        print("\n==", ver)
        for n in sorted(haptic_classes[ver]):
            print(n)

if __name__ == "__main__":
    main()
