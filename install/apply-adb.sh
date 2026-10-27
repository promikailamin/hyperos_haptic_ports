#!/usr/bin/env bash
# Push the patched framework.jar / services.jar directly to /system/framework
# and clear the stale ART artifacts.
#
# Requirements: rooted device with `su`, and a writable /system (`adb remount`
# with verity disabled, a userdebug build, or a custom recovery session).
# On a stock PixelOS build prefer install/build-magisk-module.sh instead.
#
# Usage: install/apply-adb.sh [serial]
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$ROOT/target_of_project_android_16"
SERIAL="${1:-}"
ADB=(adb)
if [[ -n "$SERIAL" ]]; then
    ADB=(adb -s "$SERIAL")
fi

say() { printf '\n== %s\n' "$*"; }
sh_() { "${ADB[@]}" shell su -c "$1"; }

for f in framework.jar services.jar; do
    [[ -f "$SRC/$f" ]] || { echo "error: missing $SRC/$f" >&2; exit 1; }
done

say "waiting for device"
"${ADB[@]}" wait-for-device
"${ADB[@]}" get-state

say "checking root"
sh_ 'id' || { echo "error: 'su' unavailable; use the Magisk module" >&2; exit 1; }

say "backing up current jars to /data/local/tmp/haptics-stock"
sh_ 'mkdir -p /data/local/tmp/haptics-stock'
sh_ 'cp -f /system/framework/framework.jar /data/local/tmp/haptics-stock/framework.jar'
sh_ 'cp -f /system/framework/services.jar  /data/local/tmp/haptics-stock/services.jar'
sh_ 'ls -l /data/local/tmp/haptics-stock'

say "pushing patched jars"
"${ADB[@]}" push "$SRC/framework.jar" /data/local/tmp/framework.jar
"${ADB[@]}" push "$SRC/services.jar"  /data/local/tmp/services.jar

say "remounting /system read-write"
if ! sh_ 'mount -o rw,remount /system' 2>/dev/null; then
    sh_ 'mount -o rw,remount /' || true
fi

say "installing jars"
sh_ 'cp -f /data/local/tmp/framework.jar /system/framework/framework.jar'
sh_ 'cp -f /data/local/tmp/services.jar  /system/framework/services.jar'
sh_ 'chmod 0644 /system/framework/framework.jar /system/framework/services.jar'
sh_ 'chown root:root /system/framework/framework.jar /system/framework/services.jar'
sh_ 'restorecon -RF /system/framework/framework.jar /system/framework/services.jar' || true
sh_ 'sync'

say "verifying installed jars"
sh_ 'unzip -l /system/framework/framework.jar | grep classes3.dex'
sh_ 'unzip -l /system/framework/services.jar  | grep classes.dex'
sh_ 'sha256sum /system/framework/framework.jar /system/framework/services.jar'

say "clearing stale ART artifacts (boot classpath + dalvik cache)"
sh_ 'rm -rf /data/dalvik-cache/*/system@framework@* 2>/dev/null; true'
sh_ 'rm -rf /data/dalvik-cache/*/system@services@* 2>/dev/null; true'
sh_ 'rm -f /system/framework/oat/*/framework.odex /system/framework/oat/*/framework.vdex 2>/dev/null; true'
sh_ 'rm -f /system/framework/oat/*/services.odex  /system/framework/oat/*/services.vdex  2>/dev/null; true'
sh_ 'sync'

say "done"
cat <<'EOF'

Reboot now:   adb reboot
First boot will be slower while ART recompiles framework.jar/services.jar.

If the device does not boot, use install/rollback-adb.sh from recovery or
re-flash the stock jars from target_of_project_android_16/backup/.
EOF
