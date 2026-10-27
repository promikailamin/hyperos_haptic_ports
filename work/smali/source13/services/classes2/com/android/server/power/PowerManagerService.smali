.class public final Lcom/android/server/power/PowerManagerService;
.super Lcom/android/server/SystemService;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$DeviceStateListener;,
        Lcom/android/server/power/PowerManagerService$LocalService;,
        Lcom/android/server/power/PowerManagerService$BinderService;,
        Lcom/android/server/power/PowerManagerService$UidState;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$WakeLock;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/power/PowerManagerService$Injector;,
        Lcom/android/server/power/PowerManagerService$Clock;,
        Lcom/android/server/power/PowerManagerService$NativeWrapper;,
        Lcom/android/server/power/PowerManagerService$Constants;,
        Lcom/android/server/power/PowerManagerService$ProfilePowerState;,
        Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;,
        Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;,
        Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;,
        Lcom/android/server/power/PowerManagerService$HaltMode;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static DEBUG:Z = false

.field private static DEBUG_SPEW:Z = false

.field private static final DEFAULT_DOUBLE_TAP_TO_WAKE:I = 0x0

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_SLEEP_TIMEOUT:I = -0x1

.field private static final DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED:I = 0x8

.field private static final DIRTY_ATTENTIVE:I = 0x4000

.field private static final DIRTY_BATTERY_STATE:I = 0x100

.field private static final DIRTY_BOOT_COMPLETED:I = 0x10

.field private static final DIRTY_DISPLAY_GROUP_WAKEFULNESS:I = 0x10000

.field private static final DIRTY_DOCK_STATE:I = 0x400

.field private static final DIRTY_IS_POWERED:I = 0x40

.field private static final DIRTY_PROXIMITY_POSITIVE:I = 0x200

.field private static final DIRTY_QUIESCENT:I = 0x1000

.field private static final DIRTY_SCREEN_BRIGHTNESS_BOOST:I = 0x800

.field private static final DIRTY_SETTINGS:I = 0x20

.field private static final DIRTY_STAY_ON:I = 0x80

.field private static final DIRTY_USER_ACTIVITY:I = 0x4

.field private static final DIRTY_VR_MODE_CHANGED:I = 0x2000

.field private static final DIRTY_WAKEFULNESS:I = 0x2

.field private static final DIRTY_WAKE_LOCKS:I = 0x1

.field private static final ENHANCED_DISCHARGE_PREDICTION_BROADCAST_MIN_DELAY_MS:J = 0xea60L

.field private static final ENHANCED_DISCHARGE_PREDICTION_TIMEOUT_MS:J = 0x1b7740L

.field private static final HALT_MODE_REBOOT:I = 0x1

.field private static final HALT_MODE_REBOOT_SAFE_MODE:I = 0x2

.field private static final HALT_MODE_SHUTDOWN:I = 0x0

.field private static final HOLDING_DISPLAY_SUSPEND_BLOCKER:Ljava/lang/String; = "holding display"

.field private static final INVALID_BRIGHTNESS_IN_CONFIG:F = -2.0f

.field static final MIN_LONG_WAKE_CHECK_INTERVAL:J = 0xea60L

.field private static final MSG_ATTENTIVE_TIMEOUT:I = 0x5

.field private static final MSG_CHECK_FOR_LONG_WAKELOCKS:I = 0x4

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x3

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field private static final REASON_BATTERY_THERMAL_STATE:Ljava/lang/String; = "shutdown,thermal,battery"

.field private static final REASON_LOW_BATTERY:Ljava/lang/String; = "shutdown,battery"

.field private static final REASON_REBOOT:Ljava/lang/String; = "reboot"

.field private static final REASON_SHUTDOWN:Ljava/lang/String; = "shutdown"

.field private static final REASON_THERMAL_SHUTDOWN:Ljava/lang/String; = "shutdown,thermal"

.field private static final REASON_USERREQUESTED:Ljava/lang/String; = "shutdown,userrequested"

.field private static final SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x1388

.field private static final SCREEN_ON_LATENCY_WARNING_MS:I = 0xc8

.field private static final SYSTEM_PROPERTY_QUIESCENT:Ljava/lang/String; = "ro.boot.quiescent"

.field private static final SYSTEM_PROPERTY_REBOOT_REASON:Ljava/lang/String; = "sys.boot.reason"

.field private static final SYSTEM_PROPERTY_RETAIL_DEMO_ENABLED:Ljava/lang/String; = "sys.retaildemo.enabled"

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field static final TRACE_SCREEN_ON:Ljava/lang/String; = "Screen turning on"

.field static final USER_ACTIVITY_SCREEN_BRIGHT:I = 0x1

.field static final USER_ACTIVITY_SCREEN_DIM:I = 0x2

.field static final USER_ACTIVITY_SCREEN_DREAM:I = 0x4

.field static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field static final WAKE_LOCK_CPU:I = 0x1

.field static final WAKE_LOCK_DOZE:I = 0x40

.field static final WAKE_LOCK_DRAW:I = 0x80

.field static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x2

.field static final WAKE_LOCK_SCREEN_DIM:I = 0x4

.field static final WAKE_LOCK_STAY_AWAKE:I = 0x20

.field private static sQuiescent:Z


# instance fields
.field private mAlwaysOnEnabled:Z

.field private final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAttentionDetector:Lcom/android/server/power/AttentionDetector;

.field private mAttentionLight:Lcom/android/server/lights/LogicalLight;

.field private mAttentiveTimeoutConfig:I

.field private mAttentiveTimeoutSetting:J

.field private mAttentiveWarningDurationConfig:J

.field private mBatteryLevel:I

.field private mBatteryLevelLow:Z

.field private mBatteryLevelWhenDreamStarted:I

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private final mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

.field private final mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

.field private final mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

.field private final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

.field private mBootCompleted:Z

.field private final mBootingSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mClock:Lcom/android/server/power/PowerManagerService$Clock;

.field final mConstants:Lcom/android/server/power/PowerManagerService$Constants;

.field private final mContext:Landroid/content/Context;

.field private mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

.field private mDecoupleHalInteractiveModeFromDisplayConfig:Z

.field private mDeviceIdleMode:Z

.field mDeviceIdleTempWhitelist:[I

.field mDeviceIdleWhitelist:[I

.field private mDirty:I

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mDockState:I

.field private mDoubleTapWakeEnabled:Z

.field private mDozeAfterScreenOff:Z

.field private mDozeScreenBrightnessOverrideFromDreamManager:I

.field private mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

.field private mDozeScreenStateOverrideFromDreamManager:I

.field private mDozeStartInProgress:Z

.field private mDrawWakeLockOverrideFromSidekick:Z

.field private mDreamManager:Landroid/service/dreams/DreamManagerInternal;

.field private mDreamsActivateOnDockSetting:Z

.field private mDreamsActivateOnSleepSetting:Z

.field private mDreamsActivatedOnDockByDefaultConfig:Z

.field private mDreamsActivatedOnSleepByDefaultConfig:Z

.field private mDreamsBatteryLevelDrainCutoffConfig:I

.field private mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

.field private mDreamsBatteryLevelMinimumWhenPoweredConfig:I

.field private mDreamsEnabledByDefaultConfig:Z

.field private mDreamsEnabledOnBatteryConfig:Z

.field private mDreamsEnabledSetting:Z

.field private mDreamsSupportedConfig:Z

.field private mEnhancedDischargePredictionIsPersonalized:Z

.field private mEnhancedDischargeTimeElapsed:J

.field private final mEnhancedDischargeTimeLock:Ljava/lang/Object;

.field private final mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

.field private mForceSuspendActive:Z

.field private mForegroundProfile:I

.field private mHalAutoSuspendModeEnabled:Z

.field private mHalInteractiveModeEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mHoldingBootingSuspendBlocker:Z

.field private mHoldingDisplaySuspendBlocker:Z

.field private mHoldingWakeLockSuspendBlocker:Z

.field private final mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

.field private final mInjector:Lcom/android/server/power/PowerManagerService$Injector;

.field private mInterceptedPowerKeyForProximity:Z

.field private mIsFaceDown:Z

.field private mIsPowered:Z

.field private final mIsUltrasonicProximity:Z

.field private mIsVrModeEnabled:Z

.field private mLastEnhancedDischargeTimeUpdatedElapsed:J

.field private mLastFlipTime:J

.field private mLastGlobalSleepReason:I

.field private mLastGlobalSleepTime:J

.field private mLastGlobalWakeReason:I

.field private mLastGlobalWakeTime:J

.field private mLastInteractivePowerHintTime:J

.field private mLastScreenBrightnessBoostTime:J

.field private mLastWarningAboutUserActivityPermission:J

.field private mLightDeviceIdleMode:Z

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private final mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerStandbyActive:Z

.field mLowPowerStandbyAllowlist:[I

.field private final mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

.field private mMaximumScreenDimDurationConfig:J

.field private mMaximumScreenDimRatioConfig:F

.field private mMaximumScreenOffTimeoutFromDeviceAdmin:J

.field private mMinimumScreenOffTimeoutConfig:J

.field private final mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

.field private mNotifier:Lcom/android/server/power/Notifier;

.field private mNotifyLongDispatched:J

.field private mNotifyLongNextCheck:J

.field private mNotifyLongScheduled:J

.field private mOverriddenTimeout:J

.field private mPlugType:I

.field private mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private final mPowerGroupWakefulnessChangeListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

.field private final mPowerGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/PowerGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

.field private final mProfilePowerState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/PowerManagerService$ProfilePowerState;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityPositive:Z

.field private mRequestWaitForNegativeProximity:Z

.field private mSandmanScheduled:Z

.field private mScreenBrightnessBoostInProgress:Z

.field public final mScreenBrightnessDefault:F

.field public final mScreenBrightnessDefaultVr:F

.field public final mScreenBrightnessDim:F

.field public final mScreenBrightnessDoze:F

.field public final mScreenBrightnessMaximum:F

.field public final mScreenBrightnessMaximumVr:F

.field public final mScreenBrightnessMinimum:F

.field public final mScreenBrightnessMinimumVr:F

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessOverrideFromWindowManager:F

.field private mScreenOffTimeoutSetting:J

.field private final mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

.field private mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field private mSleepTimeoutSetting:J

.field private mStayOn:Z

.field private mStayOnWhilePluggedInSetting:I

.field private mSupportsDoubleTapWakeConfig:Z

.field private final mSuspendBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/SuspendBlocker;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendWhenScreenOffDueToProximityConfig:Z

.field private final mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

.field private mSystemReady:Z

.field private mTheaterModeEnabled:Z

.field private final mUidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/PowerManagerService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field private mUidsChanged:Z

.field private mUidsChanging:Z

.field private mUpdatePowerStateInProgress:Z

.field private final mUsWaitForNegativeFeature:Z

.field private mUserActivityTimeoutOverrideFromWindowManager:J

.field private mUserId:I

.field private mUserInactiveOverrideFromWindowManager:Z

.field private final mVisibleWindowUids:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWakeLockSummary:I

.field private final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field private mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

.field private mWakefulnessChanging:Z

.field private mWakefulnessRaw:I

.field private mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;


# direct methods
.method public static synthetic $r8$lambda$3O_XhPeje_Bvi3Lsae4KaFoxJj0(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->onUserAttention()V

    return-void
.end method

.method public static synthetic $r8$lambda$q7dp6tNnllSjuO6t2c5KypV49H8(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->onFlip(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAmbientDisplayConfiguration(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAmbientDisplaySuppressionController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/AmbientDisplaySuppressionController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatterySaverController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatterySaverPolicy(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatterySaverStateMachine(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryStats(Lcom/android/server/power/PowerManagerService;)Lcom/android/internal/app/IBatteryStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBootCompleted(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDecoupleHalAutoSuspendModeFromDisplayConfig(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDecoupleHalInteractiveModeFromDisplayConfig(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayManagerInternal(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplaySuspendBlocker(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDockState(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnhancedDischargePredictionIsPersonalized(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnhancedDischargeTimeElapsed(Lcom/android/server/power/PowerManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmEnhancedDischargeTimeLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPowered(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVrModeEnabled(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastEnhancedDischargeTimeUpdatedElapsed(Lcom/android/server/power/PowerManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastWarningAboutUserActivityPermission(Lcom/android/server/power/PowerManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLowPowerStandbyController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/LowPowerStandbyController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNativeWrapper(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$NativeWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotifier(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/Notifier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPolicy(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/policy/WindowManagerPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerGroupWakefulnessChangeListener(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroupWakefulnessChangeListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerManagerServiceImpl(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerServiceStub;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuspendBlockers(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSystemReady(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVisibleWindowUids(Lcom/android/server/power/PowerManagerService;)Ljava/util/Vector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mVisibleWindowUids:Ljava/util/Vector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDockState(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnhancedDischargePredictionIsPersonalized(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnhancedDischargeTimeElapsed(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmForegroundProfile(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInterceptedPowerKeyForProximity(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastEnhancedDischargeTimeUpdatedElapsed(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastWarningAboutUserActivityPermission(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProximityPositive(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUserId(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mUserId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$macquireWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mboostScreenBrightnessInternal(Lcom/android/server/power/PowerManagerService;JI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->boostScreenBrightnessInternal(JI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcrashInternal(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdozePowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JII)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdreamPowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JI)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->dreamPowerGroupLocked(Lcom/android/server/power/PowerGroup;JI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpProto(Lcom/android/server/power/PowerManagerService;Ljava/io/FileDescriptor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mforceSuspendInternal(Lcom/android/server/power/PowerManagerService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->forceSuspendInternal(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetLastGoToSleepInternal(Lcom/android/server/power/PowerManagerService;)Landroid/os/PowerManager$SleepData;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getLastGoToSleepInternal()Landroid/os/PowerManager$SleepData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLastSleepReasonInternal(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getLastSleepReasonInternal()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetLastWakeupInternal(Lcom/android/server/power/PowerManagerService;)Landroid/os/PowerManager$WakeData;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getLastWakeupInternal()Landroid/os/PowerManager$WakeData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleAttentiveTimeout(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleAttentiveTimeout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleBatteryStateChangedLocked(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSandman(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleSandman(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleScreenBrightnessBoostTimeout(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUserActivityTimeout(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWakeLockDeath(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minterceptPowerKeyDownInternal(Lcom/android/server/power/PowerManagerService;Landroid/view/KeyEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->interceptPowerKeyDownInternal(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misInteractiveInternal(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misScreenBrightnessBoostedInternal(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBrightnessBoostedInternal()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misWakeLockLevelSupportedInternal(Lcom/android/server/power/PowerManagerService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmaybeUpdateForegroundProfileLastActivityLocked(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->maybeUpdateForegroundProfileLastActivityLocked(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeInit(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleSandmanLocked(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAttentionLightInternal(Lcom/android/server/power/PowerManagerService;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDozeAfterScreenOffInternal(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDozeAfterScreenOffInternal(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDozeOverrideFromDreamManagerInternal(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDrawWakeLockOverrideFromSidekickInternal(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDrawWakeLockOverrideFromSidekickInternal(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHalAutoSuspendModeLocked(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHalInteractiveModeLocked(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLowPowerModeInternal(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setLowPowerModeInternal(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetPowerBoostInternal(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setPowerBoostInternal(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPowerModeInternal(Lcom/android/server/power/PowerManagerService;IZ)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetScreenBrightnessOverrideFromWindowManagerInternal(Lcom/android/server/power/PowerManagerService;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUserActivityTimeoutOverrideFromWindowManagerInternal(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUserInactiveOverrideFromWindowManagerInternal(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->setUserInactiveOverrideFromWindowManagerInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshutdownOrRebootInternal(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msleepPowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JII)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateGlobalWakefulnessLocked(Lcom/android/server/power/PowerManagerService;JIIILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/power/PowerManagerService;->updateGlobalWakefulnessLocked(JIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWakeLockCallbackInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/IWakeLockCallback;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->updateWakeLockCallbackInternal(Landroid/os/IBinder;Landroid/os/IWakeLockCallback;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWakeLockWorkSourceInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$muserActivityInternal(Lcom/android/server/power/PowerManagerService;IJIII)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(IJIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$muserActivityNoUpdateLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JIII)Z
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mwakePowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDATE_FORMAT()Ljava/text/SimpleDateFormat;
    .registers 1

    sget-object v0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG_SPEW()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetsQuiescent()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smcopyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnativeAcquireSuspendBlocker(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeForceSuspend()Z
    .registers 1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeForceSuspend()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnativeReleaseSuspendBlocker(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetAutoSuspend(Z)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetPowerBoost(II)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerBoost(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetPowerMode(IZ)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerMode(IZ)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 165
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    .line 166
    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    .line 295
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1049
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$Injector;)V

    .line 1050
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$Injector;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/power/PowerManagerService$Injector;

    .line 1054
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 331
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 347
    const-string/jumbo v5, "ro.vendor.audio.us.proximity"

    .line 348
    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mIsUltrasonicProximity:Z

    .line 350
    const-string/jumbo v5, "ro.vendor.audio.us.proximity_waitfornegative_feature"

    .line 351
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mUsWaitForNegativeFeature:Z

    .line 355
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    .line 358
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 447
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    .line 476
    iput v6, v1, Lcom/android/server/power/PowerManagerService;->mDockState:I

    .line 568
    const-wide v7, 0x7fffffffffffffffL

    iput-wide v7, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    .line 599
    iput-boolean v6, v1, Lcom/android/server/power/PowerManagerService;->mIsFaceDown:Z

    .line 600
    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/android/server/power/PowerManagerService;->mLastFlipTime:J

    .line 608
    const/high16 v5, 0x7fc00000    # Float.NaN

    iput v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    .line 617
    const-wide/16 v7, -0x1

    iput-wide v7, v1, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 622
    iput-wide v7, v1, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 625
    iput v6, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 628
    const/4 v7, -0x1

    iput v7, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 630
    iput v5, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

    .line 636
    const-wide/high16 v7, -0x8000000000000000L

    iput-wide v7, v1, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 648
    new-array v5, v6, [I

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 651
    new-array v5, v6, [I

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 654
    new-array v5, v6, [I

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyAllowlist:[I

    .line 658
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    .line 662
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 805
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    .line 3698
    new-instance v5, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v5, v1}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 5232
    new-instance v5, Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {v5, v1}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 7000
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mVisibleWindowUids:Ljava/util/Vector;

    .line 1056
    iput-object v2, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 1057
    new-instance v5, Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-direct {v5, v1}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 1058
    new-instance v5, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v5, v1}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    .line 1059
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/PowerManagerService$Injector;->createNativeWrapper()Lcom/android/server/power/PowerManagerService$NativeWrapper;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    .line 1060
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/PowerManagerService$Injector;->createSystemPropertiesWrapper()Lcom/android/server/power/SystemPropertiesWrapper;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    .line 1061
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/PowerManagerService$Injector;->createClock()Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 1062
    iput-object v3, v1, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    .line 1064
    new-instance v8, Lcom/android/server/ServiceThread;

    const-string v9, "PowerManagerService"

    const/4 v10, -0x4

    invoke-direct {v8, v9, v10, v6}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 1066
    invoke-virtual {v8}, Lcom/android/server/ServiceThread;->start()V

    .line 1067
    invoke-virtual {v8}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    new-instance v9, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10}, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback-IA;)V

    invoke-virtual {v3, v8, v9}, Lcom/android/server/power/PowerManagerService$Injector;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 1069
    new-instance v9, Lcom/android/server/power/PowerManagerService$Constants;

    invoke-direct {v9, v1, v8}, Lcom/android/server/power/PowerManagerService$Constants;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v9, v1, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    .line 1070
    invoke-virtual {v3, v2}, Lcom/android/server/power/PowerManagerService$Injector;->createAmbientDisplayConfiguration(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 1071
    nop

    .line 1072
    invoke-virtual {v3, v2}, Lcom/android/server/power/PowerManagerService$Injector;->createAmbientDisplaySuppressionController(Landroid/content/Context;)Lcom/android/server/power/AmbientDisplaySuppressionController;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    .line 1073
    new-instance v8, Lcom/android/server/power/AttentionDetector;

    new-instance v9, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-direct {v8, v9, v4}, Lcom/android/server/power/AttentionDetector;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    .line 1074
    new-instance v8, Lcom/android/server/power/FaceDownDetector;

    new-instance v9, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v9, v1}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-direct {v8, v9}, Lcom/android/server/power/FaceDownDetector;-><init>(Ljava/util/function/Consumer;)V

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    .line 1075
    new-instance v8, Lcom/android/server/power/ScreenUndimDetector;

    invoke-direct {v8}, Lcom/android/server/power/ScreenUndimDetector;-><init>()V

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    .line 1077
    new-instance v8, Lcom/android/server/power/batterysaver/BatterySavingStats;

    invoke-direct {v8, v4}, Lcom/android/server/power/batterysaver/BatterySavingStats;-><init>(Ljava/lang/Object;)V

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 1078
    nop

    .line 1079
    invoke-virtual {v3, v4, v2, v8}, Lcom/android/server/power/PowerManagerService$Injector;->createBatterySaverPolicy(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 1080
    invoke-virtual {v3, v4, v2, v9, v8}, Lcom/android/server/power/PowerManagerService$Injector;->createBatterySaverController(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 1082
    invoke-virtual {v3, v4, v2, v8}, Lcom/android/server/power/PowerManagerService$Injector;->createBatterySaverStateMachine(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 1085
    nop

    .line 1086
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    .line 1085
    invoke-virtual {v3, v2, v8}, Lcom/android/server/power/PowerManagerService$Injector;->createLowPowerStandbyController(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/power/LowPowerStandbyController;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    .line 1087
    nop

    .line 1088
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/PowerManagerService$Injector;->createInattentiveSleepWarningController()Lcom/android/server/power/InattentiveSleepWarningController;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    .line 1090
    invoke-virtual {v3, v2}, Lcom/android/server/power/PowerManagerService$Injector;->createAppOpsManager(Landroid/content/Context;)Landroid/app/AppOpsManager;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1092
    new-instance v8, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    invoke-direct {v8, v1, v10}, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener-IA;)V

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mPowerGroupWakefulnessChangeListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    .line 1098
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10500dd

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v8

    .line 1100
    .local v8, "min":F
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10500dc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v9

    .line 1102
    .local v9, "max":F
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10500d8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v10

    .line 1104
    .local v10, "def":F
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10500d6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v11

    .line 1106
    .local v11, "doze":F
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10500d5

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v12

    .line 1109
    .local v12, "dim":F
    const/high16 v13, -0x40000000    # -2.0f

    cmpl-float v14, v8, v13

    if-eqz v14, :cond_18c

    cmpl-float v14, v9, v13

    if-eqz v14, :cond_18c

    cmpl-float v14, v10, v13

    if-nez v14, :cond_185

    goto :goto_18c

    .line 1121
    :cond_185
    iput v8, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    .line 1122
    iput v9, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    .line 1123
    iput v10, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    goto :goto_1c2

    .line 1111
    :cond_18c
    :goto_18c
    nop

    .line 1112
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00de

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 1111
    invoke-static {v14}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v14

    iput v14, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    .line 1114
    nop

    .line 1115
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00dd

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 1114
    invoke-static {v14}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v14

    iput v14, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    .line 1117
    nop

    .line 1118
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00dc

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 1117
    invoke-static {v14}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v14

    iput v14, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    .line 1125
    :goto_1c2
    cmpl-float v14, v11, v13

    if-nez v14, :cond_1d9

    .line 1126
    nop

    .line 1127
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00d8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 1126
    invoke-static {v14}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v14

    iput v14, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDoze:F

    goto :goto_1db

    .line 1130
    :cond_1d9
    iput v11, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDoze:F

    .line 1132
    :goto_1db
    cmpl-float v14, v12, v13

    if-nez v14, :cond_1f2

    .line 1133
    nop

    .line 1134
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00d7

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 1133
    invoke-static {v14}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v14

    iput v14, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDim:F

    goto :goto_1f4

    .line 1137
    :cond_1f2
    iput v12, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDim:F

    .line 1140
    :goto_1f4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500db

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v14

    .line 1142
    .local v14, "vrMin":F
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v6, 0x10500da

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    .line 1144
    .local v6, "vrMax":F
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v0, 0x10500d9

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v15

    .line 1146
    .local v15, "vrDef":F
    cmpl-float v0, v14, v13

    if-eqz v0, :cond_229

    cmpl-float v0, v6, v13

    if-eqz v0, :cond_229

    cmpl-float v0, v15, v13

    if-nez v0, :cond_222

    goto :goto_229

    .line 1158
    :cond_222
    iput v14, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimumVr:F

    .line 1159
    iput v6, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximumVr:F

    .line 1160
    iput v15, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefaultVr:F

    goto :goto_25f

    .line 1148
    :cond_229
    :goto_229
    nop

    .line 1149
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v13, 0x10e00db

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1148
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimumVr:F

    .line 1151
    nop

    .line 1152
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v13, 0x10e00da

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1151
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximumVr:F

    .line 1154
    nop

    .line 1155
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v13, 0x10e00d9

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1154
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefaultVr:F

    .line 1163
    :goto_25f
    monitor-enter v4

    .line 1164
    :try_start_260
    const-string v0, "PowerManagerService.Booting"

    .line 1165
    invoke-virtual {v3, v1, v0}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/power/PowerManagerService;->mBootingSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 1166
    const-string v13, "PowerManagerService.WakeLocks"

    .line 1167
    invoke-virtual {v3, v1, v13}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 1168
    const-string v13, "PowerManagerService.Display"

    .line 1169
    invoke-virtual {v3, v1, v13}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 1170
    if-eqz v0, :cond_280

    .line 1171
    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1172
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    .line 1174
    :cond_280
    if-eqz v13, :cond_28a

    .line 1175
    const-string v0, "holding display"

    invoke-interface {v13, v0}, Lcom/android/server/power/SuspendBlocker;->acquire(Ljava/lang/String;)V

    .line 1176
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 1178
    :cond_28a
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 1179
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 1181
    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mWakefulnessRaw:I

    .line 1182
    const-string/jumbo v0, "ro.boot.quiescent"

    const-string v13, "0"

    invoke-interface {v7, v0, v13}, Lcom/android/server/power/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2bb

    .line 1183
    invoke-static {}, Landroid/sysprop/InitProperties;->userspace_reboot_in_progress()Ljava/util/Optional;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2b9

    goto :goto_2bb

    :cond_2b9
    const/4 v0, 0x0

    goto :goto_2bc

    :cond_2bb
    :goto_2bb
    const/4 v0, 0x1

    :goto_2bc
    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 1185
    invoke-virtual {v5, v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeInit(Lcom/android/server/power/PowerManagerService;)V

    .line 1186
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetAutoSuspend(Z)V

    .line 1187
    const/4 v7, 0x7

    const/4 v13, 0x1

    invoke-virtual {v5, v7, v13}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z

    .line 1188
    invoke-virtual {v5, v0, v0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z

    .line 1189
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/PowerManagerService$Injector;->invalidateIsInteractiveCaches()V

    .line 1190
    monitor-exit v4
    :try_end_2d1
    .catchall {:try_start_260 .. :try_end_2d1} :catchall_2e0

    .line 1192
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceStub;->get()Lcom/android/server/power/PowerManagerServiceStub;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    .line 1197
    const-string/jumbo v0, "persist.sys.miui.power.version"

    const-string v4, "1"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    return-void

    .line 1190
    :catchall_2e0
    move-exception v0

    :try_start_2e1
    monitor-exit v4
    :try_end_2e2
    .catchall {:try_start_2e1 .. :try_end_2e2} :catchall_2e0

    throw v0
.end method

.method private acquireWakeLockInternal(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V
    .registers 34
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "flags"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "ws"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;
    .param p8, "uid"    # I
    .param p9, "pid"    # I
    .param p10, "callback"    # Landroid/os/IWakeLockCallback;

    .line 1523
    move-object/from16 v14, p0

    move/from16 v15, p2

    move/from16 v13, p8

    const/4 v1, 0x0

    .line 1525
    .local v1, "isCallerPrivileged":Z
    const/4 v12, 0x0

    const/4 v11, 0x1

    :try_start_9
    iget-object v0, v14, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 1526
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_15} :catch_2d

    .line 1525
    move-object/from16 v10, p5

    :try_start_17
    invoke-virtual {v0, v10, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1527
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v13, :cond_27

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v2
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_23} :catch_2b

    if-eqz v2, :cond_27

    move v2, v11

    goto :goto_28

    :cond_27
    move v2, v12

    :goto_28
    move v1, v2

    .line 1530
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    move v9, v1

    goto :goto_31

    .line 1528
    :catch_2b
    move-exception v0

    goto :goto_30

    :catch_2d
    move-exception v0

    move-object/from16 v10, p5

    :goto_30
    move v9, v1

    .line 1531
    .end local v1    # "isCallerPrivileged":Z
    .local v9, "isCallerPrivileged":Z
    :goto_31
    iget-object v8, v14, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1532
    const/4 v0, -0x1

    if-eq v15, v0, :cond_74

    .line 1534
    :try_start_37
    iget-boolean v0, v14, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_42

    iget-object v0, v14, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, v15}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    .line 1535
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    :goto_43
    if-nez v0, :cond_5f

    .line 1536
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to acquire wake lock for invalid display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    monitor-exit v8

    return-void

    .line 1538
    :cond_5f
    invoke-virtual {v0, v13}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v1

    if-eqz v1, :cond_66

    goto :goto_74

    .line 1539
    :cond_66
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Caller does not have access to display"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v9    # "isCallerPrivileged":Z
    .end local p0    # "this":Lcom/android/server/power/PowerManagerService;
    .end local p1    # "lock":Landroid/os/IBinder;
    .end local p2    # "displayId":I
    .end local p3    # "flags":I
    .end local p4    # "tag":Ljava/lang/String;
    .end local p5    # "packageName":Ljava/lang/String;
    .end local p6    # "ws":Landroid/os/WorkSource;
    .end local p7    # "historyTag":Ljava/lang/String;
    .end local p8    # "uid":I
    .end local p9    # "pid":I
    .end local p10    # "callback":Landroid/os/IWakeLockCallback;
    throw v1
    :try_end_6e
    .catchall {:try_start_37 .. :try_end_6e} :catchall_6e

    .line 1595
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v9    # "isCallerPrivileged":Z
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService;
    .restart local p1    # "lock":Landroid/os/IBinder;
    .restart local p2    # "displayId":I
    .restart local p3    # "flags":I
    .restart local p4    # "tag":Ljava/lang/String;
    .restart local p5    # "packageName":Ljava/lang/String;
    .restart local p6    # "ws":Landroid/os/WorkSource;
    .restart local p7    # "historyTag":Ljava/lang/String;
    .restart local p8    # "uid":I
    .restart local p9    # "pid":I
    .restart local p10    # "callback":Landroid/os/IWakeLockCallback;
    :catchall_6e
    move-exception v0

    :goto_6f
    move-object/from16 v17, v8

    move v3, v9

    goto/16 :goto_1de

    .line 1543
    :cond_74
    :goto_74
    :try_start_74
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z
    :try_end_76
    .catchall {:try_start_74 .. :try_end_76} :catchall_1da

    if-eqz v0, :cond_dd

    .line 1544
    :try_start_78
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireWakeLockInternal: lock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1545
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tag=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_a1
    .catchall {:try_start_78 .. :try_end_a1} :catchall_d5

    move-object/from16 v7, p4

    :try_start_a3
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", ws="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_ad
    .catchall {:try_start_a3 .. :try_end_ad} :catchall_d3

    move-object/from16 v6, p6

    :try_start_af
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_c3
    .catchall {:try_start_af .. :try_end_c3} :catchall_d1

    move/from16 v5, p9

    :try_start_c5
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1544
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catchall {:try_start_c5 .. :try_end_d0} :catchall_6e

    goto :goto_e3

    .line 1595
    :catchall_d1
    move-exception v0

    goto :goto_da

    :catchall_d3
    move-exception v0

    goto :goto_d8

    :catchall_d5
    move-exception v0

    move-object/from16 v7, p4

    :goto_d8
    move-object/from16 v6, p6

    :goto_da
    move/from16 v5, p9

    goto :goto_6f

    .line 1543
    :cond_dd
    move-object/from16 v7, p4

    move-object/from16 v6, p6

    move/from16 v5, p9

    .line 1550
    :goto_e3
    :try_start_e3
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v1

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-interface/range {v1 .. v6}, Lcom/android/server/am/SmartPowerServiceStub;->onAcquireWakelock(Landroid/os/IBinder;ILjava/lang/String;II)V

    .line 1552
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0
    :try_end_f8
    .catchall {:try_start_e3 .. :try_end_f8} :catchall_1da

    .line 1554
    .local v0, "index":I
    if-ltz v0, :cond_15c

    .line 1555
    :try_start_fa
    iget-object v1, v14, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1556
    .local v16, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    move/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p6

    move/from16 v20, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;IILandroid/os/IWakeLockCallback;)Z

    move-result v1
    :try_end_114
    .catchall {:try_start_fa .. :try_end_114} :catchall_156

    if-nez v1, :cond_14a

    .line 1558
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v17, v8

    move-object/from16 v8, p6

    move v12, v9

    .end local v9    # "isCallerPrivileged":Z
    .local v12, "isCallerPrivileged":Z
    move-object/from16 v9, p7

    move-object/from16 v10, p10

    :try_start_12d
    invoke-direct/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    .line 1560
    move-object/from16 v1, v16

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V
    :try_end_145
    .catchall {:try_start_12d .. :try_end_145} :catchall_146

    goto :goto_14d

    .line 1595
    .end local v0    # "index":I
    .end local v16    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_146
    move-exception v0

    move v3, v12

    goto/16 :goto_1de

    .line 1556
    .end local v12    # "isCallerPrivileged":Z
    .restart local v0    # "index":I
    .restart local v9    # "isCallerPrivileged":Z
    .restart local v16    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_14a
    move-object/from16 v17, v8

    move v12, v9

    .line 1563
    .end local v9    # "isCallerPrivileged":Z
    .restart local v12    # "isCallerPrivileged":Z
    :goto_14d
    const/4 v1, 0x0

    move v2, v1

    move v15, v11

    move/from16 v19, v12

    move-object/from16 v1, v16

    .local v1, "notifyAcquire":Z
    goto/16 :goto_1bf

    .line 1595
    .end local v0    # "index":I
    .end local v1    # "notifyAcquire":Z
    .end local v12    # "isCallerPrivileged":Z
    .end local v16    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .restart local v9    # "isCallerPrivileged":Z
    :catchall_156
    move-exception v0

    move-object/from16 v17, v8

    move v3, v9

    .end local v9    # "isCallerPrivileged":Z
    .restart local v12    # "isCallerPrivileged":Z
    goto/16 :goto_1de

    .line 1565
    .end local v12    # "isCallerPrivileged":Z
    .restart local v0    # "index":I
    .restart local v9    # "isCallerPrivileged":Z
    :cond_15c
    move-object/from16 v17, v8

    move v10, v9

    .end local v9    # "isCallerPrivileged":Z
    .local v10, "isCallerPrivileged":Z
    :try_start_15f
    iget-object v1, v14, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;
    :try_end_167
    .catchall {:try_start_15f .. :try_end_167} :catchall_1d7

    .line 1566
    .local v1, "state":Lcom/android/server/power/PowerManagerService$UidState;
    if-nez v1, :cond_17e

    .line 1567
    :try_start_169
    new-instance v2, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v2, v13}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    move-object v1, v2

    .line 1568
    const/16 v2, 0x14

    iput v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 1569
    iget-object v2, v14, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, v13, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_178
    .catchall {:try_start_169 .. :try_end_178} :catchall_17a

    move-object v9, v1

    goto :goto_17f

    .line 1595
    .end local v0    # "index":I
    .end local v1    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :catchall_17a
    move-exception v0

    move v3, v10

    goto/16 :goto_1de

    .line 1566
    .restart local v0    # "index":I
    .restart local v1    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_17e
    move-object v9, v1

    .line 1571
    .end local v1    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    .local v9, "state":Lcom/android/server/power/PowerManagerService$UidState;
    :goto_17f
    :try_start_17f
    iget v1, v9, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/2addr v1, v11

    iput v1, v9, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    .line 1572
    new-instance v16, Lcom/android/server/power/PowerManagerService$WakeLock;
    :try_end_186
    .catchall {:try_start_17f .. :try_end_186} :catchall_1d7

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v18, v9

    .end local v9    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    .local v18, "state":Lcom/android/server/power/PowerManagerService$UidState;
    move-object/from16 v9, p7

    move v15, v10

    .end local v10    # "isCallerPrivileged":Z
    .local v15, "isCallerPrivileged":Z
    move/from16 v10, p8

    move/from16 v19, v15

    move v15, v11

    .end local v15    # "isCallerPrivileged":Z
    .local v19, "isCallerPrivileged":Z
    move/from16 v11, p9

    move-object/from16 v12, v18

    move-object/from16 v13, p10

    :try_start_1a6
    invoke-direct/range {v1 .. v13}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILcom/android/server/power/PowerManagerService$UidState;Landroid/os/IWakeLockCallback;)V

    move-object/from16 v1, v16

    .line 1574
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget-object v2, v14, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1575
    invoke-direct {v14, v1}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    .line 1576
    const/4 v2, 0x1

    .line 1578
    .local v2, "notifyAcquire":Z
    iget-object v3, v14, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    invoke-virtual {v3, v1, v15}, Lcom/android/server/power/PowerManagerServiceStub;->printWakeLockDetails(Lcom/android/server/power/PowerManagerService$WakeLock;Z)V

    .line 1579
    iget-object v3, v14, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/android/server/power/PowerManagerServiceStub;->setProximityWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)V
    :try_end_1bf
    .catchall {:try_start_1a6 .. :try_end_1bf} :catchall_1d3

    .line 1584
    .end local v18    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :goto_1bf
    move/from16 v3, v19

    .end local v19    # "isCallerPrivileged":Z
    .local v3, "isCallerPrivileged":Z
    :try_start_1c1
    invoke-direct {v14, v1, v3}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)V

    .line 1585
    iget v4, v14, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v4, v15

    iput v4, v14, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1586
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1587
    if-eqz v2, :cond_1d1

    .line 1593
    invoke-virtual {v14, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1595
    .end local v0    # "index":I
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v2    # "notifyAcquire":Z
    :cond_1d1
    monitor-exit v17

    .line 1596
    return-void

    .line 1595
    .end local v3    # "isCallerPrivileged":Z
    .restart local v19    # "isCallerPrivileged":Z
    :catchall_1d3
    move-exception v0

    move/from16 v3, v19

    .end local v19    # "isCallerPrivileged":Z
    .restart local v3    # "isCallerPrivileged":Z
    goto :goto_1de

    .end local v3    # "isCallerPrivileged":Z
    .restart local v10    # "isCallerPrivileged":Z
    :catchall_1d7
    move-exception v0

    move v3, v10

    .end local v10    # "isCallerPrivileged":Z
    .restart local v3    # "isCallerPrivileged":Z
    goto :goto_1de

    .end local v3    # "isCallerPrivileged":Z
    .local v9, "isCallerPrivileged":Z
    :catchall_1da
    move-exception v0

    move-object/from16 v17, v8

    move v3, v9

    .end local v9    # "isCallerPrivileged":Z
    .restart local v3    # "isCallerPrivileged":Z
    :goto_1de
    monitor-exit v17
    :try_end_1df
    .catchall {:try_start_1c1 .. :try_end_1df} :catchall_1e0

    throw v0

    :catchall_1e0
    move-exception v0

    goto :goto_1de
.end method

.method private adjustWakeLockSummary(II)I
    .registers 4
    .param p1, "wakefulness"    # I
    .param p2, "wakeLockSummary"    # I

    .line 2746
    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    .line 2747
    and-int/lit16 p2, p2, -0xc1

    .line 2749
    :cond_5
    if-eqz p1, :cond_b

    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_11

    .line 2751
    :cond_b
    and-int/lit8 p2, p2, -0xf

    .line 2753
    if-nez p1, :cond_11

    .line 2754
    and-int/lit8 p2, p2, -0x11

    .line 2759
    :cond_11
    and-int/lit8 v0, p2, 0x6

    if-eqz v0, :cond_20

    .line 2760
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1b

    .line 2761
    or-int/lit8 p2, p2, 0x21

    goto :goto_20

    .line 2762
    :cond_1b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_20

    .line 2763
    or-int/lit8 p2, p2, 0x1

    .line 2767
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    invoke-virtual {v0, p2}, Lcom/android/server/power/PowerManagerServiceStub;->adjustWakeLockDueToHangUpLocked(I)I

    move-result p2

    .line 2768
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_2c

    .line 2769
    or-int/lit8 p2, p2, 0x1

    .line 2772
    :cond_2c
    return p2
.end method

.method private applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)V
    .registers 20
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "isCallerPrivileged"    # Z

    .line 1650
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v0, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f2

    .line 1651
    invoke-static/range {p1 .. p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 1654
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_48

    iget-object v0, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    .line 1655
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 1656
    .local v0, "workSource":Landroid/os/WorkSource;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->getFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;

    move-result-object v1

    .line 1657
    .local v1, "workChain":Landroid/os/WorkSource$WorkChain;
    if-eqz v1, :cond_2e

    .line 1658
    invoke-virtual {v1}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1659
    .local v2, "opPackageName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v3

    .local v3, "opUid":I
    goto :goto_45

    .line 1661
    .end local v2    # "opPackageName":Ljava/lang/String;
    .end local v3    # "opUid":I
    :cond_2e
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 1662
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    :cond_3a
    iget-object v3, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 1663
    .local v3, "opPackageName":Ljava/lang/String;
    :goto_3c
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getUid(I)I

    move-result v2

    move-object/from16 v16, v3

    move v3, v2

    move-object/from16 v2, v16

    .line 1665
    .end local v0    # "workSource":Landroid/os/WorkSource;
    .end local v1    # "workChain":Landroid/os/WorkSource$WorkChain;
    .restart local v2    # "opPackageName":Ljava/lang/String;
    .local v3, "opUid":I
    :goto_45
    move-object v11, v2

    move v12, v3

    goto :goto_4e

    .line 1666
    .end local v2    # "opPackageName":Ljava/lang/String;
    .end local v3    # "opUid":I
    :cond_48
    iget-object v2, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 1667
    .restart local v2    # "opPackageName":Ljava/lang/String;
    iget v3, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v11, v2

    move v12, v3

    .line 1669
    .end local v2    # "opPackageName":Ljava/lang/String;
    .local v11, "opPackageName":Ljava/lang/String;
    .local v12, "opUid":I
    :goto_4e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/PowerManagerService$WakeLock;->getPowerGroupId()Ljava/lang/Integer;

    move-result-object v13

    .line 1671
    .local v13, "powerGroupId":Ljava/lang/Integer;
    if-eqz v13, :cond_ec

    move/from16 v14, p2

    invoke-direct {v9, v11, v12, v14}, Lcom/android/server/power/PowerManagerService;->isAcquireCausesWakeupFlagAllowed(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 1673
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "PowerManagerService"

    if-ne v0, v1, :cond_a7

    .line 1675
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_6e

    .line 1676
    const-string v0, "Waking up all power groups"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :cond_6e
    const/4 v0, 0x0

    move v15, v0

    .local v15, "idx":I
    :goto_70
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v15, v0, :cond_a6

    .line 1680
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    iget-object v1, v9, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerServiceStub;->isSubScreenDeviceDisplayGroup(Lcom/android/server/power/PowerGroup;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1681
    goto :goto_a3

    .line 1684
    :cond_89
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/power/PowerGroup;

    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    iget-object v5, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v0, p0

    move v6, v12

    move-object v7, v11

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    .line 1678
    :goto_a3
    add-int/lit8 v15, v15, 0x1

    goto :goto_70

    .line 1688
    .end local v15    # "idx":I
    :cond_a6
    return-void

    .line 1690
    :cond_a7
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 1691
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_cd

    .line 1692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Waking up power group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    :cond_cd
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/power/PowerGroup;

    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    iget-object v5, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v0, p0

    move v6, v12

    move-object v7, v11

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    goto :goto_f4

    .line 1671
    :cond_ec
    move/from16 v14, p2

    goto :goto_f4

    .line 1651
    .end local v11    # "opPackageName":Ljava/lang/String;
    .end local v12    # "opUid":I
    .end local v13    # "powerGroupId":Ljava/lang/Integer;
    :cond_ef
    move/from16 v14, p2

    goto :goto_f4

    .line 1650
    :cond_f2
    move/from16 v14, p2

    .line 1700
    :cond_f4
    :goto_f4
    return-void
.end method

.method private applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 9
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1773
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 1774
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1775
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1780
    :cond_1b
    return-void
.end method

.method private areAllPowerGroupsReadyLocked()Z
    .registers 4

    .line 2422
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2423
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 2424
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->isReadyLocked()Z

    move-result v2

    if-nez v2, :cond_19

    .line 2425
    const/4 v2, 0x0

    return v2

    .line 2423
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2429
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x1

    return v1
.end method

.method private boostScreenBrightnessInternal(JI)V
    .registers 13
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .line 4315
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4316
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v1, :cond_54

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v1

    if-eqz v1, :cond_54

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_14

    goto :goto_54

    .line 4321
    :cond_14
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Brightness boost activated (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4322
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    .line 4323
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 4324
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4326
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/power/PowerGroup;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-wide v4, p1

    move v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    .line 4328
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4329
    monitor-exit v0

    .line 4330
    return-void

    .line 4318
    :cond_54
    :goto_54
    monitor-exit v0

    return-void

    .line 4329
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw v1
.end method

.method private canDozeLocked(Lcom/android/server/power/PowerGroup;)Z
    .registers 4
    .param p1, "powerGroup"    # Lcom/android/server/power/PowerGroup;

    .line 3541
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->supportsSandmanLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3542
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 3541
    :goto_10
    return v0
.end method

.method private canDreamLocked(Lcom/android/server/power/PowerGroup;)Z
    .registers 7
    .param p1, "powerGroup"    # Lcom/android/server/power/PowerGroup;

    .line 3510
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    .line 3511
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_51

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v0, :cond_51

    .line 3514
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->isBrightOrDimLocked()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3515
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->isPolicyVrLocked()Z

    move-result v0

    if-nez v0, :cond_51

    .line 3516
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_29

    goto :goto_51

    .line 3520
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_50

    .line 3521
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_39

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    if-nez v3, :cond_39

    .line 3522
    return v1

    .line 3524
    :cond_39
    if-nez v0, :cond_44

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ltz v3, :cond_44

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-ge v4, v3, :cond_44

    .line 3527
    return v1

    .line 3529
    :cond_44
    if-eqz v0, :cond_4e

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ltz v0, :cond_4e

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-lt v3, v0, :cond_4f

    :cond_4e
    move v1, v2

    :cond_4f
    return v1

    .line 3533
    :cond_50
    return v2

    .line 3518
    :cond_51
    :goto_51
    return v1
.end method

.method private checkScreenWakeLockDisabledStateLocked()V
    .registers 9

    .line 6970
    const/4 v0, 0x0

    .line 6971
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 6972
    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    .line 6973
    .local v3, "flag":I
    const/16 v4, 0x1a

    if-eq v3, v4, :cond_24

    const/16 v4, 0xa

    if-eq v3, v4, :cond_24

    const/4 v4, 0x6

    if-ne v3, v4, :cond_8d

    .line 6976
    :cond_24
    iget v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 6977
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mVisibleWindowUids:Ljava/util/Vector;

    iget v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 6978
    .local v4, "state":Z
    iget-boolean v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-ne v4, v5, :cond_8d

    .line 6979
    const/4 v0, 0x1

    .line 6980
    xor-int/lit8 v5, v4, 0x1

    iput-boolean v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 6981
    iget-boolean v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    const-string/jumbo v6, "screen wakeLock:["

    const-string v7, "PowerManagerService"

    if-eqz v5, :cond_6c

    .line 6982
    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 6983
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] disabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 6985
    :cond_6c
    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 6986
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] enabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6991
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v3    # "flag":I
    .end local v4    # "state":Z
    :cond_8d
    :goto_8d
    goto/16 :goto_7

    .line 6992
    :cond_8f
    if-eqz v0, :cond_97

    .line 6993
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 6995
    :cond_97
    return-void
.end method

.method private static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "workSource"    # Landroid/os/WorkSource;

    .line 5172
    if-eqz p0, :cond_8

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private crashInternal(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 4014
    new-instance v0, Lcom/android/server/power/PowerManagerService$3;

    const-string v1, "PowerManagerService.crash()"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 4021
    .local v0, "t":Ljava/lang/Thread;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4022
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_d} :catch_e

    .line 4025
    goto :goto_14

    .line 4023
    :catch_e
    move-exception v1

    .line 4024
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "PowerManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4026
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_14
    return-void
.end method

.method private dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z
    .registers 8
    .param p1, "powerGroup"    # Lcom/android/server/power/PowerGroup;
    .param p2, "eventTime"    # J
    .param p4, "reason"    # I
    .param p5, "uid"    # I

    .line 2128
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_3e

    .line 2129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dozePowerGroup: eventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2130
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2129
    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :cond_3e
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_4c

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_47

    goto :goto_4c

    .line 2138
    :cond_47
    invoke-virtual {p1, p2, p3, p5, p4}, Lcom/android/server/power/PowerGroup;->dozeLocked(JII)Z

    move-result v0

    return v0

    .line 2135
    :cond_4c
    :goto_4c
    const/4 v0, 0x0

    return v0
.end method

.method private dreamPowerGroupLocked(Lcom/android/server/power/PowerGroup;JI)Z
    .registers 7
    .param p1, "powerGroup"    # Lcom/android/server/power/PowerGroup;
    .param p2, "eventTime"    # J
    .param p4, "uid"    # I

    .line 2115
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_34

    .line 2116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dreamPowerGroup: groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    :cond_34
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_3d

    goto :goto_42

    .line 2122
    :cond_3d
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/power/PowerGroup;->dreamLocked(JI)Z

    move-result v0

    return v0

    .line 2120
    :cond_42
    :goto_42
    const/4 v0, 0x0

    return v0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 21
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 4553
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Lcom/android/server/power/PowerDebugConfig;->updatePowerDebug()V

    .line 4554
    sget-boolean v3, Lcom/android/server/power/PowerDebugConfig;->DEBUG_PMS:Z

    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    .line 4555
    sget-boolean v3, Lcom/android/server/power/PowerDebugConfig;->DEBUG_PMS:Z

    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    .line 4557
    const-string v3, "POWER MANAGER (dumpsys power)\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4561
    iget-object v3, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4562
    :try_start_17
    const-string v4, "Power Manager State:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4563
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v4, v2}, Lcom/android/server/power/PowerManagerService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 4564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDirty=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4565
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mWakefulness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4566
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v5

    invoke-static {v5}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4565
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mWakefulnessChanging="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mIsPowered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mPlugType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mBatteryLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mBatteryLevelWhenDreamStarted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4572
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDockState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mStayOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4574
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mProximityPositive="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4575
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mBootCompleted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4576
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSystemReady="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4577
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_14e
    .catchall {:try_start_17 .. :try_end_14e} :catchall_b1d

    .line 4578
    :try_start_14e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mEnhancedDischargeTimeElapsed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4579
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mLastEnhancedDischargeTimeUpdatedElapsed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4581
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mEnhancedDischargePredictionIsPersonalized="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v1, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4583
    monitor-exit v4
    :try_end_197
    .catchall {:try_start_14e .. :try_end_197} :catchall_b19

    .line 4584
    :try_start_197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mHalAutoSuspendModeEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4585
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mHalInteractiveModeEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4586
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mWakeLockSummary=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4587
    const-string v4, "  mNotifyLongScheduled="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4588
    iget-wide v4, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1f6

    .line 4589
    const-string v4, "(none)"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1ff

    .line 4591
    :cond_1f6
    iget-object v8, v1, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v8}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4593
    :goto_1ff
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4594
    const-string v4, "  mNotifyLongDispatched="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4595
    iget-wide v4, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_213

    .line 4596
    const-string v4, "(none)"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_21c

    .line 4598
    :cond_213
    iget-object v8, v1, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v8}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4600
    :goto_21c
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4601
    const-string v4, "  mNotifyLongNextCheck="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4602
    iget-wide v4, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_230

    .line 4603
    const-string v4, "(none)"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_239

    .line 4605
    :cond_230
    iget-object v6, v1, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v6}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4607
    :goto_239
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mRequestWaitForNegativeProximity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mInterceptedPowerKeyForProximity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4611
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSandmanScheduled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mBatteryLevelLow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4613
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mLightDeviceIdleMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4614
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDeviceIdleMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDeviceIdleWhitelist="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDeviceIdleTempWhitelist="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4617
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mLowPowerStandbyActive="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4618
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mLastWakeTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4619
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mLastSleepTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4620
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mLastSleepReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    invoke-static {v5}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4622
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mLastInteractivePowerHintTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    .line 4623
    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4622
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mLastScreenBrightnessBoostTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    .line 4625
    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4624
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4626
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mScreenBrightnessBoostInProgress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4628
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mHoldingWakeLockSuspendBlocker="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4629
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mHoldingDisplaySuspendBlocker="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4630
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mLastFlipTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mLastFlipTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4631
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mIsFaceDown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mIsFaceDown:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4633
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4634
    const-string v4, "Settings and Configuration:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4635
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4639
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4641
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4643
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mTheaterModeEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4645
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSuspendWhenScreenOffDueToProximityConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsSupportedConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4648
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsEnabledByDefaultConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4649
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsActivatedOnSleepByDefaultConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4651
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsActivatedOnDockByDefaultConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4653
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsEnabledOnBatteryConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4655
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4659
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsBatteryLevelDrainCutoffConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4661
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsEnabledSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4662
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsActivateOnSleepSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4663
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsActivateOnDockSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4664
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDozeAfterScreenOff="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMinimumScreenOffTimeoutConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMaximumScreenDimDurationConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4667
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMaximumScreenDimRatioConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4668
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mAttentiveTimeoutConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4669
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mAttentiveTimeoutSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mAttentiveWarningDurationConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4671
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mScreenOffTimeoutSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4672
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSleepTimeoutSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4673
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (enforced="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4675
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4673
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4676
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mStayOnWhilePluggedInSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4677
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mScreenBrightnessModeSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4678
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mScreenBrightnessOverrideFromWindowManager="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mUserActivityTimeoutOverrideFromWindowManager="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4682
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mUserInactiveOverrideFromWindowManager="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4684
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDozeScreenStateOverrideFromDreamManager="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDrawWakeLockOverrideFromSidekick="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4687
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDozeScreenBrightnessOverrideFromDreamManager="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4689
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mScreenBrightnessMinimum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4690
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mScreenBrightnessMaximum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mScreenBrightnessDefault="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4692
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDoubleTapWakeEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4693
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mIsVrModeEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4694
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mForegroundProfile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4695
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mUserId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4697
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v4

    .line 4698
    .local v4, "attentiveTimeout":J
    invoke-direct {v1, v4, v5}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    move-result-wide v6

    .line 4699
    .local v6, "sleepTimeout":J
    invoke-direct {v1, v6, v7, v4, v5}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v8

    .line 4700
    .local v8, "screenOffTimeout":J
    invoke-direct {v1, v8, v9}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v10

    .line 4701
    .local v10, "screenDimDuration":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4702
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Attentive timeout: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4703
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sleep timeout: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4704
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Screen off timeout: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4705
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Screen dim duration: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4708
    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    invoke-virtual {v12, v2}, Lcom/android/server/power/PowerManagerServiceStub;->dumpLocal(Ljava/io/PrintWriter;)V

    .line 4710
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4711
    const-string v12, "UID states (changing="

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4712
    iget-boolean v12, v1, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Z)V

    .line 4713
    const-string v12, " changed="

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4714
    iget-boolean v12, v1, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Z)V

    .line 4715
    const-string v12, "):"

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4716
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8d1
    iget-object v13, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_91a

    .line 4717
    iget-object v13, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/power/PowerManagerService$UidState;

    .line 4718
    .local v13, "state":Lcom/android/server/power/PowerManagerService$UidState;
    const-string v14, "  UID "

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-static {v2, v14}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4719
    const-string v14, ": "

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4720
    iget-boolean v14, v13, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-eqz v14, :cond_8fe

    const-string v14, "  ACTIVE "

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_903

    .line 4721
    :cond_8fe
    const-string v14, "INACTIVE "

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4722
    :goto_903
    const-string v14, " count="

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4723
    iget v14, v13, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 4724
    const-string v14, " state="

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4725
    iget v14, v13, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(I)V

    .line 4716
    .end local v13    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    add-int/lit8 v12, v12, 0x1

    goto :goto_8d1

    .line 4728
    .end local v12    # "i":I
    :cond_91a
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4729
    const-string v12, "Looper state:"

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4730
    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    new-instance v13, Landroid/util/PrintWriterPrinter;

    invoke-direct {v13, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v14, "  "

    invoke-virtual {v12, v13, v14}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4732
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4733
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Wake Locks: size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4734
    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_957
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_97a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4735
    .local v13, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4736
    .end local v13    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    goto :goto_957

    .line 4738
    :cond_97a
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4739
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Suspend Blockers: size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4740
    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_99f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9c2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/power/SuspendBlocker;

    .line 4741
    .local v13, "sb":Lcom/android/server/power/SuspendBlocker;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4742
    .end local v13    # "sb":Lcom/android/server/power/SuspendBlocker;
    goto :goto_99f

    .line 4744
    :cond_9c2
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4745
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Display Power: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4747
    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v12, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dump(Ljava/io/PrintWriter;)V

    .line 4748
    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v12, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->dump(Ljava/io/PrintWriter;)V

    .line 4749
    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v12, v2}, Lcom/android/server/power/AttentionDetector;->dump(Ljava/io/PrintWriter;)V

    .line 4751
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4752
    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 4753
    .local v12, "numProfiles":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Profile power states: size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4754
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_a0c
    if-ge v13, v12, :cond_a4d

    .line 4755
    iget-object v14, v1, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 4756
    .local v14, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    const-string v15, "  mUserId="

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4757
    iget v15, v14, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 4758
    const-string v15, " mScreenOffTimeout="

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4759
    move-wide v15, v4

    .end local v4    # "attentiveTimeout":J
    .local v15, "attentiveTimeout":J
    iget-wide v4, v14, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 4760
    const-string v4, " mWakeLockSummary="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4761
    iget v4, v14, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4762
    const-string v4, " mLastUserActivityTime="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4763
    iget-wide v4, v14, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 4764
    const-string v4, " mLockingNotified="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4765
    iget-boolean v4, v14, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4754
    .end local v14    # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    add-int/lit8 v13, v13, 0x1

    move-wide v4, v15

    goto :goto_a0c

    .end local v15    # "attentiveTimeout":J
    .restart local v4    # "attentiveTimeout":J
    :cond_a4d
    move-wide v15, v4

    .line 4768
    .end local v4    # "attentiveTimeout":J
    .end local v13    # "i":I
    .restart local v15    # "attentiveTimeout":J
    const-string v4, "Display Group User Activity:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4769
    const/4 v4, 0x0

    .local v4, "idx":I
    :goto_a54
    iget-object v5, v1, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_afa

    .line 4770
    iget-object v5, v1, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerGroup;

    .line 4771
    .local v5, "powerGroup":Lcom/android/server/power/PowerGroup;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  displayGroupId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4772
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  userActivitySummary=0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4773
    invoke-virtual {v5}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v14

    .line 4772
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4774
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  lastUserActivityTime="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4775
    invoke-virtual {v5}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v17

    .line 4774
    invoke-static/range {v17 .. v18}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4776
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  lastUserActivityTimeNoChangeLights="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4777
    invoke-virtual {v5}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeNoChangeLightsLocked()J

    move-result-wide v17

    .line 4776
    invoke-static/range {v17 .. v18}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4778
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mWakeLockSummary=0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4779
    invoke-virtual {v5}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v14

    .line 4778
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4769
    .end local v5    # "powerGroup":Lcom/android/server/power/PowerGroup;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a54

    .line 4782
    .end local v4    # "idx":I
    :cond_afa
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 4783
    .end local v6    # "sleepTimeout":J
    .end local v8    # "screenOffTimeout":J
    .end local v10    # "screenDimDuration":J
    .end local v12    # "numProfiles":I
    .end local v15    # "attentiveTimeout":J
    .local v4, "wcd":Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v3
    :try_end_afd
    .catchall {:try_start_197 .. :try_end_afd} :catchall_b1d

    .line 4785
    if-eqz v4, :cond_b02

    .line 4786
    invoke-virtual {v4, v2}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    .line 4789
    :cond_b02
    iget-object v3, v1, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    if-eqz v3, :cond_b09

    .line 4790
    invoke-virtual {v3, v2}, Lcom/android/server/power/Notifier;->dump(Ljava/io/PrintWriter;)V

    .line 4793
    :cond_b09
    iget-object v3, v1, Lcom/android/server/power/PowerManagerService;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    invoke-virtual {v3, v2}, Lcom/android/server/power/FaceDownDetector;->dump(Ljava/io/PrintWriter;)V

    .line 4795
    iget-object v3, v1, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    invoke-virtual {v3, v2}, Lcom/android/server/power/AmbientDisplaySuppressionController;->dump(Ljava/io/PrintWriter;)V

    .line 4797
    iget-object v3, v1, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    invoke-virtual {v3, v2}, Lcom/android/server/power/LowPowerStandbyController;->dump(Ljava/io/PrintWriter;)V

    .line 4798
    return-void

    .line 4583
    .end local v4    # "wcd":Lcom/android/server/power/WirelessChargerDetector;
    :catchall_b19
    move-exception v0

    move-object v5, v0

    :try_start_b1b
    monitor-exit v4
    :try_end_b1c
    .catchall {:try_start_b1b .. :try_end_b1c} :catchall_b19

    .end local p0    # "this":Lcom/android/server/power/PowerManagerService;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :try_start_b1c
    throw v5

    .line 4783
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_b1d
    move-exception v0

    move-object v4, v0

    monitor-exit v3
    :try_end_b20
    .catchall {:try_start_b1c .. :try_end_b20} :catchall_b1d

    throw v4
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 37
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 4803
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v0

    .line 4805
    .local v3, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4806
    :try_start_d
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v0, v3}, Lcom/android/server/power/PowerManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 4807
    const-wide v5, 0x10500000002L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4808
    const-wide v5, 0x10e00000003L

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v0

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4809
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    const-wide v5, 0x10800000004L

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4810
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    const-wide v7, 0x10800000005L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4811
    const-wide v9, 0x10e00000006L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4812
    const-wide v9, 0x10500000007L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4813
    const-wide v9, 0x10500000008L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4816
    const-wide v9, 0x10e00000009L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4817
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    const-wide v9, 0x1080000000aL

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4818
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    const-wide v11, 0x1080000000bL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4819
    const-wide v13, 0x1080000000cL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4820
    const-wide v13, 0x1080000000dL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4821
    iget-object v13, v1, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_8f
    .catchall {:try_start_d .. :try_end_8f} :catchall_5d1

    .line 4822
    const-wide v14, 0x10300000034L

    :try_start_94
    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    invoke-virtual {v3, v14, v15, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4824
    const-wide v11, 0x10300000035L

    iget-wide v14, v1, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    invoke-virtual {v3, v11, v12, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4827
    const-wide v11, 0x10800000036L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4830
    monitor-exit v13
    :try_end_ae
    .catchall {:try_start_94 .. :try_end_ae} :catchall_5ce

    .line 4831
    const-wide v11, 0x1080000000eL

    :try_start_b3
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4834
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    const-wide v11, 0x1080000000fL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4838
    const-wide v13, 0x10b00000010L

    invoke-virtual {v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 4840
    .local v13, "activeWakeLocksToken":J
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/4 v15, 0x1

    and-int/2addr v0, v15

    const/16 v18, 0x0

    if-eqz v0, :cond_d5

    move v0, v15

    goto :goto_d7

    :cond_d5
    move/from16 v0, v18

    :goto_d7
    const-wide v11, 0x10800000001L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4843
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e7

    move v0, v15

    goto :goto_e9

    :cond_e7
    move/from16 v0, v18

    :goto_e9
    const-wide v9, 0x10800000002L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4846
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f9

    move v0, v15

    goto :goto_fb

    :cond_f9
    move/from16 v0, v18

    :goto_fb
    const-wide v9, 0x10800000003L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4849
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_10b

    move v0, v15

    goto :goto_10d

    :cond_10b
    move/from16 v0, v18

    :goto_10d
    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4852
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_118

    move v0, v15

    goto :goto_11a

    :cond_118
    move/from16 v0, v18

    :goto_11a
    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4855
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_125

    move v0, v15

    goto :goto_127

    :cond_125
    move/from16 v0, v18

    :goto_127
    const-wide v7, 0x10800000006L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4858
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_137

    move v0, v15

    goto :goto_139

    :cond_137
    move/from16 v0, v18

    :goto_139
    const-wide v7, 0x10800000007L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4861
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_149

    move v0, v15

    goto :goto_14b

    :cond_149
    move/from16 v0, v18

    :goto_14b
    const-wide v7, 0x10800000008L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4864
    invoke-virtual {v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4866
    const-wide v7, 0x10300000011L

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    invoke-virtual {v3, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4867
    const-wide v5, 0x10300000012L

    iget-wide v7, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4868
    const-wide v5, 0x10300000013L

    iget-wide v7, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4870
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_175
    iget-object v5, v1, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_203

    .line 4871
    iget-object v5, v1, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerGroup;

    .line 4872
    .local v5, "powerGroup":Lcom/android/server/power/PowerGroup;
    const-wide v6, 0x20b00000014L

    invoke-virtual {v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 4874
    .local v6, "userActivityToken":J
    const-wide v9, 0x10500000006L

    .line 4875
    invoke-virtual {v5}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v8

    .line 4874
    invoke-virtual {v3, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4876
    invoke-virtual {v5}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v8

    int-to-long v8, v8

    .line 4877
    .local v8, "userActivitySummary":J
    const-wide/16 v29, 0x1

    and-long v29, v8, v29

    const-wide/16 v31, 0x0

    cmp-long v10, v29, v31

    if-eqz v10, :cond_1ab

    move v10, v15

    goto :goto_1ad

    :cond_1ab
    move/from16 v10, v18

    :goto_1ad
    invoke-virtual {v3, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4879
    const-wide/16 v29, 0x2

    and-long v29, v8, v29

    cmp-long v10, v29, v31

    if-eqz v10, :cond_1ba

    move v10, v15

    goto :goto_1bc

    :cond_1ba
    move/from16 v10, v18

    :goto_1bc
    const-wide v11, 0x10800000002L

    invoke-virtual {v3, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4881
    const-wide/16 v10, 0x4

    and-long/2addr v10, v8

    cmp-long v10, v10, v31

    if-eqz v10, :cond_1cd

    move v10, v15

    goto :goto_1cf

    :cond_1cd
    move/from16 v10, v18

    :goto_1cf
    const-wide v11, 0x10800000003L

    invoke-virtual {v3, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4883
    nop

    .line 4885
    invoke-virtual {v5}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v10

    .line 4883
    move-wide/from16 v33, v8

    const-wide v8, 0x10300000004L

    .end local v8    # "userActivitySummary":J
    .local v33, "userActivitySummary":J
    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4886
    const-wide v8, 0x10300000005L

    .line 4888
    invoke-virtual {v5}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeNoChangeLightsLocked()J

    move-result-wide v10

    .line 4886
    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4889
    invoke-virtual {v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4870
    .end local v5    # "powerGroup":Lcom/android/server/power/PowerGroup;
    .end local v6    # "userActivityToken":J
    .end local v33    # "userActivitySummary":J
    add-int/lit8 v0, v0, 0x1

    const-wide v9, 0x10800000003L

    const-wide v11, 0x10800000001L

    goto/16 :goto_175

    .line 4892
    .end local v0    # "idx":I
    :cond_203
    const-wide v5, 0x10800000015L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4895
    const-wide v5, 0x10800000016L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4896
    const-wide v5, 0x10800000018L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4897
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    const-wide v5, 0x10800000019L

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4898
    const-wide v7, 0x1080000001aL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4900
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    array-length v7, v0

    move/from16 v8, v18

    :goto_23a
    if-ge v8, v7, :cond_249

    aget v9, v0, v8

    .line 4901
    .local v9, "id":I
    const-wide v10, 0x2050000001bL

    invoke-virtual {v3, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4900
    .end local v9    # "id":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_23a

    .line 4903
    :cond_249
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    array-length v7, v0

    move/from16 v8, v18

    :goto_24e
    if-ge v8, v7, :cond_25d

    aget v9, v0, v8

    .line 4904
    .restart local v9    # "id":I
    const-wide v10, 0x2050000001cL

    invoke-virtual {v3, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4903
    .end local v9    # "id":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_24e

    .line 4907
    :cond_25d
    const-wide v7, 0x10800000037L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4910
    const-wide v7, 0x1030000001dL

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4911
    const-wide v7, 0x1030000001eL

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4912
    const-wide v7, 0x10300000021L

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4915
    const-wide v7, 0x10300000022L

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4918
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    const-wide v7, 0x10800000023L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4921
    const-wide v9, 0x10800000025L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4924
    const-wide v9, 0x10800000026L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4928
    const-wide v9, 0x10b00000027L

    .line 4929
    invoke-virtual {v3, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 4930
    .local v9, "settingsAndConfigurationToken":J
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    const-wide v11, 0x10800000001L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4934
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    const-wide v11, 0x10800000002L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4938
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const-wide v11, 0x10800000003L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4942
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    const-wide v11, 0x10800000004L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4946
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    const-wide v11, 0x10800000005L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4949
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    const-wide v11, 0x10800000006L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4953
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    const-wide v11, 0x10800000007L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4956
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    const-wide v11, 0x10800000008L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4960
    const-wide v11, 0x10800000009L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4964
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const-wide v11, 0x1080000000aL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4968
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    const-wide v11, 0x1080000000bL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4972
    const-wide v11, 0x1110000000cL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4976
    const-wide v11, 0x1110000000dL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4980
    const-wide v11, 0x1110000000eL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4984
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    const-wide v11, 0x1080000000fL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4987
    const-wide v11, 0x10800000010L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4991
    const-wide v11, 0x10800000011L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4995
    const-wide v11, 0x10800000012L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4998
    const-wide v11, 0x10500000013L

    iget-wide v7, v1, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-virtual {v3, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5002
    const-wide v7, 0x10500000014L

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    invoke-virtual {v3, v7, v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5006
    const-wide v7, 0x10200000015L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5009
    const-wide v7, 0x10500000016L

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v3, v7, v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5012
    const-wide v7, 0x11100000017L

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    invoke-virtual {v3, v7, v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5015
    const-wide v7, 0x11100000025L

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    invoke-virtual {v3, v7, v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5018
    const-wide v7, 0x11100000026L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5021
    const-wide v7, 0x11100000027L

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    invoke-virtual {v3, v7, v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5025
    const-wide v7, 0x10500000018L

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    const-wide/32 v5, 0x7fffffff

    .line 5029
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 5025
    invoke-virtual {v3, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5030
    nop

    .line 5033
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v0

    .line 5030
    const-wide v5, 0x10800000019L

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5035
    const-wide v5, 0x10b0000001aL

    .line 5036
    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 5038
    .local v5, "stayOnWhilePluggedInToken":J
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/2addr v0, v15

    if-eqz v0, :cond_3e8

    move v0, v15

    goto :goto_3ea

    :cond_3e8
    move/from16 v0, v18

    :goto_3ea
    const-wide v7, 0x10800000001L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5042
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3fa

    move v0, v15

    goto :goto_3fc

    :cond_3fa
    move/from16 v0, v18

    :goto_3fc
    const-wide v7, 0x10800000002L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5046
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_40b

    goto :goto_40d

    :cond_40b
    move/from16 v15, v18

    :goto_40d
    const-wide v7, 0x10800000003L

    invoke-virtual {v3, v7, v8, v15}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5051
    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5053
    const-wide v7, 0x10e0000001bL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5056
    const-wide v7, 0x1110000001cL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5060
    const-wide v7, 0x1120000001dL

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v3, v7, v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5064
    const-wide v7, 0x1080000001eL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5068
    const-wide v7, 0x10e0000001fL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5072
    const-wide v7, 0x10800000024L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5076
    const-wide v7, 0x10200000020L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5081
    const-wide v7, 0x10b00000021L

    .line 5082
    invoke-virtual {v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 5085
    .local v7, "screenBrightnessSettingLimitsToken":J
    const-wide v11, 0x10200000004L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5089
    const-wide v11, 0x10200000005L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5093
    const-wide v11, 0x10200000006L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5097
    invoke-virtual {v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5099
    const-wide v11, 0x10800000022L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5102
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    const-wide v11, 0x10800000023L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5105
    invoke-virtual {v3, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5107
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v11

    .line 5108
    .local v11, "attentiveTimeout":J
    invoke-direct {v1, v11, v12}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    move-result-wide v15

    move-wide/from16 v17, v15

    .line 5109
    .local v17, "sleepTimeout":J
    move-wide v15, v5

    move-wide/from16 v5, v17

    .end local v17    # "sleepTimeout":J
    .local v5, "sleepTimeout":J
    .local v15, "stayOnWhilePluggedInToken":J
    invoke-direct {v1, v5, v6, v11, v12}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v17

    move-wide/from16 v19, v17

    .line 5110
    .local v19, "screenOffTimeout":J
    move-wide/from16 v17, v7

    move-wide/from16 v7, v19

    .end local v19    # "screenOffTimeout":J
    .local v7, "screenOffTimeout":J
    .local v17, "screenBrightnessSettingLimitsToken":J
    invoke-direct {v1, v7, v8}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v19

    move-wide/from16 v21, v19

    .line 5111
    .local v21, "screenDimDuration":J
    move-wide/from16 v19, v9

    .end local v9    # "settingsAndConfigurationToken":J
    .local v19, "settingsAndConfigurationToken":J
    const-wide v9, 0x11100000033L

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5112
    const-wide v9, 0x11100000028L

    invoke-virtual {v3, v9, v10, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5113
    const-wide v9, 0x10500000029L

    invoke-virtual {v3, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5114
    const-wide v9, 0x1050000002aL

    move-wide/from16 v23, v5

    move-wide/from16 v5, v21

    .end local v21    # "screenDimDuration":J
    .local v5, "screenDimDuration":J
    .local v23, "sleepTimeout":J
    invoke-virtual {v3, v9, v10, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5115
    const-wide v9, 0x1080000002bL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5116
    const-wide v9, 0x1080000002cL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4f7
    iget-object v9, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_55f

    .line 5119
    iget-object v9, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/PowerManagerService$UidState;

    .line 5120
    .local v9, "state":Lcom/android/server/power/PowerManagerService$UidState;
    move-wide/from16 v21, v5

    .end local v5    # "screenDimDuration":J
    .restart local v21    # "screenDimDuration":J
    const-wide v5, 0x20b0000002dL

    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 5121
    .local v5, "uIDToken":J
    iget-object v10, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 5122
    .local v10, "uid":I
    move-wide/from16 v25, v7

    .end local v7    # "screenOffTimeout":J
    .local v25, "screenOffTimeout":J
    const-wide v7, 0x10500000001L

    invoke-virtual {v3, v7, v8, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5123
    invoke-static {v10}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v7

    move v8, v10

    move-wide/from16 v27, v11

    const-wide v10, 0x10900000002L

    .end local v10    # "uid":I
    .end local v11    # "attentiveTimeout":J
    .local v8, "uid":I
    .local v27, "attentiveTimeout":J
    invoke-virtual {v3, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5124
    iget-boolean v7, v9, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    const-wide v10, 0x10800000003L

    invoke-virtual {v3, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5125
    const-wide v10, 0x10500000004L

    iget v7, v9, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    invoke-virtual {v3, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5126
    const-wide v10, 0x10e00000005L

    iget v7, v9, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 5127
    invoke-static {v7}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v7

    .line 5126
    invoke-virtual {v3, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5128
    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5118
    .end local v5    # "uIDToken":J
    .end local v8    # "uid":I
    .end local v9    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v5, v21

    move-wide/from16 v7, v25

    move-wide/from16 v11, v27

    goto :goto_4f7

    .end local v21    # "screenDimDuration":J
    .end local v25    # "screenOffTimeout":J
    .end local v27    # "attentiveTimeout":J
    .local v5, "screenDimDuration":J
    .restart local v7    # "screenOffTimeout":J
    .restart local v11    # "attentiveTimeout":J
    :cond_55f
    move-wide/from16 v21, v5

    move-wide/from16 v25, v7

    move-wide/from16 v27, v11

    .line 5131
    .end local v0    # "i":I
    .end local v5    # "screenDimDuration":J
    .end local v7    # "screenOffTimeout":J
    .end local v11    # "attentiveTimeout":J
    .restart local v21    # "screenDimDuration":J
    .restart local v25    # "screenOffTimeout":J
    .restart local v27    # "attentiveTimeout":J
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    const-wide v5, 0x10b00000032L

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5134
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide v5, 0x10b0000002eL

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Looper;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5136
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_583
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_598

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 5137
    .local v5, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    const-wide v6, 0x20b0000002fL

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/server/power/PowerManagerService$WakeLock;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5138
    .end local v5    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    goto :goto_583

    .line 5140
    :cond_598
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_59e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/SuspendBlocker;

    .line 5141
    .local v5, "sb":Lcom/android/server/power/SuspendBlocker;
    const-wide v6, 0x20b00000030L

    invoke-interface {v5, v3, v6, v7}, Lcom/android/server/power/SuspendBlocker;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5142
    .end local v5    # "sb":Lcom/android/server/power/SuspendBlocker;
    goto :goto_59e

    .line 5144
    :cond_5b3
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 5145
    .end local v13    # "activeWakeLocksToken":J
    .end local v15    # "stayOnWhilePluggedInToken":J
    .end local v17    # "screenBrightnessSettingLimitsToken":J
    .end local v19    # "settingsAndConfigurationToken":J
    .end local v21    # "screenDimDuration":J
    .end local v23    # "sleepTimeout":J
    .end local v25    # "screenOffTimeout":J
    .end local v27    # "attentiveTimeout":J
    .local v0, "wcd":Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v4
    :try_end_5b6
    .catchall {:try_start_b3 .. :try_end_5b6} :catchall_5d1

    .line 5147
    if-eqz v0, :cond_5c0

    .line 5148
    const-wide v4, 0x10b00000031L

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/power/WirelessChargerDetector;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5151
    :cond_5c0
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    const-wide v5, 0x10b00000038L

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/power/LowPowerStandbyController;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5154
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 5155
    return-void

    .line 4830
    .end local v0    # "wcd":Lcom/android/server/power/WirelessChargerDetector;
    :catchall_5ce
    move-exception v0

    :try_start_5cf
    monitor-exit v13
    :try_end_5d0
    .catchall {:try_start_5cf .. :try_end_5d0} :catchall_5ce

    .end local v3    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local p0    # "this":Lcom/android/server/power/PowerManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    :try_start_5d0
    throw v0

    .line 5145
    .restart local v3    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    :catchall_5d1
    move-exception v0

    monitor-exit v4
    :try_end_5d3
    .catchall {:try_start_5d0 .. :try_end_5d3} :catchall_5d1

    throw v0
.end method

.method private enqueueNotifyLongMsgLocked(J)V
    .registers 5
    .param p1, "time"    # J

    .line 1875
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    .line 1876
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1877
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1878
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1879
    return-void
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .registers 5
    .param p1, "lock"    # Landroid/os/IBinder;

    .line 1841
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1842
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 1843
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_16

    .line 1844
    return v1

    .line 1842
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1847
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method private finishWakefulnessChangeIfNeededLocked()V
    .registers 4

    .line 2394
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    if-eqz v0, :cond_3f

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2395
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_21

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    const/4 v2, 0x1

    .line 2399
    invoke-virtual {v0, v2}, Landroid/service/dreams/DreamManagerInternal;->getActiveDreamComponent(Z)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_21

    .line 2400
    return-void

    .line 2403
    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 2405
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v2

    if-eq v2, v1, :cond_30

    .line 2406
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v1

    if-nez v1, :cond_33

    .line 2407
    :cond_30
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->logSleepTimeoutRecapturedLocked()V

    .line 2409
    :cond_33
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 2411
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerServiceStub;->finishWakefulnessChangeIfNeededLocked()V

    .line 2412
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakefulnessChangeFinished()V

    .line 2414
    :cond_3f
    return-void
.end method

.method private forceSuspendInternal(I)Z
    .registers 12
    .param p1, "uid"    # I

    .line 4453
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6b

    .line 4454
    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    .line 4456
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_8
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 4457
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/power/PowerGroup;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v6

    const/16 v8, 0x8

    move-object v4, p0

    move v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    .line 4456
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4462
    .end local v2    # "idx":I
    :cond_29
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4463
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_68

    .line 4465
    :try_start_2d
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force-Suspending (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeForceSuspend()Z

    move-result v1

    .line 4467
    .local v1, "success":Z
    if-nez v1, :cond_5a

    .line 4468
    const-string v2, "PowerManagerService"

    const-string v3, "Force-Suspending failed in native."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_2d .. :try_end_5a} :catchall_6b

    .line 4470
    :cond_5a
    nop

    .line 4472
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4473
    :try_start_5e
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    .line 4475
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4476
    monitor-exit v2

    .line 4470
    return v1

    .line 4476
    :catchall_65
    move-exception v0

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_65

    throw v0

    .line 4463
    .end local v1    # "success":Z
    :catchall_68
    move-exception v2

    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    .end local p0    # "this":Lcom/android/server/power/PowerManagerService;
    .end local p1    # "uid":I
    :try_start_6a
    throw v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    .line 4472
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService;
    .restart local p1    # "uid":I
    :catchall_6b
    move-exception v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4473
    :try_start_6f
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    .line 4475
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4476
    monitor-exit v2
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_76

    .line 4477
    throw v1

    .line 4476
    :catchall_76
    move-exception v0

    :try_start_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v0
.end method

.method private getAttentiveTimeoutLocked()J
    .registers 5

    .line 3170
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    .line 3171
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 3172
    const-wide/16 v2, -0x1

    return-wide v2

    .line 3175
    :cond_b
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private static getFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;
    .registers 5
    .param p0, "workSource"    # Landroid/os/WorkSource;

    .line 1610
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1611
    return-object v1

    .line 1614
    :cond_8
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource$WorkChain;

    .line 1615
    .local v2, "workChain":Landroid/os/WorkSource$WorkChain;
    invoke-virtual {v2}, Landroid/os/WorkSource$WorkChain;->getSize()I

    move-result v3

    if-lez v3, :cond_23

    .line 1616
    return-object v2

    .line 1618
    .end local v2    # "workChain":Landroid/os/WorkSource$WorkChain;
    :cond_23
    goto :goto_10

    .line 1620
    :cond_24
    return-object v1
.end method

.method private getLastGoToSleepInternal()Landroid/os/PowerManager$SleepData;
    .registers 6

    .line 6718
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6719
    :try_start_3
    new-instance v1, Landroid/os/PowerManager$SleepData;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    invoke-direct {v1, v2, v3, v4}, Landroid/os/PowerManager$SleepData;-><init>(JI)V

    monitor-exit v0

    return-object v1

    .line 6720
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private getLastSleepReasonInternal()I
    .registers 3

    .line 6705
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6706
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    monitor-exit v0

    return v1

    .line 6707
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getLastWakeupInternal()Landroid/os/PowerManager$WakeData;
    .registers 9

    .line 6711
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6712
    :try_start_3
    new-instance v7, Landroid/os/PowerManager$WakeData;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeReason:I

    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    sub-long v5, v2, v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/os/PowerManager$WakeData;-><init>(JIJ)V

    monitor-exit v0

    return-object v7

    .line 6714
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private getNextProfileTimeoutLocked(J)J
    .registers 12
    .param p1, "now"    # J

    .line 3051
    const-wide/16 v0, -0x1

    .line 3052
    .local v0, "nextTimeout":J
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 3053
    .local v2, "numProfiles":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_2a

    .line 3054
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 3055
    .local v4, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    iget-wide v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    iget-wide v7, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    add-long/2addr v5, v7

    .line 3056
    .local v5, "timeout":J
    cmp-long v7, v5, p1

    if-lez v7, :cond_27

    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-eqz v7, :cond_26

    cmp-long v7, v5, v0

    if-gez v7, :cond_27

    .line 3057
    :cond_26
    move-wide v0, v5

    .line 3053
    .end local v4    # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    .end local v5    # "timeout":J
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 3060
    .end local v3    # "i":I
    :cond_2a
    return-wide v0
.end method

.method private getScreenDimDurationLocked(J)J
    .registers 7
    .param p1, "screenOffTimeout"    # J

    .line 3212
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    long-to-float v2, p1

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getScreenOffTimeoutLocked(JJ)J
    .registers 12
    .param p1, "sleepTimeout"    # J
    .param p3, "attentiveTimeout"    # J

    .line 3192
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    .line 3193
    .local v0, "timeout":J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3194
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 3196
    :cond_e
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1a

    .line 3197
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 3200
    :cond_1a
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/PowerManagerServiceStub;->shouldOverrideUserActivityTimeoutLocked(J)J

    move-result-wide v0

    .line 3201
    cmp-long v2, p1, v4

    if-ltz v2, :cond_28

    .line 3202
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 3204
    :cond_28
    cmp-long v2, p3, v4

    if-ltz v2, :cond_30

    .line 3205
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 3207
    :cond_30
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private getScreenOffTimeoutWithFaceDownLocked(JJ)J
    .registers 7
    .param p1, "screenOffTimeout"    # J
    .param p3, "screenDimDuration"    # J

    .line 3221
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsFaceDown:Z

    if-eqz v0, :cond_9

    .line 3222
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 3224
    :cond_9
    return-wide p1
.end method

.method private getSleepTimeoutLocked(J)J
    .registers 8
    .param p1, "attentiveTimeout"    # J

    .line 3180
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    .line 3181
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_b

    .line 3182
    const-wide/16 v2, -0x1

    return-wide v2

    .line 3184
    :cond_b
    cmp-long v2, p1, v2

    if-ltz v2, :cond_13

    .line 3185
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 3187
    :cond_13
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private getWakeLockSummaryFlags(Lcom/android/server/power/PowerManagerService$WakeLock;)I
    .registers 4
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2778
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_36

    goto :goto_34

    .line 2816
    :sswitch_a
    const/16 v0, 0x80

    return v0

    .line 2814
    :sswitch_d
    const/16 v0, 0x40

    return v0

    .line 2808
    :sswitch_10
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v0, :cond_15

    .line 2809
    goto :goto_34

    .line 2812
    :cond_15
    const/16 v0, 0x10

    return v0

    .line 2787
    :sswitch_18
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v0, :cond_1d

    .line 2788
    goto :goto_34

    .line 2791
    :cond_1d
    const/16 v0, 0xa

    return v0

    .line 2794
    :sswitch_20
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v0, :cond_25

    .line 2795
    goto :goto_34

    .line 2798
    :cond_25
    const/4 v0, 0x2

    return v0

    .line 2801
    :sswitch_27
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v0, :cond_2c

    .line 2802
    goto :goto_34

    .line 2805
    :cond_2c
    const/4 v0, 0x4

    return v0

    .line 2780
    :sswitch_2e
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_34

    .line 2782
    const/4 v0, 0x1

    return v0

    .line 2818
    :cond_34
    :goto_34
    const/4 v0, 0x0

    return v0

    :sswitch_data_36
    .sparse-switch
        0x1 -> :sswitch_2e
        0x6 -> :sswitch_27
        0xa -> :sswitch_20
        0x1a -> :sswitch_18
        0x20 -> :sswitch_10
        0x40 -> :sswitch_d
        0x80 -> :sswitch_a
    .end sparse-switch
.end method

.method private handleAttentiveTimeout()V
    .registers 4

    .line 3158
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3159
    :try_start_3
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_e

    .line 3160
    const-string v1, "PowerManagerService"

    const-string v2, "handleAttentiveTimeout"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    :cond_e
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3164
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3165
    monitor-exit v0

    .line 3166
    return-void

    .line 3165
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private handleBatteryStateChangedLocked()V
    .registers 2

    .line 3948
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3949
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3950
    return-void
.end method

.method private handleSandman(I)V
    .registers 23
    .param p1, "groupId"    # I

    .line 3388
    move-object/from16 v10, p0

    move/from16 v11, p1

    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3389
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, v10, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 3390
    iget-object v2, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_14

    .line 3392
    monitor-exit v1

    return-void

    .line 3394
    :cond_14
    iget-object v2, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 3395
    .local v2, "powerGroup":Lcom/android/server/power/PowerGroup;
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v3

    move v12, v3

    .line 3396
    .local v12, "wakefulness":I
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->isSandmanSummonedLocked()Z

    move-result v3

    const/4 v13, 0x1

    if-eqz v3, :cond_43

    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->isReadyLocked()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 3397
    invoke-direct {v10, v2}, Lcom/android/server/power/PowerManagerService;->canDreamLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-direct {v10, v2}, Lcom/android/server/power/PowerManagerService;->canDozeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_3d

    :cond_3b
    move v3, v0

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v3, v13

    .line 3398
    .local v3, "startDreaming":Z
    :goto_3e
    invoke-virtual {v2, v0}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    move v14, v3

    goto :goto_45

    .line 3400
    .end local v3    # "startDreaming":Z
    :cond_43
    const/4 v3, 0x0

    move v14, v3

    .line 3402
    .end local v2    # "powerGroup":Lcom/android/server/power/PowerGroup;
    .local v14, "startDreaming":Z
    :goto_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_16d

    .line 3408
    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    const/4 v2, 0x3

    if-eqz v1, :cond_62

    .line 3410
    if-eqz v14, :cond_5a

    .line 3413
    invoke-virtual {v1, v13}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 3414
    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-ne v12, v2, :cond_56

    move v3, v13

    goto :goto_57

    :cond_56
    move v3, v0

    :goto_57
    invoke-virtual {v1, v3}, Landroid/service/dreams/DreamManagerInternal;->startDream(Z)V

    .line 3416
    :cond_5a
    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    move v15, v1

    .local v1, "isDreaming":Z
    goto :goto_64

    .line 3418
    .end local v1    # "isDreaming":Z
    :cond_62
    const/4 v1, 0x0

    move v15, v1

    .line 3423
    .local v15, "isDreaming":Z
    :goto_64
    iput-boolean v0, v10, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 3426
    iget-object v9, v10, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3427
    :try_start_69
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_73

    .line 3429
    monitor-exit v9

    return-void

    .line 3433
    :cond_73
    if-eqz v14, :cond_8c

    if-eqz v15, :cond_8c

    .line 3434
    iget v0, v10, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iput v0, v10, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    .line 3435
    if-ne v12, v2, :cond_85

    .line 3436
    const-string v0, "PowerManagerService"

    const-string v1, "Dozing..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    .line 3438
    :cond_85
    const-string v0, "PowerManagerService"

    const-string v1, "Dreaming..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    :cond_8c
    :goto_8c
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerGroup;

    .line 3445
    .local v0, "powerGroup":Lcom/android/server/power/PowerGroup;
    invoke-virtual {v0}, Lcom/android/server/power/PowerGroup;->isSandmanSummonedLocked()Z

    move-result v1

    if-nez v1, :cond_162

    .line 3446
    invoke-virtual {v0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v1

    if-eq v1, v12, :cond_a4

    move-object/from16 v16, v9

    goto/16 :goto_164

    .line 3451
    :cond_a4
    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    move-wide v7, v3

    .line 3452
    .local v7, "now":J
    const/4 v1, 0x2

    if-ne v12, v1, :cond_13c

    .line 3453
    if-eqz v15, :cond_f6

    invoke-direct {v10, v0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 3454
    iget v1, v10, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    if-ltz v1, :cond_f4

    iget v2, v10, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v3, v10, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_f4

    .line 3457
    invoke-direct {v10, v0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v1

    if-nez v1, :cond_f4

    .line 3461
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%.  Battery level now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f6

    .line 3467
    :cond_f4
    monitor-exit v9

    return-void

    .line 3472
    :cond_f6
    :goto_f6
    invoke-direct {v10, v0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 3473
    invoke-direct {v10, v0, v7, v8}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 3474
    const/4 v5, 0x2

    const/16 v6, 0x3e8

    move-object/from16 v1, p0

    move-object v2, v0

    move-wide v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    move-object/from16 v16, v9

    goto :goto_159

    .line 3477
    :cond_10f
    const/4 v5, 0x2

    const/16 v6, 0x3e8

    move-object/from16 v1, p0

    move-object v2, v0

    move-wide v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    move-object/from16 v16, v9

    goto :goto_159

    .line 3481
    :cond_11c
    const/16 v5, 0xd

    const-string v6, "android.server.power:DREAM_FINISHED"

    const/16 v16, 0x3e8

    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 3484
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v17
    :try_end_128
    .catchall {:try_start_69 .. :try_end_128} :catchall_166

    const/16 v18, 0x3e8

    .line 3481
    move-object/from16 v1, p0

    move-object v2, v0

    move-wide v3, v7

    move-wide/from16 v19, v7

    .end local v7    # "now":J
    .local v19, "now":J
    move/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v16, v9

    move/from16 v9, v18

    :try_start_138
    invoke-direct/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    goto :goto_159

    .line 3486
    .end local v19    # "now":J
    .restart local v7    # "now":J
    :cond_13c
    move-wide/from16 v19, v7

    move-object/from16 v16, v9

    .end local v7    # "now":J
    .restart local v19    # "now":J
    if-ne v12, v2, :cond_159

    .line 3487
    if-nez v15, :cond_157

    invoke-virtual {v0}, Lcom/android/server/power/PowerGroup;->isSandmanSummonedLocked()Z

    move-result v1

    if-eqz v1, :cond_14b

    goto :goto_157

    .line 3492
    :cond_14b
    const/4 v5, 0x2

    const/16 v6, 0x3e8

    move-object/from16 v1, p0

    move-object v2, v0

    move-wide/from16 v3, v19

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    goto :goto_159

    .line 3488
    :cond_157
    :goto_157
    monitor-exit v16

    return-void

    .line 3495
    .end local v0    # "powerGroup":Lcom/android/server/power/PowerGroup;
    .end local v19    # "now":J
    :cond_159
    :goto_159
    monitor-exit v16
    :try_end_15a
    .catchall {:try_start_138 .. :try_end_15a} :catchall_16b

    .line 3498
    if-eqz v15, :cond_161

    .line 3501
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0, v13}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 3503
    :cond_161
    return-void

    .line 3445
    .restart local v0    # "powerGroup":Lcom/android/server/power/PowerGroup;
    :cond_162
    move-object/from16 v16, v9

    .line 3447
    :goto_164
    :try_start_164
    monitor-exit v16

    return-void

    .line 3495
    .end local v0    # "powerGroup":Lcom/android/server/power/PowerGroup;
    :catchall_166
    move-exception v0

    move-object/from16 v16, v9

    :goto_169
    monitor-exit v16
    :try_end_16a
    .catchall {:try_start_164 .. :try_end_16a} :catchall_16b

    throw v0

    :catchall_16b
    move-exception v0

    goto :goto_169

    .line 3402
    .end local v12    # "wakefulness":I
    .end local v14    # "startDreaming":Z
    .end local v15    # "isDreaming":Z
    :catchall_16d
    move-exception v0

    :try_start_16e
    monitor-exit v1
    :try_end_16f
    .catchall {:try_start_16e .. :try_end_16f} :catchall_16d

    throw v0
.end method

.method private handleScreenBrightnessBoostTimeout()V
    .registers 4

    .line 4345
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4346
    :try_start_3
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_e

    .line 4347
    const-string v1, "PowerManagerService"

    const-string v2, "handleScreenBrightnessBoostTimeout"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4350
    :cond_e
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4351
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4352
    monitor-exit v0

    .line 4353
    return-void

    .line 4352
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private handleUidStateChangeLocked()V
    .registers 2

    .line 4142
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    if-eqz v0, :cond_8

    .line 4143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    goto :goto_b

    .line 4145
    :cond_8
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4147
    :goto_b
    return-void
.end method

.method private handleUserActivityTimeout()V
    .registers 4

    .line 3144
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3145
    :try_start_3
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_e

    .line 3146
    const-string v1, "PowerManagerService"

    const-string v2, "handleUserActivityTimeout"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    :cond_e
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3152
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->checkScreenWakeLockDisabledStateLocked()V

    .line 3153
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3154
    monitor-exit v0

    .line 3155
    return-void

    .line 3154
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 6
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1738
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1739
    :try_start_3
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_37

    .line 1740
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWakeLockDeath: lock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_37
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1745
    .local v1, "index":I
    if-gez v1, :cond_41

    .line 1746
    monitor-exit v0

    return-void

    .line 1749
    :cond_41
    invoke-direct {p0, p1, v1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1750
    .end local v1    # "index":I
    monitor-exit v0

    .line 1751
    return-void

    .line 1750
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method private incrementBootCount()V
    .registers 6

    .line 5158
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5161
    nop

    .line 5162
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "boot_count"

    .line 5161
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_12} :catch_15
    .catchall {:try_start_4 .. :try_end_12} :catchall_13

    .line 5165
    .local v1, "count":I
    goto :goto_18

    .line 5168
    .end local v1    # "count":I
    :catchall_13
    move-exception v1

    goto :goto_2b

    .line 5163
    :catch_15
    move-exception v1

    .line 5164
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x0

    move v1, v2

    .line 5166
    .local v1, "count":I
    :goto_18
    nop

    .line 5167
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "boot_count"

    add-int/lit8 v4, v1, 0x1

    .line 5166
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5168
    nop

    .end local v1    # "count":I
    monitor-exit v0

    .line 5169
    return-void

    .line 5168
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_13

    throw v1
.end method

.method private interceptPowerKeyDownInternal(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 6733
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6738
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    if-nez v1, :cond_15

    .line 6739
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal;->ignoreProximitySensorUntilChanged()V

    .line 6740
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    .line 6741
    monitor-exit v0

    return v1

    .line 6743
    :cond_15
    monitor-exit v0

    .line 6745
    const/4 v0, 0x0

    return v0

    .line 6743
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private isAcquireCausesWakeupFlagAllowed(Ljava/lang/String;IZ)Z
    .registers 9
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "opUid"    # I
    .param p3, "isCallerPrivileged"    # Z

    .line 1625
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1626
    return v0

    .line 1628
    :cond_4
    const/4 v1, 0x1

    const-string v2, "PowerManagerService"

    if-eqz p3, :cond_24

    .line 1629
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_23

    .line 1630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allowing device wake-up for privileged app, call attributed to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :cond_23
    return v1

    .line 1635
    :cond_24
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v4, 0x3d

    invoke-virtual {v3, v4, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_49

    .line 1637
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_48

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allowing device wake-up for app with special access "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_48
    return v1

    .line 1642
    :cond_49
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_63

    .line 1643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowing device wake-up for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_63
    return v0
.end method

.method private isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z
    .registers 8
    .param p1, "powerGroup"    # Lcom/android/server/power/PowerGroup;
    .param p2, "now"    # J

    .line 3129
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v0

    .line 3131
    .local v0, "attentiveTimeout":J
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v2

    if-nez v2, :cond_1b

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1b

    .line 3132
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v2

    add-long/2addr v2, v0

    cmp-long v2, p2, v2

    if-ltz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    .line 3131
    :goto_1c
    return v2
.end method

.method private isBeingKeptAwakeLocked(Lcom/android/server/power/PowerGroup;)Z
    .registers 4
    .param p1, "powerGroup"    # Lcom/android/server/power/PowerGroup;

    .line 3317
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_2b

    .line 3319
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2b

    .line 3320
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 3325
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->isDisplayGroupAlwaysOn(I)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    .line 3317
    :goto_2c
    return v0
.end method

.method private isBeingKeptFromInattentiveSleepLocked()Z
    .registers 2

    .line 3336
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private isInteractiveInternal()Z
    .registers 3

    .line 3914
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3915
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v1

    invoke-static {v1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3916
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private isItBedTimeYetLocked(Lcom/android/server/power/PowerGroup;)Z
    .registers 5
    .param p1, "powerGroup"    # Lcom/android/server/power/PowerGroup;

    .line 3296
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_6

    .line 3297
    const/4 v0, 0x0

    return v0

    .line 3300
    :cond_6
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 3301
    .local v0, "now":J
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3302
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptFromInattentiveSleepLocked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 3304
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .registers 5

    .line 4289
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_13

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private isProfileBeingKeptAwakeLocked(Lcom/android/server/power/PowerManagerService$ProfilePowerState;J)Z
    .registers 8
    .param p1, "profile"    # Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    .param p2, "now"    # J

    .line 2520
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    iget-wide v2, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    add-long/2addr v0, v2

    cmp-long v0, v0, p2

    if-gtz v0, :cond_1c

    iget v0, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v0, :cond_1a

    iget v0, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    return v0
.end method

.method static isSameCallback(Landroid/os/IWakeLockCallback;Landroid/os/IWakeLockCallback;)Z
    .registers 5
    .param p0, "callback1"    # Landroid/os/IWakeLockCallback;
    .param p1, "callback2"    # Landroid/os/IWakeLockCallback;

    .line 6957
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 6958
    return v0

    .line 6960
    :cond_4
    if-eqz p0, :cond_13

    if-eqz p1, :cond_13

    .line 6961
    invoke-interface {p0}, Landroid/os/IWakeLockCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/os/IWakeLockCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_13

    .line 6962
    return v0

    .line 6964
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private isScreenBrightnessBoostedInternal()Z
    .registers 3

    .line 4333
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4334
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    monitor-exit v0

    return v1

    .line 4335
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 3
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1600
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_e

    .line 1606
    const/4 v0, 0x0

    return v0

    .line 1604
    :sswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_e
    .sparse-switch
        0x6 -> :sswitch_b
        0xa -> :sswitch_b
        0x1a -> :sswitch_b
    .end sparse-switch
.end method

.method private static isValidBrightness(F)Z
    .registers 2
    .param p0, "value"    # F

    .line 3687
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private isWakeLockLevelSupportedInternal(I)Z
    .registers 6
    .param p1, "level"    # I

    .line 1942
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1943
    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_20

    .line 1956
    :try_start_8
    monitor-exit v0

    goto :goto_1d

    .line 1953
    :sswitch_a
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable()Z

    move-result v3

    if-eqz v3, :cond_17

    move v1, v2

    :cond_17
    monitor-exit v0

    return v1

    .line 1950
    :sswitch_19
    monitor-exit v0

    return v2

    .line 1958
    :catchall_1b
    move-exception v1

    goto :goto_1e

    .line 1956
    :goto_1d
    return v1

    .line 1958
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1b

    throw v1

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_19
        0x6 -> :sswitch_19
        0xa -> :sswitch_19
        0x1a -> :sswitch_19
        0x20 -> :sswitch_a
        0x40 -> :sswitch_19
        0x80 -> :sswitch_19
    .end sparse-switch
.end method

.method private logSleepTimeoutRecapturedLocked()V
    .registers 7

    .line 2384
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 2385
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    sub-long/2addr v2, v0

    .line 2386
    .local v2, "savedWakeTimeMs":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_16

    .line 2387
    invoke-static {v2, v3}, Lcom/android/server/EventLogTags;->writePowerSoftSleepRequested(J)V

    .line 2388
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 2390
    :cond_16
    return-void
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .registers 6
    .param p0, "reason"    # Ljava/lang/String;

    .line 4501
    if-nez p0, :cond_4

    .line 4502
    const-string p0, ""

    .line 4509
    :cond_4
    const-string/jumbo v0, "quiescent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    .line 4510
    sput-boolean v2, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 4511
    const-string p0, ""

    goto :goto_2c

    .line 4512
    :cond_13
    const-string v1, ",quiescent"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 4513
    sput-boolean v2, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 4514
    const/4 v1, 0x0

    .line 4515
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    .line 4514
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 4518
    :cond_2c
    :goto_2c
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 4519
    const-string/jumbo v1, "recovery-update"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 4521
    :cond_3e
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceStub;->recordShutDownTime()V

    .line 4522
    const-string/jumbo p0, "recovery"

    .line 4525
    :cond_44
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v1, :cond_74

    .line 4528
    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 4529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4531
    :cond_63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4534
    :cond_74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reboot,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sys.powerctl"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4536
    const-wide/16 v0, 0x4e20

    :try_start_90
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_93
    .catch Ljava/lang/InterruptedException; {:try_start_90 .. :try_end_93} :catch_94

    .line 4539
    goto :goto_9c

    .line 4537
    :catch_94
    move-exception v0

    .line 4538
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 4540
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_9c
    const-string v0, "PowerManagerService"

    const-string v1, "Unexpected return from lowLevelReboot!"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4541
    return-void
.end method

.method public static lowLevelShutdown(Ljava/lang/String;)V
    .registers 3
    .param p0, "reason"    # Ljava/lang/String;

    .line 4487
    if-nez p0, :cond_4

    .line 4488
    const-string p0, ""

    .line 4490
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shutdown,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sys.powerctl"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4491
    return-void
.end method

.method private maybeHideInattentiveSleepWarningLocked(JJ)Z
    .registers 12
    .param p1, "now"    # J
    .param p3, "showWarningTime"    # J

    .line 3109
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v0

    .line 3111
    .local v0, "attentiveTimeout":J
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {v2}, Lcom/android/server/power/InattentiveSleepWarningController;->isShown()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 3112
    return v3

    .line 3115
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1b

    .line 3116
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {v2, v3}, Lcom/android/server/power/InattentiveSleepWarningController;->dismiss(Z)V

    .line 3117
    return v4

    .line 3118
    :cond_1b
    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-ltz v2, :cond_2d

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptFromInattentiveSleepLocked()Z

    move-result v2

    if-nez v2, :cond_2d

    cmp-long v2, p1, p3

    if-gez v2, :cond_2c

    goto :goto_2d

    .line 3124
    :cond_2c
    return v3

    .line 3120
    :cond_2d
    :goto_2d
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {v2, v4}, Lcom/android/server/power/InattentiveSleepWarningController;->dismiss(Z)V

    .line 3121
    return v4
.end method

.method private maybeUpdateForegroundProfileLastActivityLocked(J)V
    .registers 6
    .param p1, "eventTime"    # J

    .line 2087
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2088
    .local v0, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    if-eqz v0, :cond_14

    iget-wide v1, v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_14

    .line 2089
    iput-wide p1, v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    .line 2091
    :cond_14
    return-void
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeForceSuspend()Z
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetPowerBoost(II)V
.end method

.method private static native nativeSetPowerMode(IZ)Z
.end method

.method private needSuspendBlockerLocked()Z
    .registers 6

    .line 3852
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 3853
    return v1

    .line 3856
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_d

    .line 3857
    return v1

    .line 3865
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_19

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    if-eqz v0, :cond_19

    .line 3866
    return v1

    .line 3869
    :cond_19
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_1a
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 3870
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 3871
    .local v2, "powerGroup":Lcom/android/server/power/PowerGroup;
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/PowerGroup;->needSuspendBlockerLocked(ZZ)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 3873
    return v1

    .line 3869
    .end local v2    # "powerGroup":Lcom/android/server/power/PowerGroup;
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 3878
    .end local v0    # "idx":I
    :cond_38
    const/4 v0, 0x0

    return v0
.end method

.method private notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V
    .registers 30
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "ws"    # Landroid/os/WorkSource;
    .param p8, "historyTag"    # Ljava/lang/String;
    .param p9, "callback"    # Landroid/os/IWakeLockCallback;

    .line 1912
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v2, :cond_37

    iget-boolean v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v2, :cond_37

    .line 1913
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v8, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v10, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/power/Notifier;->onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    .line 1917
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1922
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1924
    :cond_37
    return-void
.end method

.method private notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 7
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1901
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v0, :cond_14

    .line 1902
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    .line 1903
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1906
    :cond_14
    return-void
.end method

.method private notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 7
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1892
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_18

    .line 1893
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    .line 1894
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1897
    :cond_18
    return-void
.end method

.method private onFlip(Z)V
    .registers 21
    .param p1, "isFaceDown"    # Z

    .line 1202
    move-object/from16 v8, p0

    move/from16 v9, p1

    const-wide/16 v1, 0x0

    .line 1203
    .local v1, "millisUntilNormalTimeout":J
    iget-object v10, v8, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1204
    :try_start_9
    iget-boolean v0, v8, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_f

    .line 1205
    monitor-exit v10

    return-void

    .line 1208
    :cond_f
    iput-boolean v9, v8, Lcom/android/server/power/PowerManagerService;->mIsFaceDown:Z

    .line 1209
    if-eqz v9, :cond_4b

    .line 1210
    iget-object v0, v8, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    move-wide v11, v3

    .line 1211
    .local v11, "currentTime":J
    iput-wide v11, v8, Lcom/android/server/power/PowerManagerService;->mLastFlipTime:J

    .line 1212
    const-wide/16 v3, -0x1

    invoke-direct {v8, v3, v4}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    move-result-wide v5

    move-wide v13, v5

    .line 1213
    .local v13, "sleepTimeout":J
    invoke-direct {v8, v13, v14, v3, v4}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v3

    move-wide v15, v3

    .line 1214
    .local v15, "screenOffTimeout":J
    iget-object v0, v8, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerGroup;

    .line 1215
    .local v0, "powerGroup":Lcom/android/server/power/PowerGroup;
    nop

    .line 1216
    invoke-virtual {v0}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v3
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_54

    add-long/2addr v3, v15

    sub-long v17, v3, v11

    .line 1217
    .end local v1    # "millisUntilNormalTimeout":J
    .local v17, "millisUntilNormalTimeout":J
    const/4 v2, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    move-object/from16 v1, p0

    move-wide v3, v11

    :try_start_41
    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(IJIII)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_47

    move-wide/from16 v1, v17

    goto :goto_4b

    .line 1221
    .end local v0    # "powerGroup":Lcom/android/server/power/PowerGroup;
    .end local v11    # "currentTime":J
    .end local v13    # "sleepTimeout":J
    .end local v15    # "screenOffTimeout":J
    :catchall_47
    move-exception v0

    move-wide/from16 v1, v17

    goto :goto_55

    .end local v17    # "millisUntilNormalTimeout":J
    .restart local v1    # "millisUntilNormalTimeout":J
    :cond_4b
    :goto_4b
    :try_start_4b
    monitor-exit v10
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_54

    .line 1222
    if-eqz v9, :cond_53

    .line 1223
    iget-object v0, v8, Lcom/android/server/power/PowerManagerService;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/FaceDownDetector;->setMillisSaved(J)V

    .line 1225
    :cond_53
    return-void

    .line 1221
    :catchall_54
    move-exception v0

    :goto_55
    :try_start_55
    monitor-exit v10
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method

.method private onUserAttention()V
    .registers 10

    .line 1993
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1994
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/power/PowerGroup;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 1995
    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    .line 1994
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1999
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2001
    :cond_21
    monitor-exit v0

    .line 2002
    return-void

    .line 2001
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .registers 9
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 1703
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1704
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v1

    .line 1705
    .local v1, "index":I
    if-gez v1, :cond_3a

    .line 1706
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v2, :cond_38

    .line 1707
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "releaseWakeLockInternal: lock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [not found], flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1708
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1707
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :cond_38
    monitor-exit v0

    return-void

    .line 1714
    :cond_3a
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/server/am/SmartPowerServiceStub;->onReleaseWakelock(Landroid/os/IBinder;I)V

    .line 1715
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1716
    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v3, :cond_84

    .line 1717
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "releaseWakeLockInternal: lock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1718
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1717
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :cond_84
    and-int/lit8 v3, p2, 0x1

    const/4 v4, 0x1

    if-eqz v3, :cond_93

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsUltrasonicProximity:Z

    if-eqz v3, :cond_91

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mUsWaitForNegativeFeature:Z

    if-eqz v3, :cond_93

    .line 1727
    :cond_91
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 1731
    :cond_93
    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService$WakeLock;->unlinkToDeath()V

    .line 1732
    invoke-virtual {v2, v4}, Lcom/android/server/power/PowerManagerService$WakeLock;->setDisabled(Z)Z

    .line 1733
    invoke-direct {p0, v2, v1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1734
    .end local v1    # "index":I
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    monitor-exit v0

    .line 1735
    return-void

    .line 1734
    :catchall_9e
    move-exception v1

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_3 .. :try_end_a0} :catchall_9e

    throw v1
.end method

.method private removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .registers 6
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "index"    # I

    .line 1756
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/power/PowerManagerServiceStub;->printWakeLockDetails(Lcom/android/server/power/PowerManagerService$WakeLock;Z)V

    .line 1757
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1758
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 1759
    .local v0, "state":Lcom/android/server/power/PowerManagerService$UidState;
    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    .line 1760
    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-gtz v1, :cond_24

    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_24

    .line 1762
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/power/PowerManagerService$UidState;->mUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1764
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1766
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1767
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1768
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1769
    return-void
.end method

.method private restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 6
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1883
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 1884
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    .line 1886
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V

    .line 1888
    :cond_22
    return-void
.end method

.method private scheduleAttentiveTimeout(J)V
    .registers 5
    .param p1, "timeMs"    # J

    .line 3041
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3042
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3043
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3044
    return-void
.end method

.method private scheduleSandmanLocked()V
    .registers 8

    .line 3363
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    if-nez v0, :cond_3c

    .line 3364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 3365
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_8
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 3366
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 3367
    .local v2, "powerGroup":Lcom/android/server/power/PowerGroup;
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->supportsSandmanLocked()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 3368
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 3369
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 3370
    invoke-virtual {v3, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3371
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v5}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3365
    .end local v2    # "powerGroup":Lcom/android/server/power/PowerGroup;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3375
    .end local v1    # "idx":I
    :cond_3c
    return-void
.end method

.method private scheduleUserInactivityTimeout(J)V
    .registers 5
    .param p1, "timeMs"    # J

    .line 3035
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3036
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3037
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3038
    return-void
.end method

.method private setAttentionLightInternal(ZI)V
    .registers 7
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .line 4295
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4296
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_9

    .line 4297
    monitor-exit v0

    return-void

    .line 4299
    :cond_9
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    .line 4300
    .local v1, "light":Lcom/android/server/lights/LogicalLight;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 4303
    if-eqz v1, :cond_18

    .line 4304
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    const/4 v3, 0x3

    goto :goto_15

    :cond_14
    move v3, v2

    :goto_15
    invoke-virtual {v1, p2, v0, v3, v2}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    .line 4306
    :cond_18
    return-void

    .line 4300
    .end local v1    # "light":Lcom/android/server/lights/LogicalLight;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private setDozeAfterScreenOffInternal(Z)V
    .registers 4
    .param p1, "on"    # Z

    .line 4309
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4310
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    .line 4311
    monitor-exit v0

    .line 4312
    return-void

    .line 4311
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private setDozeOverrideFromDreamManagerInternal(II)V
    .registers 5
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .line 4387
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4388
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    if-ne v1, p1, :cond_b

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    if-eq v1, p2, :cond_1f

    .line 4390
    :cond_b
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 4391
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 4397
    nop

    .line 4399
    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloatForLowLevel(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

    .line 4401
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4402
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4404
    :cond_1f
    monitor-exit v0

    .line 4405
    return-void

    .line 4404
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private setDrawWakeLockOverrideFromSidekickInternal(Z)V
    .registers 4
    .param p1, "keepState"    # Z

    .line 4408
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4409
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    if-eq v1, p1, :cond_12

    .line 4410
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    .line 4411
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4412
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4414
    :cond_12
    monitor-exit v0

    .line 4415
    return-void

    .line 4414
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private setHalAutoSuspendModeLocked(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 3883
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    if-eq p1, v0, :cond_50

    .line 3884
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 3885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting HAL auto-suspend mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    :cond_20
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 3888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalAutoSuspend("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3890
    :try_start_42
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetAutoSuspend(Z)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_4b

    .line 3892
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3893
    goto :goto_50

    .line 3892
    :catchall_4b
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3893
    throw v0

    .line 3895
    :cond_50
    :goto_50
    return-void
.end method

.method private setHalInteractiveModeLocked(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 3899
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-eq p1, v0, :cond_51

    .line 3900
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 3901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting HAL interactive mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    :cond_20
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 3904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalInteractive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3906
    :try_start_42
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, p1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_4c

    .line 3908
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3909
    goto :goto_51

    .line 3908
    :catchall_4c
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3909
    throw v0

    .line 3911
    :cond_51
    :goto_51
    return-void
.end method

.method private setLowPowerModeInternal(Z)Z
    .registers 6
    .param p1, "enabled"    # Z

    .line 3920
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3921
    :try_start_3
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v1, :cond_2c

    .line 3922
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLowPowerModeInternal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsPowered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3924
    :cond_2c
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_33

    .line 3925
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3928
    :cond_33
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setBatterySaverEnabledManually(Z)V

    .line 3930
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 3931
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private setPowerBoostInternal(II)V
    .registers 4
    .param p1, "boost"    # I
    .param p2, "durationMs"    # I

    .line 4424
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerBoost(II)V

    .line 4425
    return-void
.end method

.method private setPowerModeInternal(IZ)Z
    .registers 4
    .param p1, "mode"    # I
    .param p2, "enabled"    # Z

    .line 4429
    const/4 v0, 0x5

    if-ne p1, v0, :cond_f

    if-eqz p2, :cond_f

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isLaunchBoostDisabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4430
    const/4 v0, 0x0

    return v0

    .line 4432
    :cond_f
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z

    move-result v0

    return v0
.end method

.method private setScreenBrightnessOverrideFromWindowManagerInternal(F)V
    .registers 4
    .param p1, "brightness"    # F

    .line 4356
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4357
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    invoke-static {v1, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_16

    .line 4359
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    .line 4360
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4361
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4363
    :cond_16
    monitor-exit v0

    .line 4364
    return-void

    .line 4363
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .registers 6
    .param p1, "timeoutMillis"    # J

    .line 4375
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4376
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_17

    .line 4377
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 4378
    invoke-static {p1, p2}, Lcom/android/server/EventLogTags;->writeUserActivityTimeoutOverride(J)V

    .line 4379
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4380
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4382
    :cond_17
    monitor-exit v0

    .line 4383
    return-void

    .line 4382
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private setUserInactiveOverrideFromWindowManagerInternal()V
    .registers 3

    .line 4367
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4368
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    .line 4369
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4370
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4371
    monitor-exit v0

    .line 4372
    return-void

    .line 4371
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 9
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4241
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_80

    .line 4243
    const/4 v0, 0x0

    .line 4244
    .local v0, "disabled":Z
    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 4245
    .local v3, "appid":I
    const/16 v4, 0x2710

    if-lt v3, v4, :cond_6f

    .line 4247
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    iget-boolean v4, v4, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    const/16 v5, 0x14

    if-eqz v4, :cond_37

    .line 4248
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    if-nez v4, :cond_35

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget-boolean v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v4, :cond_36

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v4, v5, :cond_36

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/16 v6, 0xb

    if-le v4, v6, :cond_36

    :cond_35
    move v1, v2

    :cond_36
    move v0, v1

    .line 4253
    :cond_37
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_57

    .line 4256
    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 4257
    .local v1, "state":Lcom/android/server/power/PowerManagerService$UidState;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_57

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 4258
    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_57

    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v2, v5, :cond_57

    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v4, 0x5

    if-le v2, v4, :cond_57

    .line 4262
    const/4 v0, 0x1

    .line 4265
    .end local v1    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_57
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    if-eqz v1, :cond_6f

    .line 4266
    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 4267
    .restart local v1    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyAllowlist:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_6f

    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v2, v5, :cond_6f

    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v4, 0x3

    if-le v2, v4, :cond_6f

    .line 4270
    const/4 v0, 0x1

    .line 4276
    .end local v1    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_6f
    iget-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v1, :cond_7b

    if-nez v0, :cond_7b

    .line 4278
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    invoke-virtual {v1, p1}, Lcom/android/server/power/PowerManagerServiceStub;->isWakelockDisabledByPolicy(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    .line 4282
    :cond_7b
    invoke-virtual {p1, v0}, Lcom/android/server/power/PowerManagerService$WakeLock;->setDisabled(Z)Z

    move-result v1

    return v1

    .line 4284
    .end local v0    # "disabled":Z
    .end local v3    # "appid":I
    :cond_80
    return v1
.end method

.method private shouldBoostScreenBrightness()Z
    .registers 2

    .line 3683
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private shouldNapAtBedTimeLocked()Z
    .registers 2

    .line 3284
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private shouldUseProximitySensorLocked()Z
    .registers 3

    .line 3770
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 3771
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v0}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    nop

    .line 3770
    :goto_18
    return v1
.end method

.method private shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .registers 7
    .param p1, "wasPowered"    # Z
    .param p2, "oldPlugType"    # I
    .param p3, "dockedOnWirelessCharger"    # Z

    .line 2595
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2596
    return v1

    .line 2617
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_12

    .line 2618
    return v1

    .line 2622
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    if-nez v0, :cond_1b

    .line 2623
    return v1

    .line 2635
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method private shutdownOrRebootInternal(IZLjava/lang/String;Z)V
    .registers 8
    .param p1, "haltMode"    # I
    .param p2, "confirm"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "wait"    # Z

    .line 3954
    const-string/jumbo v0, "userspace"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3955
    invoke-static {}, Landroid/os/PowerManager;->isRebootingUserspaceSupportedImpl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3959
    invoke-static {}, Lcom/android/server/UserspaceRebootLogger;->noteUserspaceRebootWasRequested()V

    goto :goto_1b

    .line 3956
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempted userspace reboot on a device that doesn\'t support it"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3961
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_2c

    .line 3962
    :cond_23
    invoke-static {}, Lcom/android/server/RescueParty;->isAttemptingFactoryReset()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 3967
    invoke-static {p3}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 3974
    :cond_2c
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    const/4 v1, 0x1

    if-nez p1, :cond_33

    move v2, v1

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :goto_34
    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/android/server/power/PowerManagerServiceStub;->isShutdownOrRebootPermitted(ZZLjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 3976
    return-void

    .line 3980
    :cond_3b
    new-instance v0, Lcom/android/server/power/PowerManagerService$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;)V

    .line 3996
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    .line 3997
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3998
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4001
    if-eqz p4, :cond_5e

    .line 4002
    monitor-enter v0

    .line 4005
    :goto_55
    :try_start_55
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_58} :catch_5c
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    .line 4007
    :goto_58
    goto :goto_55

    .line 4009
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1

    .line 4006
    :catch_5c
    move-exception v1

    goto :goto_58

    .line 4011
    :cond_5e
    return-void

    .line 3969
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_5f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too early to call shutdown() or reboot()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z
    .registers 8
    .param p1, "powerGroup"    # Lcom/android/server/power/PowerGroup;
    .param p2, "eventTime"    # J
    .param p4, "reason"    # I
    .param p5, "uid"    # I

    .line 2144
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_27

    .line 2145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sleepPowerGroup: eventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    :cond_27
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_30

    goto :goto_35

    .line 2151
    :cond_30
    invoke-virtual {p1, p2, p3, p5, p4}, Lcom/android/server/power/PowerGroup;->sleepLocked(JII)Z

    move-result v0

    return v0

    .line 2148
    :cond_35
    :goto_35
    const/4 v0, 0x0

    return v0
.end method

.method private systemReady()V
    .registers 16

    .line 1277
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1278
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 1279
    const-class v1, Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/dreams/DreamManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    .line 1280
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1281
    const-class v1, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1282
    const-class v1, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 1283
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/power/AttentionDetector;->systemReady(Landroid/content/Context;)V

    .line 1285
    new-instance v1, Landroid/hardware/SystemSensorManager;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 1289
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1290
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v7, "PowerManagerService.Broadcasts"

    .line 1291
    invoke-virtual {v2, p0, v7}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    .line 1293
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v11

    .line 1290
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/power/PowerManagerService$Injector;->createNotifier(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/ScreenUndimDetector;Ljava/util/concurrent/Executor;)Lcom/android/server/power/Notifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 1295
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    new-instance v10, Lcom/android/server/power/PowerGroup;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroupWakefulnessChangeListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 1297
    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v8

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/server/power/PowerGroup;-><init>(ILcom/android/server/power/PowerGroup$PowerGroupListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;J)V

    .line 1295
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1298
    new-instance v2, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener-IA;)V

    .line 1300
    .local v2, "displayGroupPowerChangeListener":Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v5, v2}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayGroupListener(Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;)V

    .line 1302
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v6, "PowerManagerService.WirelessChargerDetector"

    .line 1303
    invoke-virtual {v5, p0, v6}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 1302
    invoke-virtual {v5, v1, v6, v7}, Lcom/android/server/power/PowerManagerService$Injector;->createWirelessChargerDetector(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)Lcom/android/server/power/WirelessChargerDetector;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 1306
    new-instance v5, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    .line 1308
    const-class v5, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v5}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/lights/LightsManager;

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    .line 1309
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    .line 1312
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v7, v1}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V

    .line 1316
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 1317
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 1316
    move-object v9, p0

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/power/PowerManagerServiceStub;->init(Lcom/android/server/power/PowerManagerService;Ljava/util/ArrayList;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Landroid/util/SparseArray;)V
    :try_end_d5
    .catchall {:try_start_4 .. :try_end_d5} :catchall_248

    .line 1319
    :try_start_d5
    new-instance v5, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;

    invoke-direct {v5, p0, v4}, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver-IA;)V

    .line 1320
    .local v5, "observer":Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    const-string v7, "PowerManagerService"

    invoke-interface {v6, v5, v7}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_e3
    .catch Landroid/os/RemoteException; {:try_start_d5 .. :try_end_e3} :catch_e4
    .catchall {:try_start_d5 .. :try_end_e3} :catchall_248

    .line 1323
    .end local v5    # "observer":Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;
    goto :goto_e5

    .line 1321
    :catch_e4
    move-exception v5

    .line 1325
    :goto_e5
    :try_start_e5
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    invoke-virtual {v5}, Lcom/android/server/power/LowPowerStandbyController;->systemReady()V

    .line 1328
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    .line 1329
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 1330
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1331
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1332
    .end local v1    # "sensorManager":Landroid/hardware/SensorManager;
    .end local v2    # "displayGroupPowerChangeListener":Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;
    monitor-exit v0
    :try_end_fa
    .catchall {:try_start_e5 .. :try_end_fa} :catchall_248

    .line 1334
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1335
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    .line 1337
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->systemReady()V

    .line 1338
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->systemReady()V

    .line 1339
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/power/FaceDownDetector;->systemReady(Landroid/content/Context;)V

    .line 1340
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/power/ScreenUndimDetector;->systemReady(Landroid/content/Context;)V

    .line 1343
    const-string/jumbo v1, "screensaver_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1346
    const-string/jumbo v1, "screensaver_activate_on_sleep"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1349
    const-string/jumbo v1, "screensaver_activate_on_dock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1352
    const-string/jumbo v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1355
    const-string/jumbo v1, "sleep_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1358
    const-string v1, "attentive_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1361
    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1364
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1367
    const-string/jumbo v1, "screen_auto_brightness_adj"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1370
    const-string/jumbo v1, "theater_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1373
    const-string v1, "doze_always_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1376
    const-string v1, "double_tap_to_wake"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1379
    const-string v1, "device_demo_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1382
    const-string/jumbo v1, "vrmanager"

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v1

    .line 1383
    .local v1, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v1, :cond_1e2

    .line 1385
    :try_start_1c3
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_1c8
    .catch Landroid/os/RemoteException; {:try_start_1c3 .. :try_end_1c8} :catch_1c9

    .line 1388
    goto :goto_1e2

    .line 1386
    :catch_1c9
    move-exception v2

    .line 1387
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to register VR mode state listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1e2
    :goto_1e2
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1393
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1394
    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1395
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    invoke-direct {v5, p0}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1397
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    .line 1398
    const-string v3, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1399
    const-string v3, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1400
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    invoke-direct {v5, p0, v4}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$DreamReceiver-IA;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1402
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    .line 1403
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1404
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    invoke-direct {v5, p0}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1406
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    .line 1407
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1408
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/power/PowerManagerService$DockReceiver;

    invoke-direct {v5, p0, v4}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$DockReceiver-IA;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1409
    return-void

    .line 1332
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "vrManager":Landroid/service/vr/IVrManager;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :catchall_248
    move-exception v1

    :try_start_249
    monitor-exit v0
    :try_end_24a
    .catchall {:try_start_249 .. :try_end_24a} :catchall_248

    throw v1
.end method

.method private updateAttentiveStateLocked(JI)V
    .registers 21
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    .line 3065
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v3

    .line 3067
    .local v3, "attentiveTimeout":J
    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerGroup;

    .line 3068
    invoke-virtual {v5}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v5

    add-long/2addr v5, v3

    .line 3069
    .local v5, "goToSleepTime":J
    iget-wide v7, v0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    sub-long v7, v5, v7

    .line 3071
    .local v7, "showWarningTime":J
    invoke-direct {v0, v1, v2, v7, v8}, Lcom/android/server/power/PowerManagerService;->maybeHideInattentiveSleepWarningLocked(JJ)Z

    move-result v9

    .line 3073
    .local v9, "warningDismissed":Z
    const-wide/16 v10, 0x0

    cmp-long v12, v3, v10

    if-ltz v12, :cond_8a

    if-nez v9, :cond_2d

    move/from16 v12, p3

    and-int/lit16 v13, v12, 0x4ab2

    if-eqz v13, :cond_8c

    goto :goto_2f

    :cond_2d
    move/from16 v12, p3

    .line 3077
    :goto_2f
    sget-boolean v13, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    const-string v14, "PowerManagerService"

    if-eqz v13, :cond_3a

    .line 3078
    const-string v13, "Updating attentive state"

    invoke-static {v14, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    :cond_3a
    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x5

    invoke-virtual {v13, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 3083
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptFromInattentiveSleepLocked()Z

    move-result v13

    if-eqz v13, :cond_47

    .line 3084
    return-void

    .line 3087
    :cond_47
    const-wide/16 v15, -0x1

    .line 3089
    .local v15, "nextTimeout":J
    cmp-long v13, v1, v7

    if-gez v13, :cond_50

    .line 3090
    move-wide v15, v7

    move-wide v1, v15

    goto :goto_80

    .line 3091
    :cond_50
    cmp-long v13, v1, v5

    if-gez v13, :cond_7f

    .line 3092
    sget-boolean v13, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v13, :cond_77

    .line 3093
    sub-long v10, v5, v1

    .line 3094
    .local v10, "timeToSleep":J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Going to sleep in "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms if there is no user activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    .end local v10    # "timeToSleep":J
    :cond_77
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {v1}, Lcom/android/server/power/InattentiveSleepWarningController;->show()V

    .line 3098
    move-wide v15, v5

    move-wide v1, v15

    goto :goto_80

    .line 3091
    :cond_7f
    move-wide v1, v15

    .line 3101
    .end local v15    # "nextTimeout":J
    .local v1, "nextTimeout":J
    :goto_80
    const-wide/16 v10, 0x0

    cmp-long v10, v1, v10

    if-ltz v10, :cond_8c

    .line 3102
    invoke-direct {v0, v1, v2}, Lcom/android/server/power/PowerManagerService;->scheduleAttentiveTimeout(J)V

    goto :goto_8c

    .line 3073
    .end local v1    # "nextTimeout":J
    :cond_8a
    move/from16 v12, p3

    .line 3105
    :cond_8c
    :goto_8c
    return-void
.end method

.method private updateDreamLocked(IZ)V
    .registers 4
    .param p1, "dirty"    # I
    .param p2, "powerGroupBecameReady"    # Z

    .line 3344
    and-int/lit16 v0, p1, 0x43ff

    if-nez v0, :cond_6

    if-eqz p2, :cond_f

    .line 3355
    :cond_6
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3356
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    .line 3359
    :cond_f
    return-void
.end method

.method private updateGlobalWakefulnessLocked(JIIILjava/lang/String;Ljava/lang/String;)V
    .registers 26
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "uid"    # I
    .param p5, "opUid"    # I
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "details"    # Ljava/lang/String;

    .line 2166
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->recalculateGlobalWakefulnessLocked()I

    move-result v13

    .line 2167
    .local v13, "newWakefulness":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v14

    .line 2168
    .local v14, "currentWakefulness":I
    if-ne v14, v13, :cond_15

    .line 2169
    return-void

    .line 2174
    :cond_15
    const/4 v0, 0x3

    const/4 v4, 0x1

    const-string v5, ")..."

    const-string v6, "PowerManagerService"

    packed-switch v13, :pswitch_data_1aa

    .line 2219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected wakefulness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2214
    :pswitch_37
    const-string v7, "hangUp"

    .line 2215
    .local v7, "traceMethodName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hang up time (uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    move-object v15, v7

    goto/16 :goto_115

    .line 2204
    .end local v7    # "traceMethodName":Ljava/lang/String;
    :pswitch_56
    const-string v7, "goToSleep"

    .line 2205
    .restart local v7    # "traceMethodName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Going to sleep due to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    iput-wide v2, v1, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    .line 2209
    iput v10, v1, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    .line 2210
    iput-boolean v4, v1, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 2211
    move-object v15, v7

    goto/16 :goto_115

    .line 2199
    .end local v7    # "traceMethodName":Ljava/lang/String;
    :pswitch_89
    const-string/jumbo v7, "nap"

    .line 2200
    .restart local v7    # "traceMethodName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Nap time (uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    move-object v15, v7

    goto :goto_115

    .line 2187
    .end local v7    # "traceMethodName":Ljava/lang/String;
    :pswitch_a8
    const-string/jumbo v7, "wakeUp"

    .line 2188
    .restart local v7    # "traceMethodName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Waking up from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2189
    invoke-static {v14}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2191
    invoke-static/range {p3 .. p3}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", details="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2188
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    iput-wide v2, v1, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    .line 2195
    iput v10, v1, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeReason:I

    .line 2196
    move-object v15, v7

    goto :goto_115

    .line 2176
    .end local v7    # "traceMethodName":Ljava/lang/String;
    :pswitch_f1
    const-string/jumbo v7, "reallyGoToSleep"

    .line 2177
    .restart local v7    # "traceMethodName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sleeping (uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    if-eq v14, v0, :cond_114

    .line 2181
    iput-wide v2, v1, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    .line 2182
    iput v10, v1, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    .line 2222
    :cond_114
    move-object v15, v7

    .end local v7    # "traceMethodName":Ljava/lang/String;
    .local v15, "traceMethodName":Ljava/lang/String;
    :goto_115
    const-wide/32 v8, 0x20000

    invoke-static {v8, v9, v15}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2226
    :try_start_11b
    iget-object v5, v1, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerService$Injector;->invalidateIsInteractiveCaches()V

    .line 2228
    iget-object v5, v1, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    invoke-virtual {v5, v13}, Lcom/android/server/power/PowerManagerServiceStub;->updateWakefulnessLocked(I)V

    .line 2229
    iput v13, v1, Lcom/android/server/power/PowerManagerService;->mWakefulnessRaw:I

    .line 2230
    iput-boolean v4, v1, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 2231
    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2234
    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    if-ne v13, v0, :cond_134

    goto :goto_135

    :cond_134
    const/4 v4, 0x0

    :goto_135
    and-int v0, v5, v4

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 2236
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    if-eqz v0, :cond_147

    .line 2238
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    invoke-virtual {v0, v12}, Lcom/android/server/power/PowerManagerServiceStub;->setWakeUpDetail(Ljava/lang/String;)V

    .line 2239
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, v13, v10, v2, v3}, Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(IIJ)V

    .line 2241
    :cond_147
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v0, v13}, Lcom/android/server/power/AttentionDetector;->onWakefulnessChangeStarted(I)V

    .line 2244
    packed-switch v13, :pswitch_data_1b8

    :pswitch_14f
    move-wide/from16 v16, v8

    goto :goto_19e

    .line 2246
    :pswitch_152
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;
    :try_end_154
    .catchall {:try_start_11b .. :try_end_154} :catchall_1a3

    move/from16 v5, p3

    move-object/from16 v6, p7

    move/from16 v7, p4

    move-wide/from16 v16, v8

    move-object/from16 v8, p6

    move/from16 v9, p5

    :try_start_160
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/Notifier;->onWakeUp(ILjava/lang/String;ILjava/lang/String;I)V

    .line 2247
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v0, :cond_19e

    .line 2248
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_19e

    .line 2255
    :pswitch_16e
    move-wide/from16 v16, v8

    invoke-static {v14}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    if-nez v0, :cond_177

    .line 2257
    goto :goto_19e

    .line 2260
    :cond_177
    const/4 v0, 0x0

    .line 2261
    .local v0, "numWakeLocksCleared":I
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2262
    .local v4, "numWakeLocks":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_17f
    if-ge v5, v4, :cond_198

    .line 2263
    iget-object v6, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2264
    .local v6, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v8, 0xffff

    and-int/2addr v7, v8

    sparse-switch v7, :sswitch_data_1c4

    goto :goto_195

    .line 2268
    :sswitch_193
    add-int/lit8 v0, v0, 0x1

    .line 2262
    .end local v6    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :goto_195
    add-int/lit8 v5, v5, 0x1

    goto :goto_17f

    .line 2272
    .end local v5    # "i":I
    :cond_198
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writePowerSleepRequested(I)V
    :try_end_19b
    .catchall {:try_start_160 .. :try_end_19b} :catchall_19c

    goto :goto_19e

    .line 2276
    .end local v0    # "numWakeLocksCleared":I
    .end local v4    # "numWakeLocks":I
    :catchall_19c
    move-exception v0

    goto :goto_1a6

    :cond_19e
    :goto_19e
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 2277
    nop

    .line 2278
    return-void

    .line 2276
    :catchall_1a3
    move-exception v0

    move-wide/from16 v16, v8

    :goto_1a6
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 2277
    throw v0

    :pswitch_data_1aa
    .packed-switch 0x0
        :pswitch_f1
        :pswitch_a8
        :pswitch_89
        :pswitch_56
        :pswitch_37
    .end packed-switch

    :pswitch_data_1b8
    .packed-switch 0x0
        :pswitch_16e
        :pswitch_152
        :pswitch_14f
        :pswitch_16e
    .end packed-switch

    :sswitch_data_1c4
    .sparse-switch
        0x6 -> :sswitch_193
        0xa -> :sswitch_193
        0x1a -> :sswitch_193
    .end sparse-switch
.end method

.method private updateIsPoweredLocked(I)V
    .registers 19
    .param p1, "dirty"    # I

    .line 2532
    move-object/from16 v9, p0

    move/from16 v10, p1

    and-int/lit16 v0, v10, 0x100

    if-eqz v0, :cond_104

    .line 2533
    iget-boolean v11, v9, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 2534
    .local v11, "wasPowered":Z
    iget v12, v9, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2535
    .local v12, "oldPlugType":I
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 2536
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v0

    iput v0, v9, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2537
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v0

    iput v0, v9, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    .line 2538
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 2540
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_79

    .line 2541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateIsPoweredLocked: wasPowered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsPowered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v9, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldPlugType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPlugType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBatteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    :cond_79
    iget-boolean v0, v9, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v11, v0, :cond_81

    iget v0, v9, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-eq v12, v0, :cond_f9

    .line 2549
    :cond_81
    iget v0, v9, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v9, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2555
    const/4 v13, 0x0

    .line 2563
    .local v13, "dockedOnWirelessCharger":Z
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v14

    .line 2564
    .local v14, "now":J
    const/4 v8, 0x0

    invoke-direct {v9, v11, v12, v8}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 2566
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/power/PowerGroup;

    const/4 v4, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.server.power:PLUGGED:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, v9, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3e8

    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 2569
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x3e8

    .line 2566
    move-object/from16 v0, p0

    move-wide v2, v14

    move v10, v8

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    goto :goto_c9

    .line 2564
    :cond_c8
    move v10, v8

    .line 2572
    :goto_c9
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/power/PowerGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object/from16 v0, p0

    move-wide v2, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    .line 2577
    iget-boolean v0, v9, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_f9

    .line 2578
    iget-boolean v0, v9, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v0, :cond_f9

    invoke-static {v12}, Landroid/os/BatteryManager;->isPlugWired(I)Z

    move-result v0

    if-nez v0, :cond_f9

    iget v0, v9, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2579
    invoke-static {v0}, Landroid/os/BatteryManager;->isPlugWired(I)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 2580
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, v9, Lcom/android/server/power/PowerManagerService;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier;->onWiredChargingStarted(I)V

    .line 2587
    .end local v13    # "dockedOnWirelessCharger":Z
    .end local v14    # "now":J
    :cond_f9
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iget-boolean v1, v9, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v2, v9, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget-boolean v3, v9, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setBatteryStatus(ZIZ)V

    .line 2589
    .end local v11    # "wasPowered":Z
    .end local v12    # "oldPlugType":I
    :cond_104
    return-void
.end method

.method private updatePowerGroupsLocked(I)Z
    .registers 28
    .param p1, "dirty"    # I

    .line 3564
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v2

    .line 3565
    .local v2, "oldPowerGroupsReady":Z
    const v3, 0x1383f

    and-int/2addr v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1f5

    .line 3569
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_23

    .line 3570
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 3571
    sput-boolean v5, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    goto :goto_23

    .line 3573
    :cond_1d
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3577
    :cond_23
    :goto_23
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_24
    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_1ec

    .line 3578
    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerGroup;

    .line 3579
    .local v6, "powerGroup":Lcom/android/server/power/PowerGroup;
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v15

    .line 3584
    .local v15, "groupId":I
    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v7, :cond_42

    .line 3587
    const/4 v7, 0x0

    .line 3588
    .local v7, "autoBrightness":Z
    iget v8, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    move v14, v7

    move v13, v8

    .local v8, "screenBrightnessOverride":F
    goto :goto_63

    .line 3591
    .end local v7    # "autoBrightness":Z
    .end local v8    # "screenBrightnessOverride":F
    :cond_42
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(F)Z

    move-result v7

    if-eqz v7, :cond_58

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    .line 3592
    invoke-virtual {v7, v6}, Lcom/android/server/power/PowerManagerServiceStub;->isSubScreenDeviceDisplayGroup(Lcom/android/server/power/PowerGroup;)Z

    move-result v7

    if-nez v7, :cond_58

    .line 3593
    const/4 v7, 0x0

    .line 3594
    .restart local v7    # "autoBrightness":Z
    iget v8, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    move v14, v7

    move v13, v8

    .restart local v8    # "screenBrightnessOverride":F
    goto :goto_63

    .line 3596
    .end local v7    # "autoBrightness":Z
    .end local v8    # "screenBrightnessOverride":F
    :cond_58
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    if-ne v7, v4, :cond_5e

    move v7, v4

    goto :goto_5f

    :cond_5e
    move v7, v5

    .line 3598
    .restart local v7    # "autoBrightness":Z
    :goto_5f
    const/high16 v8, 0x7fc00000    # Float.NaN

    move v14, v7

    move v13, v8

    .line 3600
    .end local v7    # "autoBrightness":Z
    .local v13, "screenBrightnessOverride":F
    .local v14, "autoBrightness":Z
    :goto_63
    nop

    .line 3601
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->shouldBoostScreenBrightness()Z

    move-result v11

    iget v12, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iget v9, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

    iget-boolean v8, v0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    const/4 v5, 0x7

    .line 3605
    invoke-virtual {v7, v5}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v5

    sget-boolean v16, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    move/from16 v22, v2

    .end local v2    # "oldPowerGroupsReady":Z
    .local v22, "oldPowerGroupsReady":Z
    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    move/from16 v23, v3

    .end local v3    # "idx":I
    .local v23, "idx":I
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 3600
    move/from16 v17, v7

    move-object v7, v6

    move/from16 v18, v8

    move v8, v13

    move/from16 v19, v9

    move v9, v14

    move/from16 v24, v13

    .end local v13    # "screenBrightnessOverride":F
    .local v24, "screenBrightnessOverride":F
    move/from16 v13, v19

    move/from16 v25, v14

    .end local v14    # "autoBrightness":Z
    .local v25, "autoBrightness":Z
    move/from16 v14, v18

    move v0, v15

    .end local v15    # "groupId":I
    .local v0, "groupId":I
    move-object v15, v5

    move/from16 v18, v4

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    invoke-virtual/range {v7 .. v21}, Lcom/android/server/power/PowerGroup;->updateLocked(FZZZIFZLandroid/os/PowerSaveState;ZZZZZZ)Z

    move-result v1

    .line 3608
    .local v1, "ready":Z
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v2

    .line 3609
    .local v2, "wakefulness":I
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    const-string v4, "PowerManagerService"

    if-eqz v3, :cond_163

    .line 3610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateDisplayPowerStateLocked: displayReady="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", groupId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", policy="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3612
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getPolicyLocked()I

    move-result v5

    invoke-static {v5}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mWakefulness="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3614
    invoke-static {v2}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mWakeLockSummary=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3616
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v5

    .line 3615
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mUserActivitySummary=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3618
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v5

    .line 3617
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mBootCompleted="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v5, v0

    move-object/from16 v0, p0

    .end local v0    # "groupId":I
    .local v5, "groupId":I
    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", screenBrightnessOverride="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v8, v24

    .end local v24    # "screenBrightnessOverride":F
    .restart local v8    # "screenBrightnessOverride":F
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", useAutoBrightness="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v7, v25

    .end local v25    # "autoBrightness":Z
    .restart local v7    # "autoBrightness":Z
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", mScreenBrightnessBoostInProgress="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", mIsVrModeEnabled= "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", sQuiescent="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v9, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3610
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16a

    .line 3609
    .end local v5    # "groupId":I
    .end local v7    # "autoBrightness":Z
    .end local v8    # "screenBrightnessOverride":F
    .restart local v0    # "groupId":I
    .restart local v24    # "screenBrightnessOverride":F
    .restart local v25    # "autoBrightness":Z
    :cond_163
    move v5, v0

    move/from16 v8, v24

    move/from16 v7, v25

    move-object/from16 v0, p0

    .line 3628
    .end local v0    # "groupId":I
    .end local v24    # "screenBrightnessOverride":F
    .end local v25    # "autoBrightness":Z
    .restart local v5    # "groupId":I
    .restart local v7    # "autoBrightness":Z
    .restart local v8    # "screenBrightnessOverride":F
    :goto_16a
    invoke-virtual {v6, v1}, Lcom/android/server/power/PowerGroup;->setReadyLocked(Z)Z

    move-result v3

    .line 3629
    .local v3, "displayReadyStateChanged":Z
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->isPoweringOnLocked()Z

    move-result v9

    .line 3630
    .local v9, "poweringOn":Z
    if-eqz v1, :cond_1c6

    if-eqz v3, :cond_1c6

    if-eqz v9, :cond_1c6

    const/4 v10, 0x1

    if-ne v2, v10, :cond_1c7

    iget-object v11, v0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    .line 3633
    invoke-virtual {v11}, Lcom/android/server/power/PowerManagerServiceStub;->exitHangupWakefulnessLocked()Z

    move-result v11

    if-nez v11, :cond_1c7

    .line 3634
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/android/server/power/PowerGroup;->setIsPoweringOnLocked(Z)V

    .line 3635
    iget-object v11, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 3636
    const-wide/32 v11, 0x20000

    const-string v13, "Screen turning on"

    invoke-static {v11, v12, v13, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 3637
    iget-object v11, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v11}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v11

    .line 3638
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getLastPowerOnTimeLocked()J

    move-result-wide v13

    sub-long/2addr v11, v13

    long-to-int v11, v11

    .line 3639
    .local v11, "latencyMs":I
    const/16 v12, 0xc8

    if-lt v11, v12, :cond_1c7

    .line 3640
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Screen on took "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c7

    .line 3630
    .end local v11    # "latencyMs":I
    :cond_1c6
    const/4 v10, 0x1

    .line 3645
    :cond_1c7
    :goto_1c7
    if-eqz v1, :cond_1d5

    if-eqz v3, :cond_1d5

    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->isPoweringOnLocked()Z

    move-result v4

    if-eqz v4, :cond_1d5

    .line 3646
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Lcom/android/server/power/PowerGroup;->setIsPoweringOnLocked(Z)V

    .line 3648
    :cond_1d5
    if-eqz v1, :cond_1e2

    if-eqz v3, :cond_1e2

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    if-eqz v4, :cond_1e2

    .line 3649
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerServiceStub;->notifyWakefulnessCompletedLocked(I)V

    .line 3577
    .end local v1    # "ready":Z
    .end local v2    # "wakefulness":I
    .end local v3    # "displayReadyStateChanged":Z
    .end local v5    # "groupId":I
    .end local v6    # "powerGroup":Lcom/android/server/power/PowerGroup;
    .end local v7    # "autoBrightness":Z
    .end local v8    # "screenBrightnessOverride":F
    .end local v9    # "poweringOn":Z
    :cond_1e2
    add-int/lit8 v3, v23, 0x1

    move/from16 v1, p1

    move v4, v10

    move/from16 v2, v22

    const/4 v5, 0x0

    .end local v23    # "idx":I
    .local v3, "idx":I
    goto/16 :goto_24

    .end local v22    # "oldPowerGroupsReady":Z
    .local v2, "oldPowerGroupsReady":Z
    :cond_1ec
    move/from16 v22, v2

    move/from16 v23, v3

    move v10, v4

    .line 3653
    .end local v2    # "oldPowerGroupsReady":Z
    .end local v3    # "idx":I
    .restart local v22    # "oldPowerGroupsReady":Z
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    goto :goto_1f9

    .line 3565
    .end local v22    # "oldPowerGroupsReady":Z
    .restart local v2    # "oldPowerGroupsReady":Z
    :cond_1f5
    move/from16 v22, v2

    move v10, v4

    move v1, v5

    .line 3656
    .end local v2    # "oldPowerGroupsReady":Z
    .restart local v22    # "oldPowerGroupsReady":Z
    :goto_1f9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v2

    if-eqz v2, :cond_203

    if-nez v22, :cond_203

    move v4, v10

    goto :goto_204

    :cond_203
    move v4, v1

    :goto_204
    return v4
.end method

.method private updateProfilesLocked(J)V
    .registers 8
    .param p1, "now"    # J

    .line 2506
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2507
    .local v0, "numProfiles":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2c

    .line 2508
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2509
    .local v2, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->isProfileBeingKeptAwakeLocked(Lcom/android/server/power/PowerManagerService$ProfilePowerState;J)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2510
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    goto :goto_29

    .line 2511
    :cond_1b
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    if-nez v3, :cond_29

    .line 2512
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    .line 2513
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v4, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/power/Notifier;->onProfileTimeout(I)V

    .line 2507
    .end local v2    # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2516
    .end local v1    # "i":I
    :cond_2c
    return-void
.end method

.method private updateScreenBrightnessBoostLocked(I)V
    .registers 11
    .param p1, "dirty"    # I

    .line 3661
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_3f

    .line 3662
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_3f

    .line 3663
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v7

    .line 3664
    .local v7, "now":J
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3665
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_33

    .line 3666
    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    .line 3668
    .local v2, "boostTimeout":J
    cmp-long v0, v2, v7

    if-lez v0, :cond_33

    .line 3669
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3670
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3671
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3672
    return-void

    .line 3675
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "boostTimeout":J
    :cond_33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 3676
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    move-wide v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 3680
    .end local v7    # "now":J
    :cond_3f
    return-void
.end method

.method private updateSettingsLocked()V
    .registers 8

    .line 1460
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1462
    .local v0, "resolver":Landroid/content/ContentResolver;
    nop

    .line 1464
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 1462
    const-string/jumbo v2, "screensaver_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_18

    :cond_17
    move v1, v4

    :goto_18
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    .line 1466
    nop

    .line 1468
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 1466
    const-string/jumbo v5, "screensaver_activate_on_sleep"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_28

    move v1, v2

    goto :goto_29

    :cond_28
    move v1, v4

    :goto_29
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    .line 1470
    nop

    .line 1472
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    .line 1470
    const-string/jumbo v5, "screensaver_activate_on_dock"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_39

    move v1, v2

    goto :goto_3a

    :cond_39
    move v1, v4

    :goto_3a
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    .line 1474
    const/16 v1, 0x3a98

    const-string/jumbo v5, "screen_off_timeout"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    .line 1477
    const/4 v1, -0x1

    const-string/jumbo v5, "sleep_timeout"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    .line 1480
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    const-string v5, "attentive_timeout"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    .line 1483
    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    .line 1485
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "theater_mode_on"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_78

    move v1, v2

    goto :goto_79

    :cond_78
    move v1, v4

    :goto_79
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    .line 1487
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v1, v3}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mAlwaysOnEnabled:Z

    .line 1489
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    if-eqz v1, :cond_9d

    .line 1490
    const-string v1, "double_tap_to_wake"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_90

    goto :goto_91

    :cond_90
    move v2, v4

    :goto_91
    move v1, v2

    .line 1493
    .local v1, "doubleTapWakeEnabled":Z
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    if-eq v1, v2, :cond_9d

    .line 1494
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    .line 1495
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v2, v4, v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z

    .line 1499
    .end local v1    # "doubleTapWakeEnabled":Z
    :cond_9d
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a8

    const-string v1, "1"

    goto :goto_aa

    :cond_a8
    const-string v1, "0"

    .line 1500
    .local v1, "retailDemoValue":Ljava/lang/String;
    :goto_aa
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    const/4 v5, 0x0

    .line 1501
    const-string/jumbo v6, "sys.retaildemo.enabled"

    invoke-interface {v2, v6, v5}, Lcom/android/server/power/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1500
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bf

    .line 1502
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    invoke-interface {v2, v6, v1}, Lcom/android/server/power/SystemPropertiesWrapper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :cond_bf
    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    .line 1509
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1510
    return-void
.end method

.method private updateStayOnLocked(I)V
    .registers 5
    .param p1, "dirty"    # I

    .line 2644
    and-int/lit16 v0, p1, 0x120

    if-eqz v0, :cond_28

    .line 2645
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 2646
    .local v0, "wasStayOn":Z
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    if-eqz v1, :cond_1b

    .line 2647
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 2648
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    goto :goto_1e

    .line 2650
    :cond_1b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 2653
    :goto_1e
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-eq v1, v0, :cond_28

    .line 2654
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2657
    .end local v0    # "wasStayOn":Z
    :cond_28
    return-void
.end method

.method private updateSuspendBlockerLocked()V
    .registers 9

    .line 3782
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 3783
    .local v0, "needWakeLockSuspendBlocker":Z
    :goto_a
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needSuspendBlockerLocked()Z

    move-result v3

    .line 3784
    .local v3, "needDisplaySuspendBlocker":Z
    xor-int/lit8 v4, v3, 0x1

    .line 3785
    .local v4, "autoSuspend":Z
    const/4 v5, 0x0

    .line 3786
    .local v5, "interactive":Z
    const/4 v6, 0x0

    .local v6, "idx":I
    :goto_12
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2b

    if-nez v5, :cond_2b

    .line 3787
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v7}, Lcom/android/server/power/PowerGroup;->isBrightOrDimLocked()Z

    move-result v5

    .line 3786
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 3793
    .end local v6    # "idx":I
    :cond_2b
    if-nez v4, :cond_34

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v6, :cond_34

    .line 3794
    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 3798
    :cond_34
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v6, :cond_43

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    if-nez v6, :cond_43

    .line 3799
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mBootingSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3800
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    .line 3802
    :cond_43
    if-eqz v0, :cond_50

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-nez v6, :cond_50

    .line 3803
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3804
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 3806
    :cond_50
    const-string v6, "holding display"

    if-eqz v3, :cond_5f

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-nez v7, :cond_5f

    .line 3807
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v7, v6}, Lcom/android/server/power/SuspendBlocker;->acquire(Ljava/lang/String;)V

    .line 3808
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 3817
    :cond_5f
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v7, :cond_6e

    .line 3822
    if-nez v5, :cond_6b

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 3823
    :cond_6b
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    .line 3828
    :cond_6e
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v7, :cond_7d

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    if-eqz v7, :cond_7d

    .line 3829
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBootingSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v7}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3830
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    .line 3832
    :cond_7d
    if-nez v0, :cond_8a

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eqz v7, :cond_8a

    .line 3833
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v7}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3834
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 3836
    :cond_8a
    if-nez v3, :cond_97

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-eqz v7, :cond_97

    .line 3837
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v7, v6}, Lcom/android/server/power/SuspendBlocker;->release(Ljava/lang/String;)V

    .line 3838
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 3842
    :cond_97
    if-eqz v4, :cond_a0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v2, :cond_a0

    .line 3843
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 3845
    :cond_a0
    return-void
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .registers 41
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    .line 2889
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const v3, 0x14027

    and-int v3, p3, v3

    if-nez v3, :cond_c

    .line 2891
    return-void

    .line 2893
    :cond_c
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2895
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v5

    .line 2896
    .local v5, "attentiveTimeout":J
    invoke-direct {v0, v5, v6}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    move-result-wide v7

    .line 2897
    .local v7, "sleepTimeout":J
    invoke-direct {v0, v7, v8, v5, v6}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v9

    .line 2901
    .local v9, "screenOffTimeout":J
    invoke-direct {v0, v9, v10}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v11

    .line 2902
    .local v11, "screenDimDuration":J
    nop

    .line 2903
    invoke-direct {v0, v9, v10, v11, v12}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutWithFaceDownLocked(JJ)J

    move-result-wide v9

    .line 2904
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    .line 2905
    .local v3, "userInactiveOverride":Z
    const-wide/16 v13, -0x1

    .line 2906
    .local v13, "nextTimeout":J
    const/4 v15, 0x0

    .line 2907
    .local v15, "hasUserActivitySummary":Z
    const/16 v16, 0x0

    move/from16 v4, v16

    .local v4, "idx":I
    :goto_30
    move-wide/from16 v17, v5

    .end local v5    # "attentiveTimeout":J
    .local v17, "attentiveTimeout":J
    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const-wide/16 v19, 0x0

    if-ge v4, v5, :cond_1ec

    .line 2908
    const/4 v5, 0x0

    .line 2909
    .local v5, "groupUserActivitySummary":I
    const-wide/16 v21, 0x0

    .line 2910
    .local v21, "groupNextTimeout":J
    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerGroup;

    .line 2911
    .local v6, "powerGroup":Lcom/android/server/power/PowerGroup;
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v23

    .line 2912
    .local v23, "wakefulness":I
    const/16 v24, 0x0

    if-eqz v23, :cond_17d

    .line 2914
    move/from16 v25, v5

    .end local v5    # "groupUserActivitySummary":I
    .local v25, "groupUserActivitySummary":I
    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    invoke-virtual {v5, v6, v9, v10}, Lcom/android/server/power/PowerManagerServiceStub;->adjustScreenOffTimeoutIfNeededLocked(Lcom/android/server/power/PowerGroup;J)J

    move-result-wide v9

    .line 2916
    invoke-direct {v0, v9, v10}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v11

    .line 2918
    move/from16 v26, v4

    .end local v4    # "idx":I
    .local v26, "idx":I
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v4

    .line 2919
    .local v4, "lastUserActivityTime":J
    nop

    .line 2920
    move-wide/from16 v27, v13

    .end local v13    # "nextTimeout":J
    .local v27, "nextTimeout":J
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeNoChangeLightsLocked()J

    move-result-wide v13

    .line 2921
    .local v13, "lastUserActivityTimeNoChangeLights":J
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v29

    cmp-long v29, v4, v29

    if-ltz v29, :cond_a3

    .line 2922
    add-long v29, v4, v9

    move-wide/from16 v31, v7

    .end local v7    # "sleepTimeout":J
    .local v31, "sleepTimeout":J
    sub-long v7, v29, v11

    .line 2924
    .end local v21    # "groupNextTimeout":J
    .local v7, "groupNextTimeout":J
    move/from16 v29, v15

    .end local v15    # "hasUserActivitySummary":Z
    .local v29, "hasUserActivitySummary":Z
    iget-object v15, v0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    invoke-virtual {v15, v7, v8, v4, v5}, Lcom/android/server/power/PowerManagerServiceStub;->updateNextDimTimeoutIfNeededLocked(JJ)J

    move-result-wide v21

    .line 2926
    .end local v7    # "groupNextTimeout":J
    .restart local v21    # "groupNextTimeout":J
    cmp-long v7, v1, v21

    if-gez v7, :cond_86

    .line 2927
    const/4 v7, 0x1

    move-wide/from16 v33, v11

    .end local v25    # "groupUserActivitySummary":I
    .local v7, "groupUserActivitySummary":I
    goto :goto_ab

    .line 2929
    .end local v7    # "groupUserActivitySummary":I
    .restart local v25    # "groupUserActivitySummary":I
    :cond_86
    add-long v7, v4, v9

    .line 2931
    .end local v21    # "groupNextTimeout":J
    .local v7, "groupNextTimeout":J
    iget-object v15, v0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    move-wide/from16 v33, v11

    .end local v11    # "screenDimDuration":J
    .local v33, "screenDimDuration":J
    iget-wide v11, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    sub-long/2addr v11, v9

    invoke-virtual {v15, v11, v12}, Lcom/android/server/power/PowerManagerServiceStub;->getDimDurationExtraTime(J)J

    move-result-wide v11

    add-long v21, v7, v11

    .line 2934
    .end local v7    # "groupNextTimeout":J
    .restart local v21    # "groupNextTimeout":J
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    invoke-virtual {v7}, Lcom/android/server/power/PowerManagerServiceStub;->sendBroadcastRestoreBrightnessIfNeededLocked()V

    .line 2935
    cmp-long v7, v1, v21

    if-gez v7, :cond_a0

    .line 2936
    const/4 v7, 0x2

    .end local v25    # "groupUserActivitySummary":I
    .local v7, "groupUserActivitySummary":I
    goto :goto_ab

    .line 2935
    .end local v7    # "groupUserActivitySummary":I
    .restart local v25    # "groupUserActivitySummary":I
    :cond_a0
    move/from16 v7, v25

    goto :goto_ab

    .line 2921
    .end local v29    # "hasUserActivitySummary":Z
    .end local v31    # "sleepTimeout":J
    .end local v33    # "screenDimDuration":J
    .local v7, "sleepTimeout":J
    .restart local v11    # "screenDimDuration":J
    .restart local v15    # "hasUserActivitySummary":Z
    :cond_a3
    move-wide/from16 v31, v7

    move-wide/from16 v33, v11

    move/from16 v29, v15

    .end local v7    # "sleepTimeout":J
    .end local v11    # "screenDimDuration":J
    .end local v15    # "hasUserActivitySummary":Z
    .restart local v29    # "hasUserActivitySummary":Z
    .restart local v31    # "sleepTimeout":J
    .restart local v33    # "screenDimDuration":J
    move/from16 v7, v25

    .line 2940
    .end local v25    # "groupUserActivitySummary":I
    .local v7, "groupUserActivitySummary":I
    :goto_ab
    if-nez v7, :cond_d1

    .line 2941
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v11

    cmp-long v8, v13, v11

    if-ltz v8, :cond_d1

    .line 2942
    add-long v21, v13, v9

    .line 2943
    cmp-long v8, v1, v21

    if-gez v8, :cond_d1

    .line 2944
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->isPolicyBrightLocked()Z

    move-result v8

    if-nez v8, :cond_d0

    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->isPolicyVrLocked()Z

    move-result v8

    if-eqz v8, :cond_c8

    goto :goto_d0

    .line 2946
    :cond_c8
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->isPolicyDimLocked()Z

    move-result v8

    if-eqz v8, :cond_d1

    .line 2947
    const/4 v7, 0x2

    goto :goto_d1

    .line 2945
    :cond_d0
    :goto_d0
    const/4 v7, 0x1

    .line 2952
    :cond_d1
    :goto_d1
    if-nez v7, :cond_f8

    .line 2953
    cmp-long v8, v31, v19

    if-ltz v8, :cond_f2

    .line 2954
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 2956
    .local v11, "anyUserActivity":J
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v19

    cmp-long v8, v11, v19

    if-ltz v8, :cond_ef

    .line 2957
    add-long v19, v11, v31

    .line 2958
    .end local v21    # "groupNextTimeout":J
    .local v19, "groupNextTimeout":J
    cmp-long v8, v1, v19

    if-gez v8, :cond_ed

    .line 2959
    const/4 v7, 0x4

    move-wide/from16 v21, v19

    goto :goto_ef

    .line 2958
    :cond_ed
    move-wide/from16 v21, v19

    .line 2962
    .end local v11    # "anyUserActivity":J
    .end local v19    # "groupNextTimeout":J
    .restart local v21    # "groupNextTimeout":J
    :cond_ef
    :goto_ef
    move-wide/from16 v11, v21

    goto :goto_fa

    .line 2963
    :cond_f2
    const/4 v7, 0x4

    .line 2964
    const-wide/16 v21, -0x1

    move-wide/from16 v11, v21

    goto :goto_fa

    .line 2952
    :cond_f8
    move-wide/from16 v11, v21

    .line 2968
    .end local v21    # "groupNextTimeout":J
    .local v11, "groupNextTimeout":J
    :goto_fa
    const/4 v8, 0x4

    const-wide/16 v19, -0x1

    if-eq v7, v8, :cond_118

    if-eqz v3, :cond_118

    .line 2970
    and-int/lit8 v8, v7, 0x3

    if-eqz v8, :cond_111

    .line 2973
    move v8, v3

    move-wide/from16 v35, v4

    .end local v3    # "userInactiveOverride":Z
    .end local v4    # "lastUserActivityTime":J
    .local v8, "userInactiveOverride":Z
    .local v35, "lastUserActivityTime":J
    iget-wide v3, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    cmp-long v3, v3, v19

    if-nez v3, :cond_114

    .line 2975
    iput-wide v11, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    goto :goto_114

    .line 2970
    .end local v8    # "userInactiveOverride":Z
    .end local v35    # "lastUserActivityTime":J
    .restart local v3    # "userInactiveOverride":Z
    .restart local v4    # "lastUserActivityTime":J
    :cond_111
    move v8, v3

    move-wide/from16 v35, v4

    .line 2978
    .end local v3    # "userInactiveOverride":Z
    .end local v4    # "lastUserActivityTime":J
    .restart local v8    # "userInactiveOverride":Z
    .restart local v35    # "lastUserActivityTime":J
    :cond_114
    :goto_114
    const/4 v7, 0x4

    .line 2979
    const-wide/16 v11, -0x1

    goto :goto_11b

    .line 2968
    .end local v8    # "userInactiveOverride":Z
    .end local v35    # "lastUserActivityTime":J
    .restart local v3    # "userInactiveOverride":Z
    .restart local v4    # "lastUserActivityTime":J
    :cond_118
    move v8, v3

    move-wide/from16 v35, v4

    .line 2982
    .end local v3    # "userInactiveOverride":Z
    .end local v4    # "lastUserActivityTime":J
    .restart local v8    # "userInactiveOverride":Z
    .restart local v35    # "lastUserActivityTime":J
    :goto_11b
    and-int/lit8 v3, v7, 0x1

    if-eqz v3, :cond_133

    .line 2983
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_130

    .line 2985
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    move-wide/from16 v4, v33

    .end local v33    # "screenDimDuration":J
    .local v4, "screenDimDuration":J
    invoke-virtual {v3, v11, v12, v4, v5}, Lcom/android/server/power/AttentionDetector;->updateUserActivity(JJ)J

    move-result-wide v11

    goto :goto_135

    .line 2983
    .end local v4    # "screenDimDuration":J
    .restart local v33    # "screenDimDuration":J
    :cond_130
    move-wide/from16 v4, v33

    .end local v33    # "screenDimDuration":J
    .restart local v4    # "screenDimDuration":J
    goto :goto_135

    .line 2982
    .end local v4    # "screenDimDuration":J
    .restart local v33    # "screenDimDuration":J
    :cond_133
    move-wide/from16 v4, v33

    .line 2989
    .end local v33    # "screenDimDuration":J
    .restart local v4    # "screenDimDuration":J
    :goto_135
    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z

    move-result v3

    if-eqz v3, :cond_13f

    .line 2990
    const/4 v3, 0x0

    .line 2991
    .end local v7    # "groupUserActivitySummary":I
    .local v3, "groupUserActivitySummary":I
    const-wide/16 v11, -0x1

    goto :goto_140

    .line 2989
    .end local v3    # "groupUserActivitySummary":I
    .restart local v7    # "groupUserActivitySummary":I
    :cond_13f
    move v3, v7

    .line 2994
    .end local v7    # "groupUserActivitySummary":I
    .restart local v3    # "groupUserActivitySummary":I
    :goto_140
    if-eqz v3, :cond_144

    const/4 v7, 0x1

    goto :goto_146

    :cond_144
    move/from16 v7, v24

    :goto_146
    or-int v7, v29, v7

    .line 2996
    .end local v29    # "hasUserActivitySummary":Z
    .local v7, "hasUserActivitySummary":Z
    cmp-long v15, v27, v19

    if-nez v15, :cond_151

    .line 2997
    move-wide/from16 v19, v11

    move-wide/from16 v1, v19

    .end local v27    # "nextTimeout":J
    .local v19, "nextTimeout":J
    goto :goto_15e

    .line 2998
    .end local v19    # "nextTimeout":J
    .restart local v27    # "nextTimeout":J
    :cond_151
    cmp-long v15, v11, v19

    if-eqz v15, :cond_15c

    .line 2999
    move-wide/from16 v1, v27

    .end local v27    # "nextTimeout":J
    .local v1, "nextTimeout":J
    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_15e

    .line 2998
    .end local v1    # "nextTimeout":J
    .restart local v27    # "nextTimeout":J
    :cond_15c
    move-wide/from16 v1, v27

    .line 3002
    .end local v27    # "nextTimeout":J
    .restart local v1    # "nextTimeout":J
    :goto_15e
    iget-object v15, v0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    invoke-virtual {v15, v6}, Lcom/android/server/power/PowerManagerServiceStub;->isSubScreenDeviceDisplayGroup(Lcom/android/server/power/PowerGroup;)Z

    move-result v15

    if-eqz v15, :cond_176

    iget-object v15, v0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    .line 3003
    invoke-virtual {v15}, Lcom/android/server/power/PowerManagerServiceStub;->shouldAlwaysWakeUpSecondaryDisplay()Z

    move-result v15

    if-eqz v15, :cond_176

    .line 3004
    const/4 v3, 0x1

    move-wide v13, v1

    move v15, v7

    move-wide/from16 v21, v11

    move-wide v11, v4

    move v5, v3

    goto :goto_187

    .line 3009
    .end local v13    # "lastUserActivityTimeNoChangeLights":J
    .end local v35    # "lastUserActivityTime":J
    :cond_176
    move-wide v13, v1

    move v15, v7

    move-wide/from16 v21, v11

    move-wide v11, v4

    move v5, v3

    goto :goto_187

    .line 2912
    .end local v1    # "nextTimeout":J
    .end local v8    # "userInactiveOverride":Z
    .end local v26    # "idx":I
    .end local v31    # "sleepTimeout":J
    .local v3, "userInactiveOverride":Z
    .local v4, "idx":I
    .restart local v5    # "groupUserActivitySummary":I
    .local v7, "sleepTimeout":J
    .local v11, "screenDimDuration":J
    .local v13, "nextTimeout":J
    .restart local v15    # "hasUserActivitySummary":Z
    .restart local v21    # "groupNextTimeout":J
    :cond_17d
    move/from16 v26, v4

    move/from16 v25, v5

    move-wide/from16 v31, v7

    move-wide v1, v13

    move/from16 v29, v15

    move v8, v3

    .line 3009
    .end local v3    # "userInactiveOverride":Z
    .end local v4    # "idx":I
    .end local v7    # "sleepTimeout":J
    .restart local v8    # "userInactiveOverride":Z
    .restart local v26    # "idx":I
    .restart local v31    # "sleepTimeout":J
    :goto_187
    invoke-virtual {v6, v5}, Lcom/android/server/power/PowerGroup;->setUserActivitySummaryLocked(I)V

    .line 3012
    const/4 v1, 0x2

    if-ne v5, v1, :cond_18f

    const/16 v24, 0x1

    :cond_18f
    move/from16 v1, v24

    .line 3013
    .local v1, "isDimming":Z
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    invoke-virtual {v2, v1}, Lcom/android/server/power/PowerManagerServiceStub;->setPickUpSensorEnable(Z)V

    .line 3015
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v2, :cond_1e1

    .line 3016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUserActivitySummaryLocked: groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mWakefulness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3017
    invoke-static/range {v23 .. v23}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mUserActivitySummary=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3018
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nextTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3020
    invoke-static/range {v21 .. v22}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3016
    const-string v3, "PowerManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    .end local v1    # "isDimming":Z
    .end local v5    # "groupUserActivitySummary":I
    .end local v6    # "powerGroup":Lcom/android/server/power/PowerGroup;
    .end local v21    # "groupNextTimeout":J
    .end local v23    # "wakefulness":I
    :cond_1e1
    add-int/lit8 v4, v26, 0x1

    move-wide/from16 v1, p1

    move v3, v8

    move-wide/from16 v5, v17

    move-wide/from16 v7, v31

    .end local v26    # "idx":I
    .restart local v4    # "idx":I
    goto/16 :goto_30

    .end local v8    # "userInactiveOverride":Z
    .end local v31    # "sleepTimeout":J
    .restart local v3    # "userInactiveOverride":Z
    .restart local v7    # "sleepTimeout":J
    :cond_1ec
    move/from16 v26, v4

    move-wide/from16 v31, v7

    move-wide v1, v13

    move/from16 v29, v15

    move v8, v3

    .line 3024
    .end local v3    # "userInactiveOverride":Z
    .end local v4    # "idx":I
    .end local v7    # "sleepTimeout":J
    .end local v13    # "nextTimeout":J
    .end local v15    # "hasUserActivitySummary":Z
    .local v1, "nextTimeout":J
    .restart local v8    # "userInactiveOverride":Z
    .restart local v29    # "hasUserActivitySummary":Z
    .restart local v31    # "sleepTimeout":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/power/PowerManagerService;->getNextProfileTimeoutLocked(J)J

    move-result-wide v3

    .line 3025
    .local v3, "nextProfileTimeout":J
    cmp-long v5, v3, v19

    if-lez v5, :cond_201

    .line 3026
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    .end local v1    # "nextTimeout":J
    .restart local v13    # "nextTimeout":J
    goto :goto_202

    .line 3025
    .end local v13    # "nextTimeout":J
    .restart local v1    # "nextTimeout":J
    :cond_201
    move-wide v13, v1

    .line 3029
    .end local v1    # "nextTimeout":J
    .restart local v13    # "nextTimeout":J
    :goto_202
    if-eqz v29, :cond_20b

    cmp-long v1, v13, v19

    if-ltz v1, :cond_20b

    .line 3030
    invoke-direct {v0, v13, v14}, Lcom/android/server/power/PowerManagerService;->scheduleUserInactivityTimeout(J)V

    .line 3032
    :cond_20b
    return-void
.end method

.method private updateWakeLockCallbackInternal(Landroid/os/IBinder;Landroid/os/IWakeLockCallback;I)V
    .registers 21
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/os/IWakeLockCallback;
    .param p3, "callingUid"    # I

    .line 1813
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    iget-object v13, v11, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1814
    :try_start_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 1815
    .local v0, "index":I
    if-gez v0, :cond_5e

    .line 1816
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_34

    .line 1817
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWakeLockCallbackInternal: lock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " [not found]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :cond_34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wake lock not active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_c7

    move-object/from16 v14, p1

    :try_start_43
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_5b

    move/from16 v15, p3

    :try_start_4f
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/power/PowerManagerService;
    .end local p1    # "lock":Landroid/os/IBinder;
    .end local p2    # "callback":Landroid/os/IWakeLockCallback;
    .end local p3    # "callingUid":I
    throw v1

    .line 1836
    .end local v0    # "index":I
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService;
    .restart local p1    # "lock":Landroid/os/IBinder;
    .restart local p2    # "callback":Landroid/os/IWakeLockCallback;
    .restart local p3    # "callingUid":I
    :catchall_5b
    move-exception v0

    goto/16 :goto_ca

    .line 1824
    .restart local v0    # "index":I
    :cond_5e
    move-object/from16 v14, p1

    move/from16 v15, p3

    iget-object v1, v11, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object v10, v1

    .line 1825
    .local v10, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_9e

    .line 1826
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWakeLockCallbackInternal: lock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_9e
    iget-object v1, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    invoke-static {v12, v1}, Lcom/android/server/power/PowerManagerService;->isSameCallback(Landroid/os/IWakeLockCallback;Landroid/os/IWakeLockCallback;)Z

    move-result v1

    if-nez v1, :cond_c2

    .line 1831
    iget v3, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v4, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v6, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v8, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v9, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v10

    move/from16 v16, v0

    move-object v0, v10

    .end local v10    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .local v0, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .local v16, "index":I
    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    .line 1834
    iput-object v12, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    goto :goto_c5

    .line 1830
    .end local v16    # "index":I
    .local v0, "index":I
    .restart local v10    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_c2
    move/from16 v16, v0

    move-object v0, v10

    .line 1836
    .end local v0    # "index":I
    .end local v10    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :goto_c5
    monitor-exit v13

    .line 1837
    return-void

    .line 1836
    :catchall_c7
    move-exception v0

    move-object/from16 v14, p1

    :goto_ca
    move/from16 v15, p3

    :goto_cc
    monitor-exit v13
    :try_end_cd
    .catchall {:try_start_4f .. :try_end_cd} :catchall_ce

    throw v0

    :catchall_ce
    move-exception v0

    goto :goto_cc
.end method

.method private updateWakeLockDisabledStatesLocked()V
    .registers 8

    .line 4216
    const/4 v0, 0x0

    .line 4217
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4218
    .local v1, "numWakeLocks":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    const/4 v3, 0x1

    if-ge v2, v1, :cond_30

    .line 4219
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4220
    .local v4, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    if-ne v5, v3, :cond_2d

    .line 4222
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 4223
    const/4 v0, 0x1

    .line 4224
    iget-boolean v3, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v3, :cond_2a

    .line 4226
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_2d

    .line 4228
    :cond_2a
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 4218
    .end local v4    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4233
    .end local v2    # "i":I
    :cond_30
    if-eqz v0, :cond_3a

    .line 4234
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4235
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4237
    :cond_3a
    return-void
.end method

.method private updateWakeLockSummaryLocked(I)V
    .registers 13
    .param p1, "dirty"    # I

    .line 2667
    const v0, 0x10003

    and-int/2addr v0, p1

    if-eqz v0, :cond_12d

    .line 2670
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2672
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2673
    .local v1, "numProfiles":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_1f

    .line 2674
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iput v0, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    .line 2673
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2677
    .end local v2    # "i":I
    :cond_1f
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_20
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 2678
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v3, v0}, Lcom/android/server/power/PowerGroup;->setWakeLockSummaryLocked(I)V

    .line 2677
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 2681
    .end local v2    # "idx":I
    :cond_36
    const/4 v0, 0x0

    .line 2682
    .local v0, "invalidGroupWakeLockSummary":I
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2683
    .local v2, "numWakeLocks":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3e
    if-ge v3, v2, :cond_a5

    .line 2684
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2685
    .local v4, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService$WakeLock;->getPowerGroupId()Ljava/lang/Integer;

    move-result-object v5

    .line 2687
    .local v5, "groupId":Ljava/lang/Integer;
    if-eqz v5, :cond_a2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_62

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 2688
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->contains(I)Z

    move-result v6

    if-nez v6, :cond_62

    .line 2689
    goto :goto_a2

    .line 2692
    :cond_62
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerGroup;

    .line 2693
    .local v6, "powerGroup":Lcom/android/server/power/PowerGroup;
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->getWakeLockSummaryFlags(Lcom/android/server/power/PowerManagerService$WakeLock;)I

    move-result v8

    .line 2694
    .local v8, "wakeLockFlags":I
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/2addr v9, v8

    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2696
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v7, :cond_86

    .line 2697
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v7

    .line 2698
    .local v7, "wakeLockSummary":I
    or-int/2addr v7, v8

    .line 2699
    invoke-virtual {v6, v7}, Lcom/android/server/power/PowerGroup;->setWakeLockSummaryLocked(I)V

    .line 2700
    .end local v7    # "wakeLockSummary":I
    goto :goto_87

    .line 2701
    :cond_86
    or-int/2addr v0, v8

    .line 2704
    :goto_87
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_88
    if-ge v7, v1, :cond_a2

    .line 2705
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2706
    .local v9, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    iget v10, v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-direct {p0, v4, v10}, Lcom/android/server/power/PowerManagerService;->wakeLockAffectsUser(Lcom/android/server/power/PowerManagerService$WakeLock;I)Z

    move-result v10

    if-eqz v10, :cond_9f

    .line 2707
    iget v10, v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    or-int/2addr v10, v8

    iput v10, v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    .line 2704
    .end local v9    # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    :cond_9f
    add-int/lit8 v7, v7, 0x1

    goto :goto_88

    .line 2683
    .end local v4    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v5    # "groupId":Ljava/lang/Integer;
    .end local v6    # "powerGroup":Lcom/android/server/power/PowerGroup;
    .end local v7    # "j":I
    .end local v8    # "wakeLockFlags":I
    :cond_a2
    :goto_a2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 2712
    .end local v3    # "i":I
    :cond_a5
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_a6
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_d2

    .line 2713
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerGroup;

    .line 2714
    .local v4, "powerGroup":Lcom/android/server/power/PowerGroup;
    invoke-virtual {v4}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v5

    .line 2715
    invoke-virtual {v4}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v6

    or-int/2addr v6, v0

    .line 2714
    invoke-direct {p0, v5, v6}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummary(II)I

    move-result v5

    .line 2718
    .local v5, "wakeLockSummary":I
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    invoke-virtual {v6, v4}, Lcom/android/server/power/PowerManagerServiceStub;->isSubScreenDeviceDisplayGroup(Lcom/android/server/power/PowerGroup;)Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 2719
    goto :goto_cf

    .line 2722
    :cond_cc
    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerGroup;->setWakeLockSummaryLocked(I)V

    .line 2712
    .end local v4    # "powerGroup":Lcom/android/server/power/PowerGroup;
    .end local v5    # "wakeLockSummary":I
    :goto_cf
    add-int/lit8 v3, v3, 0x1

    goto :goto_a6

    .line 2725
    .end local v3    # "idx":I
    :cond_d2
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v3

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummary(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2728
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_df
    if-ge v3, v1, :cond_f8

    .line 2729
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2730
    .local v4, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v5

    iget v6, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    invoke-direct {p0, v5, v6}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummary(II)I

    move-result v5

    iput v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    .line 2728
    .end local v4    # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_df

    .line 2734
    .end local v3    # "i":I
    :cond_f8
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v3, :cond_12d

    .line 2735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWakeLockSummaryLocked: mWakefulness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2736
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v4

    invoke-static {v4}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWakeLockSummary=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2737
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2735
    const-string v4, "PowerManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    .end local v0    # "invalidGroupWakeLockSummary":I
    .end local v1    # "numProfiles":I
    .end local v2    # "numWakeLocks":I
    :cond_12d
    return-void
.end method

.method private updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .registers 23
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .line 1784
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    iget-object v13, v11, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1785
    :try_start_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_e0

    .line 1786
    .local v0, "index":I
    if-gez v0, :cond_68

    .line 1787
    :try_start_d
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_61

    if-eqz v1, :cond_38

    .line 1788
    :try_start_11
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWakeLockWorkSourceInternal: lock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " [not found], ws="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_11 .. :try_end_38} :catchall_e0

    .line 1791
    :cond_38
    :try_start_38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wake lock not active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_61

    move-object/from16 v14, p1

    :try_start_47
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_5f

    move/from16 v15, p4

    :try_start_53
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/power/PowerManagerService;
    .end local p1    # "lock":Landroid/os/IBinder;
    .end local p2    # "ws":Landroid/os/WorkSource;
    .end local p3    # "historyTag":Ljava/lang/String;
    .end local p4    # "callingUid":I
    throw v1

    .line 1808
    .end local v0    # "index":I
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService;
    .restart local p1    # "lock":Landroid/os/IBinder;
    .restart local p2    # "ws":Landroid/os/WorkSource;
    .restart local p3    # "historyTag":Ljava/lang/String;
    .restart local p4    # "callingUid":I
    :catchall_5f
    move-exception v0

    goto :goto_64

    :catchall_61
    move-exception v0

    move-object/from16 v14, p1

    :goto_64
    move/from16 v15, p4

    goto/16 :goto_dd

    .line 1795
    .restart local v0    # "index":I
    :cond_68
    move-object/from16 v14, p1

    move/from16 v15, p4

    iget-object v1, v11, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object v10, v1

    .line 1796
    .local v10, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_ac

    .line 1797
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWakeLockWorkSourceInternal: lock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ws="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    :cond_ac
    invoke-virtual {v10, v12}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v1

    if-nez v1, :cond_d5

    .line 1802
    iget v3, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v4, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v6, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v17, v0

    move-object v0, v10

    .end local v10    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .local v0, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .local v17, "index":I
    move-object/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V
    :try_end_cd
    .catchall {:try_start_53 .. :try_end_cd} :catchall_dc

    .line 1805
    move-object/from16 v1, p3

    :try_start_cf
    iput-object v1, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 1806
    invoke-virtual {v0, v12}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    goto :goto_da

    .line 1801
    .end local v17    # "index":I
    .local v0, "index":I
    .restart local v10    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_d5
    move-object/from16 v1, p3

    move/from16 v17, v0

    move-object v0, v10

    .line 1808
    .end local v0    # "index":I
    .end local v10    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :goto_da
    monitor-exit v13

    .line 1809
    return-void

    .line 1808
    :catchall_dc
    move-exception v0

    :goto_dd
    move-object/from16 v1, p3

    goto :goto_e7

    :catchall_e0
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v1, p3

    move/from16 v15, p4

    :goto_e7
    monitor-exit v13
    :try_end_e8
    .catchall {:try_start_cf .. :try_end_e8} :catchall_e9

    throw v0

    :catchall_e9
    move-exception v0

    goto :goto_e7
.end method

.method private updateWakefulnessLocked(I)Z
    .registers 13
    .param p1, "dirty"    # I

    .line 3238
    const/4 v0, 0x0

    .line 3239
    .local v0, "changed":Z
    and-int/lit16 v1, p1, 0x4eb7

    if-nez v1, :cond_6

    .line 3243
    return v0

    .line 3245
    :cond_6
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v8

    .line 3246
    .local v8, "time":J
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_d
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_99

    .line 3247
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/server/power/PowerGroup;

    .line 3248
    .local v10, "powerGroup":Lcom/android/server/power/PowerGroup;
    invoke-virtual {v10}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_95

    .line 3249
    invoke-direct {p0, v10}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 3250
    goto/16 :goto_95

    .line 3252
    :cond_2d
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    const-string v4, "PowerManagerService"

    if-eqz v2, :cond_4e

    .line 3253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateWakefulnessLocked: Bed time for group "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3254
    invoke-virtual {v10}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3253
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    :cond_4e
    invoke-virtual {v10}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v2

    if-nez v2, :cond_63

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    .line 3259
    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerServiceStub;->shouldEnterHangupLocked()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 3260
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerServiceStub;->hangUpNoUpdateLocked(Z)Z

    move-result v0

    goto :goto_95

    .line 3261
    :cond_63
    invoke-direct {p0, v10, v8, v9}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 3263
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v2, :cond_72

    .line 3264
    const-string v2, "Going to sleep now due to long user inactivity"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    :cond_72
    const/16 v6, 0x9

    const/16 v7, 0x3e8

    move-object v2, p0

    move-object v3, v10

    move-wide v4, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    move-result v0

    goto :goto_95

    .line 3268
    :cond_7e
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 3269
    const/16 v2, 0x3e8

    invoke-direct {p0, v10, v8, v9, v2}, Lcom/android/server/power/PowerManagerService;->dreamPowerGroupLocked(Lcom/android/server/power/PowerGroup;JI)Z

    move-result v0

    goto :goto_95

    .line 3271
    :cond_8b
    const/4 v6, 0x2

    const/16 v7, 0x3e8

    move-object v2, p0

    move-object v3, v10

    move-wide v4, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    move-result v0

    .line 3246
    .end local v10    # "powerGroup":Lcom/android/server/power/PowerGroup;
    :cond_95
    :goto_95
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    .line 3275
    .end local v1    # "idx":I
    :cond_99
    return v0
.end method

.method private userActivityFromNative(JIII)V
    .registers 13
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "displayId"    # I
    .param p5, "flags"    # I

    .line 1964
    const/16 v6, 0x3e8

    move-object v0, p0

    move v1, p4

    move-wide v2, p1

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(IJIII)V

    .line 1965
    return-void
.end method

.method private userActivityInternal(IJIII)V
    .registers 20
    .param p1, "displayId"    # I
    .param p2, "eventTime"    # J
    .param p4, "event"    # I
    .param p5, "flags"    # I
    .param p6, "uid"    # I

    .line 1969
    move-object v8, p0

    move v9, p1

    iget-object v10, v8, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1970
    const/4 v0, -0x1

    if-ne v9, v0, :cond_1b

    .line 1971
    move-object v1, p0

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    :try_start_10
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1972
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1974
    :cond_19
    monitor-exit v10

    return-void

    .line 1977
    :cond_1b
    iget-object v1, v8, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    move-object v11, v1

    .line 1978
    .local v11, "displayInfo":Landroid/view/DisplayInfo;
    if-nez v11, :cond_26

    .line 1979
    monitor-exit v10

    return-void

    .line 1981
    :cond_26
    iget v1, v11, Landroid/view/DisplayInfo;->displayGroupId:I

    move v12, v1

    .line 1982
    .local v12, "groupId":I
    if-ne v12, v0, :cond_2d

    .line 1983
    monitor-exit v10

    return-void

    .line 1985
    :cond_2d
    iget-object v0, v8, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/power/PowerGroup;

    move-object v1, p0

    move-wide v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1987
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1989
    .end local v11    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v12    # "groupId":I
    :cond_47
    monitor-exit v10

    .line 1990
    return-void

    .line 1989
    :catchall_49
    move-exception v0

    monitor-exit v10
    :try_end_4b
    .catchall {:try_start_10 .. :try_end_4b} :catchall_49

    throw v0
.end method

.method private userActivityNoUpdateLocked(JIII)Z
    .registers 16
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .line 2006
    const/4 v0, 0x0

    .line 2007
    .local v0, "updatePowerState":Z
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 2008
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/power/PowerGroup;

    move-object v3, p0

    move-wide v5, p1

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2010
    const/4 v0, 0x1

    .line 2007
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2014
    .end local v1    # "idx":I
    :cond_22
    return v0
.end method

.method private userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z
    .registers 16
    .param p1, "powerGroup"    # Lcom/android/server/power/PowerGroup;
    .param p2, "eventTime"    # J
    .param p4, "event"    # I
    .param p5, "flags"    # I
    .param p6, "uid"    # I

    .line 2020
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v0

    .line 2021
    .local v0, "groupId":I
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_4d

    .line 2022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userActivityNoUpdateLocked: groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", eventTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2024
    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2022
    const-string v2, "PowerManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_4d
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getLastSleepTimeLocked()J

    move-result-wide v1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_fa

    .line 2028
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v3

    cmp-long v1, p2, v3

    if-ltz v1, :cond_fa

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_64

    goto/16 :goto_fa

    .line 2032
    :cond_64
    const-wide/32 v3, 0x20000

    const-string/jumbo v1, "userActivity"

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2034
    :try_start_6d
    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    cmp-long v1, p2, v5

    if-lez v1, :cond_78

    .line 2035
    invoke-direct {p0, v2, v2}, Lcom/android/server/power/PowerManagerService;->setPowerBoostInternal(II)V

    .line 2036
    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    .line 2039
    :cond_78
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v5

    invoke-virtual {v1, v5, p4, p6}, Lcom/android/server/power/Notifier;->onUserActivity(III)V

    .line 2040
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/power/AttentionDetector;->onUserActivity(JI)I

    .line 2042
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    if-eqz v1, :cond_90

    .line 2043
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    .line 2044
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 2047
    :cond_90
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerServiceStub;->clearRequestDimmingParamsLocked()V

    .line 2049
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v1

    .line 2050
    .local v1, "wakefulness":I
    if-eqz v1, :cond_f0

    const/4 v5, 0x3

    if-eq v1, v5, :cond_f0

    and-int/lit8 v5, p5, 0x2

    if-eqz v5, :cond_a3

    goto :goto_f0

    .line 2056
    :cond_a3
    invoke-direct {p0, p2, p3}, Lcom/android/server/power/PowerManagerService;->maybeUpdateForegroundProfileLastActivityLocked(J)V

    .line 2058
    and-int/lit8 v5, p5, 0x1

    const/4 v6, 0x1

    if-eqz v5, :cond_cf

    .line 2059
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeNoChangeLightsLocked()J

    move-result-wide v7

    cmp-long v5, p2, v7

    if-lez v5, :cond_eb

    .line 2060
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v7

    cmp-long v5, p2, v7

    if-lez v5, :cond_eb

    .line 2061
    invoke-virtual {p1, p2, p3}, Lcom/android/server/power/PowerGroup;->setLastUserActivityTimeNoChangeLightsLocked(J)V

    .line 2062
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2063
    if-ne p4, v6, :cond_ca

    .line 2064
    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_ca
    .catchall {:try_start_6d .. :try_end_ca} :catchall_f5

    .line 2067
    :cond_ca
    nop

    .line 2080
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2067
    return v6

    .line 2070
    :cond_cf
    :try_start_cf
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v7

    cmp-long v5, p2, v7

    if-lez v5, :cond_eb

    .line 2071
    invoke-virtual {p1, p2, p3}, Lcom/android/server/power/PowerGroup;->setLastUserActivityTimeLocked(J)V

    .line 2072
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2073
    if-ne p4, v6, :cond_e6

    .line 2074
    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_e6
    .catchall {:try_start_cf .. :try_end_e6} :catchall_f5

    .line 2076
    :cond_e6
    nop

    .line 2080
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2076
    return v6

    .line 2080
    .end local v1    # "wakefulness":I
    :cond_eb
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2081
    nop

    .line 2082
    return v2

    .line 2053
    .restart local v1    # "wakefulness":I
    :cond_f0
    :goto_f0
    nop

    .line 2080
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2053
    return v2

    .line 2080
    .end local v1    # "wakefulness":I
    :catchall_f5
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2081
    throw v1

    .line 2029
    :cond_fa
    :goto_fa
    return v2
.end method

.method private wakeLockAffectsUser(Lcom/android/server/power/PowerManagerService$WakeLock;I)Z
    .registers 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "userId"    # I

    .line 2822
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x1

    if-eqz v0, :cond_41

    .line 2823
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_6
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 2824
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v0}, Landroid/os/WorkSource;->getUid(I)I

    move-result v2

    .line 2825
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p2, v3, :cond_1b

    .line 2826
    return v1

    .line 2823
    .end local v2    # "uid":I
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2830
    .end local v0    # "k":I
    :cond_1e
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    .line 2831
    .local v0, "workChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v0, :cond_41

    .line 2832
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_41

    .line 2833
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v3}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v3

    .line 2834
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p2, v4, :cond_3e

    .line 2835
    return v1

    .line 2832
    .end local v3    # "uid":I
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 2840
    .end local v0    # "workChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    .end local v2    # "k":I
    :cond_41
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p2, v0, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    :goto_4b
    return v1
.end method

.method private wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V
    .registers 23
    .param p1, "powerGroup"    # Lcom/android/server/power/PowerGroup;
    .param p2, "eventTime"    # J
    .param p4, "reason"    # I
    .param p5, "details"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "opUid"    # I

    .line 2096
    move-object v0, p0

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_3b

    .line 2097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wakePowerGroupLocked: eventTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v11, p2

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2098
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v13, p6

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2097
    const-string v2, "PowerManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 2096
    :cond_3b
    move-wide/from16 v11, p2

    move/from16 v13, p6

    .line 2100
    :goto_3f
    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    if-nez v1, :cond_70

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_48

    goto :goto_70

    .line 2104
    :cond_48
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceStub;->get()Lcom/android/server/power/PowerManagerServiceStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerServiceStub;->isSubScreenSuperPowerSaveModeOpen()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2105
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v1

    if-nez v1, :cond_59

    .line 2106
    return-void

    .line 2109
    :cond_59
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 2110
    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v10

    .line 2109
    move-object v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/power/PowerGroup;->wakeUpLocked(JILjava/lang/String;ILjava/lang/String;ILcom/android/internal/util/LatencyTracker;)V

    .line 2111
    return-void

    .line 2101
    :cond_70
    :goto_70
    return-void
.end method


# virtual methods
.method checkForLongWakeLocks()V
    .registers 16

    .line 2844
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2845
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    .line 2846
    .local v1, "now":J
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    .line 2847
    const-wide/32 v3, 0xea60

    sub-long v5, v1, v3

    .line 2848
    .local v5, "when":J
    const-wide v7, 0x7fffffffffffffffL

    .line 2849
    .local v7, "nextCheckTime":J
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2850
    .local v9, "numWakeLocks":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1c
    if-ge v10, v9, :cond_4c

    .line 2851
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2852
    .local v11, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v13, 0xffff

    and-int/2addr v12, v13

    const/4 v13, 0x1

    if-ne v12, v13, :cond_49

    .line 2854
    iget-boolean v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v12, :cond_49

    iget-boolean v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-nez v12, :cond_49

    .line 2855
    iget-wide v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    cmp-long v12, v12, v5

    if-gez v12, :cond_41

    .line 2857
    invoke-direct {p0, v11}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_49

    .line 2860
    :cond_41
    iget-wide v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    add-long/2addr v12, v3

    .line 2861
    .local v12, "checkTime":J
    cmp-long v14, v12, v7

    if-gez v14, :cond_49

    .line 2862
    move-wide v7, v12

    .line 2850
    .end local v11    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v12    # "checkTime":J
    :cond_49
    :goto_49
    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    .line 2868
    .end local v10    # "i":I
    :cond_4c
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    .line 2869
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 2870
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, v7, v10

    if-eqz v10, :cond_65

    .line 2871
    iput-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    .line 2872
    invoke-direct {p0, v7, v8}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V

    goto :goto_67

    .line 2874
    :cond_65
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    .line 2876
    .end local v1    # "now":J
    .end local v5    # "when":J
    .end local v7    # "nextCheckTime":J
    .end local v9    # "numWakeLocks":I
    :goto_67
    monitor-exit v0

    .line 2877
    return-void

    .line 2876
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_69

    throw v1
.end method

.method findWakeLockLocked(Landroid/os/IBinder;)Lcom/android/server/power/PowerManagerService$WakeLock;
    .registers 4
    .param p1, "lock"    # Landroid/os/IBinder;

    .line 1853
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 1854
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 1855
    const/4 v1, 0x0

    return-object v1

    .line 1857
    :cond_9
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    return-object v1
.end method

.method finishUidChangesInternal()V
    .registers 4

    .line 4131
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4132
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    .line 4133
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    if-eqz v2, :cond_f

    .line 4134
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4135
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    .line 4137
    :cond_f
    monitor-exit v0

    .line 4138
    return-void

    .line 4137
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method getBinderServiceInstance()Lcom/android/server/power/PowerManagerService$BinderService;
    .registers 2

    .line 6674
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    return-object v0
.end method

.method getDesiredScreenPolicyLocked(I)I
    .registers 9
    .param p1, "groupId"    # I

    .line 3693
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/power/PowerGroup;

    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerGroup;->getDesiredScreenPolicyLocked(ZZZZZ)I

    move-result v0

    return v0
.end method

.method getGlobalWakefulnessLocked()I
    .registers 2

    .line 2283
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessRaw:I

    return v0
.end method

.method getLastShutdownReasonInternal()I
    .registers 9

    .line 6684
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    const-string/jumbo v1, "sys.boot.reason"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/server/power/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6685
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v1, :sswitch_data_66

    :cond_17
    goto :goto_5a

    :sswitch_18
    const-string/jumbo v1, "shutdown,thermal,battery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v3

    goto :goto_5b

    :sswitch_23
    const-string/jumbo v1, "shutdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_5b

    :sswitch_2e
    const-string/jumbo v1, "shutdown,userrequested"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v6

    goto :goto_5b

    :sswitch_39
    const-string/jumbo v1, "reboot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v7

    goto :goto_5b

    :sswitch_44
    const-string/jumbo v1, "shutdown,battery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v4

    goto :goto_5b

    :sswitch_4f
    const-string/jumbo v1, "shutdown,thermal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v5

    goto :goto_5b

    :goto_5a
    const/4 v1, -0x1

    :goto_5b
    packed-switch v1, :pswitch_data_80

    .line 6699
    return v2

    .line 6697
    :pswitch_5f
    const/4 v1, 0x6

    return v1

    .line 6695
    :pswitch_61
    return v3

    .line 6693
    :pswitch_62
    return v4

    .line 6691
    :pswitch_63
    return v5

    .line 6689
    :pswitch_64
    return v6

    .line 6687
    :pswitch_65
    return v7

    :sswitch_data_66
    .sparse-switch
        -0x7e3d61bf -> :sswitch_4f
        -0x418b4b49 -> :sswitch_44
        -0x37ba085b -> :sswitch_39
        -0x32cb60d3 -> :sswitch_2e
        -0xa17f9aa -> :sswitch_23
        0x489a31a2 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_5f
    .end packed-switch
.end method

.method getLocalServiceInstance()Lcom/android/server/power/PowerManagerService$LocalService;
    .registers 2

    .line 6679
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    return-object v0
.end method

.method getWakefulnessLocked(I)I
    .registers 3
    .param p1, "groupId"    # I

    .line 2289
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v0

    return v0
.end method

.method protected goToSleepSecondaryDisplay(Lcom/android/server/power/PowerGroup;JII)V
    .registers 6
    .param p1, "powerGroup"    # Lcom/android/server/power/PowerGroup;
    .param p2, "eventTime"    # J
    .param p4, "reason"    # I
    .param p5, "uid"    # I

    .line 7011
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    .line 7012
    return-void
.end method

.method handleSettingsChangedLocked()V
    .registers 1

    .line 1515
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 1516
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1517
    return-void
.end method

.method isDeviceIdleModeInternal()Z
    .registers 3

    .line 3935
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3936
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    monitor-exit v0

    return v1

    .line 3937
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isLightDeviceIdleModeInternal()Z
    .registers 3

    .line 3941
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3942
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    monitor-exit v0

    return v1

    .line 3943
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public monitor()V
    .registers 3

    .line 4546
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4547
    :try_start_3
    monitor-exit v0

    .line 4548
    return-void

    .line 4547
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 12
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1864
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_23

    .line 1865
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1866
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    .line 1869
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1871
    :cond_23
    return-void
.end method

.method notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 13
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1930
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_27

    .line 1931
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1932
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 1933
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    .line 1936
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1938
    :cond_27
    return-void
.end method

.method public onBootPhase(I)V
    .registers 13
    .param p1, "phase"    # I

    .line 1243
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_8

    .line 1244
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->systemReady()V

    goto :goto_75

    .line 1246
    :cond_8
    const/16 v0, 0x258

    if-ne p1, v0, :cond_10

    .line 1247
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->incrementBootCount()V

    goto :goto_75

    .line 1249
    :cond_10
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_75

    .line 1250
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1253
    :try_start_17
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    invoke-virtual {v1, p1}, Lcom/android/server/power/PowerManagerServiceStub;->setBootPhase(I)V

    .line 1254
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    .line 1255
    .local v3, "now":J
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    .line 1256
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1258
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->onBootCompleted()V

    .line 1259
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1262
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1263
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v1, :cond_57

    .line 1264
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/power/PowerGroup;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 1265
    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v7

    const/16 v9, 0xa

    const/16 v10, 0x3e8

    .line 1264
    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    .line 1270
    :cond_57
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v5, Lcom/android/server/power/PowerManagerService$DeviceStateListener;

    invoke-direct {v5, p0}, Lcom/android/server/power/PowerManagerService$DeviceStateListener;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-virtual {v1, v2, v5}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 1272
    .end local v3    # "now":J
    monitor-exit v0

    goto :goto_75

    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_17 .. :try_end_74} :catchall_72

    throw v1

    .line 1274
    :cond_75
    :goto_75
    return-void
.end method

.method onPowerGroupEventLocked(ILcom/android/server/power/PowerGroup;)V
    .registers 15
    .param p1, "event"    # I
    .param p2, "powerGroup"    # Lcom/android/server/power/PowerGroup;

    .line 2341
    invoke-virtual {p2}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v0

    .line 2342
    .local v0, "groupId":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    .line 2343
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 2345
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v2

    .line 2346
    .local v2, "oldWakefulness":I
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->recalculateGlobalWakefulnessLocked()I

    move-result v3

    .line 2348
    .local v3, "newWakefulness":I
    if-nez p1, :cond_27

    if-ne v3, v1, :cond_27

    .line 2351
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v4}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e8

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    .line 2355
    :cond_27
    if-eq v2, v3, :cond_67

    .line 2357
    const/16 v4, 0xb

    packed-switch v3, :pswitch_data_72

    .line 2369
    :pswitch_2e
    const/4 v1, 0x0

    .local v1, "reason":I
    goto :goto_3f

    .line 2364
    .end local v1    # "reason":I
    :pswitch_30
    if-ne p1, v1, :cond_33

    .line 2365
    goto :goto_35

    .line 2366
    :cond_33
    const/16 v4, 0xc

    :goto_35
    move v1, v4

    .line 2367
    .restart local v1    # "reason":I
    goto :goto_3f

    .line 2359
    .end local v1    # "reason":I
    :pswitch_37
    if-nez p1, :cond_3c

    .line 2360
    const/16 v4, 0xa

    goto :goto_3d

    .line 2361
    :cond_3c
    nop

    :goto_3d
    move v1, v4

    .line 2362
    .restart local v1    # "reason":I
    nop

    .line 2371
    :goto_3f
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v4}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v5

    const/16 v8, 0x3e8

    const/16 v9, 0x3e8

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 2372
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "groupId: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2371
    move-object v4, p0

    move v7, v1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->updateGlobalWakefulnessLocked(JIIILjava/lang/String;Ljava/lang/String;)V

    .line 2374
    .end local v1    # "reason":I
    :cond_67
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/high16 v4, 0x10000

    or-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2375
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2376
    return-void

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_37
        :pswitch_2e
        :pswitch_30
    .end packed-switch
.end method

.method public onStart()V
    .registers 5

    .line 1229
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    const-string/jumbo v1, "power"

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/power/PowerManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1231
    const-class v0, Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1233
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 1234
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 1236
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/ScoutStub;->addScoutMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 1237
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/server/ScoutStub;->addScoutThread(Landroid/os/Handler;)V

    .line 1239
    return-void
.end method

.method onUserActivity()V
    .registers 5

    .line 4445
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4446
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 4447
    invoke-interface {v2}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    .line 4446
    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/PowerGroup;->setLastUserActivityTimeLocked(J)V

    .line 4448
    monitor-exit v0

    .line 4449
    return-void

    .line 4448
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method readConfigurationLocked()V
    .registers 4

    .line 1414
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1416
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x111018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    .line 1418
    const v1, 0x1110190

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    .line 1420
    const v1, 0x11101e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    .line 1422
    const v1, 0x1110021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    .line 1424
    const v1, 0x11101d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 1426
    const v1, 0x10e0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    .line 1428
    const v1, 0x10e0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    .line 1430
    const v1, 0x1110125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    .line 1432
    const v1, 0x1110122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 1434
    const v1, 0x1110121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 1436
    const v1, 0x1110120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    .line 1438
    const v1, 0x1110123

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    .line 1440
    const v1, 0x10e0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    .line 1442
    const v1, 0x10e0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    .line 1444
    const v1, 0x10e0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    .line 1446
    const v1, 0x111011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    .line 1448
    const v1, 0x10e00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    .line 1450
    const v1, 0x10e00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    .line 1452
    const v1, 0x1130002

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    .line 1454
    const v1, 0x11101c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    .line 1456
    return-void
.end method

.method recalculateGlobalWakefulnessLocked()I
    .registers 6

    .line 2306
    const/4 v0, 0x0

    .line 2307
    .local v0, "deviceWakefulness":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 2313
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v2

    if-eqz v2, :cond_19

    .line 2314
    goto :goto_3f

    .line 2317
    :cond_19
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v2

    .line 2318
    .local v2, "wakefulness":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    .line 2319
    return v3

    .line 2320
    :cond_29
    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v2, v3, :cond_33

    if-eqz v0, :cond_31

    if-ne v0, v4, :cond_33

    .line 2323
    :cond_31
    const/4 v0, 0x2

    goto :goto_3f

    .line 2324
    :cond_33
    if-ne v2, v4, :cond_39

    if-nez v0, :cond_39

    .line 2326
    const/4 v0, 0x3

    goto :goto_3f

    .line 2329
    :cond_39
    const/4 v3, 0x4

    if-ne v2, v3, :cond_3f

    if-nez v0, :cond_3f

    .line 2331
    const/4 v0, 0x4

    .line 2307
    .end local v2    # "wakefulness":I
    :cond_3f
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2336
    .end local v1    # "i":I
    :cond_42
    return v0
.end method

.method setDeviceIdleModeInternal(Z)Z
    .registers 7
    .param p1, "enabled"    # Z

    .line 4061
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4062
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    const/4 v2, 0x0

    if-ne v1, p1, :cond_a

    .line 4063
    monitor-exit v0

    return v2

    .line 4065
    :cond_a
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    .line 4066
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4067
    const/16 v1, 0x8

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1a

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    if-eqz v3, :cond_1b

    :cond_1a
    move v2, v4

    :cond_1b
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    .line 4068
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_2f

    .line 4069
    if-eqz p1, :cond_28

    .line 4070
    const-string/jumbo v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    goto :goto_2e

    .line 4072
    :cond_28
    const-string/jumbo v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    .line 4074
    :goto_2e
    return v4

    .line 4068
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method setDeviceIdleTempWhitelistInternal([I)V
    .registers 4
    .param p1, "appids"    # [I

    .line 4098
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4099
    :try_start_3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 4100
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_c

    .line 4101
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4103
    :cond_c
    monitor-exit v0

    .line 4104
    return-void

    .line 4103
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method setDeviceIdleWhitelistInternal([I)V
    .registers 4
    .param p1, "appids"    # [I

    .line 4089
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4090
    :try_start_3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 4091
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_c

    .line 4092
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4094
    :cond_c
    monitor-exit v0

    .line 4095
    return-void

    .line 4094
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method setLightDeviceIdleModeInternal(Z)Z
    .registers 7
    .param p1, "enabled"    # Z

    .line 4078
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4079
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    const/4 v2, 0x0

    if-eq v1, p1, :cond_19

    .line 4080
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    .line 4081
    const/16 v1, 0x8

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    const/4 v4, 0x1

    if-nez v3, :cond_13

    if-eqz p1, :cond_14

    :cond_13
    move v2, v4

    :cond_14
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    .line 4082
    monitor-exit v0

    return v4

    .line 4084
    :cond_19
    monitor-exit v0

    return v2

    .line 4085
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method setLowPowerStandbyActiveInternal(Z)V
    .registers 4
    .param p1, "active"    # Z

    .line 4116
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4117
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    if-eq v1, p1, :cond_c

    .line 4118
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    .line 4119
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4121
    :cond_c
    monitor-exit v0

    .line 4122
    return-void

    .line 4121
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method setLowPowerStandbyAllowlistInternal([I)V
    .registers 4
    .param p1, "appids"    # [I

    .line 4107
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4108
    :try_start_3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyAllowlist:[I

    .line 4109
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    if-eqz v1, :cond_c

    .line 4110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4112
    :cond_c
    monitor-exit v0

    .line 4113
    return-void

    .line 4112
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method setMaximumScreenOffTimeoutFromDeviceAdminInternal(IJ)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "timeMs"    # J

    .line 4034
    if-gez p1, :cond_1b

    .line 4035
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to set screen off timeout for invalid user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    return-void

    .line 4038
    :cond_1b
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4040
    if-nez p1, :cond_25

    .line 4041
    :try_start_20
    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    goto :goto_61

    .line 4057
    :catchall_23
    move-exception v1

    goto :goto_6c

    .line 4042
    :cond_25
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p2, v1

    if-eqz v1, :cond_5c

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_35

    goto :goto_5c

    .line 4045
    :cond_35
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 4046
    .local v1, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    if-eqz v1, :cond_42

    .line 4047
    iput-wide p2, v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    goto :goto_61

    .line 4049
    :cond_42
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 4050
    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v7

    move-object v3, v9

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService$ProfilePowerState;-><init>(IJJ)V

    .line 4049
    invoke-virtual {v2, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4052
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_61

    .line 4043
    .end local v1    # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    :cond_5c
    :goto_5c
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 4055
    :goto_61
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4056
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4057
    monitor-exit v0

    .line 4058
    return-void

    .line 4057
    :goto_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_20 .. :try_end_6d} :catchall_23

    throw v1
.end method

.method setStayOnSettingInternal(I)V
    .registers 4
    .param p1, "val"    # I

    .line 4029
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4031
    return-void
.end method

.method setVrModeEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 4419
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    .line 4420
    return-void
.end method

.method setWakeLockDirtyLocked()V
    .registers 2

    .line 3548
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3549
    return-void
.end method

.method setWakefulnessLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V
    .registers 22
    .param p1, "groupId"    # I
    .param p2, "wakefulness"    # I
    .param p3, "eventTime"    # J
    .param p5, "uid"    # I
    .param p6, "reason"    # I
    .param p7, "opUid"    # I
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "details"    # Ljava/lang/String;

    .line 2158
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    move v2, p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/power/PowerGroup;

    move v4, p2

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z

    .line 2160
    return-void
.end method

.method startUidChangesInternal()V
    .registers 3

    .line 4125
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4126
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    .line 4127
    monitor-exit v0

    .line 4128
    return-void

    .line 4127
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method uidActiveInternal(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 4188
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4189
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 4190
    .local v1, "state":Lcom/android/server/power/PowerManagerService$UidState;
    if-nez v1, :cond_1c

    .line 4191
    new-instance v2, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v2, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    move-object v1, v2

    .line 4192
    const/16 v2, 0x13

    iput v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 4193
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4195
    :cond_1c
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 4196
    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v2, :cond_26

    .line 4197
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 4199
    .end local v1    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_26
    monitor-exit v0

    .line 4200
    return-void

    .line 4199
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method uidGoneInternal(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 4173
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4174
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 4175
    .local v1, "index":I
    if-ltz v1, :cond_2e

    .line 4176
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$UidState;

    .line 4177
    .local v2, "state":Lcom/android/server/power/PowerManagerService$UidState;
    const/16 v3, 0x14

    iput v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 4178
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 4179
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4180
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-nez v3, :cond_27

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    if-eqz v3, :cond_2e

    :cond_27
    iget v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v3, :cond_2e

    .line 4181
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 4184
    .end local v1    # "index":I
    .end local v2    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_2e
    monitor-exit v0

    .line 4185
    return-void

    .line 4184
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method uidIdleInternal(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 4203
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4204
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 4205
    .local v1, "state":Lcom/android/server/power/PowerManagerService$UidState;
    if-eqz v1, :cond_17

    .line 4206
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 4207
    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v2, :cond_17

    .line 4208
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 4211
    .end local v1    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_17
    monitor-exit v0

    .line 4212
    return-void

    .line 4211
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method updatePowerStateLocked()V
    .registers 9

    .line 2445
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerManagerServiceImpl:Lcom/android/server/power/PowerManagerServiceStub;

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerServiceStub;->adjustDirtyIfNeededLocked(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2446
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v1, :cond_7b

    if-eqz v0, :cond_7b

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUpdatePowerStateInProgress:Z

    if-eqz v0, :cond_15

    goto :goto_7b

    .line 2449
    :cond_15
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 2450
    const-string v0, "PowerManagerService"

    const-string v1, "Power manager lock was not held when calling updatePowerStateLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    :cond_24
    const-wide/32 v0, 0x20000

    const-string/jumbo v2, "updatePowerState"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2454
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUpdatePowerStateInProgress:Z

    .line 2457
    const/4 v2, 0x0

    :try_start_31
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    .line 2458
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    .line 2459
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateScreenBrightnessBoostLocked(I)V

    .line 2464
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    .line 2465
    .local v3, "now":J
    const/4 v5, 0x0

    .line 2467
    .local v5, "dirtyPhase2":I
    :goto_47
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2468
    .local v6, "dirtyPhase1":I
    or-int/2addr v5, v6

    .line 2469
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2471
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    .line 2472
    invoke-direct {p0, v3, v4, v6}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 2473
    invoke-direct {p0, v3, v4, v6}, Lcom/android/server/power/PowerManagerService;->updateAttentiveStateLocked(JI)V

    .line 2474
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    move-result v7

    if-nez v7, :cond_73

    .line 2475
    nop

    .line 2480
    .end local v6    # "dirtyPhase1":I
    invoke-direct {p0, v3, v4}, Lcom/android/server/power/PowerManagerService;->updateProfilesLocked(J)V

    .line 2483
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updatePowerGroupsLocked(I)Z

    move-result v6

    .line 2486
    .local v6, "powerGroupsBecameReady":Z
    invoke-direct {p0, v5, v6}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(IZ)V

    .line 2489
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->finishWakefulnessChangeIfNeededLocked()V

    .line 2494
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V
    :try_end_6c
    .catchall {:try_start_31 .. :try_end_6c} :catchall_74

    .line 2496
    .end local v3    # "now":J
    .end local v5    # "dirtyPhase2":I
    .end local v6    # "powerGroupsBecameReady":Z
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2497
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUpdatePowerStateInProgress:Z

    .line 2498
    nop

    .line 2499
    return-void

    .line 2477
    .restart local v3    # "now":J
    .restart local v5    # "dirtyPhase2":I
    :cond_73
    goto :goto_47

    .line 2496
    .end local v3    # "now":J
    .end local v5    # "dirtyPhase2":I
    :catchall_74
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2497
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUpdatePowerStateInProgress:Z

    .line 2498
    throw v3

    .line 2447
    :cond_7b
    :goto_7b
    return-void
.end method

.method updateUidProcStateInternal(II)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 4150
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4151
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 4152
    .local v1, "state":Lcom/android/server/power/PowerManagerService$UidState;
    if-nez v1, :cond_18

    .line 4153
    new-instance v2, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v2, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    move-object v1, v2

    .line 4154
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4156
    :cond_18
    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xb

    if-gt v2, v5, :cond_22

    move v2, v3

    goto :goto_23

    :cond_22
    move v2, v4

    .line 4158
    .local v2, "oldShouldAllow":Z
    :goto_23
    iput p2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 4159
    iget v6, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v6, :cond_43

    .line 4160
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-nez v6, :cond_40

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    if-eqz v6, :cond_32

    goto :goto_40

    .line 4162
    :cond_32
    iget-boolean v6, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v6, :cond_43

    if-gt p2, v5, :cond_39

    goto :goto_3a

    :cond_39
    move v3, v4

    :goto_3a
    if-eq v2, v3, :cond_43

    .line 4166
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    goto :goto_43

    .line 4161
    :cond_40
    :goto_40
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 4169
    .end local v1    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    .end local v2    # "oldShouldAllow":Z
    :cond_43
    :goto_43
    monitor-exit v0

    .line 4170
    return-void

    .line 4169
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public userActivitySecondaryDisplay(IJIII)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "eventTime"    # J
    .param p4, "event"    # I
    .param p5, "flags"    # I
    .param p6, "uid"    # I

    .line 7016
    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(IJIII)V

    .line 7017
    return-void
.end method

.method protected wakeUpSecondaryDisplay(Lcom/android/server/power/PowerGroup;JILjava/lang/String;I)V
    .registers 16
    .param p1, "powerGroup"    # Lcom/android/server/power/PowerGroup;
    .param p2, "eventTime"    # J
    .param p4, "reason"    # I
    .param p5, "detail"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .line 7006
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    .line 7007
    return-void
.end method

.method wasDeviceIdleForInternal(J)Z
    .registers 10
    .param p1, "ms"    # J

    .line 4437
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4438
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v3

    add-long/2addr v3, p1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 4439
    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    monitor-exit v0

    .line 4438
    return v2

    .line 4440
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method
