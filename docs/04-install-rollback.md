# Install, verify, rollback

The patched artifacts are already in `target_of_project_android_16/`:

```
framework.jar      ← classes3.dex replaced (patched)
services.jar       ← classes.dex  replaced (patched)
backup/framework.jar   ← pristine copy of the supplied target
backup/services.jar    ← pristine copy of the supplied target
```

`dist/pixelos-a13-haptics.zip` is a ready Magisk/KernelSU module built from
them.

---

## 0. Before you flash

1. **Match the build.** These jars were produced from the exact
   `framework.jar`/`services.jar` you supplied. Flashing them onto a different
   PixelOS build (different build id, different `boot.art`, different hidden-API
   list) can bootloop the device. If your ROM build changed, re-run the pipeline
   against the new jars.
2. **Root / overlay required.** `/system` is read-only and verity-protected on
   PixelOS. Use Magisk/KernelSU (recommended) or `adb remount` on a userdebug
   build. Do **not** try to `dd` over the system partition on a locked device.
3. **Have a recovery path.** Keep the `backup/` jars, a working recovery, and a
   recent data backup.
4. **Do not combine** with other modules that also replace `framework.jar` or
   `services.jar` (e.g. other haptics/thermal/font modules). The last mounted
   module wins and you will get a broken mix.

---

## 1. Recommended: Magisk / KernelSU module

Build (already done, re-run only if the jars changed):

```bash
cd /home/mikailamin/Projects/Haptics
./install/build-magisk-module.sh
# -> dist/pixelos-a13-haptics.zip
```

Install:

```bash
adb push dist/pixelos-a13-haptics.zip /sdcard/Download/
# Magisk app: Modules -> Install from storage -> pixelos-a13-haptics.zip
#   or:
adb shell su -c 'magisk --install-module /sdcard/Download/pixelos-a13-haptics.zip'
adb reboot
```

The module's `customize.sh` deletes stale
`/data/dalvik-cache/*/system@framework@*` and `…services@*` entries so ART
recompiles the replaced dex files on the next boot.

**First boot is slower** (ART re-verifies/compiles `framework.jar` and
`services.jar`). On a slow device this can take several minutes at the boot
animation. That is expected.

---

## 2. Manual install (rooted, writable /system)

```bash
cd /home/mikailamin/Projects/Haptics
./install/apply-adb.sh                 # default adb device
./install/apply-adb.sh <serial>        # specific device
adb reboot
```

What it does:

1. waits for the device and checks `su`;
2. copies the current `framework.jar`/`services.jar` to
   `/data/local/tmp/haptics-stock/`;
3. pushes the patched jars and copies them into `/system/framework/`;
4. fixes mode/owner and SELinux context (`restorecon`);
5. deletes stale ART artifacts:

```
/data/dalvik-cache/*/system@framework@*
/data/dalvik-cache/*/system@services@*
/system/framework/oat/*/framework.{odex,vdex}
/system/framework/oat/*/services.{odex,vdex}
```

6. prints the installed jar hashes.

If `mount -o rw,remount /system` fails, the script tries `/`; if both fail the
device needs `adb disable-verity` + `adb remount` (userdebug) or a custom
recovery.

### Custom recovery

Boot recovery, mount `/system`, then:

```bash
adb push target_of_project_android_16/framework.jar /system/framework/framework.jar
adb push target_of_project_android_16/services.jar  /system/framework/services.jar
adb shell rm -rf /data/dalvik-cache/*/system@framework@* /data/dalvik-cache/*/system@services@*
adb reboot
```

---

## 3. Verify after boot

```bash
# jars are the patched ones
adb shell su -c 'sha256sum /system/framework/framework.jar /system/framework/services.jar'
adb shell su -c 'unzip -l /system/framework/framework.jar | grep classes3.dex'

# vibrator service is healthy
adb shell dumpsys vibrator_manager | head -60
adb shell dumpsys vibrator_manager | grep -iE 'scale|intensity|usage|calibrat'

# no crash loop in the vibrator stack
adb logcat -d | grep -iE 'vibrat|haptic' | tail -50
```

Expected signs of the port:

* `dumpsys vibrator_manager` shows the intensity per usage and a scale level in
  the range `-2 … 2`;
* touching UI elements gives a short click (A13 `get(0)`), long-press gives the
  A13 long-press effect (`get(5)`), keyboard taps use the touch intensity;
* changing `haptic_feedback_intensity` in Settings changes strength smoothly
  across 5 steps (very low … very high) rather than the A16 `1.4^level` curve.

You can also exercise the service directly:

```bash
adb shell cmd vibrator_manager synced -d 0 -a 255 -f 0 20 40
adb shell cmd vibrator_manager vibrate -d 0 -a 255 -f 0 20 40
adb shell dumpsys vibrator_manager | grep -A5 'Last vibration'
```

---

## 4. Rollback

### From a booted system

```bash
cd /home/mikailamin/Projects/Haptics
./install/rollback-adb.sh
adb reboot
```

It restores the on-device backup (`/data/local/tmp/haptics-stock/`) if present,
otherwise pushes `target_of_project_android_16/backup/*.jar`, then clears the
same ART artifacts.

### If the device does not boot

1. Boot to recovery (or fastboot boot a recovery image).
2. Either:
   * remove/disable the Magisk module
     (`/data/adb/modules/pixelos_a13_haptics/` → delete or add `disable` file), or
   * restore the stock jars from `target_of_project_android_16/backup/`.
3. Delete `/data/dalvik-cache/*/system@framework@*` and `…services@*`.
4. Reboot.

### Full stock restore

```bash
adb shell su -c 'cp /data/local/tmp/haptics-stock/framework.jar /system/framework/framework.jar'
adb shell su -c 'cp /data/local/tmp/haptics-stock/services.jar  /system/framework/services.jar'
adb shell su -c 'rm -rf /data/dalvik-cache/*/system@framework@* /data/dalvik-cache/*/system@services@*'
adb reboot
```

---

## 5. OTA updates

A PixelOS OTA replaces `/system`, so the module stops applying (Magisk modules
survive, but the ROM's own jars win if the module is installed against a new
build and the base changed). After every OTA:

1. re-check that the new `framework.jar`/`services.jar` are still the ones the
   patch was generated from;
2. if not, re-run `work/patcher/patch_haptics.py` on the new decompiled trees,
   reassemble, repackage, and reinstall.

Never keep an old module enabled across a major ROM update.

---

## 6. Uninstall checklist

* remove the Magisk module (or restore the jars);
* clear `/data/dalvik-cache/*/system@framework@*` and `…services@*`;
* reboot and confirm `dumpsys vibrator_manager` works;
* optionally `adb shell cmd vibrator_manager vibrate -d 0 -a 255 -f 0 20 40`
  to confirm the hardware still responds.
