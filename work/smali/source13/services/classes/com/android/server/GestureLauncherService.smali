.class public Lcom/android/server/GestureLauncherService;
.super Lcom/android/server/SystemService;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;,
        Lcom/android/server/GestureLauncherService$GestureEventListener;,
        Lcom/android/server/GestureLauncherService$GestureLauncherEvent;
    }
.end annotation


# static fields
.field static final CAMERA_POWER_DOUBLE_TAP_MAX_TIME_MS:J = 0x12cL

.field private static final CAMERA_POWER_TAP_COUNT_THRESHOLD:I = 0x2

.field private static final DBG:Z = false

.field private static final DBG_CAMERA_LIFT:Z = false

.field private static final EMERGENCY_GESTURE_POWER_BUTTON_COOLDOWN_PERIOD_MS_DEFAULT:I = 0xbb8

.field static final EMERGENCY_GESTURE_POWER_BUTTON_COOLDOWN_PERIOD_MS_MAX:I = 0x1388

.field private static EMERGENCY_GESTURE_POWER_TAP_COUNT_THRESHOLD:I = 0x0

.field static final EMERGENCY_GESTURE_TAP_DETECTION_MIN_TIME_MS:I = 0xa0

.field private static final EXTRA_LAUNCH_EMERGENCY_VIA_GESTURE:Ljava/lang/String; = "launch_emergency_via_gesture"

.field static final POWER_SHORT_TAP_SEQUENCE_MAX_INTERVAL_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "GestureLauncherService"

.field private static final WEAR_LAUNCH_EMERGENCY_ACTION:Ljava/lang/String; = "com.android.systemui.action.LAUNCH_EMERGENCY"

.field private static final WEAR_LAUNCH_EMERGENCY_RETAIL_ACTION:Ljava/lang/String; = "com.android.systemui.action.LAUNCH_EMERGENCY_RETAIL"


# instance fields
.field private mCameraDoubleTapPowerEnabled:Z

.field private mCameraGestureLastEventTime:J

.field private mCameraGestureOnTimeMs:J

.field private mCameraGestureSensor1LastOnTimeMs:J

.field private mCameraGestureSensor2LastOnTimeMs:J

.field private mCameraLaunchLastEventExtra:I

.field private mCameraLaunchRegistered:Z

.field private mCameraLaunchSensor:Landroid/hardware/Sensor;

.field private mCameraLiftRegistered:Z

.field private final mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

.field private mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

.field private mContext:Landroid/content/Context;

.field private mEmergencyGestureEnabled:Z

.field private mEmergencyGesturePowerButtonCooldownPeriodMs:I

.field private mFirstPowerDown:J

.field private final mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

.field private mHasFeatureWatch:Z

.field private mLastEmergencyGestureTriggered:J

.field private mLastPowerDown:J

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPowerButtonConsecutiveTaps:I

.field private mPowerButtonSlowConsecutiveTaps:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mSettingObserver:Landroid/database/ContentObserver;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mUserId:I

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mVibrateMilliSecondsForPanicGesture:J

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraGestureLastEventTime(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraGestureOnTimeMs(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraGestureSensor1LastOnTimeMs(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraGestureSensor2LastOnTimeMs(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraLaunchLastEventExtra(Lcom/android/server/GestureLauncherService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraLaunchRegistered(Lcom/android/server/GestureLauncherService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraLaunchSensor(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraLiftRegistered(Lcom/android/server/GestureLauncherService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraLiftTriggerListener(Lcom/android/server/GestureLauncherService;)Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraLiftTriggerSensor(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMetricsLogger(Lcom/android/server/GestureLauncherService;)Lcom/android/internal/logging/MetricsLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/GestureLauncherService;)Landroid/os/PowerManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingObserver(Lcom/android/server/GestureLauncherService;)Landroid/database/ContentObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUiEventLogger(Lcom/android/server/GestureLauncherService;)Lcom/android/internal/logging/UiEventLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/GestureLauncherService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/GestureLauncherService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCameraGestureLastEventTime(Lcom/android/server/GestureLauncherService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCameraGestureSensor1LastOnTimeMs(Lcom/android/server/GestureLauncherService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCameraGestureSensor2LastOnTimeMs(Lcom/android/server/GestureLauncherService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCameraLaunchLastEventExtra(Lcom/android/server/GestureLauncherService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCameraLiftRegistered(Lcom/android/server/GestureLauncherService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUserId(Lcom/android/server/GestureLauncherService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterContentObservers(Lcom/android/server/GestureLauncherService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCameraRegistered(Lcom/android/server/GestureLauncherService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 97
    const/4 v0, 0x5

    sput v0, Lcom/android/server/GestureLauncherService;->EMERGENCY_GESTURE_POWER_TAP_COUNT_THRESHOLD:I

    .line 100
    const-string/jumbo v0, "ro.miui.build.region"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "in"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 101
    const/4 v0, 0x3

    sput v0, Lcom/android/server/GestureLauncherService;->EMERGENCY_GESTURE_POWER_TAP_COUNT_THRESHOLD:I

    .line 103
    :cond_16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 238
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    new-instance v1, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v1}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/GestureLauncherService;-><init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;)V

    .line 239
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "metricsLogger"    # Lcom/android/internal/logging/MetricsLogger;
    .param p3, "uiEventLogger"    # Lcom/android/internal/logging/UiEventLogger;

    .line 244
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 139
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$GestureEventListener-IA;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    .line 140
    new-instance v0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener-IA;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 161
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 168
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 178
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 770
    new-instance v0, Lcom/android/server/GestureLauncherService$1;

    invoke-direct {v0, p0}, Lcom/android/server/GestureLauncherService$1;-><init>(Lcom/android/server/GestureLauncherService;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 785
    new-instance v0, Lcom/android/server/GestureLauncherService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$2;-><init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    .line 245
    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 246
    iput-object p2, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 247
    iput-object p3, p0, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 248
    return-void
.end method

.method static getEmergencyGesturePowerButtonCooldownPeriodMs(Landroid/content/Context;I)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 489
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_gesture_power_button_cooldown_period_ms"

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 493
    .local v0, "cooldown":I
    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method static isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z
    .registers 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 508
    const v0, 0x1110047

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 460
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "camera_double_tap_power_gesture_disabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    nop

    .line 460
    :goto_1a
    return v1
.end method

.method private static isCameraLaunchEnabled(Landroid/content/res/Resources;)Z
    .registers 5
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 500
    const v0, 0x10e0034

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 502
    .local v0, "configSet":Z
    :goto_f
    if-eqz v0, :cond_1a

    .line 503
    const-string v3, "gesture.disable_camera_launch"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    .line 502
    :goto_1b
    return v1
.end method

.method public static isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 454
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "camera_gesture_disabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    nop

    .line 454
    :goto_1a
    return v1
.end method

.method private static isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z
    .registers 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 513
    const v0, 0x10e0035

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 515
    .local v0, "configSet":Z
    :goto_d
    return v0
.end method

.method public static isCameraLiftTriggerSettingEnabled(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 467
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "camera_lift_trigger_enabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 466
    :goto_19
    return v1
.end method

.method private static isEmergencyGestureEnabled(Landroid/content/res/Resources;)Z
    .registers 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 522
    const v0, 0x1110128

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyGestureSettingEnabled(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 476
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isEmergencyGestureEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 477
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "emergency_gesture_enabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 476
    :goto_19
    return v1
.end method

.method public static isGestureLauncherEnabled(Landroid/content/res/Resources;)Z
    .registers 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 529
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 530
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 531
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 532
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isEmergencyGestureEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 529
    :goto_1c
    return v0
.end method

.method private isInRetailMode()Z
    .registers 4

    .line 761
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_demo_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    move v2, v1

    :cond_11
    return v2
.end method

.method private isUserSetupComplete()Z
    .registers 5

    .line 766
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    :cond_12
    return v2
.end method

.method private onEmergencyGestureDetectedOnWatch()V
    .registers 8

    .line 735
    new-instance v0, Landroid/content/Intent;

    .line 737
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->isInRetailMode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 738
    const-string v1, "com.android.systemui.action.LAUNCH_EMERGENCY_RETAIL"

    goto :goto_d

    .line 739
    :cond_b
    const-string v1, "com.android.systemui.action.LAUNCH_EMERGENCY"

    :goto_d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 740
    .local v0, "emergencyIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 741
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 742
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_3a

    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find an app to process the emergency intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 744
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 743
    const-string v4, "GestureLauncherService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return-void

    .line 748
    :cond_3a
    iget-object v3, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/Vibrator;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 749
    .local v3, "vibrator":Landroid/os/Vibrator;
    iget-wide v4, p0, Lcom/android/server/GestureLauncherService;->mVibrateMilliSecondsForPanicGesture:J

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 752
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 755
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 756
    const/4 v4, 0x1

    const-string/jumbo v5, "launch_emergency_via_gesture"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 757
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 758
    return-void
.end method

.method private registerCameraLaunchGesture(Landroid/content/res/Resources;)V
    .registers 8
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 367
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-eqz v0, :cond_5

    .line 368
    return-void

    .line 370
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 371
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 372
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 374
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const v1, 0x10e0034

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 376
    .local v1, "cameraLaunchGestureId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_63

    .line 377
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 378
    const v3, 0x104022f

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "sensorName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 387
    if-eqz v5, :cond_63

    .line 388
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 389
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    iget-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v4, v5, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    goto :goto_63

    .line 392
    :cond_4a
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 394
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    .line 392
    const-string v2, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 402
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "sensorName":Ljava/lang/String;
    :cond_63
    :goto_63
    return-void
.end method

.method private registerCameraLiftTrigger(Landroid/content/res/Resources;)V
    .registers 8
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 418
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    if-eqz v0, :cond_5

    .line 419
    return-void

    .line 421
    :cond_5
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 423
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const v1, 0x10e0035

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 425
    .local v1, "cameraLiftTriggerId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_5b

    .line 426
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 427
    const v3, 0x1040230

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, "sensorName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 436
    if-eqz v5, :cond_5b

    .line 437
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 438
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v4}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    goto :goto_5b

    .line 441
    :cond_42
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 443
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    .line 441
    const-string v2, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 451
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "sensorName":Ljava/lang/String;
    :cond_5b
    :goto_5b
    return-void
.end method

.method private registerContentObservers()V
    .registers 6

    .line 291
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 292
    const-string v1, "camera_gesture_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 291
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 294
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 295
    const-string v1, "camera_double_tap_power_gesture_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 294
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 297
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 298
    const-string v1, "camera_lift_trigger_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 297
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 300
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 301
    const-string v1, "emergency_gesture_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 300
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 303
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 304
    const-string v1, "emergency_gesture_power_button_cooldown_period_ms"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 303
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 307
    return-void
.end method

.method private unregisterCameraLaunchGesture()V
    .registers 4

    .line 349
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-eqz v0, :cond_23

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 351
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 352
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 353
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 354
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 355
    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 357
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 359
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 361
    .end local v0    # "sensorManager":Landroid/hardware/SensorManager;
    :cond_23
    return-void
.end method

.method private unregisterCameraLiftTrigger()V
    .registers 4

    .line 405
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    if-eqz v0, :cond_19

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 408
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 410
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 412
    .end local v0    # "sensorManager":Landroid/hardware/SensorManager;
    :cond_19
    return-void
.end method

.method private updateCameraRegistered()V
    .registers 4

    .line 310
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 311
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 312
    invoke-direct {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLaunchGesture(Landroid/content/res/Resources;)V

    goto :goto_17

    .line 314
    :cond_14
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLaunchGesture()V

    .line 317
    :goto_17
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 318
    invoke-direct {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLiftTrigger(Landroid/content/res/Resources;)V

    goto :goto_28

    .line 320
    :cond_25
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLiftTrigger()V

    .line 322
    :goto_28
    return-void
.end method


# virtual methods
.method handleCameraGesture(ZI)Z
    .registers 9
    .param p1, "useWakelock"    # Z
    .param p2, "source"    # I

    .line 667
    const-wide/16 v0, 0x40

    const-string v2, "GestureLauncher:handleCameraGesture"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 669
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->isUserSetupComplete()Z

    move-result v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_2b

    .line 670
    .local v2, "userSetupComplete":Z
    if-nez v2, :cond_12

    .line 676
    const/4 v3, 0x0

    .line 693
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 676
    return v3

    .line 684
    :cond_12
    if-eqz p1, :cond_1b

    .line 686
    :try_start_14
    iget-object v3, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 688
    :cond_1b
    const-class v3, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 690
    .local v3, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-interface {v3, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_2b

    .line 691
    const/4 v4, 0x1

    .line 693
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 691
    return v4

    .line 693
    .end local v2    # "userSetupComplete":Z
    .end local v3    # "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :catchall_2b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 694
    throw v2
.end method

.method handleEmergencyGesture()Z
    .registers 6

    .line 702
    const-wide/16 v0, 0x40

    const-string v2, "GestureLauncher:handleEmergencyGesture"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 705
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->isUserSetupComplete()Z

    move-result v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_2f

    .line 706
    .local v2, "userSetupComplete":Z
    if-nez v2, :cond_12

    .line 712
    const/4 v3, 0x0

    .line 730
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 712
    return v3

    .line 720
    :cond_12
    :try_start_12
    iget-boolean v3, p0, Lcom/android/server/GestureLauncherService;->mHasFeatureWatch:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1f

    .line 721
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->onEmergencyGestureDetectedOnWatch()V
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_2f

    .line 722
    nop

    .line 730
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 722
    return v4

    .line 725
    :cond_1f
    :try_start_1f
    const-class v3, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 727
    .local v3, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-interface {v3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onEmergencyActionLaunchGestureDetected()V
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_2f

    .line 728
    nop

    .line 730
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 728
    return v4

    .line 730
    .end local v2    # "userSetupComplete":Z
    .end local v3    # "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :catchall_2f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 731
    throw v2
.end method

.method public interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z
    .registers 20
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "outLaunched"    # Landroid/util/MutableBoolean;

    .line 544
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    iget-boolean v0, v1, Lcom/android/server/GestureLauncherService;->mEmergencyGestureEnabled:Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_48

    iget v0, v1, Lcom/android/server/GestureLauncherService;->mEmergencyGesturePowerButtonCooldownPeriodMs:I

    if-ltz v0, :cond_48

    .line 545
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/android/server/GestureLauncherService;->mLastEmergencyGestureTriggered:J

    sub-long/2addr v6, v8

    iget v0, v1, Lcom/android/server/GestureLauncherService;->mEmergencyGesturePowerButtonCooldownPeriodMs:I

    int-to-long v8, v0

    cmp-long v6, v6, v8

    if-gez v6, :cond_48

    .line 547
    const-string v6, "GestureLauncherService"

    const-string v7, "Suppressing power button: within %dms cooldown period after Emergency Gesture. Begin=%dms, end=%dms."

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 550
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v4

    iget-wide v9, v1, Lcom/android/server/GestureLauncherService;->mLastEmergencyGestureTriggered:J

    .line 551
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v5

    iget-wide v9, v1, Lcom/android/server/GestureLauncherService;->mLastEmergencyGestureTriggered:J

    iget v0, v1, Lcom/android/server/GestureLauncherService;->mEmergencyGesturePowerButtonCooldownPeriodMs:I

    int-to-long v11, v0

    add-long/2addr v9, v11

    .line 552
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v3

    .line 547
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iput-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z

    .line 554
    return v5

    .line 557
    :cond_48
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 561
    iput-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z

    .line 562
    return v4

    .line 564
    :cond_51
    const/4 v6, 0x0

    .line 565
    .local v6, "launchCamera":Z
    const/4 v7, 0x0

    .line 566
    .local v7, "launchEmergencyGesture":Z
    const/4 v8, 0x0

    .line 568
    .local v8, "intercept":Z
    monitor-enter p0

    .line 569
    :try_start_55
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v9

    iget-wide v11, v1, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    sub-long/2addr v9, v11

    .line 570
    .local v9, "powerTapInterval":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    .line 571
    const-wide/16 v11, 0x1f4

    cmp-long v0, v9, v11

    const-wide/16 v11, 0x12c

    if-ltz v0, :cond_75

    .line 573
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/GestureLauncherService;->mFirstPowerDown:J

    .line 574
    iput v5, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 575
    iput v5, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    goto :goto_91

    .line 576
    :cond_75
    cmp-long v0, v9, v11

    if-ltz v0, :cond_87

    .line 578
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/GestureLauncherService;->mFirstPowerDown:J

    .line 579
    iput v5, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 580
    iget v0, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    add-int/2addr v0, v5

    iput v0, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    goto :goto_91

    .line 583
    :cond_87
    iget v0, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    add-int/2addr v0, v5

    iput v0, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 584
    iget v0, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    add-int/2addr v0, v5

    iput v0, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    .line 587
    :goto_91
    iget-boolean v0, v1, Lcom/android/server/GestureLauncherService;->mEmergencyGestureEnabled:Z

    if-eqz v0, :cond_111

    .line 592
    iget v0, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 593
    iget-boolean v13, v1, Lcom/android/server/GestureLauncherService;->mHasFeatureWatch:Z

    if-eqz v13, :cond_9e

    sget v13, Lcom/android/server/GestureLauncherService;->EMERGENCY_GESTURE_POWER_TAP_COUNT_THRESHOLD:I

    goto :goto_9f

    :cond_9e
    move v13, v5

    :goto_9f
    if-le v0, v13, :cond_a3

    .line 594
    move/from16 v8, p2

    .line 596
    :cond_a3
    sget v13, Lcom/android/server/GestureLauncherService;->EMERGENCY_GESTURE_POWER_TAP_COUNT_THRESHOLD:I

    if-ne v0, v13, :cond_111

    .line 597
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v13

    iget-wide v3, v1, Lcom/android/server/GestureLauncherService;->mFirstPowerDown:J

    sub-long/2addr v13, v3

    .line 598
    .local v13, "emergencyGestureSpentTime":J
    iget-object v3, v1, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 599
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_gesture_tap_detection_min_time_ms"

    const/16 v0, 0xa0

    .line 598
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v3, v0

    .line 602
    .local v3, "emergencyGestureTapDetectionMinTimeMs":J
    cmp-long v0, v13, v3

    if-gtz v0, :cond_ea

    .line 603
    const-string v0, "GestureLauncherService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Emergency gesture detected but it\'s too fast. Gesture time: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/GestureLauncherService;->mFirstPowerDown:J

    .line 607
    iput v5, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 608
    iput v5, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    goto :goto_111

    .line 610
    :cond_ea
    const-string v0, "GestureLauncherService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Emergency gesture detected. Gesture time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v7, 0x1

    .line 613
    iget-object v0, v1, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v11, "emergency_gesture_spent_time"

    long-to-int v12, v13

    invoke-virtual {v0, v11, v12}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 619
    .end local v3    # "emergencyGestureTapDetectionMinTimeMs":J
    .end local v13    # "emergencyGestureSpentTime":J
    :cond_111
    :goto_111
    iget-boolean v0, v1, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    if-eqz v0, :cond_125

    const-wide/16 v3, 0x12c

    cmp-long v0, v9, v3

    if-gez v0, :cond_125

    iget v0, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_125

    .line 622
    const/4 v0, 0x1

    .line 623
    .end local v6    # "launchCamera":Z
    .local v0, "launchCamera":Z
    move/from16 v3, p2

    move v6, v0

    move v8, v3

    .line 625
    .end local v0    # "launchCamera":Z
    .restart local v6    # "launchCamera":Z
    :cond_125
    monitor-exit p0
    :try_end_126
    .catchall {:try_start_55 .. :try_end_126} :catchall_1e2

    .line 626
    iget v0, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    if-gt v0, v5, :cond_12e

    iget v0, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    if-le v0, v5, :cond_15e

    .line 627
    :cond_12e
    const-string v0, "GestureLauncherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    int-to-long v11, v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " consecutive power button taps detected, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    int-to-long v11, v4

    .line 629
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " consecutive slow power button taps detected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 627
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_15e
    if-eqz v6, :cond_196

    .line 633
    const-string v0, "GestureLauncherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Power button double tap gesture detected, launching camera. Interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v5}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v6

    .line 637
    if-eqz v6, :cond_1b9

    .line 638
    iget-object v3, v1, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v4, 0xff

    long-to-int v11, v9

    invoke-virtual {v3, v4, v11}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 640
    iget-object v3, v1, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v4, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_DOUBLE_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    invoke-interface {v3, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_1b9

    .line 642
    :cond_196
    const/4 v0, 0x0

    if-eqz v7, :cond_1b9

    .line 643
    const-string v3, "GestureLauncherService"

    const-string v4, "Emergency gesture detected, launching."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/GestureLauncherService;->handleEmergencyGesture()Z

    move-result v7

    .line 645
    iget-object v3, v1, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v4, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_EMERGENCY_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    invoke-interface {v3, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 647
    if-eqz v7, :cond_1b9

    .line 648
    monitor-enter p0

    .line 649
    :try_start_1ae
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/GestureLauncherService;->mLastEmergencyGestureTriggered:J

    .line 650
    monitor-exit p0

    goto :goto_1b9

    :catchall_1b6
    move-exception v0

    monitor-exit p0
    :try_end_1b8
    .catchall {:try_start_1ae .. :try_end_1b8} :catchall_1b6

    throw v0

    .line 653
    :cond_1b9
    :goto_1b9
    iget-object v3, v1, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v4, "power_consecutive_short_tap_count"

    iget v11, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    invoke-virtual {v3, v4, v11}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 655
    iget-object v3, v1, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v4, "power_double_tap_interval"

    long-to-int v11, v9

    invoke-virtual {v3, v4, v11}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 657
    if-nez v6, :cond_1d3

    if-eqz v7, :cond_1d1

    goto :goto_1d3

    :cond_1d1
    move v3, v0

    goto :goto_1d4

    :cond_1d3
    :goto_1d3
    move v3, v5

    :goto_1d4
    iput-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z

    .line 660
    if-eqz v8, :cond_1e0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/GestureLauncherService;->isUserSetupComplete()Z

    move-result v3

    if-eqz v3, :cond_1e0

    move v4, v5

    goto :goto_1e1

    :cond_1e0
    move v4, v0

    :goto_1e1
    return v4

    .line 625
    .end local v9    # "powerTapInterval":J
    :catchall_1e2
    move-exception v0

    :try_start_1e3
    monitor-exit p0
    :try_end_1e4
    .catchall {:try_start_1e3 .. :try_end_1e4} :catchall_1e2

    throw v0
.end method

.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"    # I

    .line 257
    const/16 v0, 0x258

    if-ne p1, v0, :cond_6c

    .line 258
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 259
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 261
    return-void

    .line 264
    :cond_11
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 265
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    .line 267
    const/4 v2, 0x1

    const-string v3, "GestureLauncherService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 269
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    .line 270
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    .line 271
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateEmergencyGestureEnabled()V

    .line 272
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateEmergencyGesturePowerButtonCooldownPeriodMs()V

    .line 274
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 275
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 276
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    .line 278
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 279
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/GestureLauncherService;->mHasFeatureWatch:Z

    .line 280
    const v1, 0x10e009a

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mVibrateMilliSecondsForPanicGesture:J

    .line 288
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_6c
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 252
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 253
    return-void
.end method

.method updateCameraDoubleTapPowerEnabled()V
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 327
    .local v0, "enabled":Z
    monitor-enter p0

    .line 328
    :try_start_9
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    .line 329
    monitor-exit p0

    .line 330
    return-void

    .line 329
    :catchall_d
    move-exception v1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v1
.end method

.method updateEmergencyGestureEnabled()V
    .registers 3

    .line 334
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->isEmergencyGestureSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 335
    .local v0, "enabled":Z
    monitor-enter p0

    .line 336
    :try_start_9
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mEmergencyGestureEnabled:Z

    .line 337
    monitor-exit p0

    .line 338
    return-void

    .line 337
    :catchall_d
    move-exception v1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v1
.end method

.method updateEmergencyGesturePowerButtonCooldownPeriodMs()V
    .registers 3

    .line 342
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->getEmergencyGesturePowerButtonCooldownPeriodMs(Landroid/content/Context;I)I

    move-result v0

    .line 343
    .local v0, "cooldownPeriodMs":I
    monitor-enter p0

    .line 344
    :try_start_9
    iput v0, p0, Lcom/android/server/GestureLauncherService;->mEmergencyGesturePowerButtonCooldownPeriodMs:I

    .line 345
    monitor-exit p0

    .line 346
    return-void

    .line 345
    :catchall_d
    move-exception v1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v1
.end method
