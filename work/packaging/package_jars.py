#!/usr/bin/env python3
"""
Repackage the patched dex files into framework.jar / services.jar.

Only the affected dex entry is replaced; every other entry is copied
byte-for-byte with its original compression method and metadata. Originals
are copied to <target>/backup/ before anything is modified.
"""

from __future__ import annotations

import hashlib
import pathlib
import shutil
import subprocess
import sys
import zipfile

BASE = pathlib.Path(__file__).resolve().parents[2]
TARGET = BASE / "target_of_project_android_16"
PATCHED = BASE / "work" / "rebuild" / "patched"
BACKUP = TARGET / "backup"
ZIPALIGN = pathlib.Path("/home/mikailamin/Android/Sdk/build-tools/36.0.0/zipalign")

JOBS = [
    (TARGET / "framework.jar", "classes3.dex", PATCHED / "framework-classes3.dex"),
    (TARGET / "services.jar", "classes.dex", PATCHED / "services-classes.dex"),
]


def sha256(path: pathlib.Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def repack(jar: pathlib.Path, entry: str, new_dex: pathlib.Path) -> None:
    BACKUP.mkdir(exist_ok=True)
    backup = BACKUP / jar.name
    if not backup.exists():
        shutil.copy2(jar, backup)
        print(f"  backup: {backup}")
    else:
        print(f"  backup exists: {backup}")

    tmp = jar.with_suffix(jar.suffix + ".new")
    replaced = False

    with zipfile.ZipFile(backup, "r") as src, zipfile.ZipFile(tmp, "w") as dst:
        for info in src.infolist():
            data = src.read(info.filename)
            if info.filename == entry:
                data = new_dex.read_bytes()
                replaced = True
                print(f"  replacing {entry}: {info.file_size} -> {len(data)} bytes "
                      f"(compress_type={info.compress_type})")
            new_info = zipfile.ZipInfo(info.filename, date_time=info.date_time)
            new_info.compress_type = info.compress_type
            new_info.external_attr = info.external_attr
            new_info.internal_attr = info.internal_attr
            new_info.create_system = info.create_system
            new_info.flag_bits = info.flag_bits & ~0x08  # data descriptors copied below
            new_info.comment = info.comment
            dst.writestr(new_info, data)

    if not replaced:
        tmp.unlink()
        raise SystemExit(f"ERROR: {entry} not found in {backup}")

    tmp.replace(jar)
    print(f"  wrote: {jar}")


def align(jar: pathlib.Path) -> None:
    """Jars in /system/framework keep their .dex entries STORED and 4-byte
    aligned; reproduce that with the Android SDK zipalign."""
    if not ZIPALIGN.exists():
        raise SystemExit(f"ERROR: zipalign not found at {ZIPALIGN}")
    aligned = jar.with_suffix(jar.suffix + ".aligned")
    subprocess.run([str(ZIPALIGN), "-f", "4", str(jar), str(aligned)],
                   check=True, stdout=subprocess.DEVNULL)
    aligned.replace(jar)
    subprocess.run([str(ZIPALIGN), "-c", "4", str(jar)], check=True,
                   stdout=subprocess.DEVNULL)
    print("  aligned: 4-byte STORED dex entries")


def verify(jar: pathlib.Path, entry: str, expected: pathlib.Path) -> None:
    with zipfile.ZipFile(jar, "r") as z:
        bad = z.testzip()
        if bad:
            raise SystemExit(f"ERROR: corrupt entry {bad} in {jar}")
        got = z.read(entry)
    want = expected.read_bytes()
    if got != want:
        raise SystemExit(f"ERROR: {entry} content mismatch in {jar}")
    print(f"  verified: {jar.name}/{entry} sha256={sha256(expected)[:16]}...")


def main() -> int:
    for jar, entry, dex in JOBS:
        print(f"[{jar.name}]")
        if not dex.exists():
            raise SystemExit(f"ERROR: missing {dex}; run the smali assembler first")
        repack(jar, entry, dex)
        align(jar)
        verify(jar, entry, dex)
        print()
    return 0


if __name__ == "__main__":
    sys.exit(main())
