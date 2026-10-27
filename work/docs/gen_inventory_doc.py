#!/usr/bin/env python3
"""Generate docs/01-inventory.md from work/inventory.json."""

from __future__ import annotations

import json
import pathlib
import re
from collections import Counter, defaultdict

BASE = pathlib.Path(__file__).resolve().parents[2]
INV = BASE / "work" / "inventory.json"
OUT = BASE / "docs" / "01-inventory.md"


def classify(name: str) -> str:
    if re.search(r"V1_\d", name) or name.startswith("android.hardware.vibrator.V1"):
        return "HIDL vibrator HAL (A13)"
    if name.startswith("android.hardware.vibrator.") and "V1" not in name:
        return "AIDL vibrator HAL"
    if "Stub" in name:
        return "MIUI extension stub"
    if ".server.vibrator." in name:
        return "vibrator system service"
    if name.startswith("android.os."):
        return "framework vibrator API"
    if name.startswith("android.view.") or "HapticFeedback" in name:
        return "framework haptic UI API"
    if "notification" in name:
        return "notification vibration"
    if "input" in name:
        return "input-device vibration"
    return "supporting"


def package_group(name: str) -> str:
    parts = name.split(".")
    if name.startswith("android.hardware.vibrator"):
        return "android.hardware.vibrator (HAL)"
    if len(parts) >= 3 and parts[:2] == ["com", "android"]:
        return ".".join(parts[:4]) if parts[2] == "server" else ".".join(parts[:3])
    return ".".join(parts[:3])


def main() -> None:
    d = json.loads(INV.read_text())
    a13 = d["haptic_classes"]["android13"]
    a16 = d["haptic_classes"]["android16"]
    counts = d["counts"]
    consumers = d["consumers"]

    set13, set16 = set(a13), set(a16)

    out = []
    w = out.append

    w("# Haptic / vibration inventory")
    w("")
    w("Generated from the baksmali output of the supplied jars "
      "(`work/inventory.json`). Every class whose name contains "
      "`vibrat`, `haptic` (case-insensitive) is listed, plus every class "
      "that references such a class.")
    w("")
    w("## Counts")
    w("")
    w("| Metric | Android 13 (HyperOS source) | Android 16 (PixelOS target) |")
    w("|---|---:|---:|")
    w(f"| Classes in supplied jars | {counts['android13']['classes']:,} | {counts['android16']['classes']:,} |")
    w(f"| Haptic/vibration classes | {counts['android13']['haptic_classes']:,} | {counts['android16']['haptic_classes']:,} |")
    w(f"| Classes that reference haptic APIs | {counts['android13']['consumers']:,} | {counts['android16']['consumers']:,} |")
    w("")

    for ver, data in (("Android 13 (HyperOS)", a13), ("Android 16 (PixelOS)", a16)):
        w(f"## {ver} haptic classes")
        w("")
        groups = defaultdict(list)
        for name, c in data.items():
            groups[package_group(name)].append((name, c))
        for group in sorted(groups):
            w(f"### `{group}` ({len(groups[group])})")
            w("")
            w("| Class | Kind | Methods | Fields |")
            w("|---|---|---:|---:|")
            for name, c in sorted(groups[group]):
                w(f"| `{name}` | {classify(name)} | {len(c.get('methods', []))} | {len(c.get('fields', []))} |")
            w("")

    w("## Classes present only in Android 13")
    w("")
    w("These are MIUI/HyperOS extensions or pre-AIDL HAL interfaces. They are "
      "**not** portable to Android 16 as-is (see `05-limitations.md`).")
    w("")
    w("| Class | Kind |")
    w("|---|---|")
    for name in sorted(set13 - set16):
        w(f"| `{name}` | {classify(name)} |")
    w("")

    w("## Classes present only in Android 16")
    w("")
    w("These are part of the rewritten A16 vibrator stack (AIDL HAL v3, vendor "
      "vibration sessions, PWLE v2, new public feedback constants). They were "
      "kept intact by the port.")
    w("")
    bypkg = Counter(package_group(n) for n in set16 - set13)
    w("| Package group | New classes |")
    w("|---|---:|")
    for pkg, n in sorted(bypkg.items()):
        w(f"| `{pkg}` | {n} |")
    w("")

    w("## Haptic API consumers")
    w("")
    w("Consumers are classes inside the supplied jars that invoke a "
      "haptic/vibration API. SystemUI, Launcher, Settings and third-party "
      "apps are **not** inside `framework.jar`/`services.jar`; they use the "
      "public API surface listed in `02-architecture-and-differences.md`.")
    w("")
    for ver in ("android13", "android16"):
        subset = [c for c in consumers if c["version"] == ver]
        bypkg = Counter(package_group(c["caller"]) for c in subset)
        w(f"### {ver} ({len(subset)} consumers)")
        w("")
        w("| Package group | Consumers |")
        w("|---|---:|")
        for pkg, n in sorted(bypkg.items(), key=lambda kv: (-kv[1], kv[0])):
            w(f"| `{pkg}` | {n} |")
        w("")

    w("### Android 13 consumer classes")
    w("")
    for c in sorted((c for c in consumers if c["version"] == "android13"),
                    key=lambda c: c["caller"]):
        w(f"- `{c['caller']}`")
    w("")
    w("### Android 16 consumer classes")
    w("")
    for c in sorted((c for c in consumers if c["version"] == "android16"),
                    key=lambda c: c["caller"]):
        w(f"- `{c['caller']}`")
    w("")

    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text("\n".join(out) + "\n")
    print(f"wrote {OUT} ({len(out)} lines)")


if __name__ == "__main__":
    main()
