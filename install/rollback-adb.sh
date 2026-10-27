#!/usr/bin/env bash
# Restore the stock framework.jar / services.jar from the on-device backup taken
# by install/apply-adb.sh, or from the PC-side pristine copies.
#
# Usage: install/rollback-adb.sh [serial]
#
# Works from a booted rooted system or from `adb shell` in a custom recovery
# (recovery may not have `su`; the script falls back to plain shell).
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$ROOT/target_of_project_android_16/backup"
SERIAL="${1:-}"
ADB=(adb)
if [[ -n "$SERIAL" ]]; then
    ADB=(adb -s "$SERIAL")
fi

say() { printf '\n== %s\n' "$*"; }
sh_() {
    if "${ADB[@]}" shell su -c "$1" 2>/dev/null; then
        return 0
    fi
    "${ADB[@]}" shell "$1"
}

say "waiting for device"
"${ADB[@]}" wait-for-device

say "checking for on-device backup"
have_backup=0
if sh_ 'test -f /data/local/tmp/haptics-stock/framework.jar'; then
    have_backup=1
    echo "using /data/local/tmp/haptics-stock"
else
    echo "no on-device backup; will use PC copies from $SRC"
    for f in framework.jar services.jar; do
        [[ -f "$SRC/$f" ]] || { echo "error: missing $SRC/$f" >&2; exit 1; }
    done
fi

say "remounting /system read-write"
sh_ 'mount -o rw,remount /system' 2>/dev/null || sh_ 'mount -o rw,remount /' || true

if [[ "$have_backup" == "1" ]]; then
    say "restoring from on-device backup"
    sh_ 'cp -f /data/local/tmp/haptics-stock/framework.jar /system/framework/framework.jar'
    sh_ 'cp -f /data/local/tmp/haptics-stock/services.jar  /system/framework/services.jar'
else
    say "pushing and restoring pristine jars"
    "${ADB[@]}" push "$SRC/framework.jar" /data/local/tmp/framework.stock.jar
    "${ADB[@]}" push "$SRC/services.jar"  /data/local/tmp/services.stock.jar
    sh_ 'cp -f /data/local/tmp/framework.stock.jar /system/framework/framework.jar'
    sh_ 'cp -f /data/local/tmp/services.stock.jar  /system/framework/services.jar'
fi

sh_ 'chmod 0644 /system/framework/framework.jar /system/framework/services.jar'
sh_ 'restorecon -RF /system/framework/framework.jar /system/framework/services.jar' || true
sh_ 'sync'

say "clearing stale ART artifacts"
sh_ 'rm -rf /data/dalvik-cache/*/system@framework@* 2>/dev/null; true'
sh_ 'rm -rf /data/dalvik-cache/*/system@services@* 2>/dev/null; true'
sh_ 'rm -f /system/framework/oat/*/framework.odex /system/framework/oat/*/framework.vdex 2>/dev/null; true'
sh_ 'rm -f /system/framework/oat/*/services.odex  /system/framework/oat/*/services.vdex  2>/dev/null; true'
sh_ 'sync'

say "done - reboot to finish rollback"
