#!/usr/bin/env bash
# Build a Magisk/KernelSU module that overlays the patched framework.jar and
# services.jar onto /system/framework without modifying the system partition.
#
# Usage: install/build-magisk-module.sh
# Output: dist/pixelos-a13-haptics.zip
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$ROOT/target_of_project_android_16"
DIST="$ROOT/dist"
STAGE="$(mktemp -d)"

trap 'rm -rf "$STAGE"' EXIT

for f in framework.jar services.jar; do
    if [[ ! -f "$SRC/$f" ]]; then
        echo "error: missing $SRC/$f" >&2
        exit 1
    fi
done

mkdir -p "$STAGE/system/framework" "$DIST"
cp "$SRC/framework.jar" "$SRC/services.jar" "$STAGE/system/framework/"

cat > "$STAGE/module.prop" <<'EOF'
id=pixelos_a13_haptics
name=PixelOS A13 Haptic Behavior Port
version=v1.0
versionCode=1
author=Haptics port
description=Ports Xiaomi HyperOS (Android 13) haptic effect mapping, 5-level intensity table and legacy amplitude scaling to PixelOS Android 16. Replaces framework.jar/classes3.dex and services.jar/classes.dex. Do not combine with other framework-overlay modules.
EOF

cat > "$STAGE/customize.sh" <<'EOF'
# Drop stale ART artifacts for the two replaced jars. ART regenerates them on
# the next boot; without this the old oat/vdex can shadow the new dex.
rm -rf /data/dalvik-cache/*/system@framework@* 2>/dev/null || true
rm -rf /data/dalvik-cache/*/system@services@* 2>/dev/null || true
ui_print "- cleared framework/services dalvik-cache entries"
ui_print "- first boot will take longer while ART recompiles"
EOF

# Keep the module predictable: no post-fs-data, no system.prop.
( cd "$STAGE" && zip -q -r9 "$DIST/pixelos-a13-haptics.zip" . -x '.DS_Store' )

echo "built: $DIST/pixelos-a13-haptics.zip"
unzip -l "$DIST/pixelos-a13-haptics.zip"
