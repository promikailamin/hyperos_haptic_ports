.class public Lmiui/app/ToggleManager;
.super Ljava/lang/Object;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/ToggleManager$WorkHandler;,
        Lmiui/app/ToggleManager$OnToggleOrderChangedListener;,
        Lmiui/app/ToggleManager$OnToggleChangedListener;
    }
.end annotation


# static fields
.field public static final blacklist ALPHA_DEFAULT:I = 0xff

.field public static final blacklist ALPHA_HALF:I = 0x7d

.field public static final blacklist AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

.field public static final blacklist COMPONENT_NAME_MIDROP_STARTUP_RECEIVER:Ljava/lang/String; = "com.xiaomi.midrop.startup.StartupReceiver"

.field public static final blacklist DEFAULT_BACKLIGHT:I = 0x66

.field private static final blacklist EXECUTE_TOGGLE_BLUETOOTH_DELAY_TIME:I = 0x1f4

.field private static final blacklist KEY_POWER_MODE_OPEN:Ljava/lang/String; = "POWER_SAVE_MODE_OPEN"

.field public static final blacklist MAXIMUM_BACKLIGHT:I = 0xff

.field public static final blacklist META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

.field private static final blacklist METHOD_CHANGE_POWER_MODE:Ljava/lang/String; = "changePowerMode"

.field public static final blacklist MINIMUM_BACKLIGHT:I

.field public static final blacklist MIUI_BRIGHTNESS_OPT_STRATEGY:Ljava/lang/String; = "miui"

.field private static final blacklist MSG_UPDATE_SYNC_TOGGLE:I = 0x2

.field private static final blacklist MSG_VERIFY_BLUETOOTH_STATE:I = 0x1

.field public static final blacklist PINECONE_BRIGHTNESS_OPT_STRATEGY:Ljava/lang/String; = "pinecone"

.field public static final blacklist PKG_NAME_MIDROP:Ljava/lang/String; = "com.xiaomi.midrop"

.field private static final blacklist POWER_MODE_URI_PATH:Ljava/lang/String; = "content://com.miui.powercenter.powersaver"

.field private static final blacklist PROCESS_NAME_SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field public static final blacklist RANGE:I

.field private static final blacklist SETTINGS_MIDROP:Ljava/lang/String; = "key_midrop_enabled"

.field public static final blacklist SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

.field static final blacklist TAG:Ljava/lang/String; = "ToggleManager"

.field public static final blacklist TOGGLE_ADVANCED_SYNC:I = 0x13

.field public static final blacklist TOGGLE_AUTO_BRIGHTNESS:I = 0x16

.field public static final blacklist TOGGLE_BATTERY_SAVER:I = 0x1e

.field public static final blacklist TOGGLE_BLUETOOTH:I = 0x2

.field public static final blacklist TOGGLE_BRIGHTNESS:I = 0x4

.field public static final blacklist TOGGLE_CAST:I = 0x1c

.field public static final blacklist TOGGLE_COUNT:I = 0x20

.field public static final blacklist TOGGLE_DATA:I = 0x1

.field public static final blacklist TOGGLE_DIVIDER:I = 0x0

.field public static final blacklist TOGGLE_DRIVE_MODE:I = 0x15

.field public static final blacklist TOGGLE_EDIT:I = 0x1d

.field public static final blacklist TOGGLE_FLIGHT_MODE:I = 0x9

.field public static final blacklist TOGGLE_GPS:I = 0x7

.field public static final blacklist TOGGLE_LOCK:I = 0xa

.field public static final blacklist TOGGLE_MIDROP:I = 0x1b

.field public static final blacklist TOGGLE_NETWORK_TYPE:I = 0x11

.field public static final blacklist TOGGLE_PAPER_MODE:I = 0x1a

.field public static final blacklist TOGGLE_POWER_MODE:I = 0x17

.field public static final blacklist TOGGLE_QUIET_MODE:I = 0x19

.field public static final blacklist TOGGLE_REBOOT:I = 0xc

.field public static final blacklist TOGGLE_RINGER:I = 0x5

.field public static final blacklist TOGGLE_ROTATE:I = 0x3

.field public static final blacklist TOGGLE_SCREENSHOT:I = 0x12

.field public static final blacklist TOGGLE_SCREEN_BUTTON:I = 0x14

.field public static final blacklist TOGGLE_SHUTDOWN:I = 0xd

.field public static final blacklist TOGGLE_SYNC:I = 0x8

.field public static final blacklist TOGGLE_TORCH:I = 0xb

.field public static final blacklist TOGGLE_VIBRATE:I = 0x6

.field public static final blacklist TOGGLE_WIFI:I = 0xf

.field public static final blacklist TOGGLE_WIFI_AP:I = 0x18

.field public static final blacklist USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field private static final blacklist VERIFY_BLUETOOTH_STATE_DELAY_TIME:I = 0x3e8

.field private static blacklist mWifiApEnabler:Lmiui/app/WifiApEnabler;

.field private static blacklist mWifiManager:Landroid/net/wifi/WifiManager;

.field private static blacklist sCurrentUserId:I

.field private static volatile blacklist sHasCast:Z

.field private static volatile blacklist sHasGpsFeature:Z

.field private static blacklist sHasMiDrop:Z

.field private static volatile blacklist sHasMobileData:Z

.field private static volatile blacklist sHasVibrator:Z

.field private static blacklist sLongClickActions:[I

.field private static final blacklist sRemoveByMultiUserList:[I

.field private static volatile blacklist sStaticFieldsInited:Z

.field private static blacklist sToggleDisabled:[Z

.field private static blacklist sToggleGeneralImages:[I

.field private static blacklist sToggleImages:[I

.field private static blacklist sToggleManager:Lmiui/app/ToggleManager;

.field private static blacklist sToggleNames:[I

.field private static blacklist sToggleOffImages:[I

.field private static blacklist sToggleOnImages:[I

.field private static blacklist sToggleStatus:[Z

.field private static blacklist sToggleStatusNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sToggleStringToId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sWifiApAvailable:Z


# instance fields
.field private blacklist mAccelerometer:Z

.field private final blacklist mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private blacklist mBatterySaveMode:Z

.field private final blacklist mBatterySaverObserver:Landroid/database/ContentObserver;

.field private blacklist mBgHandler:Landroid/os/Handler;

.field private blacklist mBgThread:Landroid/os/HandlerThread;

.field private blacklist mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private blacklist mBluetoothDelay:Z

.field private blacklist mBluetoothEnable:Z

.field private blacklist mBrightnessAutoAvailable:Z

.field private blacklist mBrightnessAutoLevel:F

.field private blacklist mBrightnessAutoMode:Z

.field private blacklist mBrightnessManualLevel:I

.field private final blacklist mBrightnessObserver:Landroid/database/ContentObserver;

.field private blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFlightMode:Z

.field private final blacklist mFlightModeObserver:Landroid/database/ContentObserver;

.field private blacklist mGpsEnable:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsSimMissing:Z

.field private final blacklist mLocationAllowedObserver:Landroid/database/ContentObserver;

.field private final blacklist mLocationManager:Landroid/location/LocationManager;

.field private blacklist mMiDropChanging:Z

.field private final blacklist mMiDropObserver:Landroid/database/ContentObserver;

.field private blacklist mMobileDataEnable:Z

.field private final blacklist mMobileDataEnableObserver:Landroid/database/ContentObserver;

.field private blacklist mMobileDataUtils:Landroid/app/MobileDataUtils;

.field private blacklist mMobilePolicyEnable:Z

.field private final blacklist mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

.field private blacklist mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mPaperMode:Z

.field private final blacklist mPaperModeObserver:Landroid/database/ContentObserver;

.field private blacklist mPowerMode:Ljava/lang/String;

.field private final blacklist mPowerModeObserver:Landroid/database/ContentObserver;

.field private blacklist mQuietMode:Z

.field private final blacklist mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

.field private final blacklist mResolver:Landroid/content/ContentResolver;

.field private final blacklist mResource:Landroid/content/res/Resources;

.field private blacklist mScreenButtonDisabled:Z

.field private final blacklist mScreenButtonStateObserver:Landroid/database/ContentObserver;

.field private blacklist mStatusChangeListenerHandle:Ljava/lang/Object;

.field private final blacklist mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private final blacklist mTogglOrderObserver:Landroid/database/ContentObserver;

.field private blacklist mToggleChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/app/ToggleManager$OnToggleChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mToggleOrderChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/app/ToggleManager$OnToggleOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTorchEnable:Z

.field private final blacklist mTorchEnableObserver:Landroid/database/ContentObserver;

.field private final blacklist mUpdateSyncStateRunnable:Ljava/lang/Runnable;

.field private final blacklist mVibrateEnableObserver:Landroid/database/ContentObserver;

.field blacklist mWifiChanging:Z

.field blacklist mWifiConnected:Z

.field blacklist mWifiEnable:Z

.field blacklist mWifiSsid:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBgHandler(Lmiui/app/ToggleManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lmiui/app/ToggleManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlightMode(Lmiui/app/ToggleManager;)Z
    .registers 1

    iget-boolean p0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lmiui/app/ToggleManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSimMissing(Lmiui/app/ToggleManager;)Z
    .registers 1

    iget-boolean p0, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMobileDataEnable(Lmiui/app/ToggleManager;)Z
    .registers 1

    iget-boolean p0, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMobileDataUtils(Lmiui/app/ToggleManager;)Landroid/app/MobileDataUtils;
    .registers 1

    iget-object p0, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMobilePolicyEnable(Lmiui/app/ToggleManager;)Z
    .registers 1

    iget-boolean p0, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResolver(Lmiui/app/ToggleManager;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToggleOrderChangedListener(Lmiui/app/ToggleManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUpdateSyncStateRunnable(Lmiui/app/ToggleManager;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lmiui/app/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSimMissing(Lmiui/app/ToggleManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMobilePolicyEnable(Lmiui/app/ToggleManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyBrightnessIntenal(Lmiui/app/ToggleManager;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/app/ToggleManager;->applyBrightnessIntenal(IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misSyncOn(Lmiui/app/ToggleManager;)Z
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->isSyncOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpostUpdateDataToggleAsync(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->postUpdateDataToggleAsync()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mqueryBrightnessStatus(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->queryBrightnessStatus()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtoggleBluetooth(Lmiui/app/ToggleManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/app/ToggleManager;->toggleBluetooth(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtoggleSyncIntenal(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleSyncIntenal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateAccelerometerToggle(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateAccelerometerToggle()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateBatterySaverToggle(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBatterySaverToggle()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateBluetoothToggle(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBluetoothToggle()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateBrightnessToggle(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBrightnessToggle()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDataToggle(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateDataToggle()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateFlightModeToggle(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateFlightModeToggle()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateGpsToggle(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateGpsToggle()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateMiDropToggle(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateMiDropToggle()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdatePaperModeToggle(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePaperModeToggle()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdatePowerModeToggle(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePowerModeToggle()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateQuietModeToggle(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateQuietModeToggle()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateScreenButtonState(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateScreenButtonState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSyncToggle(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateSyncToggle()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSyncToggle(Lmiui/app/ToggleManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/app/ToggleManager;->updateSyncToggle(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateTorchToggle(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateTorchToggle()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mverifyBluetoothState(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->verifyBluetoothState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmWifiManager()Landroid/net/wifi/WifiManager;
    .registers 1

    sget-object v0, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsCurrentUserId()I
    .registers 1

    sget v0, Lmiui/app/ToggleManager;->sCurrentUserId:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsHasMiDrop()Z
    .registers 1

    sget-boolean v0, Lmiui/app/ToggleManager;->sHasMiDrop:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsHasMiDrop(Z)V
    .registers 1

    sput-boolean p0, Lmiui/app/ToggleManager;->sHasMiDrop:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 25

    .line 103
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    sput-boolean v0, Lmiui/app/ToggleManager;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    .line 153
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "bluetooth"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "brightness_mode"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "flight_mode"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "gps"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "lock"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/16 v7, 0x17

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "power_mode"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/16 v8, 0x19

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "quiet_mode"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "rotate"

    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "ringer_mode"

    invoke-virtual {v0, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/16 v11, 0x12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "screenshot"

    invoke-virtual {v0, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/16 v12, 0x14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "screen_button"

    invoke-virtual {v0, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/16 v13, 0x8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "sync_mode"

    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/16 v14, 0xb

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "torch"

    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/4 v14, 0x6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v8, "vibration_mode"

    invoke-virtual {v0, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/16 v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v8, "wifi"

    invoke-virtual {v0, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/16 v8, 0x18

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v8, "wifi_ap"

    invoke-virtual {v0, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/16 v8, 0x1a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v8, "paper_mode"

    invoke-virtual {v0, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/16 v8, 0x1b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v8, "midrop"

    invoke-virtual {v0, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/16 v8, 0x1c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v8, "cast"

    invoke-virtual {v0, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/16 v8, 0x1e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v8, "battery_safer"

    invoke-virtual {v0, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const/16 v8, 0x1d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v15, "edit"

    invoke-virtual {v0, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const/16 v0, 0x20

    new-array v8, v0, [I

    sput-object v8, Lmiui/app/ToggleManager;->sToggleNames:[I

    .line 177
    const v15, 0x110f0374

    aput v15, v8, v2

    .line 178
    const v15, 0x110f0377

    aput v15, v8, v1

    .line 179
    const v15, 0x110f037b

    aput v15, v8, v3

    .line 180
    const v15, 0x110f037e

    aput v15, v8, v4

    .line 181
    const v15, 0x110f0380

    aput v15, v8, v5

    .line 182
    const v15, 0x110f0382

    aput v15, v8, v6

    .line 183
    const v15, 0x110f0385

    aput v15, v8, v10

    .line 184
    const v15, 0x110f038b

    aput v15, v8, v7

    .line 185
    const v15, 0x110f038f

    aput v15, v8, v9

    .line 186
    const v15, 0x110f0391

    aput v15, v8, v12

    .line 187
    const v15, 0x110f0392

    aput v15, v8, v11

    .line 188
    const v15, 0x110f0394

    aput v15, v8, v13

    .line 189
    const/16 v15, 0xb

    const v23, 0x110f0396

    aput v23, v8, v15

    .line 190
    const v15, 0x110f0397

    aput v15, v8, v14

    .line 191
    const v15, 0x110f0399

    const/16 v17, 0xf

    aput v15, v8, v17

    .line 192
    const v15, 0x110f039b

    const/16 v18, 0x18

    aput v15, v8, v18

    .line 193
    const v15, 0x110f038d

    const/16 v16, 0x19

    aput v15, v8, v16

    .line 194
    const v15, 0x110f0389

    const/16 v19, 0x1a

    aput v15, v8, v19

    .line 195
    const v15, 0x110f0383

    const/16 v20, 0x1b

    aput v15, v8, v20

    .line 196
    const v15, 0x110f037a

    const/16 v21, 0x1c

    aput v15, v8, v21

    .line 197
    const v15, 0x110f0375

    const/16 v22, 0x1e

    aput v15, v8, v22

    .line 198
    const/16 v15, 0x1d

    const v23, 0x110f037d

    aput v23, v8, v15

    .line 200
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1b1
    if-ge v8, v0, :cond_1cb

    .line 201
    sget-object v15, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v24, Lmiui/app/ToggleManager;->sToggleNames:[I

    aget v24, v24, v8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    add-int/lit8 v8, v8, 0x1

    const/16 v6, 0xa

    const/16 v11, 0x12

    goto :goto_1b1

    .line 207
    .end local v8    # "i":I
    :cond_1cb
    new-array v6, v0, [I

    sput-object v6, Lmiui/app/ToggleManager;->sLongClickActions:[I

    .line 208
    const v8, 0x110f0379

    aput v8, v6, v2

    .line 209
    const v8, 0x110f037c

    aput v8, v6, v3

    .line 210
    const v8, 0x110f0378

    aput v8, v6, v1

    .line 211
    const v8, 0x110f037f

    aput v8, v6, v4

    .line 212
    const v8, 0x110f0381

    aput v8, v6, v5

    .line 213
    const v8, 0x110f0386

    aput v8, v6, v10

    .line 214
    const v8, 0x110f038c

    aput v8, v6, v7

    .line 215
    const v8, 0x110f0390

    aput v8, v6, v9

    .line 216
    const v8, 0x110f0395

    aput v8, v6, v13

    .line 217
    const v8, 0x110f0398

    aput v8, v6, v14

    .line 218
    const v8, 0x110f039a

    const/16 v11, 0xf

    aput v8, v6, v11

    .line 219
    const v8, 0x110f039c

    const/16 v11, 0x18

    aput v8, v6, v11

    .line 220
    const v8, 0x110f038e

    const/16 v11, 0x19

    aput v8, v6, v11

    .line 221
    const v8, 0x110f038a

    const/16 v11, 0x1a

    aput v8, v6, v11

    .line 222
    const v8, 0x110f0384

    const/16 v11, 0x1b

    aput v8, v6, v11

    .line 223
    const v8, 0x110f0376

    const/16 v11, 0x1e

    aput v8, v6, v11

    .line 224
    const v8, 0x110f0393

    const/16 v11, 0x19

    aput v8, v6, v11

    .line 232
    new-array v6, v0, [I

    sput-object v6, Lmiui/app/ToggleManager;->sToggleImages:[I

    .line 233
    const v8, 0x110801fd

    aput v8, v6, v2

    .line 234
    const v8, 0x110801fc

    aput v8, v6, v1

    .line 235
    const v8, 0x11080202

    aput v8, v6, v3

    .line 236
    const v8, 0x11080208

    aput v8, v6, v4

    .line 237
    const v8, 0x1108020a

    aput v8, v6, v5

    .line 238
    const v8, 0x11080210

    aput v8, v6, v10

    .line 239
    const v8, 0x1108021a

    aput v8, v6, v7

    .line 240
    const v8, 0x1108021e

    aput v8, v6, v9

    .line 241
    const v8, 0x1108021f

    aput v8, v6, v12

    .line 242
    const v8, 0x11080224

    aput v8, v6, v13

    .line 243
    const/16 v8, 0xb

    const v11, 0x11080226

    aput v11, v6, v8

    .line 244
    const v8, 0x11080228

    aput v8, v6, v14

    .line 245
    const v8, 0x1108022c

    const/16 v11, 0xf

    aput v8, v6, v11

    .line 246
    const v8, 0x1108022a

    const/16 v11, 0x18

    aput v8, v6, v11

    .line 247
    const v8, 0x1108021c

    const/16 v11, 0x19

    aput v8, v6, v11

    .line 248
    const v8, 0x11080218

    const/16 v11, 0x1a

    aput v8, v6, v11

    .line 249
    const v8, 0x1108020e

    const/16 v11, 0x1b

    aput v8, v6, v11

    .line 250
    const v8, 0x110801fa

    const/16 v11, 0x1e

    aput v8, v6, v11

    .line 253
    const v8, 0x1108020b

    const/16 v11, 0xa

    aput v8, v6, v11

    .line 254
    const v8, 0x11080221

    const/16 v11, 0x12

    aput v8, v6, v11

    .line 255
    const v8, 0x110801ff

    const/16 v11, 0x1c

    aput v8, v6, v11

    .line 256
    const/16 v8, 0x1d

    const v11, 0x11080206

    aput v11, v6, v8

    .line 258
    new-array v6, v0, [I

    sput-object v6, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    .line 259
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2bf
    if-ge v6, v0, :cond_2cc

    .line 260
    sget-object v8, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    sget-object v11, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v11, v11, v6

    aput v11, v8, v6

    .line 259
    add-int/lit8 v6, v6, 0x1

    goto :goto_2bf

    .line 262
    .end local v6    # "i":I
    :cond_2cc
    sget-object v6, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const v8, 0x1108020c

    const/16 v11, 0xa

    aput v8, v6, v11

    .line 263
    const v8, 0x11080222

    const/16 v11, 0x12

    aput v8, v6, v11

    .line 264
    const v8, 0x11080200

    const/16 v11, 0x1c

    aput v8, v6, v11

    .line 266
    new-array v6, v0, [I

    sput-object v6, Lmiui/app/ToggleManager;->sToggleOnImages:[I

    .line 267
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2e8
    if-ge v6, v0, :cond_2f5

    .line 268
    sget-object v8, Lmiui/app/ToggleManager;->sToggleOnImages:[I

    sget-object v11, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v11, v11, v6

    aput v11, v8, v6

    .line 267
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e8

    .line 271
    .end local v6    # "i":I
    :cond_2f5
    new-array v6, v0, [I

    sput-object v6, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    .line 272
    const v8, 0x110801fe

    aput v8, v6, v2

    .line 273
    const v2, 0x110801fb

    aput v2, v6, v1

    .line 274
    const v2, 0x11080201

    aput v2, v6, v3

    .line 275
    const v2, 0x11080207

    aput v2, v6, v4

    .line 276
    const v2, 0x11080209

    aput v2, v6, v5

    .line 277
    const v2, 0x1108020f

    aput v2, v6, v10

    .line 278
    const v2, 0x11080219

    aput v2, v6, v7

    .line 279
    const v2, 0x1108021d

    aput v2, v6, v9

    .line 280
    const v2, 0x11080220

    aput v2, v6, v12

    .line 281
    const v2, 0x11080223

    aput v2, v6, v13

    .line 282
    const/16 v2, 0xb

    const v4, 0x11080225

    aput v4, v6, v2

    .line 283
    const v2, 0x11080227

    aput v2, v6, v14

    .line 284
    const v2, 0x1108022b

    const/16 v4, 0xf

    aput v2, v6, v4

    .line 285
    const v2, 0x11080229

    const/16 v4, 0x18

    aput v2, v6, v4

    .line 286
    const v2, 0x1108021b

    const/16 v4, 0x19

    aput v2, v6, v4

    .line 287
    const v2, 0x11080217

    const/16 v4, 0x1a

    aput v2, v6, v4

    .line 288
    const v2, 0x1108020d

    const/16 v4, 0x1b

    aput v2, v6, v4

    .line 289
    const v2, 0x110801f9

    const/16 v4, 0x1e

    aput v2, v6, v4

    .line 292
    const v2, 0x1108020b

    const/16 v4, 0xa

    aput v2, v6, v4

    .line 293
    const v2, 0x11080221

    const/16 v4, 0x12

    aput v2, v6, v4

    .line 294
    const v2, 0x110801ff

    const/16 v4, 0x1c

    aput v2, v6, v4

    .line 295
    const/16 v2, 0x1d

    const v4, 0x11080205

    aput v4, v6, v2

    .line 301
    new-array v2, v0, [Z

    sput-object v2, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    .line 302
    new-array v0, v0, [Z

    sput-object v0, Lmiui/app/ToggleManager;->sToggleDisabled:[Z

    .line 342
    const-string v0, "auto_brightness_optimize_strategy"

    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/app/ToggleManager;->AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

    .line 348
    nop

    .line 349
    const-string v0, "persist.power.useautobrightadj"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    .line 353
    const/4 v0, 0x0

    sput v0, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 397
    const/4 v2, 0x0

    sput-object v2, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    .line 785
    sput-boolean v0, Lmiui/app/ToggleManager;->sHasCast:Z

    .line 786
    sput-boolean v0, Lmiui/app/ToggleManager;->sWifiApAvailable:Z

    .line 787
    sput-boolean v0, Lmiui/app/ToggleManager;->sHasMobileData:Z

    .line 788
    sput-boolean v0, Lmiui/app/ToggleManager;->sHasGpsFeature:Z

    .line 789
    sput-boolean v0, Lmiui/app/ToggleManager;->sStaticFieldsInited:Z

    .line 790
    sput-boolean v0, Lmiui/app/ToggleManager;->sHasVibrator:Z

    .line 865
    new-array v0, v1, [I

    fill-array-data v0, :array_3c2

    sput-object v0, Lmiui/app/ToggleManager;->sRemoveByMultiUserList:[I

    .line 1082
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    .line 1084
    rsub-int v0, v0, 0xff

    sput v0, Lmiui/app/ToggleManager;->RANGE:I

    return-void

    nop

    :array_3c2
    .array-data 4
        0x18
        0x1b
    .end array-data
.end method

.method private constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Lmiui/app/ToggleManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/app/ToggleManager$1;-><init>(Lmiui/app/ToggleManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    .line 1086
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1101
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    .line 1103
    new-instance v3, Lmiui/app/ToggleManager$2;

    invoke-direct {v3, p0}, Lmiui/app/ToggleManager$2;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1125
    new-instance v3, Lmiui/app/ToggleManager$3;

    invoke-direct {v3, p0}, Lmiui/app/ToggleManager$3;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1148
    new-instance v3, Lmiui/app/ToggleManager$4;

    invoke-direct {v3, p0, v0}, Lmiui/app/ToggleManager$4;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    .line 1159
    new-instance v3, Lmiui/app/ToggleManager$5;

    invoke-direct {v3, p0, v0}, Lmiui/app/ToggleManager$5;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mFlightModeObserver:Landroid/database/ContentObserver;

    .line 1166
    new-instance v3, Lmiui/app/ToggleManager$6;

    invoke-direct {v3, p0, v0}, Lmiui/app/ToggleManager$6;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    .line 1174
    new-instance v3, Lmiui/app/ToggleManager$7;

    invoke-direct {v3, p0, v0}, Lmiui/app/ToggleManager$7;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    .line 1183
    new-instance v3, Lmiui/app/ToggleManager$8;

    invoke-direct {v3, p0, v0}, Lmiui/app/ToggleManager$8;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    .line 1190
    new-instance v3, Lmiui/app/ToggleManager$9;

    invoke-direct {v3, p0, v0}, Lmiui/app/ToggleManager$9;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    .line 1197
    new-instance v3, Lmiui/app/ToggleManager$10;

    invoke-direct {v3, p0, v0}, Lmiui/app/ToggleManager$10;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    .line 1203
    new-instance v3, Lmiui/app/ToggleManager$11;

    invoke-direct {v3, p0, v0}, Lmiui/app/ToggleManager$11;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 1210
    new-instance v3, Lmiui/app/ToggleManager$12;

    invoke-direct {v3, p0, v0}, Lmiui/app/ToggleManager$12;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 1217
    new-instance v3, Lmiui/app/ToggleManager$13;

    invoke-direct {v3, p0, v0}, Lmiui/app/ToggleManager$13;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    .line 1223
    new-instance v3, Lmiui/app/ToggleManager$14;

    invoke-direct {v3, p0, v0}, Lmiui/app/ToggleManager$14;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mBatterySaverObserver:Landroid/database/ContentObserver;

    .line 1230
    new-instance v3, Lmiui/app/ToggleManager$15;

    invoke-direct {v3, p0}, Lmiui/app/ToggleManager$15;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    .line 1237
    new-instance v3, Lmiui/app/ToggleManager$16;

    invoke-direct {v3, p0, v0}, Lmiui/app/ToggleManager$16;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    .line 1243
    new-instance v3, Lmiui/app/ToggleManager$17;

    invoke-direct {v3, p0, v0}, Lmiui/app/ToggleManager$17;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mMiDropObserver:Landroid/database/ContentObserver;

    .line 1262
    new-instance v3, Lmiui/app/ToggleManager$18;

    invoke-direct {v3, p0, v0}, Lmiui/app/ToggleManager$18;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    .line 1270
    new-instance v0, Lmiui/app/ToggleManager$19;

    invoke-direct {v0, p0}, Lmiui/app/ToggleManager$19;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v0, p0, Lmiui/app/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;

    .line 1276
    new-instance v0, Lmiui/app/ToggleManager$20;

    invoke-direct {v0, p0}, Lmiui/app/ToggleManager$20;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v0, p0, Lmiui/app/ToggleManager;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 1417
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    .line 1418
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    .line 1419
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    .line 1420
    iput-object v1, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    .line 1500
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    .line 410
    iput-object p1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    .line 411
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ToggleManager"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lmiui/app/ToggleManager;->mBgThread:Landroid/os/HandlerThread;

    .line 412
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 413
    new-instance v0, Lmiui/app/ToggleManager$WorkHandler;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/app/ToggleManager$WorkHandler;-><init>(Lmiui/app/ToggleManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    .line 414
    sput p2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 415
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 416
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ToggleManager;->mResource:Landroid/content/res/Resources;

    .line 417
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    .line 418
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    .line 419
    invoke-static {}, Landroid/app/MobileDataUtils;->getInstance()Landroid/app/MobileDataUtils;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    .line 421
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    sput-object v1, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 422
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lmiui/app/ToggleManager;->mLocationManager:Landroid/location/LocationManager;

    .line 424
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 427
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    nop

    .line 428
    const v3, 0x11050001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    .line 430
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "mWifiRegexs":[Ljava/lang/String;
    array-length v3, v0

    if-eqz v3, :cond_118

    const/4 v2, 0x1

    .line 432
    .local v2, "wifiAvailable":Z
    :cond_118
    if-eqz v2, :cond_121

    .line 433
    new-instance v3, Lmiui/app/WifiApEnabler;

    invoke-direct {v3, p1, p0}, Lmiui/app/WifiApEnabler;-><init>(Landroid/content/Context;Lmiui/app/ToggleManager;)V

    sput-object v3, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    .line 436
    :cond_121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.systemui"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 437
    .local v3, "isSystemUI":Z
    invoke-direct {p0, v3}, Lmiui/app/ToggleManager;->registerListener(Z)V

    .line 438
    return-void
.end method

.method private static blacklist addIfUnselected(Ljava/util/ArrayList;I)V
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 905
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 906
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    :cond_11
    return-void
.end method

.method private blacklist applyBrightnessIntenal(IZ)V
    .registers 7
    .param p1, "brightness"    # I
    .param p2, "write"    # Z

    .line 1637
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v0, :cond_33

    sget-boolean v0, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_33

    .line 1638
    sget-object v0, Lmiui/app/ToggleManager;->AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

    const-string v1, "pinecone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1639
    sget v0, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    add-int/2addr v0, p1

    .line 1640
    .local v0, "brightnessValue":I
    invoke-static {v0}, Lmiui/app/CompatibilityP;->setTemporaryScreenBrightness(I)V

    .line 1641
    .end local v0    # "brightnessValue":I
    goto :goto_44

    .line 1642
    :cond_19
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    sget v1, Lmiui/app/ToggleManager;->RANGE:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 1643
    .local v0, "valf":F
    invoke-static {v0}, Lmiui/app/CompatibilityP;->setTemporaryScreenAutoBrightness(F)V

    .line 1644
    if-eqz p2, :cond_32

    .line 1645
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    sget v2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    const-string v3, "screen_auto_brightness_adj"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1648
    .end local v0    # "valf":F
    :cond_32
    goto :goto_44

    .line 1650
    :cond_33
    sget v0, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    add-int/2addr v0, p1

    .line 1651
    .local v0, "brightnessValue":I
    invoke-static {v0}, Lmiui/app/CompatibilityP;->setTemporaryScreenBrightness(I)V

    .line 1652
    if-eqz p2, :cond_44

    .line 1653
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    sget v2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    const-string v3, "screen_brightness"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1657
    .end local v0    # "brightnessValue":I
    :cond_44
    :goto_44
    return-void
.end method

.method public static blacklist createInstance(Landroid/content/Context;)Lmiui/app/ToggleManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 399
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->createInstance(Landroid/content/Context;I)Lmiui/app/ToggleManager;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createInstance(Landroid/content/Context;I)Lmiui/app/ToggleManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 403
    sget-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    if-nez v0, :cond_f

    .line 404
    new-instance v0, Lmiui/app/ToggleManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/app/ToggleManager;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    .line 406
    :cond_f
    sget-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    return-object v0
.end method

.method private blacklist ensureBluetoothAdapter()Z
    .registers 2

    .line 1494
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_a

    .line 1495
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1497
    :cond_a
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static blacklist filterToggle(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 792
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 794
    const-class v0, Lmiui/app/ToggleManager;

    monitor-enter v0

    .line 795
    :try_start_7
    sget-boolean v1, Lmiui/app/ToggleManager;->sStaticFieldsInited:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_10f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_72

    .line 797
    :try_start_d
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 798
    .local v1, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    sput-boolean v4, Lmiui/app/ToggleManager;->sHasVibrator:Z

    .line 801
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Lmiui/app/ToggleManager;->getCastIntent()Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0xd0000

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 802
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_31

    move v4, v2

    goto :goto_32

    :cond_31
    move v4, v3

    :goto_32
    sput-boolean v4, Lmiui/app/ToggleManager;->sHasCast:Z

    .line 803
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 805
    .local v4, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 806
    .local v5, "wifiRegexs":[Ljava/lang/String;
    array-length v6, v5

    if-eqz v6, :cond_45

    move v6, v2

    goto :goto_46

    :cond_45
    move v6, v3

    :goto_46
    sput-boolean v6, Lmiui/app/ToggleManager;->sWifiApAvailable:Z

    .line 807
    nop

    .line 808
    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    sput-boolean v6, Lmiui/app/ToggleManager;->sHasMobileData:Z

    .line 809
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.location.gps"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lmiui/app/ToggleManager;->sHasGpsFeature:Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5b} :catch_5c
    .catchall {:try_start_d .. :try_end_5b} :catchall_10f

    .line 812
    .end local v1    # "vibrator":Landroid/os/Vibrator;
    .end local v4    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v5    # "wifiRegexs":[Ljava/lang/String;
    goto :goto_5d

    .line 810
    :catch_5c
    move-exception v1

    .line 814
    :goto_5d
    :try_start_5d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "com.xiaomi.midrop"

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_6b

    move v1, v2

    goto :goto_6c

    :cond_6b
    move v1, v3

    :goto_6c
    sput-boolean v1, Lmiui/app/ToggleManager;->sHasMiDrop:Z
    :try_end_6e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5d .. :try_end_6e} :catch_6f
    .catchall {:try_start_5d .. :try_end_6e} :catchall_10f

    .line 817
    goto :goto_70

    .line 815
    :catch_6f
    move-exception v1

    .line 818
    :goto_70
    :try_start_70
    sput-boolean v2, Lmiui/app/ToggleManager;->sStaticFieldsInited:Z

    .line 820
    :cond_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_10f

    .line 822
    const-string v0, "support_power_mode"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_84

    .line 823
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 826
    :cond_84
    sget-boolean v0, Lmiui/app/ToggleManager;->sWifiApAvailable:Z

    if-nez v0, :cond_91

    .line 827
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 830
    :cond_91
    invoke-static {p0}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 831
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 834
    :cond_a0
    sget-boolean v0, Lmiui/app/ToggleManager;->sHasMobileData:Z

    if-nez v0, :cond_b4

    .line 835
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 836
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 839
    :cond_b4
    sget-boolean v0, Lmiui/app/ToggleManager;->sHasVibrator:Z

    if-nez v0, :cond_c0

    .line 840
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 843
    :cond_c0
    sget-boolean v0, Lmiui/app/ToggleManager;->sHasGpsFeature:Z

    if-nez v0, :cond_cc

    .line 844
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 846
    :cond_cc
    const-string v0, "support_screen_paper_mode"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_dd

    .line 847
    const/16 v0, 0x1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 850
    :cond_dd
    sget-boolean v0, Lmiui/app/ToggleManager;->sHasMiDrop:Z

    if-eqz v0, :cond_e5

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_ee

    .line 851
    :cond_e5
    const/16 v0, 0x1b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 853
    :cond_ee
    sget-boolean v0, Lmiui/app/ToggleManager;->sHasCast:Z

    if-nez v0, :cond_fb

    .line 854
    const/16 v0, 0x1c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 857
    :cond_fb
    invoke-static {}, Lmiui/app/ToggleManager;->isMiPad()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 858
    .local v0, "hasBatterySaver":Z
    if-nez v0, :cond_10b

    .line 859
    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 862
    :cond_10b
    invoke-static {p0, p1, p2}, Lmiui/app/ToggleManager;->filterToggleByUser(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 863
    return-void

    .line 820
    .end local v0    # "hasBatterySaver":Z
    :catchall_10f
    move-exception v1

    :try_start_110
    monitor-exit v0
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10f

    throw v1
.end method

.method private static blacklist filterToggleByUser(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 871
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_14

    .line 872
    sget-object v0, Lmiui/app/ToggleManager;->sRemoveByMultiUserList:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget v3, v0, v2

    .line 873
    .local v3, "index":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 872
    .end local v3    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 876
    :cond_14
    return-void
.end method

.method public static blacklist getAllToggles(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 639
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 663
    return-object v0
.end method

.method private static blacklist getCastIntent()Landroid/content/Intent;
    .registers 2

    .line 1392
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.MIPLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1393
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1394
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1396
    return-object v0
.end method

.method public static blacklist getDefaultToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 631
    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v0

    .line 632
    .local v0, "userId":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;I)Z

    move-result v2

    invoke-static {p0, v1, v2, v0}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    .line 634
    return-object v1
.end method

.method public static blacklist getEditFixedPosition(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 709
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110b0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getGeneralImage(I)I
    .registers 2
    .param p0, "id"    # I

    .line 1010
    sget-object v0, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    aget v0, v0, p0

    return v0
.end method

.method public static blacklist getImage(I)I
    .registers 2
    .param p0, "id"    # I

    .line 960
    sget-object v0, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v0, v0, p0

    return v0
.end method

.method public static blacklist getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 988
    invoke-static {p0}, Lmiui/app/ToggleManager;->getStatus(I)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lmiui/app/ToggleManager;->getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p0, "id"    # I
    .param p1, "isOpen"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .line 992
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->getImageResource(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 993
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_69

    .line 994
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11080215

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 995
    .local v1, "bgDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 996
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 995
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 997
    .local v2, "combined":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 998
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 999
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1000
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 1001
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 1002
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 1000
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1003
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1004
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v4

    .line 1006
    .end local v1    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "combined":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    :cond_69
    return-object v0
.end method

.method public static blacklist getImageResource(IZ)I
    .registers 3
    .param p0, "id"    # I
    .param p1, "isOpen"    # Z

    .line 972
    if-eqz p1, :cond_7

    sget-object v0, Lmiui/app/ToggleManager;->sToggleOnImages:[I

    aget v0, v0, p0

    goto :goto_b

    :cond_7
    sget-object v0, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    aget v0, v0, p0

    :goto_b
    return v0
.end method

.method public static blacklist getName(I)I
    .registers 2
    .param p0, "id"    # I

    .line 948
    sget-object v0, Lmiui/app/ToggleManager;->sToggleNames:[I

    aget v0, v0, p0

    return v0
.end method

.method private blacklist getRotation(Landroid/view/IWindowManager;)I
    .registers 5
    .param p1, "wm"    # Landroid/view/IWindowManager;

    .line 1732
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_12

    .line 1733
    const-class v0, Ljava/lang/Integer;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getRotation"

    invoke-static {p1, v2, v0, v1}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v0

    .local v0, "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    goto :goto_1c

    .line 1735
    .end local v0    # "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    :cond_12
    const-class v0, Ljava/lang/Integer;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getDefaultDisplayRotation"

    invoke-static {p1, v2, v0, v1}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v0

    .line 1737
    .restart local v0    # "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    :goto_1c
    invoke-virtual {v0}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private blacklist getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .registers 8
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .line 1476
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 1477
    .local v0, "ssid":Ljava/lang/String;
    if-eqz v0, :cond_f

    const-string v1, "<unknown ssid>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1478
    return-object v0

    .line 1481
    :cond_f
    sget-object v1, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1482
    .local v1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_38

    .line 1483
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1484
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v2, :cond_38

    .line 1485
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_35

    .line 1486
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object v4

    .line 1484
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1490
    .end local v2    # "length":I
    .end local v3    # "i":I
    :cond_38
    const/4 v2, 0x0

    return-object v2
.end method

.method public static blacklist getStatus(I)Z
    .registers 2
    .param p0, "id"    # I

    .line 964
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static blacklist getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;
    .registers 4
    .param p0, "id"    # I
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 952
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 953
    .local v0, "statusName":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1a

    .line 954
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 956
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getToggleIdFromString(Ljava/lang/String;)I
    .registers 2
    .param p0, "toggleString"    # Ljava/lang/String;

    .line 932
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 933
    const/4 v0, -0x1

    return v0

    .line 935
    :cond_a
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static blacklist getToggleOrderSettingID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 713
    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 714
    const-string v0, "status_bar_toggle_list_order_new"

    goto :goto_b

    .line 715
    :cond_9
    const-string v0, "status_bar_toggle_page_order"

    .line 713
    :goto_b
    return-object v0
.end method

.method public static blacklist getToggleStringFromId(I)Ljava/lang/String;
    .registers 4
    .param p0, "toggleId"    # I

    .line 939
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 940
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p0, v2, :cond_29

    .line 941
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 943
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_29
    goto :goto_a

    .line 944
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getUserId(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 704
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 705
    .local v0, "isSystemUI":Z
    if-eqz v0, :cond_11

    sget v1, Lmiui/app/ToggleManager;->sCurrentUserId:I

    goto :goto_15

    :cond_11
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    :goto_15
    return v1
.end method

.method public static blacklist getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 594
    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getUserSelectedToggleOrder(Landroid/content/Context;I)Ljava/util/ArrayList;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 602
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lmiui/app/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getUserSelectedToggleOrder(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listStyle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 598
    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listStyle"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_a

    const-string v1, "status_bar_toggle_list_order_new"

    goto :goto_c

    .line 609
    :cond_a
    const-string v1, "status_bar_toggle_page_order"

    :goto_c
    nop

    .line 610
    .local v1, "settingID":Ljava/lang/String;
    nop

    .line 611
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 610
    invoke-static {v2, v1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "toggleList":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 613
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, "toggles":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    array-length v5, v3

    if-ge v4, v5, :cond_45

    .line 616
    :try_start_26
    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 617
    .local v5, "id":I
    invoke-static {v5}, Lmiui/app/ToggleManager;->getName(I)I

    move-result v6

    if-eqz v6, :cond_3d

    .line 618
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3d} :catch_41

    .line 623
    .end local v5    # "id":I
    :cond_3d
    nop

    .line 614
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 620
    :catch_41
    move-exception v5

    .line 621
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 626
    .end local v3    # "toggles":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_45
    invoke-static {p0, v0, p1, p2}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    .line 627
    return-object v0
.end method

.method public static blacklist initDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p0, "id"    # I
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1014
    return-void
.end method

.method public static blacklist isDisabled(I)Z
    .registers 2
    .param p0, "id"    # I

    .line 968
    sget-object v0, Lmiui/app/ToggleManager;->sToggleDisabled:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static blacklist isListStyle(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 693
    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isListStyle(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 697
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_style_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    return v2
.end method

.method private static blacklist isMiPad()Z
    .registers 1

    .line 2163
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    return v0
.end method

.method private blacklist isSyncOn()Z
    .registers 7

    .line 1854
    :try_start_0
    const-class v0, Landroid/content/ContentResolver;

    const-string v1, "getMasterSyncAutomaticallyAsUser"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1855
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    return v1

    .line 1856
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_26
    move-exception v0

    .line 1857
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ToggleManager"

    const-string v2, "getMasterSyncAutomaticallyAsUser not found."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    return v1
.end method

.method public static blacklist isValid(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 590
    if-ltz p1, :cond_e

    const/16 v0, 0x20

    if-ge p1, v0, :cond_e

    invoke-static {p1}, Lmiui/app/ToggleManager;->getName(I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist longClickScreenshot()Z
    .registers 13

    .line 2041
    const/4 v0, 0x0

    .line 2042
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Screenshots"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2044
    .local v1, "screenShotFolder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_42

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2046
    new-instance v2, Lmiui/app/ToggleManager$22;

    invoke-direct {v2, p0}, Lmiui/app/ToggleManager$22;-><init>(Lmiui/app/ToggleManager;)V

    .line 2058
    .local v2, "pictureFilter":Ljava/io/FilenameFilter;
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 2059
    .local v4, "files":[Ljava/io/File;
    if-nez v4, :cond_27

    .line 2060
    return v3

    .line 2062
    :cond_27
    const-wide/16 v5, 0x0

    .line 2063
    .local v5, "maxLastModifed":J
    array-length v7, v4

    move v8, v3

    :goto_2b
    if-ge v8, v7, :cond_42

    aget-object v9, v4, v8

    .line 2064
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v10, v10, v5

    if-lez v10, :cond_3f

    .line 2065
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 2066
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2063
    .end local v9    # "file":Ljava/io/File;
    :cond_3f
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    .line 2071
    .end local v2    # "pictureFilter":Ljava/io/FilenameFilter;
    .end local v4    # "files":[Ljava/io/File;
    .end local v5    # "maxLastModifed":J
    :cond_42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    return v3

    .line 2073
    :cond_49
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2074
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "image/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2075
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2076
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2077
    const/4 v3, 0x1

    return v3
.end method

.method public static blacklist maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .line 2146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_7

    .line 2147
    return-object p0

    .line 2149
    :cond_7
    if-nez p0, :cond_b

    const/4 v0, 0x0

    return-object v0

    .line 2150
    :cond_b
    const/4 v0, -0x2

    if-eq p1, v0, :cond_4d

    .line 2151
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2152
    invoke-static {p0}, Lmiui/app/ToggleManager;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 2154
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2155
    .local v0, "builder":Landroid/net/Uri$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2156
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 2159
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_4d
    return-object p0
.end method

.method private blacklist postUpdateDataToggleAsync()V
    .registers 3

    .line 1687
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1688
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1689
    return-void
.end method

.method private blacklist queryBrightnessStatus()V
    .registers 6

    .line 1250
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 1251
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    const-string v4, "screen_brightness_mode"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v1, v0, :cond_13

    goto :goto_16

    :cond_13
    move v1, v2

    goto :goto_16

    .line 1255
    :cond_15
    move v1, v2

    :goto_16
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    .line 1256
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const/16 v1, 0x66

    sget v2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    const-string v3, "screen_brightness"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    .line 1258
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    sget v2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    const-string v3, "screen_auto_brightness_adj"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    sget v1, Lmiui/app/ToggleManager;->RANGE:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoLevel:F

    .line 1260
    return-void
.end method

.method private blacklist registerListener(Z)V
    .registers 14
    .param p1, "isSystemUI"    # Z

    .line 441
    const/4 v0, -0x1

    if-eqz p1, :cond_5

    move v1, v0

    goto :goto_9

    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 442
    .local v1, "userId":I
    :goto_9
    if-eqz p1, :cond_e

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    goto :goto_13

    :cond_e
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    :goto_13
    move-object v5, v2

    .line 444
    .local v5, "user":Landroid/os/UserHandle;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 445
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 455
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 456
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 459
    iget-object v6, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lmiui/app/ToggleManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v5

    move-object v9, v3

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 462
    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 463
    const-string v6, "status_bar_toggle_list_order_new"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    .line 462
    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8, v7, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 466
    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 467
    const-string v6, "status_bar_toggle_page_order"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    .line 466
    invoke-virtual {v4, v6, v8, v7, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 470
    const v4, 0x7fffffff

    iget-object v6, p0, Lmiui/app/ToggleManager;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v4, v6}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/ToggleManager;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 473
    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 474
    const-string v6, "accelerometer_rotation"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 473
    invoke-virtual {v4, v6, v8, v7, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 477
    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 478
    const-string v6, "airplane_mode_on"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mFlightModeObserver:Landroid/database/ContentObserver;

    .line 477
    invoke-virtual {v4, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 481
    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 482
    const-string v6, "location_providers_allowed"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    .line 481
    invoke-virtual {v4, v6, v8, v7, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 486
    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6, v7}, Landroid/app/MobileDataUtils;->registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 488
    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 489
    const-string v6, "mobile_policy"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    .line 488
    invoke-virtual {v4, v6, v8, v7, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 492
    sget-boolean v4, Lmiui/app/ToggleManager;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-nez v4, :cond_e6

    .line 493
    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 494
    const-string v6, "screen_brightness"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 493
    invoke-virtual {v4, v6, v8, v7, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 497
    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 498
    const-string v6, "screen_auto_brightness_adj"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 497
    invoke-virtual {v4, v6, v8, v7, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 502
    :cond_e6
    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 503
    const-string v6, "screen_brightness_mode"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 502
    invoke-virtual {v4, v6, v8, v7, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 506
    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 507
    const-string v6, "screen_buttons_state"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    .line 506
    invoke-virtual {v4, v6, v8, v7, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 510
    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 511
    const-string v6, "torch_state"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    .line 510
    invoke-virtual {v4, v6, v8, v7, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 514
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 515
    const-string v4, "vibrate_in_silent"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    .line 514
    invoke-virtual {v0, v4, v8, v6, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 518
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 519
    const-string v4, "vibrate_in_normal"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    .line 518
    invoke-virtual {v0, v4, v8, v6, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 522
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 523
    const-string v4, "power_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    .line 522
    invoke-virtual {v0, v4, v8, v6, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 526
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 527
    const-string v4, "POWER_SAVE_MODE_OPEN"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lmiui/app/ToggleManager;->mBatterySaverObserver:Landroid/database/ContentObserver;

    .line 526
    invoke-virtual {v0, v4, v8, v6, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 530
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    invoke-static {v0, v4}, Lmiui/provider/ExtraTelephony;->registerQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V

    .line 531
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 532
    const-string v4, "screen_paper_mode_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    .line 531
    invoke-virtual {v0, v4, v8, v6, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 535
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 536
    const-string v4, "key_midrop_enabled"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lmiui/app/ToggleManager;->mMiDropObserver:Landroid/database/ContentObserver;

    .line 535
    invoke-virtual {v0, v4, v8, v6, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 539
    sget v0, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-virtual {p0, v0}, Lmiui/app/ToggleManager;->updateAllToggles(I)V

    .line 540
    return-void
.end method

.method private blacklist removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "string"    # Ljava/lang/String;

    .line 1467
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 1468
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1469
    .local v0, "length":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_27

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_27

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_27

    .line 1470
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1472
    :cond_27
    return-object p1
.end method

.method private blacklist setBrightnessMode()V
    .registers 5

    .line 1605
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 1607
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v1, :cond_8

    .line 1608
    const/4 v1, 0x1

    goto :goto_9

    .line 1609
    :cond_8
    const/4 v1, 0x0

    :goto_9
    sget v2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 1605
    const-string v3, "screen_brightness_mode"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1610
    return-void
.end method

.method public static blacklist setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 672
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManager;->setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 673
    return-void
.end method

.method public static blacklist setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .registers 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p2, "isListStyle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 677
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_5

    const-string v0, "status_bar_toggle_list_order_new"

    goto :goto_7

    .line 678
    :cond_5
    const-string v0, "status_bar_toggle_page_order"

    :goto_7
    nop

    .line 679
    .local v0, "settingId":Ljava/lang/String;
    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x60

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 681
    .local v1, "toggleList":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 682
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 685
    .end local v2    # "i":I
    :cond_32
    nop

    .line 686
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 688
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 689
    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v4

    .line 685
    invoke-static {v2, v0, v3, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 690
    return-void
.end method

.method private blacklist showToast(II)V
    .registers 4
    .param p1, "resId"    # I
    .param p2, "length"    # I

    .line 1774
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmiui/app/ToggleManager;->showToast(Ljava/lang/CharSequence;I)V

    .line 1775
    return-void
.end method

.method private blacklist showToast(Ljava/lang/CharSequence;I)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "length"    # I

    .line 1778
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1779
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    .line 1780
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1781
    return-void
.end method

.method private blacklist toggleAccelerometer()V
    .registers 5

    .line 1715
    :try_start_0
    const-string v0, "window"

    .line 1716
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1715
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 1717
    .local v0, "wm":Landroid/view/IWindowManager;
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-nez v1, :cond_12

    .line 1718
    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V

    goto :goto_26

    .line 1720
    :cond_12
    invoke-direct {p0, v0}, Lmiui/app/ToggleManager;->getRotation(Landroid/view/IWindowManager;)I

    move-result v1

    .line 1721
    .local v1, "rotation":I
    if-eqz v1, :cond_22

    const/4 v2, 0x2

    if-eq v2, v1, :cond_22

    .line 1722
    const v2, 0x110f0330

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lmiui/app/ToggleManager;->showToast(II)V

    .line 1724
    :cond_22
    const/4 v2, -0x1

    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_27

    .line 1727
    .end local v0    # "wm":Landroid/view/IWindowManager;
    .end local v1    # "rotation":I
    :goto_26
    goto :goto_28

    .line 1726
    :catch_27
    move-exception v0

    .line 1728
    :goto_28
    return-void
.end method

.method private blacklist toggleAutoBrightness()V
    .registers 7

    .line 1585
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1586
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    goto :goto_c

    .line 1589
    :cond_8
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    .line 1592
    :goto_c
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-nez v0, :cond_43

    sget-object v0, Lmiui/app/ToggleManager;->AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

    .line 1593
    const-string v2, "pinecone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1594
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 1595
    .local v0, "pm":Landroid/os/IPowerManager;
    const-class v2, Ljava/lang/Integer;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "getScreenBrightness"

    invoke-static {v0, v3, v2, v1}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v1

    .line 1596
    .local v1, "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_43

    .line 1597
    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 1598
    invoke-virtual {v1}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget v4, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 1597
    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1601
    .end local v0    # "pm":Landroid/os/IPowerManager;
    .end local v1    # "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    :cond_43
    invoke-direct {p0}, Lmiui/app/ToggleManager;->setBrightnessMode()V

    .line 1602
    return-void
.end method

.method private blacklist toggleBatterySaverToggle()V
    .registers 6

    .line 1934
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    .line 1935
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1936
    .local v0, "bundle":Landroid/os/Bundle;
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    const-string v2, "POWER_SAVE_MODE_OPEN"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1937
    const-string v1, "content://com.miui.powercenter.powersaver"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget v2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v1, v2}, Lmiui/app/ToggleManager;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 1938
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const-string v4, "changePowerMode"

    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1939
    return-void
.end method

.method private blacklist toggleBluetooth()V
    .registers 5

    .line 1503
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    .line 1504
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1505
    nop

    .line 1506
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v0, :cond_13

    .line 1507
    const v0, 0x110801fc

    goto :goto_16

    .line 1508
    :cond_13
    const v0, 0x110801fb

    .line 1505
    :goto_16
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1509
    iget-object v0, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1510
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1511
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1512
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    if-eqz v2, :cond_35

    const-wide/16 v2, 0x1f4

    goto :goto_37

    :cond_35
    const-wide/16 v2, 0x0

    :goto_37
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1513
    return-void
.end method

.method private blacklist toggleBluetooth(Z)V
    .registers 8
    .param p1, "enable"    # Z

    .line 1516
    invoke-direct {p0}, Lmiui/app/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1517
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 1518
    .local v0, "state":I
    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_19

    const/16 v1, 0xd

    if-ne v0, v1, :cond_17

    goto :goto_19

    :cond_17
    move v1, v2

    goto :goto_1a

    :cond_19
    :goto_19
    move v1, v3

    .line 1520
    .local v1, "changing":Z
    :goto_1a
    if-nez v1, :cond_3b

    .line 1521
    if-eqz p1, :cond_2a

    const/16 v4, 0xc

    if-eq v0, v4, :cond_2a

    .line 1522
    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    .line 1523
    iget-object v2, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_49

    .line 1524
    :cond_2a
    if-nez p1, :cond_38

    const/16 v4, 0xa

    if-eq v0, v4, :cond_38

    .line 1525
    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    .line 1526
    iget-object v2, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_49

    .line 1528
    :cond_38
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    goto :goto_49

    .line 1531
    :cond_3b
    iget-object v3, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 1532
    .local v2, "message":Landroid/os/Message;
    iget-object v3, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1535
    .end local v0    # "state":I
    .end local v1    # "changing":Z
    .end local v2    # "message":Landroid/os/Message;
    :cond_49
    :goto_49
    return-void
.end method

.method private blacklist toggleData()Z
    .registers 8

    .line 1664
    const/4 v0, 0x0

    .line 1665
    .local v0, "result":Z
    const/4 v1, 0x1

    invoke-static {v1}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 1666
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    if-eqz v2, :cond_19

    .line 1667
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    .line 1668
    iget-object v2, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Landroid/app/MobileDataUtils;->enableMobileData(Landroid/content/Context;Z)V

    goto :goto_4e

    .line 1670
    :cond_19
    iget-object v1, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/app/MobileDataUtils;->getSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1671
    .local v1, "subscriberId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 1672
    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 1673
    .local v2, "template":Landroid/net/NetworkTemplate;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1674
    .local v3, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.miui.securitycenter"

    const-string v6, "com.miui.networkassistant.ui.activity.NetworkOverLimitActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1676
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1677
    const-string v4, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1678
    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1679
    const/4 v0, 0x1

    .line 1683
    .end local v1    # "subscriberId":Ljava/lang/String;
    .end local v2    # "template":Landroid/net/NetworkTemplate;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4e
    :goto_4e
    return v0
.end method

.method private blacklist toggleEdit()V
    .registers 6

    .line 2109
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "com.android.settings.ToggleArrangementFragment"

    goto :goto_d

    .line 2110
    :cond_b
    const-string v0, "com.android.settings.TogglePositionFragment"

    :goto_d
    nop

    .line 2111
    .local v0, "extraShowFragment":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2112
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2113
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2114
    const-string v2, ":android:show_fragment"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2115
    const/4 v2, 0x1

    const-string v3, ":android:no_headers"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2116
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SubSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2118
    :try_start_2f
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_37

    .line 2121
    goto :goto_50

    .line 2119
    :catch_37
    move-exception v2

    .line 2120
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleEdit() Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ToggleManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_50
    return-void
.end method

.method private blacklist toggleFlightMode()V
    .registers 4

    .line 1872
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    .line 1873
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1874
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1875
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1876
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1877
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1878
    return-void
.end method

.method private blacklist toggleGps()V
    .registers 5

    .line 1807
    iget-object v0, p0, Lmiui/app/ToggleManager;->mLocationManager:Landroid/location/LocationManager;

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    xor-int/lit8 v1, v1, 0x1

    new-instance v2, Landroid/os/UserHandle;

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    .line 1808
    return-void
.end method

.method private blacklist toggleMiDrop()V
    .registers 7

    .line 1999
    const/16 v0, 0x1b

    invoke-static {v0}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v0

    if-nez v0, :cond_55

    .line 2000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    .line 2001
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->isDisplayMiDropOn()Z

    move-result v1

    .line 2002
    .local v1, "isMiDropOn":Z
    new-instance v2, Landroid/content/Intent;

    if-eqz v1, :cond_16

    const-string v3, "miui.intent.action.midrop_off"

    goto :goto_18

    :cond_16
    const-string v3, "miui.intent.action.midrop_on"

    :goto_18
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2003
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.xiaomi.midrop"

    const-string v5, "com.xiaomi.midrop.startup.StartupReceiver"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2004
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2005
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiDrop: toggle MiDrop to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_43

    const-string v4, "OFF"

    goto :goto_45

    :cond_43
    const-string v4, "ON"

    :goto_45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ToggleManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    invoke-virtual {p0, v0}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    .line 2009
    .end local v1    # "isMiDropOn":Z
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_55
    return-void
.end method

.method private blacklist togglePaperMode()V
    .registers 5

    .line 1969
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    .line 1970
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    sget v2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    const-string v3, "screen_paper_mode_enabled"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1972
    return-void
.end method

.method private blacklist togglePowerMode()V
    .registers 5

    .line 1908
    iget-object v0, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    const-string v1, "high"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1909
    const-string v0, "middle"

    iput-object v0, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    goto :goto_11

    .line 1911
    :cond_f
    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    .line 1914
    :goto_11
    iget-object v0, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    const-string v1, "persist.sys.aries.power_profile"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    sget v2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    const-string v3, "power_mode"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1917
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.POWER_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1918
    .local v0, "powerModeChange":Landroid/content/Intent;
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1919
    return-void
.end method

.method private blacklist toggleQuietMode()V
    .registers 8

    .line 1950
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$SoundMode;->isZenModeOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1951
    .local v0, "enabled":Z
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/provider/MiuiSettings$SoundMode;->setZenModeOn(Landroid/content/Context;ZLjava/lang/String;)V

    .line 1954
    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 1955
    .local v1, "mode":I
    :goto_12
    sget-object v2, Landroid/provider/MiuiSettings$SilenceMode;->MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 1957
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1955
    const-string v5, "silence_DND"

    const-string v6, "0"

    invoke-static {v5, v2, v6, v3, v4}, Landroid/provider/MiuiSettings$SilenceMode;->reportRingerModeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1958
    return-void
.end method

.method private blacklist toggleRinger()V
    .registers 8

    .line 1755
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$SoundMode;->isSilenceModeOn(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1756
    .local v0, "enabled":Z
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/provider/MiuiSettings$SoundMode;->setSilenceModeOn(Landroid/content/Context;Z)V

    .line 1759
    if-eqz v0, :cond_11

    const/4 v1, 0x4

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 1760
    .local v1, "mode":I
    :goto_12
    sget-object v2, Landroid/provider/MiuiSettings$SilenceMode;->MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 1762
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1760
    const-string v5, "silence_DND"

    const-string v6, "0"

    invoke-static {v5, v2, v6, v3, v4}, Landroid/provider/MiuiSettings$SilenceMode;->reportRingerModeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1763
    return-void
.end method

.method private blacklist toggleScreenButtonState()V
    .registers 6

    .line 2081
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    .line 2083
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    sget v2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    const-string v3, "screen_buttons_has_been_disabled"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const v2, 0x110f0058

    if-nez v0, :cond_4a

    .line 2085
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    sget v4, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2087
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2088
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 2089
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2090
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2092
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 2093
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 2094
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2095
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    goto :goto_56

    .line 2097
    :cond_4a
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v0, :cond_4f

    .line 2098
    goto :goto_52

    .line 2099
    :cond_4f
    const v2, 0x110f0059

    :goto_52
    nop

    .line 2097
    invoke-direct {p0, v2, v4}, Lmiui/app/ToggleManager;->showToast(II)V

    .line 2103
    :goto_56
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 2105
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    sget v2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 2103
    const-string v3, "screen_buttons_state"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2106
    return-void
.end method

.method private blacklist toggleScreenshot()V
    .registers 4

    .line 2036
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 2037
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2038
    return-void
.end method

.method private blacklist toggleSync()V
    .registers 3

    .line 1825
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1826
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1827
    return-void
.end method

.method private blacklist toggleSyncIntenal()V
    .registers 8

    .line 1831
    const/4 v0, 0x1

    :try_start_1
    const-class v1, Landroid/content/ContentResolver;

    const-string v2, "setMasterSyncAutomaticallyAsUser"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1833
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lmiui/app/ToggleManager;->isSyncOn()Z

    move-result v4

    if-nez v4, :cond_20

    move v4, v0

    goto :goto_21

    :cond_20
    move v4, v6

    :goto_21
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    sget v4, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_34

    .line 1837
    nop

    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_44

    .line 1834
    :catch_34
    move-exception v1

    .line 1835
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ToggleManager"

    const-string v3, "setMasterSyncAutomaticallyAsUser not found."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 1838
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_44
    return-void
.end method

.method private blacklist toggleTorch()V
    .registers 4

    .line 1901
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1902
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "miui.intent.extra.IS_TOGGLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1903
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1904
    return-void
.end method

.method private blacklist toggleVibrate()V
    .registers 2

    .line 1788
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->toggleVibrateSetting(Landroid/content/Context;)V

    .line 1789
    return-void
.end method

.method private blacklist updateAccelerometerToggle()V
    .registers 5

    .line 1741
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    sget v1, Lmiui/app/ToggleManager;->sCurrentUserId:I

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    move v3, v1

    :cond_f
    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    .line 1744
    xor-int/lit8 v0, v3, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1745
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-eqz v0, :cond_1f

    .line 1746
    const v0, 0x1108021d

    goto :goto_22

    .line 1747
    :cond_1f
    const v0, 0x1108021e

    .line 1745
    :goto_22
    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1748
    return-void
.end method

.method private blacklist updateBatterySaverToggle()V
    .registers 6

    .line 1942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBatterySaverToggle() old mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    sget v2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    const-string v3, "POWER_SAVE_MODE_OPEN"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_28

    const/4 v4, 0x1

    :cond_28
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    .line 1944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBatterySaverToggle() new mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    const/16 v1, 0x1e

    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1946
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    invoke-static {v1, v0}, Lmiui/app/ToggleManager;->getImageResource(IZ)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1947
    return-void
.end method

.method private blacklist updateBluetoothToggle()V
    .registers 7

    .line 1553
    invoke-direct {p0}, Lmiui/app/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1554
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 1555
    .local v0, "state":I
    iget-object v1, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1d

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1b

    goto :goto_1d

    :cond_1b
    move v1, v2

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v1, v3

    .line 1556
    .local v1, "enable":Z
    :goto_1e
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    if-eqz v4, :cond_25

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    goto :goto_26

    :cond_25
    move v4, v1

    :goto_26
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    .line 1557
    const/4 v5, 0x2

    invoke-virtual {p0, v5, v4}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1558
    invoke-virtual {p0, v5, v2}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 1560
    const/16 v4, 0xc

    if-eq v0, v4, :cond_37

    const/16 v4, 0xa

    if-ne v0, v4, :cond_58

    .line 1562
    :cond_37
    nop

    .line 1563
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v4, :cond_40

    .line 1564
    const v4, 0x110801fc

    goto :goto_43

    .line 1565
    :cond_40
    const v4, 0x110801fb

    .line 1562
    :goto_43
    invoke-virtual {p0, v5, v4}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1566
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    if-eqz v4, :cond_58

    .line 1567
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    .line 1568
    iget-object v2, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1569
    iget-object v2, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1573
    .end local v0    # "state":I
    .end local v1    # "enable":Z
    :cond_58
    return-void
.end method

.method private blacklist updateBrightnessToggle()V
    .registers 4

    .line 1576
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v0, :cond_8

    .line 1577
    const v1, 0x110801fd

    goto :goto_b

    .line 1578
    :cond_8
    const v1, 0x110801fe

    :goto_b
    nop

    .line 1580
    .local v1, "autoResId":I
    const/16 v2, 0x16

    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1581
    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1582
    return-void
.end method

.method private blacklist updateDataToggle()V
    .registers 3

    .line 1692
    iget-object v0, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/MobileDataUtils;->isMobileEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    .line 1693
    iget-object v0, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/app/ToggleManager$21;

    invoke-direct {v1, p0}, Lmiui/app/ToggleManager$21;-><init>(Lmiui/app/ToggleManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1707
    return-void
.end method

.method private blacklist updateFlightModeToggle()V
    .registers 4

    .line 1881
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v2, 0x1

    :cond_c
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    .line 1883
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v2}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1884
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-eqz v1, :cond_1b

    .line 1885
    const v1, 0x11080208

    goto :goto_1e

    .line 1886
    :cond_1b
    const v1, 0x11080207

    .line 1884
    :goto_1e
    invoke-virtual {p0, v0, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1888
    invoke-direct {p0}, Lmiui/app/ToggleManager;->postUpdateDataToggleAsync()V

    .line 1889
    return-void
.end method

.method private blacklist updateGpsToggle()V
    .registers 4

    .line 1814
    iget-object v0, p0, Lmiui/app/ToggleManager;->mLocationManager:Landroid/location/LocationManager;

    new-instance v1, Landroid/os/UserHandle;

    sget v2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "gps"

    invoke-virtual {v0, v2, v1}, Landroid/location/LocationManager;->isProviderEnabledForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    .line 1815
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1816
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    if-eqz v0, :cond_1d

    .line 1817
    const v0, 0x1108020a

    goto :goto_20

    .line 1818
    :cond_1d
    const v0, 0x11080209

    .line 1816
    :goto_20
    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1819
    return-void
.end method

.method public static blacklist updateImageView(ILandroid/widget/ImageView;)V
    .registers 3
    .param p0, "id"    # I
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .line 1017
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManager;->updateImageView(ILandroid/widget/ImageView;I)V

    .line 1018
    return-void
.end method

.method public static blacklist updateImageView(ILandroid/widget/ImageView;I)V
    .registers 5
    .param p0, "id"    # I
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "color"    # I

    .line 1021
    if-eqz p1, :cond_1b

    .line 1022
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1023
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_15

    .line 1024
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1026
    :cond_15
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1027
    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->initDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1029
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1b
    return-void
.end method

.method private blacklist updateMiDropToggle()V
    .registers 5

    .line 2012
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_midrop_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2013
    .local v0, "setting":I
    const/4 v1, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_10

    const/4 v3, 0x3

    if-ne v0, v3, :cond_11

    :cond_10
    move v2, v1

    :cond_11
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    .line 2014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiDrop: isMiDropDisabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1b

    invoke-static {v3}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isWifiAPDisabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x18

    .line 2015
    invoke-static {v3}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMiDropChanging:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2014
    const-string v3, "ToggleManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    invoke-virtual {p0, v1}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    .line 2018
    return-void
.end method

.method private blacklist updatePaperModeToggle()V
    .registers 5

    .line 1975
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    sget v1, Lmiui/app/ToggleManager;->sCurrentUserId:I

    const-string v2, "screen_paper_mode_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v3, 0x1

    :cond_e
    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    .line 1977
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, v3}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1978
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    if-eqz v1, :cond_1d

    .line 1979
    const v1, 0x11080218

    goto :goto_20

    .line 1980
    :cond_1d
    const v1, 0x11080217

    .line 1978
    :goto_20
    invoke-virtual {p0, v0, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1981
    return-void
.end method

.method private blacklist updatePowerModeToggle()V
    .registers 4

    .line 1922
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    sget v1, Lmiui/app/ToggleManager;->sCurrentUserId:I

    const-string v2, "power_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    .line 1923
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1924
    const-string v0, "middle"

    iput-object v0, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    .line 1926
    :cond_16
    iget-object v0, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    const-string v1, "high"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1927
    .local v0, "isHigh":Z
    const/16 v1, 0x17

    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1928
    if-eqz v0, :cond_29

    .line 1929
    const v2, 0x1108021a

    goto :goto_2c

    .line 1930
    :cond_29
    const v2, 0x11080219

    .line 1928
    :goto_2c
    invoke-virtual {p0, v1, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1931
    return-void
.end method

.method private blacklist updateQuietModeToggle()V
    .registers 3

    .line 1961
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$SoundMode;->isZenModeOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    .line 1962
    const/16 v1, 0x19

    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1963
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    if-eqz v0, :cond_15

    .line 1964
    const v0, 0x1108021c

    goto :goto_18

    .line 1965
    :cond_15
    const v0, 0x1108021b

    .line 1963
    :goto_18
    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1966
    return-void
.end method

.method private blacklist updateScreenButtonState()V
    .registers 5

    .line 2125
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    sget v1, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 2126
    const-string v2, "screen_buttons_state"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v3, 0x1

    :cond_e
    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    .line 2127
    const/16 v0, 0x14

    invoke-virtual {p0, v0, v3}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 2128
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v1, :cond_1d

    .line 2129
    const v1, 0x1108021f

    goto :goto_20

    .line 2130
    :cond_1d
    const v1, 0x11080220

    .line 2128
    :goto_20
    invoke-virtual {p0, v0, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 2131
    return-void
.end method

.method private blacklist updateSyncToggle()V
    .registers 3

    .line 1841
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1842
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1843
    return-void
.end method

.method private blacklist updateSyncToggle(Z)V
    .registers 4
    .param p1, "isSyncOn"    # Z

    .line 1846
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1847
    if-eqz p1, :cond_b

    .line 1848
    const v1, 0x11080224

    goto :goto_e

    .line 1849
    :cond_b
    const v1, 0x11080223

    .line 1847
    :goto_e
    invoke-virtual {p0, v0, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1850
    return-void
.end method

.method public static blacklist updateTextView(ILandroid/widget/TextView;)V
    .registers 3
    .param p0, "id"    # I
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 1032
    if-eqz p1, :cond_d

    .line 1033
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    :cond_d
    return-void
.end method

.method private blacklist updateTorchToggle()V
    .registers 4

    .line 1892
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    .line 1893
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1892
    const-string v1, "torch_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    move v2, v1

    :cond_11
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    .line 1894
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v2}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1895
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    if-eqz v1, :cond_20

    .line 1896
    const v1, 0x11080226

    goto :goto_23

    .line 1897
    :cond_20
    const v1, 0x11080225

    .line 1895
    :goto_23
    invoke-virtual {p0, v0, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1898
    return-void
.end method

.method public static blacklist uriHasUserId(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2139
    if-nez p0, :cond_4

    .line 2140
    const/4 v0, 0x0

    return v0

    .line 2141
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist validateEditPositionInList(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 880
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v0, 0x1d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v2

    if-ne v1, v2, :cond_1a

    .line 881
    invoke-interface {p1, v0}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v2

    if-eq v1, v2, :cond_3d

    .line 882
    :cond_1a
    :goto_1a
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 883
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1a

    .line 885
    :cond_28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v2

    if-gt v1, v2, :cond_36

    .line 886
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 888
    :cond_36
    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v1

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 891
    :cond_3d
    :goto_3d
    return-void
.end method

.method private static blacklist validateEditPositionInPage(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 895
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v0, 0x1d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p1, v0}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_1c

    .line 896
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2d

    .line 897
    :cond_1c
    :goto_1c
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 898
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1c

    .line 900
    :cond_2a
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    :cond_2d
    return-void
.end method

.method private static blacklist validateToggleList(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 730
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 731
    const/16 v0, 0xf

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 732
    const/16 v0, 0xb

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 733
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 734
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 735
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 736
    const/16 v0, 0x16

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 737
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 738
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 739
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 740
    const/16 v0, 0x1b

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 741
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 742
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 743
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 744
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 745
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 746
    const/16 v0, 0x19

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 747
    const/16 v0, 0x17

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 748
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 749
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 750
    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 752
    invoke-static {p0, p1, p2}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 753
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->validateEditPositionInList(Landroid/content/Context;Ljava/util/List;)V

    .line 754
    return-void
.end method

.method public static blacklist validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;ZI)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "isListStyle"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;ZI)V"
        }
    .end annotation

    .line 720
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_6

    .line 721
    invoke-static {p0, p1, p3}, Lmiui/app/ToggleManager;->validateToggleList(Landroid/content/Context;Ljava/util/ArrayList;I)V

    goto :goto_9

    .line 724
    :cond_6
    invoke-static {p0, p1, p3}, Lmiui/app/ToggleManager;->validateTogglePage(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 726
    :goto_9
    return-void
.end method

.method private static blacklist validateTogglePage(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 758
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 759
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 760
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 761
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 762
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 763
    const/16 v0, 0xf

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 764
    const/16 v0, 0x1b

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 765
    const/16 v0, 0x16

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 766
    const/16 v0, 0xb

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 768
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 769
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 770
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 771
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 772
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 773
    const/16 v0, 0x19

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 774
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 775
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 776
    const/16 v0, 0x17

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 777
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 778
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 779
    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 781
    invoke-static {p0, p1, p2}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 782
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->validateEditPositionInPage(Landroid/content/Context;Ljava/util/List;)V

    .line 783
    return-void
.end method

.method private blacklist verifyBluetoothState()V
    .registers 5

    .line 1538
    invoke-direct {p0}, Lmiui/app/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1539
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 1540
    .local v0, "state":I
    iget-object v1, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1b

    const/16 v1, 0xb

    if-ne v0, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v1, 0x1

    .line 1541
    .local v1, "enable":Z
    :goto_1c
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eq v2, v1, :cond_35

    .line 1542
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    .line 1543
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1544
    nop

    .line 1545
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v3, :cond_2f

    .line 1546
    const v3, 0x110801fc

    goto :goto_32

    .line 1547
    :cond_2f
    const v3, 0x110801fb

    .line 1544
    :goto_32
    invoke-virtual {p0, v2, v3}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1550
    .end local v0    # "state":I
    .end local v1    # "enable":Z
    :cond_35
    return-void
.end method


# virtual methods
.method public blacklist applyBrightness(IZ)V
    .registers 5
    .param p1, "brightness"    # I
    .param p2, "write"    # Z

    .line 1632
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1633
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1634
    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2167
    const-string v0, "  - ToggleManager ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2168
    const-string v0, "  - wifi ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2169
    const-string v0, "  mWifiEnable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2170
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2171
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2172
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2173
    const-string v0, "  mWifiChanging="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2174
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2175
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2176
    iget-object v0, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2177
    const-string v0, "  - data ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2178
    const-string v0, "  mMobileDataEnable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2179
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2180
    const-string v0, "  mMobilePolicyEnable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2181
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2182
    const-string v0, "  mIsSimMissing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2183
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2184
    const-string v0, "  mFlightMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2185
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2186
    const-string v0, "  - toggles ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_65
    const/16 v1, 0x20

    if-ge v0, v1, :cond_80

    .line 2188
    const-string v1, "  Toggle:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2189
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2190
    const-string v1, "  Status:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2191
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aget-boolean v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2187
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 2193
    .end local v0    # "i":I
    :cond_80
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b0

    .line 2194
    const-string v0, "  - listeners ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2195
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_95
    if-ltz v0, :cond_b0

    .line 2196
    iget-object v1, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2197
    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/ToggleManager$OnToggleChangedListener;

    .line 2198
    .local v2, "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    const-string v3, "  listener:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2199
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2195
    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    .end local v2    # "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    add-int/lit8 v0, v0, -0x1

    goto :goto_95

    .line 2202
    .end local v0    # "i":I
    :cond_b0
    return-void
.end method

.method public blacklist getCurBrightness()I
    .registers 7

    .line 1613
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v0, :cond_54

    sget-boolean v0, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_54

    .line 1614
    sget-object v0, Lmiui/app/ToggleManager;->AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

    const-string v1, "pinecone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1615
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    .line 1616
    .local v0, "defaultBrightness":I
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1617
    .local v1, "pm":Landroid/os/IPowerManager;
    const/4 v2, 0x0

    .line 1618
    .local v2, "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_37

    .line 1619
    const-class v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "getScreenBrightness"

    invoke-static {v1, v5, v3, v4}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v2

    goto :goto_3e

    .line 1621
    :cond_37
    const-string v3, "ToggleManager"

    const-string v4, "pm is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :goto_3e
    if-nez v2, :cond_42

    move v3, v0

    goto :goto_4c

    :cond_42
    invoke-virtual {v2}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_4c
    sget v4, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    sub-int/2addr v3, v4

    return v3

    .line 1625
    .end local v0    # "defaultBrightness":I
    .end local v1    # "pm":Landroid/os/IPowerManager;
    .end local v2    # "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    :cond_50
    iget v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoLevel:F

    float-to-int v0, v0

    return v0

    .line 1628
    :cond_54
    iget v0, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    sget v1, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist isBrightnessAutoMode()Z
    .registers 2

    .line 2134
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    return v0
.end method

.method blacklist isDisplayMiDropOn()Z
    .registers 5

    .line 1994
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_midrop_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1995
    .local v0, "settings":I
    const/4 v1, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1d

    if-ne v0, v1, :cond_1e

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v3, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v3}, Lmiui/app/WifiApEnabler;->isWifiApOn()Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_1d
    move v2, v1

    :cond_1e
    return v2
.end method

.method public blacklist onDestroy()V
    .registers 3

    .line 565
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 566
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 567
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 568
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 569
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 570
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 571
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 572
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 573
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 574
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 575
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 576
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 577
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBatterySaverObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 578
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    invoke-static {v0, v1}, Lmiui/provider/ExtraTelephony;->unRegisterQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V

    .line 579
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 580
    iget-object v0, p0, Lmiui/app/ToggleManager;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 581
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 582
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 583
    sget-object v0, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v0, :cond_7f

    .line 584
    invoke-virtual {v0}, Lmiui/app/WifiApEnabler;->unregisterReceiver()V

    .line 586
    :cond_7f
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 587
    return-void
.end method

.method public blacklist performToggle(I)Z
    .registers 6
    .param p1, "id"    # I

    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performToggle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lmiui/app/ToggleManager;->isValid(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aget-boolean v1, v1, p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_28

    :cond_26
    const-string v1, ""

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/4 v0, 0x0

    .line 1304
    .local v0, "mustCollapse":Z
    packed-switch p1, :pswitch_data_ae

    :pswitch_39
    goto/16 :goto_ad

    .line 1353
    :pswitch_3b
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleBatterySaverToggle()V

    .line 1354
    goto/16 :goto_ad

    .line 1374
    :pswitch_40
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleEdit()V

    .line 1375
    const/4 v0, 0x1

    .line 1376
    goto/16 :goto_ad

    .line 1370
    :pswitch_46
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->toggleCast()V

    .line 1371
    const/4 v0, 0x1

    .line 1372
    goto/16 :goto_ad

    .line 1367
    :pswitch_4c
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleMiDrop()V

    .line 1368
    goto/16 :goto_ad

    .line 1364
    :pswitch_51
    invoke-direct {p0}, Lmiui/app/ToggleManager;->togglePaperMode()V

    .line 1365
    goto :goto_ad

    .line 1361
    :pswitch_55
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleQuietMode()V

    .line 1362
    goto :goto_ad

    .line 1356
    :pswitch_59
    sget-object v1, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v1, :cond_ad

    .line 1357
    invoke-virtual {v1}, Lmiui/app/WifiApEnabler;->toggleWifiAp()V

    goto :goto_ad

    .line 1350
    :pswitch_61
    invoke-direct {p0}, Lmiui/app/ToggleManager;->togglePowerMode()V

    .line 1351
    goto :goto_ad

    .line 1306
    :pswitch_65
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleAutoBrightness()V

    .line 1307
    goto :goto_ad

    .line 1331
    :pswitch_69
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleScreenButtonState()V

    .line 1332
    goto :goto_ad

    .line 1334
    :pswitch_6d
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleScreenshot()V

    .line 1335
    const/4 v0, 0x1

    .line 1336
    goto :goto_ad

    .line 1347
    :pswitch_72
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->toggleWifi()V

    .line 1348
    goto :goto_ad

    .line 1341
    :pswitch_76
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleTorch()V

    .line 1342
    goto :goto_ad

    .line 1321
    :pswitch_7a
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1322
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1323
    goto :goto_ad

    .line 1315
    :pswitch_8c
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleFlightMode()V

    .line 1316
    goto :goto_ad

    .line 1338
    :pswitch_90
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleSync()V

    .line 1339
    goto :goto_ad

    .line 1318
    :pswitch_94
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleGps()V

    .line 1319
    goto :goto_ad

    .line 1344
    :pswitch_98
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleVibrate()V

    .line 1345
    goto :goto_ad

    .line 1325
    :pswitch_9c
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleRinger()V

    .line 1326
    goto :goto_ad

    .line 1328
    :pswitch_a0
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleAccelerometer()V

    .line 1329
    goto :goto_ad

    .line 1309
    :pswitch_a4
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleBluetooth()V

    .line 1310
    goto :goto_ad

    .line 1312
    :pswitch_a8
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleData()Z

    move-result v0

    .line 1313
    nop

    .line 1380
    :cond_ad
    :goto_ad
    return v0

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_a8
        :pswitch_a4
        :pswitch_a0
        :pswitch_39
        :pswitch_9c
        :pswitch_98
        :pswitch_94
        :pswitch_90
        :pswitch_8c
        :pswitch_7a
        :pswitch_76
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_72
        :pswitch_39
        :pswitch_39
        :pswitch_6d
        :pswitch_39
        :pswitch_69
        :pswitch_39
        :pswitch_65
        :pswitch_61
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4c
        :pswitch_46
        :pswitch_40
        :pswitch_3b
    .end packed-switch
.end method

.method public blacklist removeToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .registers 5
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleChangedListener;

    .line 919
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2a

    .line 920
    iget-object v1, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 921
    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 922
    :cond_22
    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 919
    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 925
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method

.method public blacklist removeToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .registers 3
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .line 928
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 929
    return-void
.end method

.method public blacklist setOnToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .registers 4
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleChangedListener;

    .line 911
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    return-void
.end method

.method public blacklist setOnToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .registers 3
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .line 915
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    return-void
.end method

.method public blacklist setUserSelectedToggleOrder(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 667
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lmiui/app/ToggleManager;->setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 668
    return-void
.end method

.method public blacklist startLongClickAction(I)Z
    .registers 10
    .param p1, "id"    # I

    .line 1038
    const/16 v0, 0x12

    if-ne v0, p1, :cond_9

    .line 1039
    invoke-direct {p0}, Lmiui/app/ToggleManager;->longClickScreenshot()Z

    move-result v0

    return v0

    .line 1042
    :cond_9
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1a

    invoke-static {p1}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 1043
    :cond_19
    return v1

    .line 1046
    :cond_1a
    sget-object v2, Lmiui/app/ToggleManager;->sLongClickActions:[I

    aget v2, v2, p1

    .line 1047
    .local v2, "resId":I
    if-nez v2, :cond_21

    .line 1048
    return v1

    .line 1051
    :cond_21
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1052
    .local v3, "action":Ljava/lang/String;
    if-nez v3, :cond_2e

    .line 1053
    return v1

    .line 1056
    :cond_2e
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1057
    .local v4, "component":Landroid/content/ComponentName;
    if-nez v4, :cond_35

    .line 1058
    return v1

    .line 1061
    :cond_35
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1063
    if-ne v0, p1, :cond_48

    .line 1065
    const-string v5, ":miui:starting_window_label"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    :cond_48
    const/high16 v5, 0x14000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1071
    :try_start_4d
    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_54} :catch_55

    .line 1074
    goto :goto_6e

    .line 1072
    :catch_55
    move-exception v5

    .line 1073
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start activity exception, component = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ToggleManager"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_6e
    return v0
.end method

.method blacklist toggleCast()V
    .registers 4

    .line 1385
    :try_start_0
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lmiui/app/ToggleManager;->getCastIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1388
    goto :goto_10

    .line 1386
    :catch_c
    move-exception v0

    .line 1387
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1389
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    return-void
.end method

.method blacklist toggleWifi()V
    .registers 8

    .line 1400
    const/16 v0, 0xf

    invoke-static {v0}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v0

    if-nez v0, :cond_48

    .line 1401
    sget-object v0, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1402
    .local v0, "currentWifiState":I
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_15

    move v1, v2

    goto :goto_16

    :cond_15
    move v1, v3

    .line 1404
    .local v1, "enable":Z
    :goto_16
    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    .line 1405
    .local v4, "wifiApState":I
    if-eqz v1, :cond_35

    sget-object v5, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v5}, Lmiui/app/ConnectivityManagerReflector;->getWifiStaSapConcurrency(Landroid/net/wifi/WifiManager;)Z

    move-result v5

    if-nez v5, :cond_35

    const/16 v5, 0xc

    if-eq v4, v5, :cond_2e

    const/16 v5, 0xd

    if-ne v4, v5, :cond_35

    .line 1408
    :cond_2e
    sget-object v5, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v5, :cond_35

    .line 1409
    invoke-virtual {v5, v3}, Lmiui/app/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 1412
    :cond_35
    iget-object v5, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1413
    iget-object v5, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_40

    move v6, v2

    goto :goto_41

    :cond_40
    move v6, v3

    :goto_41
    invoke-virtual {v5, v2, v6, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1415
    .end local v0    # "currentWifiState":I
    .end local v1    # "enable":Z
    .end local v4    # "wifiApState":I
    :cond_48
    return-void
.end method

.method public blacklist updateAllToggles(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 543
    sput p1, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 544
    invoke-direct {p0}, Lmiui/app/ToggleManager;->queryBrightnessStatus()V

    .line 545
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBluetoothToggle()V

    .line 546
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateRingerToggle()V

    .line 547
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/ToggleManager;->updateWifiToggle(Landroid/content/Intent;)V

    .line 548
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateSyncToggle()V

    .line 549
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateAccelerometerToggle()V

    .line 550
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateFlightModeToggle()V

    .line 551
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateGpsToggle()V

    .line 552
    iget-object v0, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 553
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBrightnessToggle()V

    .line 554
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateScreenButtonState()V

    .line 555
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateTorchToggle()V

    .line 556
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateVibrateToggle()V

    .line 557
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePowerModeToggle()V

    .line 558
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBatterySaverToggle()V

    .line 559
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateQuietModeToggle()V

    .line 560
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePaperModeToggle()V

    .line 561
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateMiDropToggle()V

    .line 562
    return-void
.end method

.method blacklist updateMiDropToggle(Z)V
    .registers 7
    .param p1, "updateWifiAp"    # Z

    .line 2021
    const/4 v0, 0x0

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2022
    sget-object v1, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v1, v0}, Lmiui/app/WifiApEnabler;->updateWifiApToggle(Z)V

    .line 2024
    :cond_e
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->isDisplayMiDropOn()Z

    move-result v1

    .line 2025
    .local v1, "isMiDropOn":Z
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v2}, Lmiui/app/WifiApEnabler;->isWifiApDisabled()Z

    move-result v2

    goto :goto_20

    :cond_1f
    move v2, v0

    .line 2026
    .local v2, "isWifiApDisabled":Z
    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiDrop: updateMiDropToggle(boolean) isMiDropOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isWifiApDisabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMiDropChanging = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWifiChanging = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ToggleManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    if-nez v2, :cond_64

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    if-nez v3, :cond_64

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    if-eqz v3, :cond_65

    :cond_64
    const/4 v0, 0x1

    :cond_65
    const/16 v3, 0x1b

    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 2029
    invoke-virtual {p0, v3, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 2030
    if-eqz v1, :cond_73

    .line 2031
    const v0, 0x1108020e

    goto :goto_76

    .line 2032
    :cond_73
    const v0, 0x1108020d

    .line 2030
    :goto_76
    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 2033
    return-void
.end method

.method public blacklist updateRingerToggle()V
    .registers 4

    .line 1766
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$SoundMode;->isSilenceModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 1767
    .local v0, "silentEnabled":Z
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1768
    if-eqz v0, :cond_10

    .line 1769
    const v2, 0x11080210

    goto :goto_13

    .line 1770
    :cond_10
    const v2, 0x1108020f

    .line 1768
    :goto_13
    invoke-virtual {p0, v1, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1771
    return-void
.end method

.method protected blacklist updateToggleDisabled(IZ)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "disabled"    # Z

    .line 980
    sget-object v0, Lmiui/app/ToggleManager;->sToggleDisabled:[Z

    aput-boolean p2, v0, p1

    .line 981
    return-void
.end method

.method protected blacklist updateToggleImage(II)V
    .registers 8
    .param p1, "toggleId"    # I
    .param p2, "resId"    # I

    .line 1285
    sget-object v0, Lmiui/app/ToggleManager;->sToggleImages:[I

    aput p2, v0, p1

    .line 1287
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4a

    .line 1288
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_14
    if-ltz v0, :cond_4a

    .line 1289
    iget-object v1, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1290
    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/ToggleManager$OnToggleChangedListener;

    .line 1291
    .local v2, "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    if-nez v2, :cond_44

    .line 1292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listener is null:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ToggleManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_47

    .line 1295
    :cond_44
    invoke-interface {v2, p1}, Lmiui/app/ToggleManager$OnToggleChangedListener;->OnToggleChanged(I)V

    .line 1288
    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    .end local v2    # "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    :goto_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 1299
    .end local v0    # "i":I
    :cond_4a
    return-void
.end method

.method protected blacklist updateToggleStatus(IZ)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "isOpen"    # Z

    .line 976
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aput-boolean p2, v0, p1

    .line 977
    return-void
.end method

.method protected blacklist updateToggleStatusName(ILjava/lang/Object;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "statusName"    # Ljava/lang/Object;

    .line 984
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    return-void
.end method

.method public blacklist updateVibrateToggle()V
    .registers 4

    .line 1792
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1793
    .local v0, "isVibrateEnabled":Z
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1794
    if-eqz v0, :cond_10

    .line 1795
    const v2, 0x11080228

    goto :goto_13

    .line 1796
    :cond_10
    const v2, 0x11080227

    .line 1794
    :goto_13
    invoke-virtual {p0, v1, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1797
    return-void
.end method

.method blacklist updateWifiToggle(Landroid/content/Intent;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1422
    const/4 v0, -0x1

    .line 1423
    .local v0, "wifiState":I
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_8
    const-string v1, ""

    .line 1424
    .local v1, "action":Ljava/lang/String;
    :goto_a
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_7e

    .line 1425
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 1426
    const/4 v6, 0x4

    const-string v7, "wifi_state"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1427
    if-eq v0, v2, :cond_26

    if-ne v0, v3, :cond_24

    goto :goto_26

    :cond_24
    move v6, v5

    goto :goto_27

    :cond_26
    :goto_26
    move v6, v4

    :goto_27
    iput-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    .line 1429
    if-eq v0, v3, :cond_30

    if-nez v0, :cond_2e

    goto :goto_30

    :cond_2e
    move v6, v5

    goto :goto_31

    :cond_30
    :goto_30
    move v6, v4

    :goto_31
    iput-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    .line 1431
    invoke-virtual {p0, v5}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    goto :goto_7e

    .line 1432
    :cond_37
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 1433
    nop

    .line 1434
    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    .line 1435
    .local v6, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_52

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_52

    move v7, v4

    goto :goto_53

    :cond_52
    move v7, v5

    :goto_53
    iput-boolean v7, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    .line 1436
    const/4 v8, 0x0

    if-eqz v7, :cond_7c

    .line 1438
    const-string v7, "wifiInfo"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiInfo;

    .line 1439
    .local v7, "info":Landroid/net/wifi/WifiInfo;
    if-nez v7, :cond_68

    .line 1440
    sget-object v9, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 1442
    :cond_68
    if-eqz v7, :cond_75

    .line 1443
    invoke-direct {p0, v7}, Lmiui/app/ToggleManager;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lmiui/app/ToggleManager;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    goto :goto_77

    .line 1445
    :cond_75
    iput-object v8, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    .line 1447
    :goto_77
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    .line 1448
    iput-boolean v5, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    .line 1449
    .end local v7    # "info":Landroid/net/wifi/WifiInfo;
    goto :goto_7e

    .line 1450
    :cond_7c
    iput-object v8, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    .line 1455
    .end local v6    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_7e
    :goto_7e
    new-array v2, v2, [Ljava/lang/Object;

    .line 1456
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    aput-object v1, v2, v3

    .line 1455
    const-string v3, "updateWifiToggle wifiState=%d mWifiConnected=%b action=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ToggleManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    iget-object v2, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    if-nez v2, :cond_ac

    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110f0399

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_ac
    const/16 v3, 0xf

    invoke-virtual {p0, v3, v2}, Lmiui/app/ToggleManager;->updateToggleStatusName(ILjava/lang/Object;)V

    .line 1458
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    invoke-virtual {p0, v3, v2}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1459
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    invoke-virtual {p0, v3, v2}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 1460
    nop

    .line 1461
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    if-eqz v2, :cond_c4

    .line 1462
    const v2, 0x1108022c

    goto :goto_c7

    .line 1463
    :cond_c4
    const v2, 0x1108022b

    .line 1460
    :goto_c7
    invoke-virtual {p0, v3, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1464
    return-void
.end method

.method blacklist useWifiApForMiDrop()Z
    .registers 5

    .line 1984
    sget-boolean v0, Lmiui/app/ToggleManager;->sHasMiDrop:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    .line 1986
    :try_start_6
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.xiaomi.midrop"

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    sput-boolean v0, Lmiui/app/ToggleManager;->sHasMiDrop:Z
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_19} :catch_1a

    .line 1988
    goto :goto_1b

    .line 1987
    :catch_1a
    move-exception v0

    .line 1990
    :cond_1b
    :goto_1b
    sget-object v0, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v0, :cond_24

    sget-boolean v0, Lmiui/app/ToggleManager;->sHasMiDrop:Z

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    return v1
.end method
