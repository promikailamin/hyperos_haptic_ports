.class public Lcom/android/server/GestureLauncherService;
.super Lcom/android/server/SystemService;
.source "GestureLauncherService.java"


# static fields
.field static final DOUBLE_TAP_POWER_DISABLED_MODE:I = 0x0

.field static final DOUBLE_TAP_POWER_LAUNCH_CAMERA_MODE:I = 0x1

.field static final DOUBLE_TAP_POWER_MULTI_TARGET_MODE:I = 0x2

.field static final EMERGENCY_GESTURE_POWER_BUTTON_COOLDOWN_PERIOD_MS_MAX:I = 0x1388

.field public static final GRANT_BACKGROUND_START_PRIVILEGES:Landroid/os/Bundle;

.field static final LAUNCH_CAMERA_ON_DOUBLE_TAP_POWER:I = 0x0

.field static final LAUNCH_WALLET_ON_DOUBLE_TAP_POWER:I = 0x1

.field static final POWER_DOUBLE_TAP_MAX_TIME_MS:J = 0x12cL

.field static final POWER_SHORT_TAP_SEQUENCE_MAX_INTERVAL_MS:J = 0x1f4L


# instance fields
.field public mCameraDoubleTapPowerEnabled:Z

.field public mCameraGestureLastEventTime:J

.field public mCameraGestureOnTimeMs:J

.field public mCameraGestureSensor1LastOnTimeMs:J

.field public mCameraGestureSensor2LastOnTimeMs:J

.field public mCameraLaunchLastEventExtra:I

.field public mCameraLaunchRegistered:Z

.field public mCameraLaunchSensor:Landroid/hardware/Sensor;

.field public mCameraLiftRegistered:Z

.field public final mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

.field public mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

.field public mContext:Landroid/content/Context;

.field public mEmergencyGestureEnabled:Z

.field public mEmergencyGesturePowerButtonCooldownPeriodMs:I

.field public mFirstPowerDown:J

.field public final mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

.field public mHasFeatureWatch:Z

.field public mLastEmergencyGestureTriggered:J

.field public mLastPowerDown:J

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mPowerButtonConsecutiveTaps:I

.field public mPowerButtonSlowConsecutiveTaps:I

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

.field public final mSettingObserver:Landroid/database/ContentObserver;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mUserId:I

.field public final mUserReceiver:Landroid/content/BroadcastReceiver;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWalletDoubleTapPowerEnabled:Z

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCameraGestureLastEventTime(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraGestureOnTimeMs(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraGestureSensor1LastOnTimeMs(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraGestureSensor2LastOnTimeMs(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraLaunchLastEventExtra(Lcom/android/server/GestureLauncherService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraLaunchRegistered(Lcom/android/server/GestureLauncherService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraLaunchSensor(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraLiftRegistered(Lcom/android/server/GestureLauncherService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraLiftTriggerListener(Lcom/android/server/GestureLauncherService;)Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraLiftTriggerSensor(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricsLogger(Lcom/android/server/GestureLauncherService;)Lcom/android/internal/logging/MetricsLogger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/GestureLauncherService;)Landroid/os/PowerManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingObserver(Lcom/android/server/GestureLauncherService;)Landroid/database/ContentObserver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUiEventLogger(Lcom/android/server/GestureLauncherService;)Lcom/android/internal/logging/UiEventLogger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/GestureLauncherService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/GestureLauncherService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCameraGestureLastEventTime(Lcom/android/server/GestureLauncherService;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCameraGestureSensor1LastOnTimeMs(Lcom/android/server/GestureLauncherService;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCameraGestureSensor2LastOnTimeMs(Lcom/android/server/GestureLauncherService;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCameraLaunchLastEventExtra(Lcom/android/server/GestureLauncherService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCameraLiftRegistered(Lcom/android/server/GestureLauncherService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUserId(Lcom/android/server/GestureLauncherService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterContentObservers(Lcom/android/server/GestureLauncherService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCameraRegistered(Lcom/android/server/GestureLauncherService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 133
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x3

    .line 134
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/GestureLauncherService;->GRANT_BACKGROUND_START_PRIVILEGES:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 246
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 247
    invoke-static {p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->create(Landroid/content/Context;)Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    move-result-object v1

    new-instance v2, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v2}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    .line 246
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/GestureLauncherService;-><init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;Landroid/service/quickaccesswallet/QuickAccessWalletClient;Lcom/android/internal/logging/UiEventLogger;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;Landroid/service/quickaccesswallet/QuickAccessWalletClient;Lcom/android/internal/logging/UiEventLogger;)V
    .registers 7

    .line 253
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService-IA;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    .line 142
    new-instance v0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService-IA;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    const-wide/16 v0, 0x0

    .line 160
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 163
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 170
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 180
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 943
    new-instance v0, Lcom/android/server/GestureLauncherService$1;

    invoke-direct {v0, p0}, Lcom/android/server/GestureLauncherService$1;-><init>(Lcom/android/server/GestureLauncherService;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 961
    new-instance v0, Lcom/android/server/GestureLauncherService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$2;-><init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    .line 254
    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 255
    iput-object p2, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 256
    iput-object p3, p0, Lcom/android/server/GestureLauncherService;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 257
    iput-object p4, p0, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method public static getDoubleTapPowerGestureAction(Landroid/content/Context;I)I
    .registers 4

    .line 567
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10e00a2

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 566
    const-string v1, "double_tap_power_button_gesture"

    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getDoubleTapPowerGestureMode(Landroid/content/res/Resources;)I
    .registers 2

    const v0, 0x10e00a1

    .line 539
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public static getEmergencyGesturePowerButtonCooldownPeriodMs(Landroid/content/Context;I)I
    .registers 3

    .line 582
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "emergency_gesture_power_button_cooldown_period_ms"

    const/16 v0, 0xbb8

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/16 p1, 0x1388

    .line 586
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z
    .registers 2

    const v0, 0x1110066

    .line 601
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z
    .registers 6

    .line 493
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 492
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->getDoubleTapPowerGestureMode(Landroid/content/res/Resources;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1e

    const/4 v3, 0x2

    if-eq v0, v3, :cond_10

    return v1

    .line 500
    :cond_10
    invoke-static {p0, p1}, Lcom/android/server/GestureLauncherService;->isMultiTargetDoubleTapPowerGestureSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 501
    invoke-static {p0, p1}, Lcom/android/server/GestureLauncherService;->getDoubleTapPowerGestureAction(Landroid/content/Context;I)I

    move-result p0

    if-nez p0, :cond_1d

    return v2

    :cond_1d
    return v1

    .line 497
    :cond_1e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "camera_double_tap_power_gesture_disabled"

    .line 496
    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_2b

    return v2

    :cond_2b
    return v1
.end method

.method public static isCameraLaunchEnabled(Landroid/content/res/Resources;)Z
    .registers 3

    const v0, 0x10e0051

    .line 593
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_15

    .line 595
    const-string p0, "gesture.disable_camera_launch"

    .line 596
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    return v1
.end method

.method public static isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z
    .registers 4

    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 480
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "camera_gesture_disabled"

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    return v1
.end method

.method public static isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z
    .registers 2

    const v0, 0x10e0052

    .line 606
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static isCameraLiftTriggerSettingEnabled(Landroid/content/Context;I)Z
    .registers 4

    .line 521
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 522
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "camera_lift_trigger_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_18

    return v1

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static isDefaultEmergencyGestureEnabled(Landroid/content/res/Resources;)Z
    .registers 2

    const v0, 0x111013b

    .line 619
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isEmergencyGestureEnabled(Landroid/content/res/Resources;)Z
    .registers 2

    const v0, 0x111017b

    .line 615
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isEmergencyGestureSettingEnabled(Landroid/content/Context;I)Z
    .registers 4

    .line 531
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isEmergencyGestureEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 532
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 534
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isDefaultEmergencyGestureEnabled(Landroid/content/res/Resources;)Z

    move-result p0

    .line 532
    const-string v1, "emergency_gesture_enabled"

    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public static isGestureLauncherEnabled(Landroid/content/res/Resources;)Z
    .registers 4

    .line 628
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 629
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 630
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isEmergencyGestureEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    move v0, v2

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v1

    .line 632
    :goto_18
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->getDoubleTapPowerGestureMode(Landroid/content/res/Resources;)I

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    or-int p0, v0, v1

    return p0
.end method

.method public static isMultiTargetDoubleTapPowerGestureSettingEnabled(Landroid/content/Context;I)Z
    .registers 6

    .line 552
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 554
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->getDoubleTapPowerGestureMode(Landroid/content/res/Resources;)I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p0, v1, :cond_13

    move p0, v3

    goto :goto_14

    :cond_13
    move p0, v2

    .line 551
    :goto_14
    const-string v1, "double_tap_power_button_gesture_enabled"

    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v3, :cond_1d

    return v3

    :cond_1d
    return v2
.end method

.method public static isWalletDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z
    .registers 4

    .line 513
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->getDoubleTapPowerGestureMode(Landroid/content/res/Resources;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 515
    invoke-static {p0, p1}, Lcom/android/server/GestureLauncherService;->isMultiTargetDoubleTapPowerGestureSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 516
    invoke-static {p0, p1}, Lcom/android/server/GestureLauncherService;->getDoubleTapPowerGestureAction(Landroid/content/Context;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_19

    return p1

    :cond_19
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public handleCameraGesture(ZI)Z
    .registers 8

    .line 851
    const-string v0, "GestureLauncher:handleCameraGesture"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 853
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->isUserSetupComplete()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_1c

    if-nez v0, :cond_12

    .line 877
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0

    :cond_12
    if-eqz p1, :cond_1e

    .line 870
    :try_start_14
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x1f4

    invoke-virtual {p0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_2e

    .line 872
    :cond_1e
    :goto_1e
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 874
    invoke-interface {p0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_1c

    .line 877
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :goto_2e
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 878
    throw p0
.end method

.method public handleEmergencyGesture()Z
    .registers 4

    .line 911
    const-string v0, "GestureLauncher:handleEmergencyGesture"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 914
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->isUserSetupComplete()Z

    move-result p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_22

    if-nez p0, :cond_12

    .line 934
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0

    .line 929
    :cond_12
    :try_start_12
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 931
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onEmergencyActionLaunchGestureDetected()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 934
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :catchall_22
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 935
    throw p0
.end method

.method public handleWalletGesture()Z
    .registers 4

    .line 883
    const-string v0, "GestureLauncher:handleWalletGesture"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 886
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->isUserSetupComplete()Z

    move-result p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_22

    if-nez p0, :cond_12

    .line 902
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0

    .line 897
    :cond_12
    :try_start_12
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 899
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onWalletLaunchGestureDetected()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 902
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :catchall_22
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 903
    throw p0
.end method

.method public interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z
    .registers 18

    move-object/from16 v0, p3

    .line 648
    iget-boolean v1, p0, Lcom/android/server/GestureLauncherService;->mEmergencyGestureEnabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_40

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mEmergencyGesturePowerButtonCooldownPeriodMs:I

    if-ltz v1, :cond_40

    .line 649
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/GestureLauncherService;->mLastEmergencyGestureTriggered:J

    sub-long/2addr v4, v6

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mEmergencyGesturePowerButtonCooldownPeriodMs:I

    int-to-long v6, v1

    cmp-long v4, v4, v6

    if-gez v4, :cond_40

    .line 651
    const-string v4, "GestureLauncherService"

    const-string v5, "Suppressing power button: within %dms cooldown period after Emergency Gesture. Begin=%dms, end=%dms."

    .line 654
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v6, p0, Lcom/android/server/GestureLauncherService;->mLastEmergencyGestureTriggered:J

    .line 655
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/GestureLauncherService;->mLastEmergencyGestureTriggered:J

    iget p0, p0, Lcom/android/server/GestureLauncherService;->mEmergencyGesturePowerButtonCooldownPeriodMs:I

    int-to-long v9, p0

    add-long/2addr v7, v9

    .line 656
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v1, v6, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 651
    invoke-static {v5, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iput-boolean v2, v0, Landroid/util/MutableBoolean;->value:Z

    return v3

    .line 661
    :cond_40
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 665
    iput-boolean v2, v0, Landroid/util/MutableBoolean;->value:Z

    return v2

    .line 673
    :cond_49
    monitor-enter p0

    .line 674
    :try_start_4a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    sub-long/2addr v4, v6

    .line 675
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    const-wide/16 v6, 0x1f4

    cmp-long v1, v4, v6

    const-wide/16 v6, 0x12c

    if-ltz v1, :cond_6d

    .line 678
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/GestureLauncherService;->mFirstPowerDown:J

    .line 679
    iput v3, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 680
    iput v3, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    goto :goto_89

    :catchall_6a
    move-exception v0

    goto/16 :goto_218

    :cond_6d
    cmp-long v1, v4, v6

    if-ltz v1, :cond_7f

    .line 683
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/GestureLauncherService;->mFirstPowerDown:J

    .line 684
    iput v3, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 685
    iget v1, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    goto :goto_89

    .line 688
    :cond_7f
    iget v1, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 689
    iget v1, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    .line 692
    :goto_89
    iget-boolean v1, p0, Lcom/android/server/GestureLauncherService;->mEmergencyGestureEnabled:Z

    if-eqz v1, :cond_111

    .line 697
    iget v1, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 698
    iget-boolean v8, p0, Lcom/android/server/GestureLauncherService;->mHasFeatureWatch:Z

    const/4 v9, 0x5

    if-eqz v8, :cond_96

    move v8, v9

    goto :goto_97

    :cond_96
    move v8, v3

    :goto_97
    if-le v1, v8, :cond_9c

    move/from16 v8, p2

    goto :goto_9d

    :cond_9c
    move v8, v2

    :goto_9d
    if-ne v1, v9, :cond_10f

    .line 702
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/server/GestureLauncherService;->mFirstPowerDown:J

    sub-long/2addr v9, v11

    .line 703
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 704
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v11, "emergency_gesture_tap_detection_min_time_ms"

    iget-object v12, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 706
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10e0074

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 703
    invoke-static {v1, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v11, v1

    cmp-long v1, v9, v11

    if-gtz v1, :cond_ea

    .line 709
    const-string v1, "GestureLauncherService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Emergency gesture detected but it\'s too fast. Gesture time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/GestureLauncherService;->mFirstPowerDown:J

    .line 713
    iput v3, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 714
    iput v3, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    goto :goto_10f

    .line 716
    :cond_ea
    const-string v1, "GestureLauncherService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Emergency gesture detected. Gesture time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v11, "emergency_gesture_spent_time"

    long-to-int v9, v9

    invoke-virtual {v1, v11, v9}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    move v1, v3

    goto :goto_113

    :cond_10f
    :goto_10f
    move v1, v2

    goto :goto_113

    :cond_111
    move v1, v2

    move v8, v1

    .line 725
    :goto_113
    iget-boolean v9, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    const/4 v10, 0x2

    if-eqz v9, :cond_125

    cmp-long v9, v4, v6

    if-gez v9, :cond_125

    iget v9, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    if-ne v9, v10, :cond_125

    move/from16 v8, p2

    move v7, v2

    move v6, v3

    goto :goto_138

    .line 730
    :cond_125
    iget-boolean v9, p0, Lcom/android/server/GestureLauncherService;->mWalletDoubleTapPowerEnabled:Z

    if-eqz v9, :cond_136

    cmp-long v6, v4, v6

    if-gez v6, :cond_136

    iget v6, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    if-ne v6, v10, :cond_136

    move/from16 v8, p2

    move v6, v2

    move v7, v3

    goto :goto_138

    :cond_136
    move v6, v2

    move v7, v6

    .line 737
    :goto_138
    monitor-exit p0
    :try_end_139
    .catchall {:try_start_4a .. :try_end_139} :catchall_6a

    .line 738
    iget v9, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    if-gt v9, v3, :cond_141

    iget v9, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    if-le v9, v3, :cond_16d

    .line 739
    :cond_141
    const-string v9, "GestureLauncherService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    int-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " consecutive power button taps detected, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    int-to-long v11, v11

    .line 741
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " consecutive slow power button taps detected"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 739
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16d
    if-eqz v6, :cond_1a1

    .line 745
    const-string v6, "GestureLauncherService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Power button double tap gesture detected, launching camera. Interval="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {p0, v2, v3}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v6

    if-eqz v6, :cond_1ef

    .line 750
    iget-object v9, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v10, 0xff

    long-to-int v11, v4

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 752
    iget-object v9, p0, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v10, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_DOUBLE_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    invoke-interface {v9, v10}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_1ef

    :cond_1a1
    if-eqz v7, :cond_1cd

    .line 755
    const-string v7, "GestureLauncherService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Power button double tap gesture detected, launching wallet. Interval="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->handleWalletGesture()Z

    move-result v7

    if-eqz v7, :cond_1ef

    .line 760
    iget-object v9, p0, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v10, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_WALLET_DOUBLE_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    invoke-interface {v9, v10}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_1ef

    :cond_1cd
    if-eqz v1, :cond_1ef

    .line 763
    const-string v1, "GestureLauncherService"

    const-string v9, "Emergency gesture detected, launching."

    invoke-static {v1, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->handleEmergencyGesture()Z

    move-result v1

    .line 765
    iget-object v9, p0, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v10, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_EMERGENCY_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    invoke-interface {v9, v10}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    if-eqz v1, :cond_1ef

    .line 768
    monitor-enter p0

    .line 769
    :try_start_1e4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/GestureLauncherService;->mLastEmergencyGestureTriggered:J

    .line 770
    monitor-exit p0

    goto :goto_1ef

    :catchall_1ec
    move-exception v0

    monitor-exit p0
    :try_end_1ee
    .catchall {:try_start_1e4 .. :try_end_1ee} :catchall_1ec

    throw v0

    .line 773
    :cond_1ef
    :goto_1ef
    iget-object v9, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v10, "power_consecutive_short_tap_count"

    iget v11, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 775
    iget-object v9, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v10, "power_double_tap_interval"

    long-to-int v4, v4

    invoke-virtual {v9, v10, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    if-nez v6, :cond_20b

    if-nez v1, :cond_20b

    if-eqz v7, :cond_209

    goto :goto_20b

    :cond_209
    move v1, v2

    goto :goto_20c

    :cond_20b
    :goto_20b
    move v1, v3

    .line 777
    :goto_20c
    iput-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v8, :cond_217

    .line 780
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->isUserSetupComplete()Z

    move-result p0

    if-eqz p0, :cond_217

    return v3

    :cond_217
    return v2

    .line 737
    :goto_218
    :try_start_218
    monitor-exit p0
    :try_end_219
    .catchall {:try_start_218 .. :try_end_219} :catchall_6a

    throw v0
.end method

.method public final isUserSetupComplete()Z
    .registers 4

    .line 939
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v2
.end method

.method public onBootPhase(I)V
    .registers 5

    const/16 v0, 0x258

    if-ne p1, v0, :cond_65

    .line 268
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 269
    invoke-static {p1}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_65

    .line 274
    :cond_11
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 275
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x1

    .line 277
    const-string v1, "GestureLauncherService"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 279
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    .line 280
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    .line 282
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateWalletDoubleTapPowerEnabled()V

    .line 284
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateEmergencyGestureEnabled()V

    .line 285
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateEmergencyGesturePowerButtonCooldownPeriodMs()V

    .line 287
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 288
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    .line 291
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/GestureLauncherService;->mHasFeatureWatch:Z

    :cond_65
    :goto_65
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 262
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final registerCameraLaunchGesture(Landroid/content/res/Resources;)V
    .registers 6

    .line 392
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-eqz v0, :cond_5

    goto :goto_60

    .line 395
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 396
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 397
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const v1, 0x10e0051

    .line 399
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_60

    const/4 v2, 0x0

    .line 402
    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    const v3, 0x1040233

    .line 403
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    .line 405
    invoke-virtual {v0, v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_60

    .line 413
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 414
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    return-void

    .line 417
    :cond_4a
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 419
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 417
    const-string p1, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 420
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_60
    :goto_60
    return-void
.end method

.method public final registerCameraLiftTrigger(Landroid/content/res/Resources;)V
    .registers 5

    .line 443
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    if-eqz v0, :cond_5

    goto :goto_58

    .line 446
    :cond_5
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const v1, 0x10e0052

    .line 448
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_58

    const/4 v2, 0x0

    .line 451
    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    const v2, 0x1040234

    .line 452
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    .line 454
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_58

    .line 462
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 463
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return-void

    .line 466
    :cond_42
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 468
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 466
    const-string p1, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 469
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_58
    :goto_58
    return-void
.end method

.method public final registerContentObservers()V
    .registers 6

    .line 298
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_tap_power_button_gesture_enabled"

    .line 299
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    const/4 v4, 0x0

    .line 298
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 302
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_tap_power_button_gesture"

    .line 303
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 302
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 307
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_gesture_disabled"

    .line 308
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 307
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 310
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_double_tap_power_gesture_disabled"

    .line 311
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 310
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 314
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_lift_trigger_enabled"

    .line 315
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 314
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 317
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_gesture_enabled"

    .line 318
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 317
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 320
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_gesture_power_button_cooldown_period_ms"

    .line 321
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 320
    invoke-virtual {v0, v1, v4, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final unregisterCameraLaunchGesture()V
    .registers 4

    .line 374
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    .line 375
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    const-wide/16 v1, 0x0

    .line 376
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 377
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 378
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 379
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 380
    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 382
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 384
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_23
    return-void
.end method

.method public final unregisterCameraLiftTrigger()V
    .registers 3

    .line 430
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 431
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 433
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 435
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    :cond_19
    return-void
.end method

.method public updateCameraDoubleTapPowerEnabled()V
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 344
    monitor-enter p0

    .line 345
    :try_start_9
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    .line 346
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public final updateCameraRegistered()V
    .registers 4

    .line 327
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 329
    invoke-virtual {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLaunchGesture(Landroid/content/res/Resources;)V

    goto :goto_17

    .line 331
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLaunchGesture()V

    .line 334
    :goto_17
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLiftTrigger(Landroid/content/res/Resources;)V

    return-void

    .line 337
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLiftTrigger()V

    return-void
.end method

.method public updateEmergencyGestureEnabled()V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->isEmergencyGestureSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 360
    monitor-enter p0

    .line 361
    :try_start_9
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mEmergencyGestureEnabled:Z

    .line 362
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public updateEmergencyGesturePowerButtonCooldownPeriodMs()V
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->getEmergencyGesturePowerButtonCooldownPeriodMs(Landroid/content/Context;I)I

    move-result v0

    .line 368
    monitor-enter p0

    .line 369
    :try_start_9
    iput v0, p0, Lcom/android/server/GestureLauncherService;->mEmergencyGesturePowerButtonCooldownPeriodMs:I

    .line 370
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public updateWalletDoubleTapPowerEnabled()V
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->isWalletDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 352
    monitor-enter p0

    .line 353
    :try_start_9
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mWalletDoubleTapPowerEnabled:Z

    .line 354
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v0
.end method
