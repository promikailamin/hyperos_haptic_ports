.class public final Lcom/android/server/power/PowerManagerService;
.super Lcom/android/server/SystemService;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static sQuiescent:Z


# instance fields
.field public mAlwaysOnEnabled:Z

.field public final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public final mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

.field public final mAmbientSuppressionChangedCallback:Lcom/android/server/power/AmbientDisplaySuppressionController$AmbientDisplaySuppressionChangedCallback;

.field public final mAttentionDetector:Lcom/android/server/power/AttentionDetector;

.field public mAttentionLight:Lcom/android/server/lights/LogicalLight;

.field public mAttentiveWarningDurationConfig:J

.field public mBatteryLevel:I

.field public mBatteryLevelLow:Z

.field public mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public final mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

.field public final mBatterySaverSupported:Z

.field public mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

.field public mBootCompleted:Z

.field public final mBootingSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field public mBrightWhenDozingConfig:Z

.field public final mClock:Lcom/android/server/power/PowerManagerService$Clock;

.field public final mConstants:Lcom/android/server/power/PowerManagerService$Constants;

.field public final mContext:Landroid/content/Context;

.field public mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

.field public mDecoupleHalInteractiveModeFromDisplayConfig:Z

.field public final mDeviceConfigProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field public mDeviceIdleMode:Z

.field public mDeviceIdleTempWhitelist:[I

.field public mDeviceIdleWhitelist:[I

.field public mDevicePostured:Z

.field public mDirty:I

.field public mDisableScreenWakeLocksWhileCached:Z

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field public final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field public mDockState:I

.field public mDoubleTapWakeEnabled:Z

.field public mDozeAfterScreenOff:Z

.field public mDozeScreenBrightnessOverrideFromDreamManager:F

.field public mDozeScreenStateOverrideFromDreamManager:I

.field public mDozeScreenStateOverrideReasonFromDreamManager:I

.field public mDozeStartInProgress:Z

.field public mDrawWakeLockOverrideFromSidekick:Z

.field public mDreamManager:Landroid/service/dreams/DreamManagerInternal;

.field public mDreamsActivateOnDockSetting:Z

.field public mDreamsActivateOnSleepSetting:Z

.field public mDreamsActivateWhilePosturedSetting:Z

.field public mDreamsActivatedOnDockByDefaultConfig:Z

.field public mDreamsActivatedOnSleepByDefaultConfig:Z

.field public mDreamsActivatedOnlyWhileWirelessChargingConfig:Z

.field public mDreamsActivatedWhilePosturedByDefaultConfig:Z

.field public mDreamsBatteryLevelDrain:I

.field public mDreamsBatteryLevelDrainCutoffConfig:I

.field public mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

.field public mDreamsBatteryLevelMinimumWhenPoweredConfig:I

.field public mDreamsDisabledByAmbientModeSuppressionConfig:Z

.field public mDreamsEnabledByDefaultConfig:Z

.field public mDreamsEnabledOnBatteryConfig:Z

.field public mDreamsEnabledSetting:Z

.field public mDreamsOnlyWhileWirelessChargingSetting:Z

.field public mDreamsSupportedConfig:Z

.field public mEnhancedDischargePredictionIsPersonalized:Z

.field public mEnhancedDischargeTimeElapsed:J

.field public final mEnhancedDischargeTimeLock:Ljava/lang/Object;

.field public final mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

.field public final mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

.field public mForceDisableWakelocks:Z

.field public mForceSuspendActive:Z

.field public mForegroundProfile:I

.field public mHalAutoSuspendModeEnabled:Z

.field public mHalInteractiveModeEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Lcom/android/server/ServiceThread;

.field public mHoldingBootingSuspendBlocker:Z

.field public mHoldingDisplaySuspendBlocker:Z

.field public mHoldingWakeLockSuspendBlocker:Z

.field public final mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

.field public final mInjector:Lcom/android/server/power/PowerManagerService$Injector;

.field public mInterceptedPowerKeyForProximity:Z

.field mIsFaceDown:Z

.field public mIsPowered:Z

.field public mKeepDreamingWhenUnplugging:Z

.field public mLastEnhancedDischargeTimeUpdatedElapsed:J

.field public mLastFlipTime:J

.field public mLastGlobalSleepReason:I

.field public mLastGlobalSleepTime:J

.field public mLastGlobalSleepTimeRealtime:J

.field public mLastGlobalWakeReason:I

.field public mLastGlobalWakeTime:J

.field public mLastGlobalWakeTimeRealtime:J

.field public mLastInteractivePowerHintTime:J

.field public mLastScreenBrightnessBoostTime:J

.field public mLastWarningAboutUserActivityPermission:J

.field public mLightDeviceIdleMode:Z

.field public mLightsManager:Lcom/android/server/lights/LightsManager;

.field public final mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

.field public final mLock:Ljava/lang/Object;

.field public mLowPowerStandbyActive:Z

.field public mLowPowerStandbyAllowlist:[I

.field public final mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

.field public final mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

.field public mNotifier:Lcom/android/server/power/Notifier;

.field public mNotifyLongDispatched:J

.field public mNotifyLongNextCheck:J

.field public mNotifyLongScheduled:J

.field public mOverriddenTimeout:J

.field public final mPermissionCheckerWrapper:Lcom/android/server/power/PowerManagerService$PermissionCheckerWrapper;

.field public mPlugType:I

.field public mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public final mPowerGroupWakefulnessChangeListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

.field public final mPowerGroups:Landroid/util/SparseArray;

.field public final mPowerPropertiesWrapper:Lcom/android/server/power/PowerManagerService$PowerPropertiesWrapper;

.field public final mProfilePowerState:Landroid/util/SparseArray;

.field public mProximityPositive:Z

.field public mRequestWaitForNegativeProximity:Z

.field public mSandmanScheduled:Z

.field public mScreenBrightnessBoostInProgress:Z

.field public final mScreenBrightnessDefault:F

.field public final mScreenBrightnessDim:F

.field public final mScreenBrightnessMaximum:F

.field public final mScreenBrightnessMinimum:F

.field public final mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

.field public mScreenTimeoutOverridePolicy:Lcom/android/server/power/ScreenTimeoutOverridePolicy;

.field public final mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

.field public mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field public mStayOn:Z

.field public mStayOnWhilePluggedInSetting:I

.field public mSupportsDoubleTapWakeConfig:Z

.field public final mSuspendBlockers:Ljava/util/ArrayList;

.field public mSuspendWhenScreenOffDueToProximityConfig:Z

.field public final mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

.field public mSystemReady:Z

.field public mTheaterModeEnabled:Z

.field public final mUidState:Landroid/util/SparseArray;

.field public mUidsChanged:Z

.field public mUidsChanging:Z

.field public mUpdatePowerStateInProgress:Z

.field public final mUseAutoSuspend:Z

.field public mUseNormalBrightnessForDoze:Z

.field public mUserActivityTimeoutOverrideFromWindowManager:J

.field public mUserId:I

.field public mUserInactiveOverrideFromWindowManager:Z

.field public mWakeLockSummary:I

.field public final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field public final mWakeLocks:Ljava/util/ArrayList;

.field public mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field public mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

.field public mWakeUpWhenPluggedOrUnpluggedSetting:Z

.field public mWakefulnessChanging:Z

.field public mWakefulnessRaw:I

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;


# direct methods
.method public static synthetic $r8$lambda$0JGrQAIQ8EZVc3mZTzxzsJneY2I(Lcom/android/server/power/PowerManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->lambda$systemReady$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4GsS2JKyVK8OBvDP2H2Jr4yhNok(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->lambda$systemReady$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ISKUWRqC06iRZjg7fRWTYaRayo4(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->onFlip(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$tMJINFgOcVIz9J8H8BZsW3MK8Cw(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->onUserAttention()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAmbientDisplayConfiguration(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAmbientDisplaySuppressionController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/AmbientDisplaySuppressionController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatterySaverStateMachine(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatterySaverSupported(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryStats(Lcom/android/server/power/PowerManagerService;)Lcom/android/internal/app/IBatteryStats;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDecoupleHalAutoSuspendModeFromDisplayConfig(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDecoupleHalInteractiveModeFromDisplayConfig(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayManagerInternal(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplaySuspendBlocker(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDockState(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnhancedDischargePredictionIsPersonalized(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnhancedDischargeTimeElapsed(Lcom/android/server/power/PowerManagerService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnhancedDischargeTimeLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFaceDownDetector(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/FaceDownDetector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFeatureFlags(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/feature/PowerManagerFlags;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Injector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsPowered(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastEnhancedDischargeTimeUpdatedElapsed(Lcom/android/server/power/PowerManagerService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastWarningAboutUserActivityPermission(Lcom/android/server/power/PowerManagerService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLowPowerStandbyController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/LowPowerStandbyController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNativeWrapper(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$NativeWrapper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifier(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/Notifier;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerGroupWakefulnessChangeListener(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroupWakefulnessChangeListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenTimeoutOverridePolicy(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/ScreenTimeoutOverridePolicy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutOverridePolicy:Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSuspendBlockers(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemReady(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakeLockSummary(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDockState(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEnhancedDischargePredictionIsPersonalized(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEnhancedDischargeTimeElapsed(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmForegroundProfile(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInterceptedPowerKeyForProximity(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmKeepDreamingWhenUnplugging(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mKeepDreamingWhenUnplugging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastEnhancedDischargeTimeUpdatedElapsed(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastWarningAboutUserActivityPermission(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProximityPositive(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUserId(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWakefulnessChanging(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWindowManagerInternal(Lcom/android/server/power/PowerManagerService;Lcom/android/server/wm/WindowManagerInternal;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-void
.end method

.method public static bridge synthetic -$$Nest$macquireWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V
    .registers 11

    .line 0
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mboostScreenBrightnessInternal(Lcom/android/server/power/PowerManagerService;JI)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->boostScreenBrightnessInternal(JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcrashInternal(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpProto(Lcom/android/server/power/PowerManagerService;Ljava/io/FileDescriptor;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mforceSuspendInternal(Lcom/android/server/power/PowerManagerService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->forceSuspendInternal(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetDisplayGroupId(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->getDisplayGroupId(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetLastGoToSleepInternal(Lcom/android/server/power/PowerManagerService;)Landroid/os/PowerManager$SleepData;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getLastGoToSleepInternal()Landroid/os/PowerManager$SleepData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetLastSleepReasonInternal(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getLastSleepReasonInternal()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetLastWakeupInternal(Lcom/android/server/power/PowerManagerService;)Landroid/os/PowerManager$WakeData;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getLastWakeupInternal()Landroid/os/PowerManager$WakeData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgoToSleepInternal(Lcom/android/server/power/PowerManagerService;Landroid/util/IntArray;JII)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(Landroid/util/IntArray;JII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAttentiveTimeout(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleAttentiveTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleBatteryStateChangedLocked(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSandman(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleSandman(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleScreenBrightnessBoostTimeout(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUserActivityTimeout(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleWakeLockDeath(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minterceptPowerKeyDownInternal(Lcom/android/server/power/PowerManagerService;Landroid/view/KeyEvent;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->interceptPowerKeyDownInternal(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDefaultAdjacentGroupInteractiveLocked(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isDefaultAdjacentGroupInteractiveLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDefaultGroupAdjacent(Lcom/android/server/power/PowerManagerService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->isDefaultGroupAdjacent(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misGloballyInteractiveInternal(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isGloballyInteractiveInternal()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misInteractiveInternal(Lcom/android/server/power/PowerManagerService;II)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misScreenBrightnessBoostedInternal(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBrightnessBoostedInternal()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misWakeLockLevelSupportedInternal(Lcom/android/server/power/PowerManagerService;II)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeUpdateForegroundProfileLastActivityLocked(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->maybeUpdateForegroundProfileLastActivityLocked(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnapInternal(Lcom/android/server/power/PowerManagerService;JIZ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->napInternal(JIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnativeInit(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDreamSuppressionChangedLocked(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->onDreamSuppressionChangedLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreleaseAllOverrideWakeLocks(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->releaseAllOverrideWakeLocks(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreleaseWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleSandmanLocked(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAttentionLightInternal(Lcom/android/server/power/PowerManagerService;ZI)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDevicePosturedInternal(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDevicePosturedInternal(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDozeAfterScreenOffInternal(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDozeAfterScreenOffInternal(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDozeOverrideFromDreamManagerInternal(Lcom/android/server/power/PowerManagerService;IIFZ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(IIFZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDrawWakeLockOverrideFromSidekickInternal(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDrawWakeLockOverrideFromSidekickInternal(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetHalAutoSuspendModeLocked(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetHalInteractiveModeLocked(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLowPowerModeInternal(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setLowPowerModeInternal(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetPowerBoostInternal(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setPowerBoostInternal(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPowerModeInternal(Lcom/android/server/power/PowerManagerService;IZ)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetUserActivityTimeoutOverrideFromWindowManagerInternal(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUserInactiveOverrideFromWindowManagerInternal(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->setUserInactiveOverrideFromWindowManagerInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshutdownOrRebootInternal(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;ZZ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateGlobalWakefulnessLocked(Lcom/android/server/power/PowerManagerService;JIIILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/PowerManagerService;->updateGlobalWakefulnessLocked(JIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSettingsLocked(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateWakeLockCallbackInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/IWakeLockCallback;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->updateWakeLockCallbackInternal(Landroid/os/IBinder;Landroid/os/IWakeLockCallback;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateWakeLockWorkSourceInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$muserActivityInternal(Lcom/android/server/power/PowerManagerService;IJIII)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(IJIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$muserActivityNoUpdateLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JIII)Z
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mvalidateWakeupIsEligible(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->validateWakeupIsEligible(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwakeupDisplayGroupsLocked(Lcom/android/server/power/PowerManagerService;Landroid/util/IntArray;JILjava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/PowerManagerService;->wakeupDisplayGroupsLocked(Landroid/util/IntArray;JILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDATE_FORMAT()Ljava/text/SimpleDateFormat;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smcopyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAcquireSuspendBlocker(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeForceSuspend()Z
    .registers 1

    .line 0
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeForceSuspend()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnativeReleaseSuspendBlocker(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeSetAutoSuspend(Z)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeSetPowerBoost(II)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerBoost(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeSetPowerMode(IZ)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerMode(IZ)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 320
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1220
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$Injector;)V
    .registers 14

    .line 1225
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 365
    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 382
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    .line 385
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 486
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 510
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    .line 625
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsFaceDown:Z

    const-wide/16 v3, 0x0

    .line 627
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastFlipTime:J

    const-wide/16 v3, -0x1

    .line 635
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 640
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 643
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 645
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideReasonFromDreamManager:I

    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 651
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:F

    const-wide/high16 v3, -0x8000000000000000L

    .line 659
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 673
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 676
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 679
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyAllowlist:[I

    .line 683
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    .line 687
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 904
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    .line 4019
    new-instance v3, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 5656
    new-instance v3, Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {v3, p0}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mAmbientSuppressionChangedCallback:Lcom/android/server/power/AmbientDisplaySuppressionController$AmbientDisplaySuppressionChangedCallback;

    .line 1227
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 1228
    new-instance v4, Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-direct {v4, p0, p1}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 1229
    new-instance v4, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v4, p0}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    .line 1230
    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService$Injector;->createNativeWrapper()Lcom/android/server/power/PowerManagerService$NativeWrapper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    .line 1231
    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService$Injector;->createSystemPropertiesWrapper()Lcom/android/server/power/SystemPropertiesWrapper;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    .line 1232
    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService$Injector;->createClock()Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 1233
    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService$Injector;->getFlags()Lcom/android/server/power/feature/PowerManagerFlags;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    .line 1234
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    .line 1236
    new-instance v6, Lcom/android/server/ServiceThread;

    const-string v7, "PowerManagerService"

    const/4 v8, -0x4

    invoke-direct {v6, v7, v8, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 1238
    invoke-virtual {v6}, Lcom/android/server/ServiceThread;->start()V

    .line 1239
    invoke-virtual {v6}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    new-instance v7, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService-IA;)V

    invoke-virtual {p2, v6, v7}, Lcom/android/server/power/PowerManagerService$Injector;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 1241
    new-instance v7, Lcom/android/server/power/PowerManagerService$Constants;

    invoke-direct {v7, p0, v6}, Lcom/android/server/power/PowerManagerService$Constants;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    .line 1242
    invoke-virtual {p2, p1}, Lcom/android/server/power/PowerManagerService$Injector;->createAmbientDisplayConfiguration(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 1244
    invoke-virtual {p2, v3}, Lcom/android/server/power/PowerManagerService$Injector;->createAmbientDisplaySuppressionController(Lcom/android/server/power/AmbientDisplaySuppressionController$AmbientDisplaySuppressionChangedCallback;)Lcom/android/server/power/AmbientDisplaySuppressionController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    .line 1246
    new-instance v3, Lcom/android/server/power/AttentionDetector;

    new-instance v6, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-direct {v3, v6, v1}, Lcom/android/server/power/AttentionDetector;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    .line 1247
    new-instance v3, Lcom/android/server/power/FaceDownDetector;

    new-instance v6, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-direct {v3, v6}, Lcom/android/server/power/FaceDownDetector;-><init>(Ljava/util/function/Consumer;)V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    .line 1248
    new-instance v3, Lcom/android/server/power/ScreenUndimDetector;

    invoke-direct {v3}, Lcom/android/server/power/ScreenUndimDetector;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    .line 1250
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1110043

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    if-eqz v3, :cond_f6

    .line 1253
    invoke-virtual {p2, v1, p1}, Lcom/android/server/power/PowerManagerService$Injector;->createBatterySaverStateMachine(Ljava/lang/Object;Landroid/content/Context;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    move-result-object v3

    goto :goto_f7

    :cond_f6
    move-object v3, v8

    .line 1254
    :goto_f7
    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 1257
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 1256
    invoke-virtual {p2, p1, v3}, Lcom/android/server/power/PowerManagerService$Injector;->createLowPowerStandbyController(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/power/LowPowerStandbyController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    .line 1259
    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService$Injector;->createInattentiveSleepWarningController()Lcom/android/server/power/InattentiveSleepWarningController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    .line 1260
    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService$Injector;->createPermissionCheckerWrapper()Lcom/android/server/power/PowerManagerService$PermissionCheckerWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPermissionCheckerWrapper:Lcom/android/server/power/PowerManagerService$PermissionCheckerWrapper;

    .line 1261
    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService$Injector;->createPowerPropertiesWrapper()Lcom/android/server/power/PowerManagerService$PowerPropertiesWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerPropertiesWrapper:Lcom/android/server/power/PowerManagerService$PowerPropertiesWrapper;

    .line 1262
    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService$Injector;->createDeviceConfigParameterProvider()Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceConfigProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 1264
    new-instance v3, Lcom/android/server/power/ScreenTimeoutConstants;

    invoke-direct {v3}, Lcom/android/server/power/ScreenTimeoutConstants;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 1265
    new-instance v3, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    invoke-direct {v3, p0, v8}, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService-IA;)V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroupWakefulnessChangeListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    .line 1267
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x11102b1

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mUseAutoSuspend:Z

    .line 1274
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1050123

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    .line 1276
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050122

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    .line 1278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050121

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    .line 1280
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x105011e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v8

    const/high16 v9, -0x40000000    # -2.0f

    cmpl-float v10, v3, v9

    if-eqz v10, :cond_178

    cmpl-float v10, v6, v9

    if-eqz v10, :cond_178

    cmpl-float v10, v7, v9

    if-nez v10, :cond_171

    goto :goto_178

    .line 1295
    :cond_171
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    .line 1296
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    .line 1297
    iput v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    goto :goto_1ab

    .line 1286
    :cond_178
    :goto_178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e014c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1285
    invoke-static {v3}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    .line 1289
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e014b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1288
    invoke-static {v3}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    .line 1292
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e014a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1291
    invoke-static {v3}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    :goto_1ab
    cmpl-float v3, v8, v9

    if-nez v3, :cond_1c1

    .line 1301
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x10e0148

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 1300
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDim:F

    goto :goto_1c3

    .line 1304
    :cond_1c1
    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDim:F

    .line 1307
    :goto_1c3
    monitor-enter v1

    .line 1308
    :try_start_1c4
    const-string p1, "PowerManagerService.Booting"

    .line 1309
    invoke-virtual {p2, p0, p1}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mBootingSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 1310
    const-string v3, "PowerManagerService.WakeLocks"

    .line 1311
    invoke-virtual {p2, p0, v3}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 1312
    const-string v3, "PowerManagerService.Display"

    .line 1313
    invoke-virtual {p2, p0, v3}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    if-eqz p1, :cond_1e6

    .line 1315
    invoke-interface {p1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1316
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    goto :goto_1e6

    :catchall_1e4
    move-exception p0

    goto :goto_218

    :cond_1e6
    :goto_1e6
    if-eqz v3, :cond_1ef

    .line 1319
    const-string p1, "holding display"

    invoke-interface {v3, p1}, Lcom/android/server/power/SuspendBlocker;->acquire(Ljava/lang/String;)V

    .line 1320
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 1322
    :cond_1ef
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 1323
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 1325
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessRaw:I

    .line 1326
    const-string/jumbo p1, "ro.boot.quiescent"

    const-string v3, "0"

    invoke-interface {v5, p1, v3}, Lcom/android/server/power/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "1"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 1328
    invoke-virtual {v4, p0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeInit(Lcom/android/server/power/PowerManagerService;)V

    .line 1329
    invoke-virtual {v4, v2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetAutoSuspend(Z)V

    const/4 p0, 0x7

    .line 1330
    invoke-virtual {v4, p0, v0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z

    .line 1331
    invoke-virtual {v4, v2, v2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z

    .line 1332
    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService$Injector;->invalidateIsInteractiveCaches()V

    .line 1333
    monitor-exit v1

    return-void

    :goto_218
    monitor-exit v1
    :try_end_219
    .catchall {:try_start_1c4 .. :try_end_219} :catchall_1e4

    throw p0
.end method

.method public static synthetic access$000(Lcom/android/server/power/PowerManagerService;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static adjustWakeLockSummary(II)I
    .registers 4

    .line 0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    and-int/lit16 p1, p1, -0xc1

    :cond_5
    if-eqz p0, :cond_b

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_13

    :cond_b
    and-int/lit8 v0, p1, -0xf

    if-nez p0, :cond_12

    and-int/lit8 p1, p1, -0x1f

    goto :goto_13

    :cond_12
    move p1, v0

    :cond_13
    :goto_13
    if-eqz p0, :cond_17

    and-int/lit16 p1, p1, -0x201

    :cond_17
    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_1d

    const/16 p1, 0x201

    :cond_1d
    and-int/lit8 v0, p1, 0x6

    const/4 v1, 0x1

    if-eqz v0, :cond_2c

    if-ne p0, v1, :cond_27

    or-int/lit8 p1, p1, 0x21

    goto :goto_2c

    :cond_27
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2c

    or-int/lit8 p1, p1, 0x1

    :cond_2c
    :goto_2c
    and-int/lit16 p0, p1, 0x80

    if-eqz p0, :cond_33

    or-int/lit8 p0, p1, 0x1

    return p0

    :cond_33
    return p1
.end method

.method public static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 2

    if-eqz p0, :cond_8

    .line 5595
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 24

    move-object/from16 v0, p0

    .line 5214
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 5216
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5217
    :try_start_c
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v3, v1}, Lcom/android/server/power/PowerManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 5218
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const-wide v4, 0x10500000002L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5219
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v3

    const-wide v4, 0x10e00000003L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5220
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    const-wide v4, 0x10800000004L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5221
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    const-wide v6, 0x10800000005L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5222
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    const-wide v8, 0x10e00000006L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5223
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    const-wide v8, 0x10500000007L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5224
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrain:I

    const-wide v8, 0x10500000039L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5227
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    const-wide v8, 0x10e00000009L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5228
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    const-wide v8, 0x1080000000aL

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5229
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    const-wide v10, 0x1080000000bL

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5230
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    const-wide v12, 0x1080000000cL

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5231
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    const-wide v12, 0x1080000000dL

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5232
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8e
    .catchall {:try_start_c .. :try_end_8e} :catchall_217

    .line 5233
    :try_start_8e
    iget-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    const-wide v14, 0x10300000034L

    invoke-virtual {v1, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5235
    iget-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    const-wide v14, 0x10300000035L

    invoke-virtual {v1, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5238
    iget-boolean v12, v0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    const-wide v13, 0x10800000036L

    invoke-virtual {v1, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5241
    monitor-exit v3
    :try_end_ad
    .catchall {:try_start_8e .. :try_end_ad} :catchall_5e0

    .line 5242
    :try_start_ad
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    const-wide v12, 0x1080000000eL

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5245
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    const-wide v12, 0x1080000000fL

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v14, 0x10b00000010L

    .line 5249
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 5251
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/16 v16, 0x1

    and-int/lit8 v3, v3, 0x1

    const/16 v17, 0x0

    if-eqz v3, :cond_d7

    move/from16 v3, v16

    goto :goto_d9

    :cond_d7
    move/from16 v3, v17

    :goto_d9
    const-wide v12, 0x10800000001L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5254
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_ea

    move/from16 v3, v16

    goto :goto_ec

    :cond_ea
    move/from16 v3, v17

    :goto_ec
    const-wide v10, 0x10800000002L

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5257
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_fd

    move/from16 v3, v16

    goto :goto_ff

    :cond_fd
    move/from16 v3, v17

    :goto_ff
    const-wide v8, 0x10800000003L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5260
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_110

    move/from16 v3, v16

    goto :goto_112

    :cond_110
    move/from16 v3, v17

    :goto_112
    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5263
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_11e

    move/from16 v3, v16

    goto :goto_120

    :cond_11e
    move/from16 v3, v17

    :goto_120
    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5266
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_12c

    move/from16 v3, v16

    goto :goto_12e

    :cond_12c
    move/from16 v3, v17

    :goto_12e
    const-wide v6, 0x10800000006L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5269
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_13f

    move/from16 v3, v16

    goto :goto_141

    :cond_13f
    move/from16 v3, v17

    :goto_141
    const-wide v6, 0x10800000007L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5272
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_152

    move/from16 v3, v16

    goto :goto_154

    :cond_152
    move/from16 v3, v17

    :goto_154
    const-wide v6, 0x10800000008L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5275
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_165

    move/from16 v3, v16

    goto :goto_167

    :cond_165
    move/from16 v3, v17

    :goto_167
    const-wide v6, 0x10800000009L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5278
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5280
    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide v6, 0x10300000011L

    invoke-virtual {v1, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5281
    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    const-wide v14, 0x10300000012L

    invoke-virtual {v1, v14, v15, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5282
    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    const-wide v14, 0x10300000013L

    invoke-virtual {v1, v14, v15, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move/from16 v3, v17

    .line 5284
    :goto_192
    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_21a

    .line 5285
    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerGroup;

    const-wide v14, 0x20b00000014L

    .line 5286
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 5289
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v7

    const-wide v4, 0x10500000006L

    .line 5288
    invoke-virtual {v1, v4, v5, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5290
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v18, 0x1

    and-long v18, v4, v18

    const-wide/16 v20, 0x0

    cmp-long v7, v18, v20

    if-eqz v7, :cond_1c9

    move/from16 v7, v16

    goto :goto_1cb

    :cond_1c9
    move/from16 v7, v17

    .line 5291
    :goto_1cb
    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide/16 v18, 0x2

    and-long v18, v4, v18

    cmp-long v7, v18, v20

    if-eqz v7, :cond_1d9

    move/from16 v7, v16

    goto :goto_1db

    :cond_1d9
    move/from16 v7, v17

    .line 5293
    :goto_1db
    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide/16 v18, 0x4

    and-long v4, v4, v18

    cmp-long v4, v4, v20

    if-eqz v4, :cond_1e9

    move/from16 v4, v16

    goto :goto_1eb

    :cond_1e9
    move/from16 v4, v17

    .line 5295
    :goto_1eb
    invoke-virtual {v1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5299
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v4

    const-wide v8, 0x10300000004L

    .line 5297
    invoke-virtual {v1, v8, v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5302
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeNoChangeLightsLocked()J

    move-result-wide v4

    const-wide v6, 0x10300000005L

    .line 5300
    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5303
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    const-wide v4, 0x10800000004L

    const-wide v8, 0x10800000003L

    goto/16 :goto_192

    :catchall_217
    move-exception v0

    goto/16 :goto_5e3

    .line 5306
    :cond_21a
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    const-wide v4, 0x10800000015L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5309
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    const-wide v4, 0x10800000016L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5310
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    const-wide v4, 0x10800000018L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5311
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    const-wide v4, 0x10800000019L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5312
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    const-wide v6, 0x1080000001aL

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5314
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    array-length v6, v3

    move/from16 v7, v17

    :goto_251
    if-ge v7, v6, :cond_260

    aget v8, v3, v7

    const-wide v14, 0x2050000001bL

    .line 5315
    invoke-virtual {v1, v14, v15, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_251

    .line 5317
    :cond_260
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    array-length v6, v3

    move/from16 v7, v17

    :goto_265
    if-ge v7, v6, :cond_274

    aget v8, v3, v7

    const-wide v14, 0x2050000001cL

    .line 5318
    invoke-virtual {v1, v14, v15, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_265

    .line 5321
    :cond_274
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    const-wide v6, 0x10800000037L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5324
    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    const-wide v8, 0x1030000001dL

    invoke-virtual {v1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5325
    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    const-wide v8, 0x1030000001eL

    invoke-virtual {v1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5326
    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    const-wide v8, 0x10300000021L

    invoke-virtual {v1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5329
    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    const-wide v8, 0x10300000022L

    invoke-virtual {v1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5332
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    const-wide v6, 0x10800000023L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5335
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    const-wide v6, 0x10800000025L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5338
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    const-wide v6, 0x10800000026L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v6, 0x10b00000027L

    .line 5343
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 5344
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5348
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5352
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const-wide v8, 0x10800000003L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5356
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    const-wide v8, 0x10800000004L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5360
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    const-wide v8, 0x10800000005L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5363
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    const-wide v8, 0x10800000006L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5367
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    const-wide v8, 0x10800000007L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5370
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    const-wide v8, 0x10800000008L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5374
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    const-wide v8, 0x10800000009L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5378
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const-wide v8, 0x1080000000aL

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5382
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    const-wide v8, 0x1080000000bL

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5386
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    const-wide v8, 0x1110000000cL

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5390
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    const-wide v8, 0x1110000000dL

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5394
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    const-wide v8, 0x1110000000eL

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5398
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    const-wide v8, 0x1080000000fL

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5401
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    const-wide v8, 0x10800000010L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5405
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    const-wide v8, 0x10800000011L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5409
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateWhilePosturedSetting:Z

    const-wide v8, 0x10800000028L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5413
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsOnlyWhileWirelessChargingSetting:Z

    const-wide v8, 0x10800000029L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5417
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    const-wide v8, 0x10800000012L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5420
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 5423
    invoke-virtual {v3}, Lcom/android/server/power/ScreenTimeoutConstants;->getMinimumScreenOffTimeoutConfigLocked()J

    move-result-wide v8

    const-wide v14, 0x10500000013L

    .line 5420
    invoke-virtual {v1, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5424
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 5427
    invoke-virtual {v3}, Lcom/android/server/power/ScreenTimeoutConstants;->getMaximumScreenDimDurationConfig()J

    move-result-wide v8

    const-wide v14, 0x10500000014L

    .line 5424
    invoke-virtual {v1, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5428
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 5430
    invoke-virtual {v3}, Lcom/android/server/power/ScreenTimeoutConstants;->getMaximumScreenDimRatioConfig()F

    move-result v3

    const-wide v8, 0x10200000015L

    .line 5428
    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5431
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 5433
    invoke-virtual {v3}, Lcom/android/server/power/ScreenTimeoutConstants;->getScreenOffTimeoutSettingLocked()J

    move-result-wide v8

    const-wide v14, 0x10500000016L

    .line 5431
    invoke-virtual {v1, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5434
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 5436
    invoke-virtual {v3}, Lcom/android/server/power/ScreenTimeoutConstants;->getSleepTimeoutSettingLocked()J

    move-result-wide v8

    const-wide v14, 0x11100000017L

    .line 5434
    invoke-virtual {v1, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5437
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 5439
    invoke-virtual {v3}, Lcom/android/server/power/ScreenTimeoutConstants;->getAttentiveTimeoutSettingLocked()J

    move-result-wide v8

    const-wide v14, 0x11100000025L

    .line 5437
    invoke-virtual {v1, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5440
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 5442
    invoke-virtual {v3}, Lcom/android/server/power/ScreenTimeoutConstants;->getAttentiveTimeoutConfig()I

    move-result v3

    const-wide v8, 0x11100000026L

    .line 5440
    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5443
    iget-wide v8, v0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    const-wide v14, 0x11100000027L

    invoke-virtual {v1, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5447
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 5452
    invoke-virtual {v3}, Lcom/android/server/power/ScreenTimeoutConstants;->getMaximumScreenOffTimeoutFromDeviceAdminLocked()J

    move-result-wide v8

    const-wide/32 v14, 0x7fffffff

    .line 5451
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    const-wide v14, 0x10500000018L

    .line 5447
    invoke-virtual {v1, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5454
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 5458
    invoke-virtual {v3}, Lcom/android/server/power/ScreenTimeoutConstants;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v3

    .line 5454
    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10b0000001aL

    .line 5461
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 5463
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_427

    move/from16 v5, v16

    goto :goto_429

    :cond_427
    move/from16 v5, v17

    :goto_429
    invoke-virtual {v1, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5467
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_435

    move/from16 v5, v16

    goto :goto_437

    :cond_435
    move/from16 v5, v17

    :goto_437
    invoke-virtual {v1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5471
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_448

    move/from16 v5, v16

    :goto_442
    const-wide v8, 0x10800000003L

    goto :goto_44b

    :cond_448
    move/from16 v5, v17

    goto :goto_442

    :goto_44b
    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5476
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_45c

    move/from16 v5, v16

    :goto_456
    const-wide v8, 0x10800000004L

    goto :goto_45f

    :cond_45c
    move/from16 v5, v17

    goto :goto_456

    :goto_45f
    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5481
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5483
    iget-wide v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide v8, 0x1120000001dL

    invoke-virtual {v1, v8, v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5487
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    const-wide v4, 0x1080000001eL

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5491
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    const-wide v4, 0x10e0000001fL

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5495
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    const-wide v4, 0x10800000024L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5499
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:F

    const-wide v4, 0x10200000020L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v3, 0x10b00000021L

    .line 5505
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 5508
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    const-wide v8, 0x10200000004L

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5512
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    const-wide v8, 0x10200000005L

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5516
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    const-wide v8, 0x10200000006L

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5520
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5522
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    const-wide v4, 0x10800000022L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5525
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5527
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    invoke-virtual {v3}, Lcom/android/server/power/ScreenTimeoutConstants;->getAttentiveTimeoutLocked()J

    move-result-wide v3

    .line 5528
    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 5529
    invoke-virtual {v5, v3, v4}, Lcom/android/server/power/ScreenTimeoutConstants;->getSleepTimeoutLocked(J)J

    move-result-wide v5

    .line 5530
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v7

    .line 5531
    invoke-virtual {v0, v7, v8}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v9

    const-wide v11, 0x11100000033L

    .line 5532
    invoke-virtual {v1, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x11100000028L

    .line 5533
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10500000029L

    .line 5534
    invoke-virtual {v1, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x1050000002aL

    .line 5535
    invoke-virtual {v1, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5536
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    const-wide v4, 0x1080000002bL

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5537
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    const-wide v4, 0x1080000002cL

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move/from16 v3, v17

    .line 5539
    :goto_518
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_573

    .line 5540
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$UidState;

    const-wide v5, 0x20b0000002dL

    .line 5541
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 5542
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    const-wide v8, 0x10500000001L

    .line 5543
    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5544
    invoke-static {v7}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v7

    const-wide v8, 0x10900000002L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5545
    iget-boolean v7, v4, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    const-wide v8, 0x10800000003L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5546
    iget v7, v4, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    const-wide v10, 0x10500000004L

    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5547
    iget v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 5548
    invoke-static {v4}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v4

    const-wide v10, 0x10e00000005L

    .line 5547
    invoke-virtual {v1, v10, v11, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5549
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_518

    .line 5552
    :cond_573
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    if-eqz v3, :cond_581

    .line 5553
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    const-wide v4, 0x10b00000032L

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5557
    :cond_581
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const-wide v4, 0x10b0000002eL

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Looper;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5559
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v5, v17

    :goto_597
    if-ge v5, v4, :cond_5aa

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/power/PowerManagerService$WakeLock;

    const-wide v7, 0x20b0000002fL

    .line 5560
    invoke-virtual {v6, v1, v7, v8}, Lcom/android/server/power/PowerManagerService$WakeLock;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_597

    .line 5563
    :cond_5aa
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v5, v17

    :goto_5b2
    if-ge v5, v4, :cond_5c5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/power/SuspendBlocker;

    const-wide v7, 0x20b00000030L

    .line 5564
    invoke-interface {v6, v1, v7, v8}, Lcom/android/server/power/SuspendBlocker;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_5b2

    .line 5567
    :cond_5c5
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 5568
    monitor-exit v2
    :try_end_5c8
    .catchall {:try_start_ad .. :try_end_5c8} :catchall_217

    if-eqz v3, :cond_5d2

    const-wide v4, 0x10b00000031L

    .line 5571
    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/power/WirelessChargerDetector;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5574
    :cond_5d2
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    const-wide v2, 0x10b00000038L

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/LowPowerStandbyController;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5577
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_5e0
    move-exception v0

    .line 5241
    :try_start_5e1
    monitor-exit v3
    :try_end_5e2
    .catchall {:try_start_5e1 .. :try_end_5e2} :catchall_5e0

    :try_start_5e2
    throw v0

    .line 5568
    :goto_5e3
    monitor-exit v2
    :try_end_5e4
    .catchall {:try_start_5e2 .. :try_end_5e4} :catchall_217

    throw v0
.end method

.method public static getFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;
    .registers 4

    .line 1768
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 1772
    :cond_8
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource$WorkChain;

    .line 1773
    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getSize()I

    move-result v2

    if-lez v2, :cond_10

    return-object v0

    :cond_23
    return-object v1
.end method

.method public static isSameCallback(Landroid/os/IWakeLockCallback;Landroid/os/IWakeLockCallback;)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p0, :cond_13

    if-eqz p1, :cond_13

    .line 7908
    invoke-interface {p0}, Landroid/os/IWakeLockCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1}, Landroid/os/IWakeLockCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne p0, p1, :cond_13

    return v0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static isScreenLock(I)Z
    .registers 2

    .line 0
    const v0, 0xffff

    and-int/2addr p0, v0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_11

    const/16 v0, 0xa

    if-eq p0, v0, :cond_11

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 1

    .line 1750
    iget p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->isScreenLock(I)Z

    move-result p0

    return p0
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .registers 5

    .line 4913
    const-string v0, ""

    if-nez p0, :cond_5

    move-object p0, v0

    .line 4921
    :cond_5
    const-string/jumbo v1, "quiescent"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    .line 4922
    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    move-object p0, v0

    goto :goto_28

    .line 4924
    :cond_13
    const-string v2, ",quiescent"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 4925
    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 4927
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    const/4 v3, 0x0

    .line 4926
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 4930
    :cond_28
    :goto_28
    const-string/jumbo v2, "recovery"

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    const-string/jumbo v3, "recovery-update"

    .line 4931
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    :cond_3a
    move-object p0, v2

    .line 4935
    :cond_3b
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v2, :cond_65

    .line 4938
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 4939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4941
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4944
    :cond_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reboot,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sys.powerctl"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x4e20

    .line 4946
    :try_start_7f
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_82
    .catch Ljava/lang/InterruptedException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_8a

    .line 4948
    :catch_83
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 4950
    :goto_8a
    const-string p0, "PowerManagerService"

    const-string v0, "Unexpected return from lowLevelReboot!"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static lowLevelShutdown(Ljava/lang/String;)V
    .registers 3

    if-nez p0, :cond_4

    .line 4900
    const-string p0, ""

    .line 4902
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shutdown,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sys.powerctl"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

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

.method private setDevicePosturedInternal(Z)V
    .registers 4

    .line 4755
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4756
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDevicePostured:Z

    .line 4757
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/high16 v1, 0x20000

    or-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4758
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4759
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method private systemReady()V
    .registers 14

    .line 1408
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    .line 1409
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 1410
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    .line 1411
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1412
    const-class v0, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1413
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 1414
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1415
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1416
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/power/AttentionDetector;->systemReady(Landroid/content/Context;)V

    .line 1418
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 1422
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1423
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v7, "PowerManagerService.Broadcasts"

    .line 1424
    invoke-virtual {v2, p0, v7}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    .line 1426
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    .line 1423
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/power/PowerManagerService$Injector;->createNotifier(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/ScreenUndimDetector;Ljava/util/concurrent/Executor;Lcom/android/server/power/feature/PowerManagerFlags;)Lcom/android/server/power/Notifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 1428
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/power/PowerGroup;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroupWakefulnessChangeListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 1430
    invoke-interface {v4}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    const/4 v11, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v3 .. v11}, Lcom/android/server/power/PowerGroup;-><init>(ILcom/android/server/power/PowerGroup$PowerGroupListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;JLcom/android/server/power/feature/PowerManagerFlags;Z)V

    const/4 v4, 0x0

    .line 1428
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1432
    new-instance v2, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;-><init>(Lcom/android/server/power/PowerManagerService;)V

    .line 1434
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayGroupListener(Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;)V

    .line 1435
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v3, Lcom/android/server/power/PowerManagerService$DisplayListener;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/server/power/PowerManagerService$DisplayListener;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService-IA;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1437
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v2, :cond_c5

    .line 1439
    new-instance v3, Lcom/android/server/power/PowerManagerService$DreamManagerStateListener;

    invoke-direct {v3, p0, v5}, Lcom/android/server/power/PowerManagerService$DreamManagerStateListener;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService-IA;)V

    invoke-virtual {v2, v3}, Landroid/service/dreams/DreamManagerInternal;->registerDreamManagerStateListener(Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V

    goto :goto_c5

    :catchall_c1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_28d

    .line 1442
    :cond_c5
    :goto_c5
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v3, "PowerManagerService.WirelessChargerDetector"

    .line 1443
    invoke-virtual {v2, p0, v3}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 1442
    invoke-virtual {v2, v0, v3, v6}, Lcom/android/server/power/PowerManagerService$Injector;->createWirelessChargerDetector(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)Lcom/android/server/power/WirelessChargerDetector;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 1446
    new-instance v2, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    .line 1448
    const-class v2, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsManager;

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v3, 0x5

    .line 1449
    invoke-virtual {v2, v3}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    .line 1450
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateDeviceConfigLocked()V

    .line 1451
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceConfigProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v6, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-virtual {v2, v3, v6}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1460
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v6, v0}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V

    .line 1464
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->addPowerGroupsForNonDefaultDisplayGroupLocked()V
    :try_end_10c
    .catchall {:try_start_4 .. :try_end_10c} :catchall_c1

    .line 1467
    :try_start_10c
    new-instance v0, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;

    invoke-direct {v0, p0, v5}, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService-IA;)V

    .line 1468
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const-string v3, "PowerManagerService"

    invoke-interface {v2, v0, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_11a
    .catch Landroid/os/RemoteException; {:try_start_10c .. :try_end_11a} :catch_11a
    .catchall {:try_start_10c .. :try_end_11a} :catchall_c1

    .line 1473
    :catch_11a
    :try_start_11a
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    invoke-virtual {v0}, Lcom/android/server/power/LowPowerStandbyController;->systemReady()V

    .line 1476
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    .line 1477
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 1478
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->isEarlyScreenTimeoutDetectorEnabled()Z

    move-result v0

    if-eqz v0, :cond_141

    .line 1479
    new-instance v0, Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 1480
    invoke-virtual {v3}, Lcom/android/server/power/ScreenTimeoutConstants;->getMinimumScreenOffTimeoutConfigLocked()J

    move-result-wide v6

    new-instance v3, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-direct {v0, v2, v6, v7, v3}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;-><init>(Landroid/content/Context;JLcom/android/server/power/ScreenTimeoutOverridePolicy$PolicyCallback;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutOverridePolicy:Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    .line 1487
    :cond_141
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1488
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1489
    monitor-exit v1
    :try_end_14b
    .catchall {:try_start_11a .. :try_end_14b} :catchall_c1

    .line 1491
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1492
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    .line 1494
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    if-eqz v1, :cond_15f

    .line 1495
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->systemReady()V

    .line 1497
    :cond_15f
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/power/FaceDownDetector;->systemReady(Landroid/content/Context;)V

    .line 1498
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/power/ScreenUndimDetector;->systemReady(Landroid/content/Context;)V

    .line 1501
    const-string/jumbo v1, "screensaver_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1504
    const-string/jumbo v1, "screensaver_activate_on_sleep"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1507
    const-string/jumbo v1, "screensaver_activate_on_dock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1510
    const-string/jumbo v1, "screensaver_activate_on_postured"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1513
    const-string/jumbo v1, "screensaver_restrict_to_writeless_charging"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1516
    const-string/jumbo v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1519
    const-string/jumbo v1, "sleep_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1522
    const-string v1, "attentive_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1525
    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1528
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1531
    const-string/jumbo v1, "screen_auto_brightness_adj"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1534
    const-string/jumbo v1, "theater_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1537
    const-string v1, "doze_always_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1540
    const-string v1, "double_tap_to_wake"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1543
    const-string v1, "device_demo_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1546
    const-string/jumbo v1, "wake_when_plugged_or_unplugged"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1551
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1552
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 1553
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1554
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1556
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1557
    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1558
    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1559
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService-IA;)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1561
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1562
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1563
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1565
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1566
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1567
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$DockReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService-IA;)V

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v5, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    .line 1489
    :goto_28d
    :try_start_28d
    monitor-exit v1
    :try_end_28e
    .catchall {:try_start_28d .. :try_end_28e} :catchall_c1

    throw p0
.end method


# virtual methods
.method public final acquireWakeLockInternal(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V
    .registers 26

    move/from16 v3, p2

    move/from16 v5, p8

    .line 1688
    iget-object v13, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    const/4 v0, -0x1

    if-eq v3, v0, :cond_43

    .line 1691
    :try_start_a
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    goto :goto_1a

    :catchall_15
    move-exception v0

    move-object p0, v0

    goto/16 :goto_e1

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-nez v0, :cond_34

    .line 1693
    const-string p0, "PowerManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to acquire wake lock for invalid display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    monitor-exit v13

    return-void

    .line 1695
    :cond_34
    invoke-virtual {v0, v5}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_43

    .line 1696
    :cond_3b
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller does not have access to display"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1707
    :cond_43
    :goto_43
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    const/4 v14, 0x1

    if-ltz v0, :cond_8e

    .line 1710
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$WakeLock;

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v6, p10

    move v4, v5

    move/from16 v5, p9

    .line 1711
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;IILandroid/os/IWakeLockCallback;)Z

    move-result v7

    if-nez v7, :cond_8c

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v9, p10

    move-object v1, v0

    move-object v0, p0

    .line 1713
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    move-object v0, v1

    move/from16 v1, p3

    .line 1715
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V

    :cond_8c
    const/4 v1, 0x0

    goto :goto_cc

    .line 1720
    :cond_8e
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$UidState;

    if-nez v0, :cond_a6

    .line 1722
    new-instance v0, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v0, v5}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    const/16 v1, 0x14

    .line 1723
    iput v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 1724
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a6
    move-object v11, v0

    .line 1726
    iget v0, v11, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/2addr v0, v14

    iput v0, v11, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    .line 1727
    new-instance v0, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v12, p10

    move v9, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v12}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILcom/android/server/power/PowerManagerService$UidState;Landroid/os/IWakeLockCallback;)V

    .line 1729
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1730
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move v1, v14

    .line 1734
    :goto_cc
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1735
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->addFrozenStateChangeCallbacksLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1736
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v2, v14

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1737
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    if-eqz v1, :cond_df

    .line 1744
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1746
    :cond_df
    monitor-exit v13

    return-void

    :goto_e1
    monitor-exit v13
    :try_end_e2
    .catchall {:try_start_a .. :try_end_e2} :catchall_15

    throw p0
.end method

.method public final addFrozenStateChangeCallbacksLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 2

    .line 1907
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {p0}, Lcom/android/server/power/feature/PowerManagerFlags;->isDisableFrozenProcessWakelocksEnabled()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 1909
    :try_start_8
    iget-object p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-interface {p0, p1}, Landroid/os/IBinder;->addFrozenStateChangeCallback(Landroid/os/IBinder$FrozenStateChangeCallback;)V
    :try_end_d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_d} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 1919
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_15
    :cond_15
    return-void
.end method

.method public final addPowerGroupsForNonDefaultDisplayGroupLocked()V
    .registers 16

    .line 4860
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayGroupIds()Landroid/util/IntArray;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x0

    .line 4865
    :goto_a
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_58

    .line 4866
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->get(I)I

    move-result v4

    if-nez v4, :cond_17

    goto :goto_55

    .line 4871
    :cond_17
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 4872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to add already existing group:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PowerManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 4875
    :cond_36
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->isDefaultGroupAdjacent(I)Z

    move-result v14

    .line 4876
    new-instance v3, Lcom/android/server/power/PowerGroup;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroupWakefulnessChangeListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 4884
    invoke-interface {v2}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v11

    iget-object v13, p0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v14}, Lcom/android/server/power/PowerGroup;-><init>(ILcom/android/server/power/PowerGroup$PowerGroupListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;IZZJLcom/android/server/power/feature/PowerManagerFlags;Z)V

    .line 4887
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4889
    :cond_58
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return-void
.end method

.method public final applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 13

    .line 1815
    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_a3

    .line 1816
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 1820
    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_42

    .line 1821
    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 1822
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->getFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;

    move-result-object v4

    if-eqz v4, :cond_2a

    .line 1824
    invoke-virtual {v4}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    .line 1825
    invoke-virtual {v4}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v4

    goto :goto_3e

    .line 1827
    :cond_2a
    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 1828
    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_37

    :cond_35
    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 1829
    :goto_37
    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->getUid(I)I

    move-result v1

    move-object v10, v4

    move v4, v1

    move-object v1, v10

    :goto_3e
    move v5, v2

    :goto_3f
    move-object v7, v1

    move v6, v4

    goto :goto_49

    .line 1832
    :cond_42
    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 1833
    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 1834
    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    goto :goto_3f

    .line 1836
    :goto_49
    invoke-virtual {p1}, Lcom/android/server/power/PowerManagerService$WakeLock;->getPowerGroupId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a3

    .line 1839
    invoke-virtual {p0, v7, v6, v5}, Lcom/android/server/power/PowerManagerService;->isAcquireCausesWakeupFlagAllowed(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 1840
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_7d

    move v9, v3

    .line 1845
    :goto_5c
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v9, v1, :cond_a3

    .line 1846
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v2}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move v8, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5c

    .line 1852
    :cond_7d
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 1856
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v2}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move v8, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    :cond_a3
    return-void
.end method

.method public final applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 9

    .line 1976
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 1977
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1978
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    :cond_1b
    return-void
.end method

.method public final areAllPowerGroupsReadyLocked()Z
    .registers 5

    .line 2679
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1c

    .line 2681
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v3}, Lcom/android/server/power/PowerGroup;->isReadyLocked()Z

    move-result v3

    if-nez v3, :cond_19

    return v1

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public final boostScreenBrightnessInternal(JI)V
    .registers 13

    .line 4703
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4704
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v0

    if-eqz v0, :cond_54

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    cmp-long v0, p1, v2

    if-gez v0, :cond_14

    goto :goto_54

    .line 4709
    :cond_14
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Brightness boost activated (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4710
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    const/4 v0, 0x1

    .line 4711
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 4712
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4714
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/power/PowerGroup;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-wide v4, p1

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    .line 4716
    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4717
    monitor-exit v1

    return-void

    :catchall_51
    move-exception v0

    move-object p0, v0

    goto :goto_56

    .line 4706
    :cond_54
    :goto_54
    monitor-exit v1

    return-void

    .line 4717
    :goto_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_51

    throw p0
.end method

.method public final canDozeLocked(Lcom/android/server/power/PowerGroup;)Z
    .registers 3

    .line 3882
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isDefaultAdjacentGroupInteractiveLocked()Z

    move-result p0

    .line 3883
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->supportsSandmanLocked()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3884
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_15

    if-nez p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final canDreamLocked(Lcom/android/server/power/PowerGroup;)Z
    .registers 6

    .line 3834
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsDisabledByAmbientModeSuppressionConfig:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    .line 3835
    invoke-virtual {v0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    .line 3836
    :goto_11
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v3, :cond_5f

    if-nez v0, :cond_5f

    .line 3838
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5f

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v0, :cond_5f

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v0, :cond_5f

    .line 3841
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->isBrightOrDimLocked()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 3842
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_35

    goto :goto_5f

    .line 3847
    :cond_35
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_3e

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    if-nez v3, :cond_3e

    return v2

    :cond_3e
    if-nez v0, :cond_49

    .line 3854
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ltz v0, :cond_49

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-ge v3, v0, :cond_49

    return v2

    .line 3863
    :cond_49
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result p1

    if-eqz p1, :cond_50

    return v1

    .line 3870
    :cond_50
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz p1, :cond_5e

    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ltz p1, :cond_5e

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-lt p0, p1, :cond_5d

    goto :goto_5e

    :cond_5d
    return v2

    :cond_5e
    :goto_5e
    return v1

    :cond_5f
    :goto_5f
    return v2
.end method

.method public checkForLongWakeLocks()V
    .registers 16

    .line 3101
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3102
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    .line 3103
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    const-wide/32 v3, 0xea60

    sub-long/2addr v1, v3

    .line 3106
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x0

    move-wide v9, v6

    :goto_1c
    if-ge v8, v5, :cond_4c

    .line 3108
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3109
    iget v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v13, 0xffff

    and-int/2addr v12, v13

    const/4 v13, 0x1

    if-ne v12, v13, :cond_49

    .line 3111
    iget-boolean v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v12, :cond_49

    iget-boolean v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-nez v12, :cond_49

    .line 3112
    iget-wide v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    cmp-long v14, v12, v1

    if-gez v14, :cond_43

    .line 3114
    invoke-virtual {p0, v11}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_49

    :catchall_41
    move-exception p0

    goto :goto_64

    :cond_43
    add-long/2addr v12, v3

    cmp-long v11, v12, v9

    if-gez v11, :cond_49

    move-wide v9, v12

    :cond_49
    :goto_49
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_4c
    const-wide/16 v1, 0x0

    .line 3125
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    .line 3126
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    cmp-long v3, v9, v6

    if-eqz v3, :cond_60

    .line 3128
    iput-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    .line 3129
    invoke-virtual {p0, v9, v10}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V

    goto :goto_62

    .line 3131
    :cond_60
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    .line 3133
    :goto_62
    monitor-exit v0

    return-void

    :goto_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_41

    throw p0
.end method

.method public final crashInternal(Ljava/lang/String;)V
    .registers 4

    .line 4366
    new-instance v0, Lcom/android/server/power/PowerManagerService$3;

    const-string v1, "PowerManagerService.crash()"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 4373
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4374
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 4376
    const-string p1, "PowerManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final doAnyAdjacentGroupsExistLocked()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 3478
    :goto_2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 3479
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 3480
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->isDefaultGroupAdjacent()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public final doesIdleStateBlockWakeLocksLocked()Z
    .registers 1

    .line 4581
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public dozePowerGroupLocked(IJIIZ)V
    .registers 14

    .line 2364
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    if-eqz v1, :cond_13

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2366
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JIIZ)Z

    :cond_13
    return-void
.end method

.method public final dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JIIZ)Z
    .registers 8

    .line 2374
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v0

    if-eqz v0, :cond_b

    .line 2375
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    move-result p0

    return p0

    .line 2384
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v0

    if-nez v0, :cond_23

    .line 2385
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isDefaultAdjacentGroupInteractiveLocked()Z

    move-result v0

    if-nez v0, :cond_23

    .line 2386
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v0

    if-nez v0, :cond_2e

    .line 2387
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->doAnyAdjacentGroupsExistLocked()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2389
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->isDefaultOrAdjacentGroup()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2390
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    move-result p0

    return p0

    .line 2401
    :cond_2e
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_4a

    .line 2402
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->hasWakeLockKeepingGroupAsleep(I)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_4a

    :cond_41
    move-object p0, p1

    move-wide p1, p2

    move p3, p5

    move p5, p6

    .line 2406
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/PowerGroup;->dozeLocked(JIIZ)Z

    move-result p0

    return p0

    :cond_4a
    :goto_4a
    const/4 p0, 0x0

    return p0
.end method

.method public dreamPowerGroupLocked(IJIZ)V
    .registers 12

    .line 2341
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    if-eqz v1, :cond_12

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .line 2343
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->dreamPowerGroupLocked(Lcom/android/server/power/PowerGroup;JIZ)Z

    :cond_12
    return-void
.end method

.method public final dreamPowerGroupLocked(Lcom/android/server/power/PowerGroup;JIZ)Z
    .registers 7

    .line 2354
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_18

    .line 2355
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->hasWakeLockKeepingGroupAsleep(I)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_18

    .line 2358
    :cond_13
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/power/PowerGroup;->dreamLocked(JIZ)Z

    move-result p0

    return p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .registers 13
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 4962
    const-string v0, "POWER MANAGER (dumpsys power)\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4966
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4967
    :try_start_8
    const-string v1, "Power Manager State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4968
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v1, p1}, Lcom/android/server/power/PowerManagerService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 4969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDirty=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakefulness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4971
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v2

    invoke-static {v2}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4970
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakefulnessChanging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsPowered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPlugType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBatteryLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelDrain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrain:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDockState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStayOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mProximityPositive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBootCompleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSystemReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4982
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_127
    .catchall {:try_start_8 .. :try_end_127} :catchall_1d9

    .line 4983
    :try_start_127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mEnhancedDischargeTimeElapsed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4984
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLastEnhancedDischargeTimeUpdatedElapsed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4986
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mEnhancedDischargePredictionIsPersonalized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4988
    monitor-exit v1
    :try_end_16a
    .catchall {:try_start_127 .. :try_end_16a} :catchall_9ce

    .line 4989
    :try_start_16a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUseAutoSuspend="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUseAutoSuspend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHalAutoSuspendModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHalInteractiveModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakeLockSummary=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4993
    const-string v1, "  mNotifyLongScheduled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4994
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1dc

    .line 4995
    const-string v1, "(none)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1e5

    :catchall_1d9
    move-exception p0

    goto/16 :goto_9d1

    .line 4997
    :cond_1dc
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v5}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4999
    :goto_1e5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5000
    const-string v1, "  mNotifyLongDispatched="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5001
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1f9

    .line 5002
    const-string v1, "(none)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_202

    .line 5004
    :cond_1f9
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v5}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 5006
    :goto_202
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5007
    const-string v1, "  mNotifyLongNextCheck="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5008
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_216

    .line 5009
    const-string v1, "(none)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_21f

    .line 5011
    :cond_216
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 5013
    :goto_21f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRequestWaitForNegativeProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInterceptedPowerKeyForProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSandmanScheduled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBatteryLevelLow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLightDeviceIdleMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDeviceIdleMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDeviceIdleWhitelist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDeviceIdleTempWhitelist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLowPowerStandbyActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5024
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastWakeTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSleepTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSleepReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    invoke-static {v2}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastGlobalWakeTimeRealtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTimeRealtime:J

    .line 5029
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5028
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastGlobalSleepTimeRealtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTimeRealtime:J

    .line 5031
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5030
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastInteractivePowerHintTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    .line 5033
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5032
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5034
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastScreenBrightnessBoostTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    .line 5035
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5034
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessBoostInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5038
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHoldingWakeLockSuspendBlocker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHoldingDisplaySuspendBlocker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastFlipTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastFlipTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5041
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsFaceDown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsFaceDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5043
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5044
    const-string v1, "Settings and Configuration:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTheaterModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mKeepDreamingWhenUnplugging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mKeepDreamingWhenUnplugging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSuspendWhenScreenOffDueToProximityConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsSupportedConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsEnabledByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivatedOnSleepByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivatedOnDockByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivatedWhilePosturedByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedWhilePosturedByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivatedOnlyWhileWirelessChargingConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnlyWhileWirelessChargingConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsEnabledOnBatteryConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelDrainCutoffConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsEnabledSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivateOnSleepSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivateOnDockSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivateWhilePosturedSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateWhilePosturedSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsOnlyOnWirelessChargingSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsOnlyWhileWirelessChargingSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDozeAfterScreenOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBrightWhenDozingConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBrightWhenDozingConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAttentiveWarningDurationConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStayOnWhilePluggedInSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserActivityTimeoutOverrideFromWindowManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserInactiveOverrideFromWindowManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDozeScreenStateOverrideFromDreamManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDrawWakeLockOverrideFromSidekick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDozeScreenBrightnessOverrideFromDreamManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUseNormalBrightnessForDoze="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUseNormalBrightnessForDoze:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessMinimum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessMaximum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDoubleTapWakeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mForegroundProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5104
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    invoke-virtual {v1}, Lcom/android/server/power/ScreenTimeoutConstants;->getAttentiveTimeoutLocked()J

    move-result-wide v1

    .line 5105
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 5106
    invoke-virtual {v3, v1, v2}, Lcom/android/server/power/ScreenTimeoutConstants;->getSleepTimeoutLocked(J)J

    move-result-wide v3

    .line 5107
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v5

    .line 5108
    invoke-virtual {p0, v5, v6}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v7

    .line 5109
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5110
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attentive timeout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sleep timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen off timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen dim duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5115
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5116
    const-string v1, "UID states (changing="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5117
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 5118
    const-string v1, " changed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5119
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 5120
    const-string v1, "):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 5121
    :goto_7f9
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_842

    .line 5122
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$UidState;

    .line 5123
    const-string v4, "  UID "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {p1, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5124
    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5125
    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-eqz v4, :cond_826

    const-string v4, "  ACTIVE "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_82b

    .line 5126
    :cond_826
    const-string v4, "INACTIVE "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5127
    :goto_82b
    const-string v4, " count="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5128
    iget v4, v3, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 5129
    const-string v4, " state="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5130
    iget v3, v3, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7f9

    .line 5133
    :cond_842
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5134
    const-string v2, "Looper state:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5135
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v4, "  "

    invoke-virtual {v2, v3, v4}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5137
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wake Locks: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5139
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_87e
    if-ge v4, v3, :cond_89d

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 5140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_87e

    .line 5143
    :cond_89d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suspend Blockers: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5145
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_8c1
    if-ge v4, v3, :cond_8e0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/power/SuspendBlocker;

    .line 5146
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8c1

    .line 5149
    :cond_8e0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display Power: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5152
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5153
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    invoke-virtual {v2, p1}, Lcom/android/server/power/ScreenTimeoutConstants;->dumpsys(Ljava/io/PrintWriter;)V

    .line 5155
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    if-eqz v2, :cond_914

    .line 5156
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dump(Ljava/io/PrintWriter;)V

    .line 5157
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->dump(Ljava/io/PrintWriter;)V

    goto :goto_919

    .line 5159
    :cond_914
    const-string v2, "Battery Saver: DISABLED"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5161
    :goto_919
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v2, p1}, Lcom/android/server/power/AttentionDetector;->dump(Ljava/io/PrintWriter;)V

    .line 5163
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5164
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 5165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile power states: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v1

    :goto_93c
    if-ge v3, v2, :cond_97b

    .line 5167
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 5168
    const-string v5, "  mUserId="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5169
    iget v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 5170
    const-string v5, " mScreenOffTimeout="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5171
    iget-wide v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 5172
    const-string v5, " mWakeLockSummary="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5173
    iget v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 5174
    const-string v5, " mLastUserActivityTime="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5175
    iget-wide v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 5176
    const-string v5, " mLockingNotified="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5177
    iget-boolean v4, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_93c

    .line 5180
    :cond_97b
    const-string v2, "Power Group User Activity:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5181
    :goto_980
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_99a

    .line 5182
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_980

    .line 5185
    :cond_99a
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 5186
    monitor-exit v0
    :try_end_99d
    .catchall {:try_start_16a .. :try_end_99d} :catchall_1d9

    if-eqz v1, :cond_9a2

    .line 5189
    invoke-virtual {v1, p1}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    .line 5192
    :cond_9a2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    if-eqz v0, :cond_9a9

    .line 5193
    invoke-virtual {v0, p1}, Lcom/android/server/power/Notifier;->dump(Ljava/io/PrintWriter;)V

    .line 5196
    :cond_9a9
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/power/FaceDownDetector;->dump(Ljava/io/PrintWriter;)V

    .line 5198
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    invoke-virtual {v0, p1}, Lcom/android/server/power/AmbientDisplaySuppressionController;->dump(Ljava/io/PrintWriter;)V

    .line 5200
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    invoke-virtual {v0, p1}, Lcom/android/server/power/LowPowerStandbyController;->dump(Ljava/io/PrintWriter;)V

    .line 5202
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5203
    :try_start_9bb
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutOverridePolicy:Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    if-eqz v0, :cond_9c5

    .line 5204
    invoke-virtual {v0, p1}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->dump(Ljava/io/PrintWriter;)V

    goto :goto_9c5

    :catchall_9c3
    move-exception p0

    goto :goto_9cc

    .line 5206
    :cond_9c5
    :goto_9c5
    monitor-exit v1
    :try_end_9c6
    .catchall {:try_start_9bb .. :try_end_9c6} :catchall_9c3

    .line 5208
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {p0, p1}, Lcom/android/server/power/feature/PowerManagerFlags;->dump(Ljava/io/PrintWriter;)V

    return-void

    .line 5206
    :goto_9cc
    :try_start_9cc
    monitor-exit v1
    :try_end_9cd
    .catchall {:try_start_9cc .. :try_end_9cd} :catchall_9c3

    throw p0

    :catchall_9ce
    move-exception p0

    .line 4988
    :try_start_9cf
    monitor-exit v1
    :try_end_9d0
    .catchall {:try_start_9cf .. :try_end_9d0} :catchall_9ce

    :try_start_9d0
    throw p0

    .line 5186
    :goto_9d1
    monitor-exit v0
    :try_end_9d2
    .catchall {:try_start_9d0 .. :try_end_9d2} :catchall_1d9

    throw p0
.end method

.method public final enqueueNotifyLongMsgLocked(J)V
    .registers 5

    .line 2076
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    .line 2077
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 2078
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2079
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .registers 5

    .line 2044
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 2046
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method public findWakeLockLocked(Landroid/os/IBinder;)Lcom/android/server/power/PowerManagerService$WakeLock;
    .registers 3

    .line 2056
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 2060
    :cond_9
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/PowerManagerService$WakeLock;

    return-object p0
.end method

.method public finishUidChangesInternal()V
    .registers 4

    .line 4486
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 4487
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    .line 4488
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    if-eqz v2, :cond_12

    .line 4489
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4490
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_14

    .line 4492
    :cond_12
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_10

    throw p0
.end method

.method public final finishWakefulnessChangeIfNeededLocked()V
    .registers 4

    .line 2656
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2657
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_18

    goto :goto_31

    :cond_18
    const/4 v0, 0x0

    .line 2662
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 2664
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v2

    if-eq v2, v1, :cond_27

    .line 2665
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v1

    if-nez v1, :cond_2a

    .line 2666
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->logSleepTimeoutRecapturedLocked()V

    .line 2668
    :cond_2a
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 2669
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->onWakefulnessChangeFinished()V

    :cond_31
    :goto_31
    return-void
.end method

.method public final forceSuspendInternal(I)Z
    .registers 12

    .line 4832
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 4834
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    move v0, v2

    .line 4836
    :goto_8
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_31

    .line 4837
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/power/PowerGroup;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v6
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_2e

    const/16 v8, 0x8

    move-object v4, p0

    move v9, p1

    :try_start_23
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    add-int/lit8 v0, v0, 0x1

    move-object p0, v4

    move p1, v9

    goto :goto_8

    :catchall_2b
    move-exception v0

    :goto_2c
    move-object p0, v0

    goto :goto_6a

    :catchall_2e
    move-exception v0

    move-object v4, p0

    goto :goto_2c

    :cond_31
    move-object v4, p0

    move v9, p1

    .line 4842
    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4844
    const-string p0, "PowerManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Force-Suspending (uid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4845
    iget-object p0, v4, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeForceSuspend()Z

    move-result p0

    if-nez p0, :cond_60

    .line 4847
    const-string p1, "PowerManagerService"

    const-string v0, "Force-Suspending failed in native."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_23 .. :try_end_60} :catchall_2b

    .line 4851
    :cond_60
    :try_start_60
    iput-boolean v2, v4, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    .line 4853
    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    monitor-exit v1

    return p0

    :catchall_67
    move-exception v0

    move-object p0, v0

    goto :goto_70

    .line 4851
    :goto_6a
    iput-boolean v2, v4, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    .line 4853
    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4854
    throw p0

    .line 4855
    :goto_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_60 .. :try_end_71} :catchall_67

    throw p0
.end method

.method public getBinderServiceInstance()Lcom/android/server/power/PowerManagerService$BinderService;
    .registers 1

    .line 7482
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    return-object p0
.end method

.method public getDefaultGroupScreenOffTimeoutOverrideLocked(JJ)J
    .registers 7

    .line 3451
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutOverridePolicy:Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    if-eqz v0, :cond_a

    .line 3452
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 3453
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->getScreenTimeoutOverrideLocked(IJ)J

    move-result-wide p1

    .line 3456
    :cond_a
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mIsFaceDown:Z

    if-eqz p0, :cond_13

    .line 3457
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_13
    return-wide p1
.end method

.method public final getDisplayGroupId(I)I
    .registers 2

    .line 7934
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 7938
    :cond_a
    iget p0, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    return p0
.end method

.method public getDreamsBatteryLevelDrain()I
    .registers 1

    .line 4016
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrain:I

    return p0
.end method

.method public getGlobalWakefulnessLocked()I
    .registers 1

    .line 2551
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessRaw:I

    return p0
.end method

.method public final getLastGoToSleepInternal()Landroid/os/PowerManager$SleepData;
    .registers 5

    .line 7533
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7534
    :try_start_3
    new-instance v1, Landroid/os/PowerManager$SleepData;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    invoke-direct {v1, v2, v3, p0}, Landroid/os/PowerManager$SleepData;-><init>(JI)V

    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception p0

    .line 7535
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public getLastShutdownReasonInternal()I
    .registers 9

    .line 7492
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    const-string/jumbo v0, "sys.boot.reason"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/server/power/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7493
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_6e

    goto :goto_63

    :sswitch_1c
    const-string/jumbo v0, "shutdown,thermal,battery"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_63

    :cond_26
    move v7, v1

    goto :goto_63

    :sswitch_28
    const-string/jumbo v0, "shutdown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_63

    :cond_32
    move v7, v2

    goto :goto_63

    :sswitch_34
    const-string/jumbo v0, "shutdown,userrequested"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    goto :goto_63

    :cond_3e
    move v7, v3

    goto :goto_63

    :sswitch_40
    const-string/jumbo v0, "reboot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    goto :goto_63

    :cond_4a
    move v7, v4

    goto :goto_63

    :sswitch_4c
    const-string/jumbo v0, "shutdown,battery"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_56

    goto :goto_63

    :cond_56
    move v7, v5

    goto :goto_63

    :sswitch_58
    const-string/jumbo v0, "shutdown,thermal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_62

    goto :goto_63

    :cond_62
    move v7, v6

    :goto_63
    packed-switch v7, :pswitch_data_88

    return v6

    :pswitch_67
    const/4 p0, 0x6

    return p0

    :pswitch_69
    return v5

    :pswitch_6a
    return v3

    :pswitch_6b
    return v4

    :pswitch_6c
    return v1

    :pswitch_6d
    return v2

    :sswitch_data_6e
    .sparse-switch
        -0x7e3d61bf -> :sswitch_58
        -0x418b4b49 -> :sswitch_4c
        -0x37ba085b -> :sswitch_40
        -0x32cb60d3 -> :sswitch_34
        -0xa17f9aa -> :sswitch_28
        0x489a31a2 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_67
    .end packed-switch
.end method

.method public final getLastSleepReasonInternal()I
    .registers 2

    .line 7520
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7521
    :try_start_3
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 7522
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getLastWakeupInternal()Landroid/os/PowerManager$WakeData;
    .registers 11

    .line 7526
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7527
    :try_start_3
    new-instance v2, Landroid/os/PowerManager$WakeData;

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeReason:I

    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTimeRealtime:J

    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTimeRealtime:J

    sub-long/2addr v6, v8

    invoke-direct/range {v2 .. v7}, Landroid/os/PowerManager$WakeData;-><init>(JIJ)V

    monitor-exit v1

    return-object v2

    :catchall_13
    move-exception v0

    move-object p0, v0

    .line 7529
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_13

    throw p0
.end method

.method public getLocalServiceInstance()Lcom/android/server/power/PowerManagerService$LocalService;
    .registers 1

    .line 7487
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    return-object p0
.end method

.method public final getNextProfileTimeoutLocked(J)J
    .registers 14

    .line 3306
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_a
    if-ge v3, v0, :cond_29

    .line 3308
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 3309
    iget-wide v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    iget-wide v9, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    add-long/2addr v7, v9

    cmp-long v6, v7, p1

    if-lez v6, :cond_26

    cmp-long v6, v4, v1

    if-eqz v6, :cond_25

    cmp-long v6, v7, v4

    if-gez v6, :cond_26

    :cond_25
    move-wide v4, v7

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_29
    return-wide v4
.end method

.method public getPowerGroupSize()I
    .registers 2

    .line 7513
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7514
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 7515
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final getScreenDimDurationLocked(J)J
    .registers 5

    .line 3441
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    invoke-virtual {v0}, Lcom/android/server/power/ScreenTimeoutConstants;->getMaximumScreenDimDurationConfig()J

    move-result-wide v0

    long-to-float p1, p1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 3443
    invoke-virtual {p0}, Lcom/android/server/power/ScreenTimeoutConstants;->getMaximumScreenDimRatioConfig()F

    move-result p0

    mul-float/2addr p1, p0

    float-to-long p0, p1

    .line 3441
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getScreenOffTimeoutLocked(JJ)J
    .registers 12

    .line 3422
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    invoke-virtual {v0}, Lcom/android/server/power/ScreenTimeoutConstants;->getScreenOffTimeoutSettingLocked()J

    move-result-wide v0

    .line 3423
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    invoke-virtual {v2}, Lcom/android/server/power/ScreenTimeoutConstants;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3424
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 3425
    invoke-virtual {v2}, Lcom/android/server/power/ScreenTimeoutConstants;->getMaximumScreenOffTimeoutFromDeviceAdminLocked()J

    move-result-wide v2

    .line 3424
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 3427
    :cond_18
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_24

    .line 3428
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_24
    cmp-long v2, p1, v4

    if-ltz v2, :cond_2c

    .line 3431
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_2c
    cmp-long p1, p3, v4

    if-ltz p1, :cond_34

    .line 3434
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 3436
    :cond_34
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    invoke-virtual {p0}, Lcom/android/server/power/ScreenTimeoutConstants;->getMinimumScreenOffTimeoutConfigLocked()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getWakeLockSummaryFlags(Lcom/android/server/power/PowerManagerService$WakeLock;)I
    .registers 4

    .line 3051
    iget-boolean p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    return v0

    .line 3055
    :cond_6
    iget p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const p1, 0xffff

    and-int/2addr p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_38

    const/4 p1, 0x6

    if-eq p0, p1, :cond_36

    const/16 p1, 0xa

    if-eq p0, p1, :cond_34

    const/16 v1, 0x1a

    if-eq p0, v1, :cond_33

    const/16 p1, 0x20

    if-eq p0, p1, :cond_30

    const/16 p1, 0x40

    if-eq p0, p1, :cond_2f

    const/16 p1, 0x80

    if-eq p0, p1, :cond_2f

    const/16 p1, 0x100

    if-eq p0, p1, :cond_2f

    const/16 p1, 0x200

    if-eq p0, p1, :cond_2f

    return v0

    :cond_2f
    return p1

    :cond_30
    const/16 p0, 0x10

    return p0

    :cond_33
    return p1

    :cond_34
    const/4 p0, 0x2

    return p0

    :cond_36
    const/4 p0, 0x4

    return p0

    :cond_38
    return p1
.end method

.method public getWakefulnessLocked(I)I
    .registers 2

    .line 2557
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/PowerGroup;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result p0

    return p0
.end method

.method public final goToSleepInternal(Landroid/util/IntArray;JII)V
    .registers 18

    .line 7597
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_9c

    .line 7603
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 7607
    :goto_1a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 7608
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 7610
    :try_start_22
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_96

    .line 7615
    :try_start_25
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v2

    sub-int/2addr v2, v1

    move v1, v2

    :goto_2b
    if-ltz v1, :cond_8f

    .line 7616
    invoke-virtual {p1, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    .line 7617
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerGroup;

    if-eqz v3, :cond_72

    and-int/lit8 v2, p5, 0x2

    if-eqz v2, :cond_5d

    .line 7623
    invoke-virtual {v3}, Lcom/android/server/power/PowerGroup;->hasWakeLockKeepingScreenOnLocked()Z

    move-result v2

    if-nez v2, :cond_55

    .line 7624
    const-string v2, "PowerManagerService"

    const-string v3, "Showing dismissible keyguard"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7625
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v2}, Lcom/android/server/power/Notifier;->showDismissibleKeyguard()V

    goto :goto_6f

    :catchall_52
    move-exception v0

    move-object p0, v0

    goto :goto_94

    .line 7627
    :cond_55
    const-string v2, "PowerManagerService"

    const-string v3, "There is a screen wake lock present: sleep request will be ignored"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    :cond_5d
    if-eqz v0, :cond_67

    move-object v2, p0

    move-wide v4, p2

    move/from16 v6, p4

    .line 7633
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    goto :goto_6f

    :cond_67
    const/4 v8, 0x0

    move-object v2, p0

    move-wide v4, p2

    move/from16 v6, p4

    .line 7635
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService;->dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JIIZ)Z

    :goto_6f
    add-int/lit8 v1, v1, -0x1

    goto :goto_2b

    .line 7619
    :cond_72
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "power group("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") doesn\'t exist"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7639
    :cond_8f
    monitor-exit v11
    :try_end_90
    .catchall {:try_start_25 .. :try_end_90} :catchall_52

    .line 7641
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 7639
    :goto_94
    :try_start_94
    monitor-exit v11
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_52

    :try_start_95
    throw p0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_96

    :catchall_96
    move-exception v0

    move-object p0, v0

    .line 7641
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7642
    throw p0

    .line 7599
    :cond_9c
    const-string p0, "PowerManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event time "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " cannot be newer than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7600
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "event time must not be in the future"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleAttentiveTimeout()V
    .registers 3

    .line 3410
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3415
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3416
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3417
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final handleBatteryStateChangedLocked()V
    .registers 2

    .line 4304
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4305
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method public handleProcessFrozenStateChange(Ljava/lang/Object;I)V
    .registers 5

    .line 7647
    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_29

    .line 7648
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7649
    :try_start_7
    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result p1

    if-gez p1, :cond_13

    .line 7654
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_27

    .line 7656
    :cond_13
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 7657
    invoke-virtual {p1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->setFrozenLocked(I)V

    .line 7658
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked(Ljava/util/List;)V

    .line 7659
    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_11

    throw p0

    .line 7661
    :cond_29
    const-string p0, "PowerManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "not an IBinder object: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final handleSandman(I)V
    .registers 15

    .line 3675
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 3676
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 3677
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_14

    .line 3679
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    move-object p0, v0

    goto/16 :goto_138

    .line 3681
    :cond_14
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/power/PowerGroup;

    .line 3682
    invoke-virtual {v4}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v2

    .line 3683
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->canDreamLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v3

    .line 3684
    invoke-virtual {v4}, Lcom/android/server/power/PowerGroup;->isSandmanSummonedLocked()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_42

    invoke-virtual {v4}, Lcom/android/server/power/PowerGroup;->isReadyLocked()Z

    move-result v5

    if-eqz v5, :cond_42

    if-nez v3, :cond_3d

    .line 3685
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->canDozeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v5

    if-eqz v5, :cond_3b

    goto :goto_3d

    :cond_3b
    move v5, v0

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v5, v6

    .line 3686
    :goto_3e
    invoke-virtual {v4, v0}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    goto :goto_43

    :cond_42
    move v5, v0

    .line 3690
    :goto_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_4 .. :try_end_44} :catchall_10

    .line 3696
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    const/4 v7, 0x3

    if-eqz v1, :cond_6b

    if-eqz v5, :cond_64

    if-ne v2, v7, :cond_50

    .line 3700
    invoke-virtual {v4, v6}, Lcom/android/server/power/PowerGroup;->setDreamManagerAttemptedDozingLocked(Z)V

    .line 3702
    :cond_50
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    const-string/jumbo v8, "power manager request before starting dream"

    invoke-virtual {v1, v0, v8}, Landroid/service/dreams/DreamManagerInternal;->stopDream(ZLjava/lang/String;)V

    .line 3704
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-ne v2, v7, :cond_5d

    goto :goto_5e

    :cond_5d
    move v6, v0

    :goto_5e
    const-string/jumbo v8, "power manager request"

    invoke-virtual {v1, v6, v8}, Landroid/service/dreams/DreamManagerInternal;->startDream(ZLjava/lang/String;)V

    .line 3707
    :cond_64
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    goto :goto_6c

    :cond_6b
    move v1, v0

    .line 3714
    :goto_6c
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 3717
    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3718
    :try_start_71
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p1

    if-nez p1, :cond_7f

    .line 3720
    monitor-exit v12

    return-void

    :catchall_7b
    move-exception v0

    move-object p0, v0

    goto/16 :goto_136

    :cond_7f
    if-eqz v5, :cond_96

    if-eqz v1, :cond_96

    .line 3725
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrain:I

    if-ne v2, v7, :cond_8f

    .line 3727
    const-string p1, "PowerManagerService"

    const-string v5, "Dozing..."

    invoke-static {p1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 3729
    :cond_8f
    const-string p1, "PowerManagerService"

    const-string v5, "Dreaming..."

    invoke-static {p1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    :cond_96
    :goto_96
    invoke-virtual {v4}, Lcom/android/server/power/PowerGroup;->isSandmanSummonedLocked()Z

    move-result p1

    if-nez p1, :cond_134

    .line 3736
    invoke-virtual {v4}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result p1

    if-eq p1, v2, :cond_a4

    goto/16 :goto_134

    .line 3741
    :cond_a4
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {p1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v5

    const/4 p1, 0x2

    if-ne v2, p1, :cond_119

    if-eqz v1, :cond_e9

    if-eqz v3, :cond_e9

    .line 3744
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    if-ltz p1, :cond_e7

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrain:I

    if-le v2, p1, :cond_e7

    .line 3746
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result p1

    if-nez p1, :cond_e7

    .line 3750
    const-string p1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level drained while dreaming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrain:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%.  Battery level now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e9

    .line 3756
    :cond_e7
    monitor-exit v12

    return-void

    .line 3761
    :cond_e9
    :goto_e9
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result p1

    if-eqz p1, :cond_106

    .line 3762
    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z

    move-result p1

    if-eqz p1, :cond_fd

    const/4 v7, 0x2

    const/16 v8, 0x3e8

    move-object v3, p0

    .line 3763
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    goto :goto_126

    :cond_fd
    move-object v3, p0

    const/16 v8, 0x3e8

    const/4 v9, 0x0

    const/4 v7, 0x2

    .line 3766
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/power/PowerManagerService;->dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JIIZ)Z

    goto :goto_126

    :cond_106
    move-object v3, p0

    .line 3770
    const-string v8, "android.server.power:DREAM_FINISHED"

    iget-object p0, v3, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 3773
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3e8

    const/16 v7, 0xd

    const/16 v9, 0x3e8

    .line 3770
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    goto :goto_126

    :cond_119
    move-object v3, p0

    if-ne v2, v7, :cond_126

    if-eqz v1, :cond_120

    .line 3777
    monitor-exit v12

    return-void

    :cond_120
    const/4 v7, 0x2

    const/16 v8, 0x3e8

    .line 3781
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    .line 3784
    :cond_126
    :goto_126
    monitor-exit v12
    :try_end_127
    .catchall {:try_start_71 .. :try_end_127} :catchall_7b

    if-eqz v1, :cond_133

    .line 3787
    iget-object p0, v3, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-eqz p0, :cond_133

    .line 3788
    const-string/jumbo p1, "power manager request"

    invoke-virtual {p0, v0, p1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(ZLjava/lang/String;)V

    :cond_133
    return-void

    .line 3737
    :cond_134
    :goto_134
    :try_start_134
    monitor-exit v12

    return-void

    .line 3784
    :goto_136
    monitor-exit v12
    :try_end_137
    .catchall {:try_start_134 .. :try_end_137} :catchall_7b

    throw p0

    .line 3690
    :goto_138
    :try_start_138
    monitor-exit v1
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_10

    throw p0
.end method

.method public final handleScreenBrightnessBoostTimeout()V
    .registers 3

    .line 4733
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4738
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4739
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4740
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public handleSettingsChangedLocked()V
    .registers 1

    .line 1674
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 1675
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method public final handleUidStateChangeLocked()V
    .registers 2

    .line 4497
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 4498
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    return-void

    .line 4500
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    return-void
.end method

.method public final handleUserActivityTimeout()V
    .registers 3

    .line 3399
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3404
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3405
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3406
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 4

    .line 1892
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1898
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_f

    .line 1900
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_14

    .line 1902
    :cond_f
    invoke-virtual {p0, p1, v1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockDeathLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1903
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_d

    throw p0
.end method

.method public final hasWakeLockKeepingGroupAsleep(I)Z
    .registers 3

    and-int/lit16 p0, p1, 0x200

    if-eqz p0, :cond_20

    .line 2316
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Preventing waking device, due to wakelocks: 0x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2317
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2316
    const-string p1, "PowerManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public final incrementBootCount()V
    .registers 4

    .line 5581
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5585
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "boot_count"

    .line 5584
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_11
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_11} :catch_14
    .catchall {:try_start_3 .. :try_end_11} :catchall_12

    goto :goto_15

    :catchall_12
    move-exception p0

    goto :goto_26

    :catch_14
    const/4 v1, 0x0

    .line 5590
    :goto_15
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "boot_count"

    add-int/lit8 v1, v1, 0x1

    .line 5589
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5591
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_12

    throw p0
.end method

.method public final interceptPowerKeyDownInternal(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 7548
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 7553
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    if-nez v0, :cond_17

    .line 7554
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->ignoreProximitySensorUntilChanged()V

    const/4 v0, 0x1

    .line 7555
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    .line 7556
    monitor-exit p1

    return v0

    :catchall_15
    move-exception p0

    goto :goto_1a

    .line 7558
    :cond_17
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_1a
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_15

    throw p0
.end method

.method public final isAcquireCausesWakeupFlagAllowed(Ljava/lang/String;II)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1786
    :cond_4
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPermissionCheckerWrapper:Lcom/android/server/power/PowerManagerService$PermissionCheckerWrapper;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/AttributionSource;

    const/4 v3, 0x0

    invoke-direct {v5, p2, p1, v3}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACQUIRE_CAUSES_WAKEUP for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1787
    const-string v3, "android.permission.TURN_SCREEN_ON"

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$PermissionCheckerWrapper;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result p3

    const/4 v1, 0x1

    const-string v2, "PowerManagerService"

    if-nez p3, :cond_40

    .line 1791
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Allowing device wake-up from app "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_40
    const-wide/32 v3, 0xce1a479

    .line 1798
    invoke-static {v3, v4, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p2

    if-nez p2, :cond_66

    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mPowerPropertiesWrapper:Lcom/android/server/power/PowerManagerService$PowerPropertiesWrapper;

    .line 1799
    invoke-interface {p2}, Lcom/android/server/power/PowerManagerService$PowerPropertiesWrapper;->waive_target_sdk_check_for_turn_screen_on()Z

    move-result p2

    if-nez p2, :cond_66

    .line 1800
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Allowing device wake-up without android.permission.TURN_SCREEN_ON for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1804
    :cond_66
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerPropertiesWrapper:Lcom/android/server/power/PowerManagerService$PowerPropertiesWrapper;

    invoke-interface {p0}, Lcom/android/server/power/PowerManagerService$PowerPropertiesWrapper;->permissionless_turn_screen_on()Z

    move-result p0

    if-eqz p0, :cond_74

    .line 1805
    const-string p0, "Device wake-up allowed by debug.power.permissionless_turn_screen_on"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1808
    :cond_74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not allowing device wake-up for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z
    .registers 8

    .line 3384
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    invoke-virtual {p0}, Lcom/android/server/power/ScreenTimeoutConstants;->getAttentiveTimeoutLocked()J

    move-result-wide v0

    .line 3386
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result p0

    if-nez p0, :cond_1d

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1d

    .line 3387
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide p0

    add-long/2addr p0, v0

    cmp-long p0, p2, p0

    if-ltz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public final isBeingKeptAwakeLocked(Lcom/android/server/power/PowerGroup;)Z
    .registers 3

    .line 3605
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_1f

    .line 3607
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1f

    .line 3608
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_1f

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method public final isBeingKeptFromInattentiveSleepLocked()Z
    .registers 2

    .line 3621
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_13

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public final isDefaultAdjacentGroupInteractiveLocked()Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 3465
    :goto_2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 3466
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 3467
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->isDefaultGroupAdjacent()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 3468
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v2

    invoke-static {v2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_27
    return v0
.end method

.method public final isDefaultGroupAdjacent(I)Z
    .registers 4

    .line 876
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayGroupFlags(I)J

    move-result-wide p0

    .line 877
    sget-wide v0, Lcom/android/server/display/DisplayGroup;->FLAG_DEFAULT_GROUP_ADJACENT:J

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public isDeviceIdleModeInternal()Z
    .registers 2

    .line 4291
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4292
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 4293
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isGloballyInteractiveInternal()Z
    .registers 2

    .line 4247
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4248
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result p0

    invoke-static {p0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 4249
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final isInteractiveInternal(II)Z
    .registers 7

    .line 4253
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4254
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_f

    .line 4255
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isGloballyInteractiveInternal()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    goto :goto_84

    .line 4257
    :cond_f
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_30

    .line 4259
    const-string p0, "PowerManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did not find DisplayInfo for displayId "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4260
    monitor-exit v0

    return v2

    .line 4262
    :cond_30
    invoke-virtual {v1, p2}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 4266
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    iget p2, v1, Landroid/view/DisplayInfo;->displayGroupId:I

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/PowerGroup;

    if-nez p0, :cond_5a

    .line 4268
    const-string p0, "PowerManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did not find PowerGroup for displayId "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4269
    monitor-exit v0

    return v2

    .line 4271
    :cond_5a
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result p0

    invoke-static {p0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 4263
    :cond_64
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not have access to display "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4272
    :goto_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_3 .. :try_end_85} :catchall_d

    throw p0
.end method

.method public final isItBedTimeYetLocked(Lcom/android/server/power/PowerGroup;)Z
    .registers 4

    .line 3584
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 3588
    :cond_6
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 3589
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3590
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptFromInattentiveSleepLocked()Z

    move-result p0

    :goto_16
    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 3592
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result p0

    goto :goto_16
.end method

.method public isLightDeviceIdleModeInternal()Z
    .registers 2

    .line 4297
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4298
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 4299
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isProfileBeingKeptAwakeLocked(Lcom/android/server/power/PowerManagerService$ProfilePowerState;J)Z
    .registers 8

    .line 2776
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    iget-wide v2, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    add-long/2addr v0, v2

    cmp-long p2, v0, p2

    if-gtz p2, :cond_1a

    iget p1, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_1a

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz p0, :cond_18

    and-int/lit8 p0, p1, 0x10

    if-eqz p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    return p0
.end method

.method public final isScreenBrightnessBoostedInternal()Z
    .registers 2

    .line 4721
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4722
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 4723
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isWakeLockLevelSupportedInternal(II)Z
    .registers 7

    .line 2146
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_56

    const/4 v2, 0x6

    if-eq p1, v2, :cond_56

    const/16 v2, 0xa

    if-eq p1, v2, :cond_56

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_56

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-eq p1, v2, :cond_46

    const/16 p2, 0x40

    if-eq p1, p2, :cond_56

    const/16 p2, 0x80

    if-eq p1, p2, :cond_56

    const/16 p2, 0x100

    if-eq p1, p2, :cond_32

    const/16 p2, 0x200

    if-eq p1, p2, :cond_2a

    .line 2165
    :try_start_26
    monitor-exit v0

    return v3

    :catchall_28
    move-exception p0

    goto :goto_58

    .line 2163
    :cond_2a
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {p0}, Lcom/android/server/power/feature/PowerManagerFlags;->isPartialSleepWakelocksFeatureEnabled()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 2160
    :cond_32
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/power/feature/PowerManagerFlags;->isEarlyScreenTimeoutDetectorEnabled()Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutOverridePolicy:Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    if-eqz p0, :cond_43

    goto :goto_44

    :cond_43
    move v1, v3

    :goto_44
    monitor-exit v0

    return v1

    .line 2157
    :cond_46
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz p1, :cond_53

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2158
    invoke-virtual {p0, p2}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_53

    goto :goto_54

    :cond_53
    move v1, v3

    :goto_54
    monitor-exit v0

    return v1

    .line 2154
    :cond_56
    monitor-exit v0

    return v1

    .line 2167
    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_26 .. :try_end_59} :catchall_28

    throw p0
.end method

.method public final synthetic lambda$systemReady$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 1453
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1454
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateDeviceConfigLocked()V

    .line 1455
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 1456
    monitor-exit p1

    return-void

    :catchall_b
    move-exception p0

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final synthetic lambda$systemReady$1(I)V
    .registers 5

    .line 1482
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1483
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1484
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {p0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final logSleepTimeoutRecapturedLocked()V
    .registers 5

    .line 2646
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 2647
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_16

    .line 2649
    invoke-static {v2, v3}, Lcom/android/server/EventLogTags;->writePowerSoftSleepRequested(J)V

    const-wide/16 v0, -0x1

    .line 2650
    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    :cond_16
    return-void
.end method

.method public final maybeHideInattentiveSleepWarningLocked(JJ)Z
    .registers 12

    .line 3364
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    invoke-virtual {v0}, Lcom/android/server/power/ScreenTimeoutConstants;->getAttentiveTimeoutLocked()J

    move-result-wide v0

    .line 3366
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {v2}, Lcom/android/server/power/InattentiveSleepWarningController;->isShown()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_10

    return v3

    .line 3370
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_1d

    .line 3371
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {p0, v3}, Lcom/android/server/power/InattentiveSleepWarningController;->dismiss(Z)V

    return v4

    :cond_1d
    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-ltz v0, :cond_2f

    .line 3373
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptFromInattentiveSleepLocked()Z

    move-result v0

    if-nez v0, :cond_2f

    cmp-long p1, p1, p3

    if-gez p1, :cond_2e

    goto :goto_2f

    :cond_2e
    return v3

    .line 3375
    :cond_2f
    :goto_2f
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {p0, v4}, Lcom/android/server/power/InattentiveSleepWarningController;->dismiss(Z)V

    return v4
.end method

.method public final maybeUpdateForegroundProfileLastActivityLocked(J)V
    .registers 5

    .line 2306
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    if-eqz p0, :cond_14

    .line 2307
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_14

    .line 2308
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    :cond_14
    return-void
.end method

.method public monitor()V
    .registers 2

    .line 4956
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 4957
    :try_start_3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final napInternal(JIZ)V
    .registers 13

    .line 2203
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2204
    :try_start_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/power/PowerGroup;

    move-object v2, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->dreamPowerGroupLocked(Lcom/android/server/power/PowerGroup;JIZ)Z

    .line 2206
    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_16

    throw p0
.end method

.method public final needSuspendBlockerLocked()Z
    .registers 7

    .line 4182
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 4186
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_d

    return v1

    .line 4195
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_19

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    if-eqz v0, :cond_19

    return v1

    :cond_19
    const/4 v0, 0x0

    move v2, v0

    .line 4199
    :goto_1b
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 4200
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerGroup;

    .line 4201
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/server/power/PowerGroup;->needSuspendBlockerLocked(ZZ)Z

    move-result v3

    if-eqz v3, :cond_36

    return v1

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_39
    return v0
.end method

.method public final notifyScreenTimeoutPolicyChangesLocked()V
    .registers 5

    const/4 v0, 0x0

    .line 4097
    :goto_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 4098
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 4099
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 4100
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getScreenTimeoutPolicy()I

    move-result v2

    .line 4101
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/power/Notifier;->notifyScreenTimeoutPolicyChanges(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public final notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 12

    .line 2065
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_23

    const/4 v0, 0x1

    .line 2066
    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 2067
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

    .line 2070
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_23
    return-void
.end method

.method public final notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2113
    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v2, :cond_37

    iget-boolean v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v2, :cond_37

    .line 2114
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

    .line 2118
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 2123
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_37
    return-void
.end method

.method public final notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 5

    .line 2102
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    .line 2103
    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    .line 2104
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method public final notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 5

    .line 2093
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 2094
    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    .line 2095
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public final notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 3

    const/4 v0, -0x1

    .line 2129
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    return-void
.end method

.method public final notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .registers 15

    .line 2134
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    .line 2135
    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    const-wide/16 v0, 0x0

    .line 2136
    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 2137
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    move v11, p2

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;I)V

    .line 2140
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_28
    return-void
.end method

.method public onBootPhase(I)V
    .registers 15

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_8

    .line 1376
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->systemReady()V

    return-void

    :cond_8
    const/16 v0, 0x258

    if-ne p1, v0, :cond_10

    .line 1379
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->incrementBootCount()V

    return-void

    :cond_10
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_77

    .line 1382
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1383
    :try_start_17
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x1

    .line 1384
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    .line 1385
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1387
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    if-eqz v0, :cond_33

    .line 1388
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->onBootCompleted()V

    goto :goto_33

    :catchall_30
    move-exception v0

    move-object p0, v0

    goto :goto_75

    :cond_33
    :goto_33
    const/4 v5, 0x0

    const/16 v6, 0x3e8

    const/4 v4, 0x0

    move-object v1, p0

    .line 1390
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1393
    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1394
    sget-boolean p0, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz p0, :cond_5a

    .line 1395
    iget-object p0, v1, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/android/server/power/PowerGroup;

    iget-object p0, v1, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 1396
    invoke-interface {p0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v9

    const/16 v11, 0xa

    const/16 v12, 0x3e8

    move-object v7, v1

    .line 1395
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    .line 1401
    :cond_5a
    iget-object p0, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v2, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Lcom/android/server/power/PowerManagerService$DeviceStateListener;

    invoke-direct {v2, v1}, Lcom/android/server/power/PowerManagerService$DeviceStateListener;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 1403
    monitor-exit p1

    return-void

    :goto_75
    monitor-exit p1
    :try_end_76
    .catchall {:try_start_17 .. :try_end_76} :catchall_30

    throw p0

    :cond_77
    return-void
.end method

.method public final onDreamSuppressionChangedLocked(I)V
    .registers 6

    .line 3795
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsDisabledByAmbientModeSuppressionConfig:Z

    if-nez v0, :cond_5

    goto :goto_43

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    move p1, v1

    goto :goto_c

    :cond_b
    move p1, v0

    .line 3801
    :goto_c
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerGroup;

    if-nez p1, :cond_38

    .line 3802
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v2, :cond_38

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v2, :cond_38

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v2, :cond_38

    .line 3803
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 3804
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3805
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 p1, 0x3e8

    invoke-virtual {p0, v2, v3, p1, v1}, Lcom/android/server/power/PowerManagerService;->napInternal(JIZ)V

    return-void

    :cond_38
    if-eqz p1, :cond_43

    .line 3807
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3808
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_43
    :goto_43
    return-void
.end method

.method public final onFlip(Z)V
    .registers 13

    .line 1338
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1339
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_c

    .line 1340
    monitor-exit v1

    return-void

    :catchall_9
    move-exception v0

    move-object p0, v0

    goto :goto_69

    .line 1343
    :cond_c
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFlip(): Face "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1e

    const-string v3, "down."

    goto :goto_21

    :cond_1e
    const-string/jumbo v3, "up."

    :goto_21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsFaceDown:Z

    if-eqz p1, :cond_5d

    .line 1346
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v4

    .line 1347
    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastFlipTime:J

    .line 1348
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/ScreenTimeoutConstants;->getSleepTimeoutLocked(J)J

    move-result-wide v6

    .line 1349
    invoke-virtual {p0, v6, v7, v2, v3}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v2

    .line 1350
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerGroup;

    .line 1352
    invoke-virtual {v0}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v6

    add-long/2addr v6, v2

    sub-long v9, v6, v4

    const/4 v7, 0x1

    const/16 v8, 0x3e8

    const/4 v3, 0x0

    const/4 v6, 0x5

    move-object v2, p0

    .line 1353
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(IJIII)V

    goto :goto_60

    :cond_5d
    move-object v2, p0

    const-wide/16 v9, 0x0

    .line 1357
    :goto_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_9

    if-eqz p1, :cond_68

    .line 1359
    iget-object p0, v2, Lcom/android/server/power/PowerManagerService;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    invoke-virtual {p0, v9, v10}, Lcom/android/server/power/FaceDownDetector;->setMillisSaved(J)V

    :cond_68
    return-void

    .line 1357
    :goto_69
    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_9

    throw p0
.end method

.method public onPowerGroupEventLocked(ILcom/android/server/power/PowerGroup;)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v7, p1

    const/4 v8, 0x1

    .line 2594
    iput-boolean v8, v0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 2595
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/4 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2596
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v10

    if-ne v7, v8, :cond_18

    .line 2598
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->delete(I)V

    .line 2600
    :cond_18
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v15

    .line 2601
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->recalculateGlobalWakefulnessLocked()I

    move-result v9

    if-nez v7, :cond_46

    if-ne v9, v8, :cond_46

    .line 2606
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    const/4 v4, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    move v1, v9

    .line 2608
    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 2609
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v11

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 2610
    invoke-interface {v2}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v13

    const/16 v12, 0xa

    .line 2608
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/power/Notifier;->onGroupWakefulnessChangeStarted(IIIJ)V

    goto :goto_56

    :cond_46
    move v1, v9

    if-ne v7, v8, :cond_4f

    .line 2612
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v2, v10}, Lcom/android/server/power/Notifier;->onGroupRemoved(I)V

    goto :goto_56

    :cond_4f
    if-ne v7, v2, :cond_56

    .line 2614
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v2}, Lcom/android/server/power/Notifier;->onGroupChanged()V

    :cond_56
    :goto_56
    if-eq v15, v1, :cond_92

    const/16 v2, 0xb

    if-eq v1, v8, :cond_69

    const/4 v3, 0x3

    if-eq v1, v3, :cond_62

    const/4 v1, 0x0

    move v3, v1

    goto :goto_6e

    :cond_62
    if-ne v7, v8, :cond_65

    goto :goto_67

    :cond_65
    const/16 v2, 0xc

    :cond_67
    :goto_67
    move v3, v2

    goto :goto_6e

    :cond_69
    if-nez v7, :cond_67

    const/16 v2, 0xa

    goto :goto_67

    .line 2633
    :goto_6e
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 2634
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "groupId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v4, 0x3e8

    const/16 v5, 0x3e8

    .line 2633
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/PowerManagerService;->updateGlobalWakefulnessLocked(JIIILjava/lang/String;Ljava/lang/String;)V

    .line 2636
    :cond_92
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2637
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method public onStart()V
    .registers 5

    .line 1365
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1367
    const-class v0, Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1369
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 1370
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    return-void
.end method

.method public onUserActivity()V
    .registers 6

    .line 4825
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4826
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 4827
    invoke-interface {p0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    .line 4826
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/power/PowerGroup;->setLastUserActivityTimeLocked(JI)V

    .line 4828
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final onUserAttention()V
    .registers 10

    .line 2210
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2211
    :try_start_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/power/PowerGroup;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 2212
    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v4

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    const/4 v6, 0x4

    move-object v2, p0

    .line 2211
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2216
    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_25

    :catchall_22
    move-exception v0

    move-object p0, v0

    goto :goto_27

    .line 2218
    :cond_25
    :goto_25
    monitor-exit v1

    return-void

    :goto_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_22

    throw p0
.end method

.method public readConfigurationLocked()V
    .registers 4

    .line 1573
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110232

    .line 1575
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    const v1, 0x1110233

    .line 1577
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    const v1, 0x11102ac

    .line 1579
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const v1, 0x1110029

    .line 1581
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    const v1, 0x111029b

    .line 1583
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 1585
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/power/ScreenTimeoutConstants;->readConfigLocked(Landroid/content/Context;)V

    const v1, 0x10e0028

    .line 1586
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    const v1, 0x1110170

    .line 1588
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    const v1, 0x111016c

    .line 1590
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    const v1, 0x111016a

    .line 1592
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    const v1, 0x1110168

    .line 1594
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const v1, 0x1110169

    .line 1596
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedWhilePosturedByDefaultConfig:Z

    const v1, 0x1110227

    .line 1598
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnlyWhileWirelessChargingConfig:Z

    const v1, 0x111016d

    .line 1600
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    const v1, 0x10e00ad

    .line 1602
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    const v1, 0x10e00ac

    .line 1604
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    const v1, 0x10e00ab

    .line 1606
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    const v1, 0x111016b

    .line 1608
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsDisabledByAmbientModeSuppressionConfig:Z

    const v1, 0x111015d

    .line 1610
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    const v1, 0x1110061

    .line 1612
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBrightWhenDozingConfig:Z

    const v1, 0x1110284

    .line 1614
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    return-void
.end method

.method public recalculateGlobalWakefulnessLocked()I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 2575
    :goto_2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 2576
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    return v3

    :cond_1a
    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v2, v3, :cond_24

    if-eqz v1, :cond_22

    if-ne v1, v4, :cond_24

    :cond_22
    move v1, v3

    goto :goto_29

    :cond_24
    if-ne v2, v4, :cond_29

    if-nez v1, :cond_29

    move v1, v4

    :cond_29
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2c
    return v1
.end method

.method public final releaseAllOverrideWakeLocks(I)V
    .registers 9

    .line 7915
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7916
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_c
    if-ltz v1, :cond_2a

    .line 7919
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 7920
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    const/16 v6, 0x100

    if-ne v5, v6, :cond_27

    .line 7922
    invoke-virtual {p0, v4, v1, p1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockNoUpdateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;II)V

    move v3, v2

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_31

    :cond_27
    :goto_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_2a
    if-eqz v3, :cond_2f

    .line 7928
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 7930
    :cond_2f
    monitor-exit v0

    return-void

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_25

    throw p0
.end method

.method public final releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .registers 6

    .line 1865
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1866
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result p1

    if-gez p1, :cond_d

    .line 1872
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    goto :goto_26

    .line 1875
    :cond_d
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    const/4 v2, 0x1

    and-int/2addr p2, v2

    if-eqz p2, :cond_1b

    .line 1882
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 1885
    :cond_1b
    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$WakeLock;->unlinkToDeath()V

    .line 1886
    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$WakeLock;->setDisabled(Z)Z

    .line 1887
    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1888
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_b

    throw p0
.end method

.method public final removeFrozenStateChangeCallbacksLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 2

    .line 1925
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {p0}, Lcom/android/server/power/feature/PowerManagerFlags;->isDisableFrozenProcessWakelocksEnabled()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 1927
    :try_start_8
    iget-object p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-interface {p0, p1}, Landroid/os/IBinder;->removeFrozenStateChangeCallback(Landroid/os/IBinder$FrozenStateChangeCallback;)Z
    :try_end_d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_d} :catch_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_d} :catch_e

    return-void

    .line 1934
    :catch_e
    const-string p0, "PowerManagerService"

    const-string p1, "FrozenStateChangeCallback was already unregistered"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :catch_15
    :cond_15
    return-void
.end method

.method public final removeWakeLockDeathLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .registers 4

    .line 1969
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->removeFrozenStateChangeCallbacksLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    const/16 v0, 0x8

    .line 1970
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/PowerManagerService;->removeWakeLockNoUpdateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;II)V

    .line 1971
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method public final removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .registers 3

    .line 1962
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->removeFrozenStateChangeCallbacksLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1963
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->removeWakeLockNoUpdateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1964
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method public final removeWakeLockNoUpdateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .registers 4

    const/4 v0, -0x1

    .line 1941
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/PowerManagerService;->removeWakeLockNoUpdateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;II)V

    return-void
.end method

.method public final removeWakeLockNoUpdateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;II)V
    .registers 6

    .line 1947
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1948
    iget-object p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 1949
    iget v0, p2, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-gtz v0, :cond_1c

    .line 1950
    iget v0, p2, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1c

    .line 1952
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    iget p2, p2, Lcom/android/server/power/PowerManagerService$UidState;->mUid:I

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1955
    :cond_1c
    invoke-virtual {p0, p1, p3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1956
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1957
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return-void
.end method

.method public final restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 8

    .line 2084
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 2085
    iget p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v2, 0xffff

    and-int/2addr p1, v2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_20

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_20

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    .line 2087
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V

    :cond_20
    return-void
.end method

.method public final scheduleAttentiveTimeout(J)V
    .registers 5

    .line 3295
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 3296
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3297
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final scheduleSandmanLocked()V
    .registers 7

    .line 3648
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    .line 3649
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    const/4 v1, 0x0

    .line 3650
    :goto_8
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 3651
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 3652
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->supportsSandmanLocked()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 3653
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 3654
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v2

    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 3655
    invoke-virtual {v3, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3656
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v4}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_3c
    return-void
.end method

.method public final scheduleUserInactivityTimeout(J)V
    .registers 5

    .line 3289
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3290
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3291
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final setAttentionLightInternal(ZI)V
    .registers 5

    .line 4683
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4684
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_b

    .line 4685
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_1b

    .line 4687
    :cond_b
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    .line 4688
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_9

    if-eqz p0, :cond_1a

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    const/4 p1, 0x3

    goto :goto_16

    :cond_15
    move p1, v0

    :goto_16
    const/4 v1, 0x2

    .line 4692
    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    :cond_1a
    return-void

    .line 4688
    :goto_1b
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_9

    throw p0
.end method

.method public setDeviceIdleModeInternal(Z)Z
    .registers 6

    .line 4413
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4414
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    const/4 v2, 0x0

    if-ne v1, p1, :cond_c

    .line 4415
    monitor-exit v0

    return v2

    :catchall_a
    move-exception p0

    goto :goto_31

    .line 4417
    :cond_c
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    .line 4418
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4419
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    const/4 v3, 0x1

    if-nez v1, :cond_1a

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    if-eqz v1, :cond_1b

    :cond_1a
    move v2, v3

    :cond_1b
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    .line 4420
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_a

    if-eqz p1, :cond_2a

    .line 4422
    const-string/jumbo p0, "power"

    invoke-static {p0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    goto :goto_30

    .line 4424
    :cond_2a
    const-string/jumbo p0, "power"

    invoke-static {p0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    :goto_30
    return v3

    .line 4420
    :goto_31
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_a

    throw p0
.end method

.method public setDeviceIdleTempWhitelistInternal([I)V
    .registers 3

    .line 4453
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4454
    :try_start_3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 4455
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->doesIdleStateBlockWakeLocksLocked()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 4456
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 4458
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public setDeviceIdleWhitelistInternal([I)V
    .registers 3

    .line 4444
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4445
    :try_start_3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 4446
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->doesIdleStateBlockWakeLocksLocked()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 4447
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 4449
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public final setDozeAfterScreenOffInternal(Z)V
    .registers 3

    .line 4697
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4698
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    .line 4699
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final setDozeOverrideFromDreamManagerInternal(IIFZ)V
    .registers 7

    .line 4776
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4777
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    if-ne v1, p1, :cond_16

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:F

    .line 4778
    invoke-static {v1, p3}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUseNormalBrightnessForDoze:Z

    if-eq v1, p4, :cond_27

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_29

    .line 4781
    :cond_16
    :goto_16
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 4782
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideReasonFromDreamManager:I

    .line 4783
    iput p3, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:F

    .line 4784
    iput-boolean p4, p0, Lcom/android/server/power/PowerManagerService;->mUseNormalBrightnessForDoze:Z

    .line 4785
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4786
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4788
    :cond_27
    monitor-exit v0

    return-void

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_14

    throw p0
.end method

.method public final setDrawWakeLockOverrideFromSidekickInternal(Z)V
    .registers 4

    .line 4792
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4793
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    if-eq v1, p1, :cond_15

    .line 4794
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    .line 4795
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4796
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_17

    .line 4798
    :cond_15
    :goto_15
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_13

    throw p0
.end method

.method public setForceDisableWakelocksInternal(Z)V
    .registers 4

    .line 4571
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4572
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/power/feature/PowerManagerFlags;->isForceDisableWakelocksEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4573
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mForceDisableWakelocks:Z

    .line 4574
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 4576
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_11

    throw p0
.end method

.method public final setHalAutoSuspendModeLocked(Z)V
    .registers 5

    .line 4213
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUseAutoSuspend:Z

    if-nez v0, :cond_5

    goto :goto_36

    .line 4216
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    if-eq p1, v0, :cond_36

    .line 4220
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 4221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalAutoSuspend("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4223
    :try_start_28
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetAutoSuspend(Z)V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_31

    .line 4225
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_31
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4226
    throw p0

    :cond_36
    :goto_36
    return-void
.end method

.method public final setHalInteractiveModeLocked(Z)V
    .registers 5

    .line 4232
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-eq p1, v0, :cond_32

    .line 4236
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 4237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalInteractive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4239
    :try_start_23
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_2d

    .line 4241
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_2d
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4242
    throw p0

    :cond_32
    return-void
.end method

.method public setLightDeviceIdleModeInternal(Z)Z
    .registers 6

    .line 4430
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4431
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    const/4 v2, 0x0

    if-eq v1, p1, :cond_1b

    .line 4432
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    .line 4433
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    const/4 v3, 0x1

    if-nez v1, :cond_11

    if-eqz p1, :cond_12

    :cond_11
    move v2, v3

    :cond_12
    const/16 p1, 0x8

    .line 4436
    invoke-virtual {p0, p1, v2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    .line 4437
    monitor-exit v0

    return v3

    :catchall_19
    move-exception p0

    goto :goto_1d

    .line 4439
    :cond_1b
    monitor-exit v0

    return v2

    .line 4440
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_19

    throw p0
.end method

.method public final setLowPowerModeInternal(Z)Z
    .registers 4

    .line 4276
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4280
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    if-nez v1, :cond_c

    goto :goto_16

    .line 4284
    :cond_c
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setBatterySaverEnabledManually(Z)V

    const/4 p0, 0x1

    .line 4286
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    goto :goto_19

    :cond_16
    :goto_16
    const/4 p0, 0x0

    .line 4281
    monitor-exit v0

    return p0

    .line 4287
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_14

    throw p0
.end method

.method public setLowPowerStandbyActiveInternal(Z)V
    .registers 4

    .line 4471
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4472
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    if-eq v1, p1, :cond_f

    .line 4473
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    .line 4474
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_11

    .line 4476
    :cond_f
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_d

    throw p0
.end method

.method public setLowPowerStandbyAllowlistInternal([I)V
    .registers 3

    .line 4462
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4463
    :try_start_3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyAllowlist:[I

    .line 4464
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    if-eqz p1, :cond_f

    .line 4465
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_11

    .line 4467
    :cond_f
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_d

    throw p0
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdminInternal(IJ)V
    .registers 12

    if-gez p1, :cond_19

    .line 4387
    const-string p0, "PowerManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempt to set screen off timeout for invalid user: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4390
    :cond_19
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_27

    .line 4393
    :try_start_1e
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/power/ScreenTimeoutConstants;->setMaximumScreenOffTimeoutFromDeviceAdminLocked(J)V

    goto :goto_63

    :catchall_24
    move-exception v0

    move-object p0, v0

    goto :goto_6e

    :cond_27
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, p2, v2

    if-eqz v0, :cond_36

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-nez v0, :cond_38

    :cond_36
    move v3, p1

    goto :goto_5e

    .line 4397
    :cond_38
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    if-eqz v0, :cond_45

    .line 4399
    iput-wide p2, v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    goto :goto_63

    .line 4401
    :cond_45
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 4402
    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v6

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService$ProfilePowerState;-><init>(IJJ)V

    .line 4401
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4404
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_63

    .line 4395
    :goto_5e
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 4407
    :goto_63
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4408
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4409
    monitor-exit v1

    return-void

    :goto_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_1e .. :try_end_6f} :catchall_24

    throw p0
.end method

.method public final setPowerBoostInternal(II)V
    .registers 3

    .line 4803
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerBoost(II)V

    return-void
.end method

.method public final setPowerModeInternal(IZ)Z
    .registers 4

    const/4 v0, 0x5

    if-ne p1, v0, :cond_15

    if-eqz p2, :cond_15

    .line 4808
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    if-eqz v0, :cond_15

    .line 4809
    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getBatterySaverController()Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isLaunchBoostDisabled()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 p0, 0x0

    return p0

    .line 4812
    :cond_15
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z

    move-result p0

    return p0
.end method

.method public setStayOnSettingInternal(I)V
    .registers 3

    .line 4381
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "stay_on_while_plugged_in"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .registers 6

    .line 4763
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4764
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1a

    .line 4765
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 4766
    invoke-static {p1, p2}, Lcom/android/server/EventLogTags;->writeUserActivityTimeoutOverride(J)V

    .line 4767
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4768
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_1c

    .line 4770
    :cond_1a
    :goto_1a
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_18

    throw p0
.end method

.method public final setUserInactiveOverrideFromWindowManagerInternal()V
    .registers 3

    .line 4744
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 4745
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    .line 4746
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4747
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4748
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 8

    .line 4618
    invoke-virtual {p1}, Lcom/android/server/power/PowerManagerService$WakeLock;->isFrozenLocked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 4623
    invoke-virtual {p1, v1}, Lcom/android/server/power/PowerManagerService$WakeLock;->setDisabled(Z)Z

    move-result p0

    return p0

    .line 4625
    :cond_c
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v2, 0xffff

    and-int/2addr v0, v2

    const/16 v2, 0x2710

    const/16 v3, 0x14

    const/4 v4, 0x0

    if-ne v0, v1, :cond_7d

    .line 4627
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-lt v0, v2, :cond_72

    .line 4630
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    iget-boolean v2, v2, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    if-eqz v2, :cond_3a

    .line 4631
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    if-nez v2, :cond_39

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget-boolean v5, v2, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v5, :cond_3a

    iget v2, v2, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v2, v3, :cond_3a

    const/16 v5, 0xb

    if-le v2, v5, :cond_3a

    :cond_39
    move v4, v1

    .line 4636
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->doesIdleStateBlockWakeLocksLocked()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 4639
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 4640
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v5, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    if-gez v5, :cond_5a

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 4641
    invoke-static {v5, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_5a

    iget v0, v2, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v0, v3, :cond_5a

    const/4 v2, 0x5

    if-le v0, v2, :cond_5a

    move v4, v1

    .line 4648
    :cond_5a
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    if-eqz v0, :cond_72

    .line 4649
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 4650
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyAllowlist:[I

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v2, v5}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_72

    iget v0, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v0, v3, :cond_72

    const/4 v2, 0x3

    if-le v0, v2, :cond_72

    move v4, v1

    .line 4658
    :cond_72
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mForceDisableWakelocks:Z

    if-eqz p0, :cond_77

    goto :goto_78

    :cond_77
    move v1, v4

    .line 4661
    :goto_78
    invoke-virtual {p1, v1}, Lcom/android/server/power/PowerManagerService$WakeLock;->setDisabled(Z)Z

    move-result p0

    return p0

    .line 4662
    :cond_7d
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisableScreenWakeLocksWhileCached:Z

    if-eqz v0, :cond_aa

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 4663
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4664
    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 4666
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    if-eqz p0, :cond_a4

    if-lt v0, v2, :cond_a4

    iget-boolean p0, v5, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez p0, :cond_a4

    iget p0, v5, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq p0, v3, :cond_a4

    const/16 v0, 0xc

    if-lt p0, v0, :cond_a4

    goto :goto_a5

    :cond_a4
    move v1, v4

    .line 4676
    :goto_a5
    invoke-virtual {p1, v1}, Lcom/android/server/power/PowerManagerService$WakeLock;->setDisabled(Z)Z

    move-result p0

    return p0

    :cond_aa
    return v4
.end method

.method public setWakefulnessLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 2428
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/android/server/power/PowerGroup;

    invoke-virtual/range {p1 .. p9}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final shouldBoostScreenBrightness()Z
    .registers 1

    .line 4007
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    return p0
.end method

.method public final shouldNapAtBedTimeLocked(Lcom/android/server/power/PowerGroup;)Z
    .registers 5

    .line 3558
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->supportsSandmanLocked()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 3561
    :cond_8
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_12

    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    if-eqz p1, :cond_12

    return v1

    .line 3565
    :cond_12
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsOnlyWhileWirelessChargingSetting:Z

    if-eqz p1, :cond_1c

    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1c

    return v0

    .line 3572
    :cond_1c
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    if-nez p1, :cond_2a

    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateWhilePosturedSetting:Z

    if-eqz p1, :cond_29

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mDevicePostured:Z

    if-eqz p0, :cond_29

    goto :goto_2a

    :cond_29
    return v0

    :cond_2a
    :goto_2a
    return v1
.end method

.method public final shouldUseProximitySensorLocked()Z
    .registers 2

    .line 4091
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/PowerGroup;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v0
.end method

.method public final shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .registers 8

    .line 2861
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedSetting:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2866
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mKeepDreamingWhenUnplugging:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_18

    .line 2867
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v0

    if-ne v0, v2, :cond_18

    if-eqz p1, :cond_18

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_18

    return v1

    :cond_18
    const/4 v0, 0x4

    if-eqz p1, :cond_22

    .line 2873
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v3, :cond_22

    if-ne p2, v0, :cond_22

    return v1

    :cond_22
    if-nez p1, :cond_2f

    .line 2880
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz p1, :cond_2f

    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-ne p1, v0, :cond_2f

    if-nez p3, :cond_2f

    return v1

    .line 2887
    :cond_2f
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result p1

    if-ne p1, v2, :cond_3a

    return v1

    .line 2892
    :cond_3a
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    if-eqz p1, :cond_43

    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    if-nez p1, :cond_43

    return v1

    .line 2897
    :cond_43
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mAlwaysOnEnabled:Z

    if-eqz p1, :cond_4f

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_4f

    return v1

    :cond_4f
    const/4 p0, 0x1

    return p0
.end method

.method public final shutdownOrRebootInternal(IZLjava/lang/String;ZZ)V
    .registers 13

    .line 4310
    const-string/jumbo v0, "userspace"

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4311
    invoke-static {}, Landroid/os/PowerManager;->isRebootingUserspaceSupportedImpl()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_18

    .line 4312
    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempted userspace reboot on a device that doesn\'t support it"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4316
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_29

    .line 4317
    :cond_20
    invoke-static {}, Lcom/android/server/PackageWatchdog;->isRecoveryTriggeredReboot()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 4322
    invoke-static {p3}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 4328
    :cond_29
    new-instance v1, Lcom/android/server/power/PowerManagerService$2;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v6, p3

    move v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;IZZLjava/lang/String;)V

    .line 4348
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x1

    .line 4349
    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4350
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz p4, :cond_51

    .line 4354
    monitor-enter v1

    .line 4357
    :catch_49
    :goto_49
    :try_start_49
    invoke-interface {v1}, Ljava/lang/Runnable;->wait()V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4c} :catch_49
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_49

    :catchall_4d
    move-exception v0

    move-object p0, v0

    .line 4361
    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4d

    throw p0

    :cond_51
    return-void

    .line 4324
    :cond_52
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Too early to call shutdown() or reboot()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z
    .registers 7

    .line 2417
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_e

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez p0, :cond_9

    goto :goto_e

    .line 2421
    :cond_9
    invoke-virtual {p1, p2, p3, p5, p4}, Lcom/android/server/power/PowerGroup;->sleepLocked(JII)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public startUidChangesInternal()V
    .registers 3

    .line 4480
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 4481
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    .line 4482
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public uidActiveInternal(I)V
    .registers 5

    .line 4544
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4545
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    if-nez v1, :cond_1e

    .line 4547
    new-instance v1, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v1, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    const/16 v2, 0x13

    .line 4548
    iput v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 4549
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_2a

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    .line 4551
    iput-boolean p1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 4552
    iget p1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez p1, :cond_28

    .line 4553
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 4555
    :cond_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_1c

    throw p0
.end method

.method public uidGoneInternal(I)V
    .registers 5

    .line 4528
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4529
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_33

    .line 4531
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    const/16 v2, 0x14

    .line 4532
    iput v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v2, 0x0

    .line 4533
    iput-boolean v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 4534
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4535
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->doesIdleStateBlockWakeLocksLocked()Z

    move-result p1

    if-nez p1, :cond_2c

    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    if-eqz p1, :cond_33

    goto :goto_2c

    :catchall_2a
    move-exception p0

    goto :goto_35

    :cond_2c
    :goto_2c
    iget p1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez p1, :cond_33

    .line 4537
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 4540
    :cond_33
    monitor-exit v0

    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_2a

    throw p0
.end method

.method public uidIdleInternal(I)V
    .registers 4

    .line 4559
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4560
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/PowerManagerService$UidState;

    if-eqz p1, :cond_1a

    const/4 v1, 0x0

    .line 4562
    iput-boolean v1, p1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 4563
    iget p1, p1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez p1, :cond_1a

    .line 4564
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_1c

    .line 4567
    :cond_1a
    :goto_1a
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_18

    throw p0
.end method

.method public final updateAttentiveStateLocked(JI)V
    .registers 13

    .line 3319
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    invoke-virtual {v0}, Lcom/android/server/power/ScreenTimeoutConstants;->getAttentiveTimeoutLocked()J

    move-result-wide v0

    .line 3321
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 3322
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 3323
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    sub-long v4, v2, v4

    .line 3325
    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/android/server/power/PowerManagerService;->maybeHideInattentiveSleepWarningLocked(JJ)Z

    move-result v6

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-ltz v0, :cond_54

    if-nez v6, :cond_28

    and-int/lit16 p3, p3, 0x4ab2

    if-eqz p3, :cond_54

    .line 3335
    :cond_28
    iget-object p3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3337
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result p3

    if-eqz p3, :cond_54

    .line 3338
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptFromInattentiveSleepLocked()Z

    move-result p3

    if-eqz p3, :cond_3b

    goto :goto_54

    :cond_3b
    cmp-long p3, p1, v4

    if-gez p3, :cond_41

    move-wide v2, v4

    goto :goto_4d

    :cond_41
    cmp-long p1, p1, v2

    if-gez p1, :cond_4b

    .line 3352
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {p1}, Lcom/android/server/power/InattentiveSleepWarningController;->show()V

    goto :goto_4d

    :cond_4b
    const-wide/16 v2, -0x1

    :goto_4d
    cmp-long p1, v2, v7

    if-ltz p1, :cond_54

    .line 3357
    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/PowerManagerService;->scheduleAttentiveTimeout(J)V

    :cond_54
    :goto_54
    return-void
.end method

.method public final updateDeviceConfigLocked()V
    .registers 2

    .line 1680
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceConfigProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 1681
    invoke-virtual {v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->isDisableScreenWakeLocksWhileCachedFeatureEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisableScreenWakeLocksWhileCached:Z

    return-void
.end method

.method public final updateDreamLocked(IZ)V
    .registers 3

    and-int/lit16 p1, p1, 0x43ff

    if-nez p1, :cond_6

    if-eqz p2, :cond_f

    .line 3640
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 3641
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    :cond_f
    return-void
.end method

.method public final updateGlobalWakefulnessLocked(JIIILjava/lang/String;Ljava/lang/String;)V
    .registers 24

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    .line 2436
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->recalculateGlobalWakefulnessLocked()I

    move-result v5

    .line 2437
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v6

    if-ne v6, v5, :cond_13

    return-void

    :cond_13
    const/4 v7, 0x2

    .line 2444
    const-string v8, ")..."

    const-string v9, "PowerManagerService"

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz v5, :cond_108

    if-eq v5, v11, :cond_bf

    if-eq v5, v7, :cond_a4

    if-ne v5, v10, :cond_8d

    .line 2476
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Going to sleep due to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " (uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", screenOffTimeout="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 2478
    invoke-virtual {v13}, Lcom/android/server/power/ScreenTimeoutConstants;->getScreenOffTimeoutSettingLocked()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", activityTimeoutWM="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", maxDimRatio="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 2481
    invoke-virtual {v13}, Lcom/android/server/power/ScreenTimeoutConstants;->getMaximumScreenDimRatioConfig()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", maxDimDur="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 2483
    invoke-virtual {v13}, Lcom/android/server/power/ScreenTimeoutConstants;->getMaximumScreenDimDurationConfig()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2476
    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    iput-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    .line 2485
    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    .line 2486
    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v8}, Lcom/android/server/power/PowerManagerService$Clock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTimeRealtime:J

    .line 2487
    iput-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 2488
    const-string v8, "goToSleep"

    :goto_89
    move-object/from16 v13, p7

    goto/16 :goto_12a

    .line 2491
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected wakefulness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2471
    :cond_a4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Nap time (uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    const-string/jumbo v8, "nap"

    goto :goto_89

    .line 2458
    :cond_bf
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Waking up from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2459
    invoke-static {v6}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " (uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", reason="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2461
    invoke-static {v3}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", details="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2458
    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    iput-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    .line 2465
    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeReason:I

    .line 2466
    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v8}, Lcom/android/server/power/PowerManagerService$Clock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTimeRealtime:J

    .line 2467
    const-string/jumbo v8, "wakeUp"

    goto :goto_12a

    :cond_108
    move-object/from16 v13, p7

    .line 2447
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sleeping (uid "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v6, v10, :cond_127

    .line 2451
    iput-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    .line 2452
    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    .line 2494
    :cond_127
    const-string/jumbo v8, "reallyGoToSleep"

    :goto_12a
    const-wide/32 v14, 0x20000

    invoke-static {v14, v15, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2498
    :try_start_130
    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-virtual {v8}, Lcom/android/server/power/PowerManagerService$Injector;->invalidateIsInteractiveCaches()V

    .line 2499
    iput v5, v0, Lcom/android/server/power/PowerManagerService;->mWakefulnessRaw:I

    .line 2500
    iput-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 2501
    iget v8, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2504
    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    const/4 v8, 0x0

    if-ne v5, v10, :cond_145

    move v9, v11

    goto :goto_146

    :cond_145
    move v9, v8

    :goto_146
    and-int/2addr v7, v9

    iput-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 2506
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    if-eqz v7, :cond_153

    .line 2507
    invoke-virtual {v7, v5, v3, v1, v2}, Lcom/android/server/power/Notifier;->onGlobalWakefulnessChangeStarted(IIJ)V

    goto :goto_153

    :catchall_151
    move-exception v0

    goto :goto_1ab

    .line 2509
    :cond_153
    :goto_153
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v1, v5}, Lcom/android/server/power/AttentionDetector;->onWakefulnessChangeStarted(I)V

    if-eqz v5, :cond_175

    if-eq v5, v11, :cond_15f

    if-eq v5, v10, :cond_175

    goto :goto_1a7

    .line 2514
    :cond_15f
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    move/from16 v6, p5

    move-object/from16 v5, p6

    move v2, v3

    move-object v3, v13

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/Notifier;->onWakeUp(ILjava/lang/String;ILjava/lang/String;I)V

    .line 2515
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v1, :cond_1a7

    .line 2516
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_1a7

    .line 2523
    :cond_175
    invoke-static {v6}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    if-nez v1, :cond_17c

    goto :goto_1a7

    .line 2529
    :cond_17c
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v8

    :goto_183
    if-ge v8, v1, :cond_1a4

    .line 2531
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2532
    iget v3, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    const/4 v4, 0x6

    if-eq v3, v4, :cond_19f

    const/16 v4, 0xa

    if-eq v3, v4, :cond_19f

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_19f

    goto :goto_1a1

    :cond_19f
    add-int/lit8 v2, v2, 0x1

    :goto_1a1
    add-int/lit8 v8, v8, 0x1

    goto :goto_183

    .line 2540
    :cond_1a4
    invoke-static {v2}, Lcom/android/server/EventLogTags;->writePowerSleepRequested(I)V
    :try_end_1a7
    .catchall {:try_start_130 .. :try_end_1a7} :catchall_151

    .line 2544
    :cond_1a7
    :goto_1a7
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_1ab
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 2545
    throw v0
.end method

.method public final updateIsPoweredLocked(I)V
    .registers 14

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_e3

    .line 2789
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 2790
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2791
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 2792
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2793
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    .line 2794
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v2}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    .line 2795
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v2}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 2796
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v2}, Landroid/os/BatteryManagerInternal;->getBatteryHealth()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_36

    goto :goto_47

    :cond_36
    if-lez v1, :cond_47

    .line 2810
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_47

    .line 2811
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrain:I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    sub-int/2addr v1, v3

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrain:I

    .line 2814
    :cond_47
    :goto_47
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne p1, v1, :cond_53

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-eq v0, v2, :cond_50

    goto :goto_53

    :cond_50
    move-object v3, p0

    goto/16 :goto_d4

    .line 2815
    :cond_53
    :goto_53
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2818
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v2, v1, v3}, Lcom/android/server/power/WirelessChargerDetector;->update(ZI)Z

    move-result v1

    .line 2826
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v2}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v5

    .line 2827
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_9a

    .line 2829
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/android/server/power/PowerGroup;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.server.power:PLUGGED:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 2832
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3e8

    const/4 v7, 0x3

    const/16 v9, 0x3e8

    move-object v3, p0

    .line 2829
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    goto :goto_9b

    :cond_9a
    move-object v3, p0

    .line 2835
    :goto_9b
    iget-object p0, v3, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/server/power/PowerGroup;

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    .line 2840
    iget-boolean p0, v3, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz p0, :cond_d4

    .line 2841
    iget-boolean p0, v3, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz p0, :cond_c9

    invoke-static {v0}, Landroid/os/BatteryManager;->isPlugWired(I)Z

    move-result p0

    if-nez p0, :cond_c9

    iget p0, v3, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2842
    invoke-static {p0}, Landroid/os/BatteryManager;->isPlugWired(I)Z

    move-result p0

    if-eqz p0, :cond_c9

    .line 2843
    iget-object p0, v3, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget p1, v3, Lcom/android/server/power/PowerManagerService;->mUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->onWiredChargingStarted(I)V

    goto :goto_d4

    :cond_c9
    if-eqz v1, :cond_d4

    .line 2845
    iget-object p0, v3, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget p1, v3, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v0, v3, Lcom/android/server/power/PowerManagerService;->mUserId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/Notifier;->onWirelessChargingStarted(II)V

    .line 2850
    :cond_d4
    :goto_d4
    iget-boolean p0, v3, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    if-eqz p0, :cond_e3

    .line 2851
    iget-object p0, v3, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iget-boolean p1, v3, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v0, v3, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget-boolean v1, v3, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setBatteryStatus(ZIZ)V

    :cond_e3
    return-void
.end method

.method public final updatePowerGroupsLocked(I)Z
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3900
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v2

    const v3, 0x1183f

    and-int/2addr v3, v1

    const/4 v5, 0x0

    if-eqz v3, :cond_fe

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_22

    .line 3906
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3907
    sput-boolean v5, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    goto :goto_22

    .line 3909
    :cond_1c
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3913
    :cond_22
    :goto_22
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->doAnyAdjacentGroupsExistLocked()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3914
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->isDefaultAdjacentGroupInteractiveLocked()Z

    move-result v1

    if-nez v1, :cond_31

    const/16 v23, 0x1

    goto :goto_33

    :cond_31
    move/from16 v23, v5

    :goto_33
    move v1, v5

    .line 3915
    :goto_34
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_fa

    .line 3916
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/server/power/PowerGroup;

    .line 3917
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v3

    .line 3922
    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v7, :cond_52

    .line 3925
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    .line 3926
    const-string v8, "boot"

    goto :goto_55

    :cond_52
    const/4 v8, 0x0

    const/high16 v7, 0x7fc00000    # Float.NaN

    .line 3931
    :goto_55
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v9

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->shouldBoostScreenBrightness()Z

    move-result v10

    iget v11, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iget v12, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideReasonFromDreamManager:I

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:F

    iget-boolean v14, v0, Lcom/android/server/power/PowerManagerService;->mUseNormalBrightnessForDoze:Z

    iget-boolean v15, v0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    .line 3937
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    if-eqz v5, :cond_79

    .line 3940
    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 3939
    invoke-virtual {v5}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v5

    const/4 v4, 0x7

    .line 3940
    invoke-virtual {v5, v4}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v4

    :goto_76
    move-object/from16 v16, v4

    goto :goto_83

    .line 3941
    :cond_79
    new-instance v4, Landroid/os/PowerSaveState$Builder;

    invoke-direct {v4}, Landroid/os/PowerSaveState$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v4

    goto :goto_76

    :goto_83
    sget-boolean v17, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    move/from16 p1, v1

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mBrightWhenDozingConfig:Z

    move/from16 v22, v1

    move/from16 v18, v4

    move/from16 v19, v5

    .line 3930
    invoke-virtual/range {v6 .. v23}, Lcom/android/server/power/PowerGroup;->updateLocked(FLjava/lang/CharSequence;ZZIIFZZLandroid/os/PowerSaveState;ZZZZZZZ)Z

    move-result v1

    .line 3945
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v4

    .line 3963
    invoke-virtual {v6, v1}, Lcom/android/server/power/PowerGroup;->setReadyLocked(Z)Z

    move-result v5

    .line 3964
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->isPoweringOnLocked()Z

    move-result v7

    if-eqz v1, :cond_f5

    if-eqz v5, :cond_f5

    if-eqz v7, :cond_f5

    const/4 v1, 0x1

    if-ne v4, v1, :cond_f5

    const/4 v1, 0x0

    .line 3967
    invoke-virtual {v6, v1}, Lcom/android/server/power/PowerGroup;->setIsPoweringOnLocked(Z)V

    .line 3968
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v1

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    const-wide/32 v4, 0x20000

    .line 3969
    const-string v1, "Screen turning on"

    invoke-static {v4, v5, v1, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 3970
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    .line 3971
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getLastPowerOnTimeLocked()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v1, v3

    const/16 v3, 0xc8

    if-lt v1, v3, :cond_f5

    .line 3973
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen on took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PowerManagerService"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f5
    add-int/lit8 v1, p1, 0x1

    const/4 v5, 0x0

    goto/16 :goto_34

    :cond_fa
    move v1, v5

    .line 3977
    iput-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    goto :goto_ff

    :cond_fe
    move v1, v5

    .line 3980
    :goto_ff
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v0

    if-eqz v0, :cond_10a

    if-nez v2, :cond_10a

    const/16 v24, 0x1

    return v24

    :cond_10a
    return v1
.end method

.method public final updatePowerStateLocked()V
    .registers 8

    .line 2699
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_73

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-eqz v0, :cond_73

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUpdatePowerStateInProgress:Z

    if-eqz v0, :cond_d

    goto :goto_73

    .line 2702
    :cond_d
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2703
    const-string v0, "PowerManagerService"

    const-string v1, "Power manager lock was not held when calling updatePowerStateLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    :cond_1c
    const-string/jumbo v0, "updatePowerState"

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x1

    .line 2707
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUpdatePowerStateInProgress:Z

    const/4 v0, 0x0

    .line 2710
    :try_start_29
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    .line 2711
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    .line 2712
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateScreenBrightnessBoostLocked(I)V

    .line 2717
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    move v5, v0

    .line 2720
    :cond_3f
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v5, v6

    .line 2722
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2724
    invoke-virtual {p0, v6}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    .line 2725
    invoke-virtual {p0, v3, v4, v6}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 2726
    invoke-virtual {p0, v3, v4, v6}, Lcom/android/server/power/PowerManagerService;->updateAttentiveStateLocked(JI)V

    .line 2727
    invoke-virtual {p0, v6}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 2733
    invoke-virtual {p0, v3, v4}, Lcom/android/server/power/PowerManagerService;->updateProfilesLocked(J)V

    .line 2736
    invoke-virtual {p0, v5}, Lcom/android/server/power/PowerManagerService;->updatePowerGroupsLocked(I)Z

    move-result v3

    .line 2739
    invoke-virtual {p0, v5, v3}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(IZ)V

    .line 2742
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->finishWakefulnessChangeIfNeededLocked()V

    .line 2745
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->notifyScreenTimeoutPolicyChangesLocked()V

    .line 2750
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V
    :try_end_66
    .catchall {:try_start_29 .. :try_end_66} :catchall_6c

    .line 2752
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2753
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUpdatePowerStateInProgress:Z

    return-void

    :catchall_6c
    move-exception v3

    .line 2752
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2753
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUpdatePowerStateInProgress:Z

    .line 2754
    throw v3

    :cond_73
    :goto_73
    return-void
.end method

.method public final updateProfilesLocked(J)V
    .registers 8

    .line 2762
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_2c

    .line 2764
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2765
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/power/PowerManagerService;->isProfileBeingKeptAwakeLocked(Lcom/android/server/power/PowerManagerService$ProfilePowerState;J)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2766
    iput-boolean v1, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    goto :goto_29

    .line 2767
    :cond_1b
    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    if-nez v4, :cond_29

    const/4 v4, 0x1

    .line 2768
    iput-boolean v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    .line 2769
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v3, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {v4, v3}, Lcom/android/server/power/Notifier;->onProfileTimeout(I)V

    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2c
    return-void
.end method

.method public final updateScreenBrightnessBoostLocked(I)V
    .registers 9

    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_3e

    .line 3986
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz p1, :cond_3e

    .line 3987
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {p1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    .line 3988
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3989
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    cmp-long p1, v3, v5

    if-lez p1, :cond_33

    const-wide/16 v5, 0x1388

    add-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-lez p1, :cond_33

    .line 3993
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 3994
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3995
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_33
    const/4 p1, 0x0

    .line 3999
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    const/4 v3, 0x0

    move-object v0, p0

    .line 4000
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    :cond_3e
    return-void
.end method

.method public final updateSettingsLocked()V
    .registers 7

    .line 1620
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1624
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 1622
    const-string/jumbo v2, "screensaver_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_16

    move v1, v4

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    .line 1626
    const-string/jumbo v1, "screensaver_activate_on_sleep"

    .line 1628
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 1626
    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_26

    move v1, v4

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    .line 1630
    const-string/jumbo v1, "screensaver_activate_on_dock"

    .line 1632
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    .line 1630
    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_36

    move v1, v4

    goto :goto_37

    :cond_36
    move v1, v2

    :goto_37
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    .line 1634
    const-string/jumbo v1, "screensaver_activate_on_postured"

    .line 1636
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedWhilePosturedByDefaultConfig:Z

    .line 1634
    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_46

    move v1, v4

    goto :goto_47

    :cond_46
    move v1, v2

    :goto_47
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateWhilePosturedSetting:Z

    .line 1638
    const-string/jumbo v1, "screensaver_restrict_to_writeless_charging"

    .line 1640
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnlyWhileWirelessChargingConfig:Z

    .line 1638
    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_56

    move v1, v4

    goto :goto_57

    :cond_56
    move v1, v2

    :goto_57
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsOnlyWhileWirelessChargingSetting:Z

    .line 1642
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/server/power/ScreenTimeoutConstants;->updateSettingsLocked(Landroid/content/Context;)V

    .line 1643
    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    .line 1645
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "theater_mode_on"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_7a

    move v1, v4

    goto :goto_7b

    :cond_7a
    move v1, v2

    :goto_7b
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    .line 1647
    const-string/jumbo v1, "wake_when_plugged_or_unplugged"

    .line 1649
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    .line 1647
    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_8a

    move v1, v4

    goto :goto_8b

    :cond_8a
    move v1, v2

    :goto_8b
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedSetting:Z

    .line 1650
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v1, v3}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mAlwaysOnEnabled:Z

    .line 1652
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    if-eqz v1, :cond_ae

    .line 1653
    const-string v1, "double_tap_to_wake"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_a2

    goto :goto_a3

    :cond_a2
    move v4, v2

    .line 1656
    :goto_a3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    if-eq v4, v0, :cond_ae

    .line 1657
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    .line 1658
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z

    .line 1662
    :cond_ae
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b9

    const-string v0, "1"

    goto :goto_bb

    :cond_b9
    const-string v0, "0"

    .line 1663
    :goto_bb
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    const/4 v2, 0x0

    .line 1664
    const-string/jumbo v3, "sys.retaildemo.enabled"

    invoke-interface {v1, v3, v2}, Lcom/android/server/power/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1663
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    .line 1665
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    invoke-interface {v1, v3, v0}, Lcom/android/server/power/SystemPropertiesWrapper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    :cond_d0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return-void
.end method

.method public final updateStayOnLocked(I)V
    .registers 4

    and-int/lit16 p1, p1, 0x120

    if-eqz p1, :cond_2a

    .line 2912
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 2913
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 2915
    invoke-virtual {v0}, Lcom/android/server/power/ScreenTimeoutConstants;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2916
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    goto :goto_20

    :cond_1d
    const/4 v0, 0x0

    .line 2918
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 2921
    :goto_20
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-eq v0, p1, :cond_2a

    .line 2922
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    :cond_2a
    return-void
.end method

.method public final updateSuspendBlockerLocked()V
    .registers 8

    .line 4112
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 4113
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->needSuspendBlockerLocked()Z

    move-result v3

    move v4, v2

    move v5, v4

    .line 4116
    :goto_10
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_29

    if-nez v5, :cond_29

    .line 4117
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v5}, Lcom/android/server/power/PowerGroup;->isBrightOrDimLocked()Z

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_29
    if-eqz v3, :cond_32

    .line 4123
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v4, :cond_32

    .line 4124
    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 4128
    :cond_32
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v4, :cond_41

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    if-nez v4, :cond_41

    .line 4129
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBootingSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 4130
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    :cond_41
    if-eqz v0, :cond_4e

    .line 4132
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-nez v4, :cond_4e

    .line 4133
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 4134
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 4136
    :cond_4e
    const-string v4, "holding display"

    if-eqz v3, :cond_5d

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-nez v6, :cond_5d

    .line 4137
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6, v4}, Lcom/android/server/power/SuspendBlocker;->acquire(Ljava/lang/String;)V

    .line 4138
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 4147
    :cond_5d
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v6, :cond_6c

    if-nez v5, :cond_69

    .line 4152
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 4153
    :cond_69
    invoke-virtual {p0, v5}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    .line 4158
    :cond_6c
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v5, :cond_7b

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    if-eqz v5, :cond_7b

    .line 4159
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBootingSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v5}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 4160
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    :cond_7b
    if-nez v0, :cond_88

    .line 4162
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eqz v0, :cond_88

    .line 4163
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 4164
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    :cond_88
    if-nez v3, :cond_95

    .line 4166
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-eqz v0, :cond_95

    .line 4167
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0, v4}, Lcom/android/server/power/SuspendBlocker;->release(Ljava/lang/String;)V

    .line 4168
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    :cond_95
    if-nez v3, :cond_9e

    .line 4172
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v0, :cond_9e

    .line 4173
    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    :cond_9e
    return-void
.end method

.method public updateUidProcStateInternal(II)V
    .registers 9

    .line 4505
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4506
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    if-nez v1, :cond_1a

    .line 4508
    new-instance v1, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v1, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    .line 4509
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_48

    .line 4511
    :cond_1a
    :goto_1a
    iget p1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    if-gt p1, v4, :cond_24

    move p1, v3

    goto :goto_25

    :cond_24
    move p1, v2

    .line 4513
    :goto_25
    iput p2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 4514
    iget v5, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v5, :cond_46

    .line 4515
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->doesIdleStateBlockWakeLocksLocked()Z

    move-result v5

    if-nez v5, :cond_43

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    if-eqz v5, :cond_36

    goto :goto_43

    .line 4517
    :cond_36
    iget-boolean v1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v1, :cond_46

    if-gt p2, v4, :cond_3d

    move v2, v3

    :cond_3d
    if-eq p1, v2, :cond_46

    .line 4521
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    goto :goto_46

    .line 4516
    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 4524
    :cond_46
    :goto_46
    monitor-exit v0

    return-void

    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_18

    throw p0
.end method

.method public final updateUserActivitySummaryLocked(JI)V
    .registers 41

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const v3, 0x14027

    and-int v3, p3, v3

    if-nez v3, :cond_d

    goto/16 :goto_162

    .line 3150
    :cond_d
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3152
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    invoke-virtual {v3}, Lcom/android/server/power/ScreenTimeoutConstants;->getAttentiveTimeoutLocked()J

    move-result-wide v5

    .line 3153
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutConstants:Lcom/android/server/power/ScreenTimeoutConstants;

    .line 3154
    invoke-virtual {v3, v5, v6}, Lcom/android/server/power/ScreenTimeoutConstants;->getSleepTimeoutLocked(J)J

    move-result-wide v7

    .line 3155
    invoke-virtual {v0, v7, v8, v5, v6}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v5

    .line 3157
    invoke-virtual {v0, v5, v6}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v9

    .line 3159
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, -0x1

    .line 3162
    :goto_2f
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const-wide/16 v17, 0x0

    if-ge v14, v4, :cond_14b

    .line 3165
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerGroup;

    .line 3166
    invoke-virtual {v4}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v19

    .line 3173
    invoke-virtual {v4}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v20

    if-nez v20, :cond_60

    move/from16 v21, v13

    move/from16 v20, v14

    .line 3175
    invoke-virtual {v0, v5, v6, v9, v10}, Lcom/android/server/power/PowerManagerService;->getDefaultGroupScreenOffTimeoutOverrideLocked(JJ)J

    move-result-wide v13

    .line 3177
    invoke-virtual {v0, v13, v14}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v22

    :cond_57
    move-wide/from16 v24, v22

    move-wide/from16 v22, v5

    move-wide/from16 v5, v24

    move-wide/from16 v24, v7

    goto :goto_7e

    :cond_60
    move/from16 v21, v13

    move/from16 v20, v14

    .line 3179
    invoke-virtual {v4, v5, v6}, Lcom/android/server/power/PowerGroup;->getScreenOffTimeoutOverrideLocked(J)J

    move-result-wide v13

    .line 3181
    invoke-virtual {v4, v9, v10}, Lcom/android/server/power/PowerGroup;->getScreenDimDurationOverrideLocked(J)J

    move-result-wide v22

    cmp-long v24, v7, v17

    if-lez v24, :cond_57

    cmp-long v24, v13, v17

    if-lez v24, :cond_57

    .line 3185
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v35, v22

    move-wide/from16 v22, v5

    move-wide/from16 v5, v35

    :goto_7e
    move-wide/from16 v26, v7

    if-eqz v19, :cond_138

    .line 3190
    invoke-virtual {v4}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v7

    move-wide/from16 v28, v9

    .line 3192
    invoke-virtual {v4}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeNoChangeLightsLocked()J

    move-result-wide v9

    .line 3193
    invoke-virtual {v4}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v30

    cmp-long v19, v7, v30

    const/16 v30, 0x2

    if-ltz v19, :cond_ad

    add-long v31, v7, v13

    sub-long v33, v31, v5

    cmp-long v19, v1, v33

    if-gez v19, :cond_a3

    move-wide/from16 v31, v33

    const/16 v19, 0x1

    goto :goto_b0

    :cond_a3
    cmp-long v19, v1, v31

    if-gez v19, :cond_aa

    move/from16 v19, v30

    goto :goto_b0

    :cond_aa
    :goto_aa
    const/16 v19, 0x0

    goto :goto_b0

    :cond_ad
    move-wide/from16 v31, v17

    goto :goto_aa

    :goto_b0
    if-nez v19, :cond_d0

    .line 3205
    invoke-virtual {v4}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v33

    cmp-long v33, v9, v33

    if-ltz v33, :cond_d0

    add-long v31, v9, v13

    cmp-long v13, v1, v31

    if-gez v13, :cond_d0

    .line 3208
    invoke-virtual {v4}, Lcom/android/server/power/PowerGroup;->isPolicyBrightLocked()Z

    move-result v13

    if-eqz v13, :cond_c9

    const/16 v30, 0x1

    goto :goto_d2

    .line 3210
    :cond_c9
    invoke-virtual {v4}, Lcom/android/server/power/PowerGroup;->isPolicyDimLocked()Z

    move-result v13

    if-eqz v13, :cond_d0

    goto :goto_d2

    :cond_d0
    move/from16 v30, v19

    :goto_d2
    const/4 v13, 0x4

    if-nez v30, :cond_ed

    cmp-long v14, v24, v17

    if-ltz v14, :cond_f2

    .line 3218
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 3220
    invoke-virtual {v4}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v9

    cmp-long v9, v7, v9

    if-ltz v9, :cond_ed

    add-long v31, v7, v24

    cmp-long v7, v1, v31

    if-gez v7, :cond_ed

    move/from16 v30, v13

    :cond_ed
    move/from16 v7, v30

    move-wide/from16 v8, v31

    goto :goto_f4

    :cond_f2
    move v7, v13

    move-wide v8, v15

    :goto_f4
    if-eq v7, v13, :cond_107

    if-eqz v3, :cond_107

    and-int/lit8 v7, v7, 0x3

    if-eqz v7, :cond_104

    .line 3237
    iget-wide v13, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    cmp-long v7, v13, v15

    if-nez v7, :cond_104

    .line 3239
    iput-wide v8, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    :cond_104
    move-wide v8, v15

    const/4 v13, 0x4

    goto :goto_108

    :cond_107
    move v13, v7

    :goto_108
    and-int/lit8 v7, v13, 0x1

    if-eqz v7, :cond_11a

    .line 3247
    invoke-virtual {v4}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-nez v7, :cond_11a

    .line 3249
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v7, v8, v9, v5, v6}, Lcom/android/server/power/AttentionDetector;->updateUserActivity(JJ)J

    move-result-wide v8

    .line 3253
    :cond_11a
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z

    move-result v5

    if-eqz v5, :cond_122

    move-wide v8, v15

    const/4 v13, 0x0

    :cond_122
    if-eqz v13, :cond_126

    const/4 v5, 0x1

    goto :goto_127

    :cond_126
    const/4 v5, 0x0

    :goto_127
    or-int v5, v21, v5

    cmp-long v6, v11, v15

    if-nez v6, :cond_12f

    move-wide v11, v8

    goto :goto_13d

    :cond_12f
    cmp-long v6, v8, v15

    if-eqz v6, :cond_13d

    .line 3263
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    goto :goto_13d

    :cond_138
    move-wide/from16 v28, v9

    move/from16 v5, v21

    const/4 v13, 0x0

    .line 3267
    :cond_13d
    :goto_13d
    invoke-virtual {v4, v13}, Lcom/android/server/power/PowerGroup;->setUserActivitySummaryLocked(I)V

    add-int/lit8 v14, v20, 0x1

    move v13, v5

    move-wide/from16 v5, v22

    move-wide/from16 v7, v26

    move-wide/from16 v9, v28

    goto/16 :goto_2f

    :cond_14b
    move/from16 v21, v13

    .line 3278
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/power/PowerManagerService;->getNextProfileTimeoutLocked(J)J

    move-result-wide v1

    cmp-long v3, v1, v17

    if-lez v3, :cond_159

    .line 3280
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    :cond_159
    if-eqz v21, :cond_162

    cmp-long v1, v11, v17

    if-ltz v1, :cond_162

    .line 3284
    invoke-virtual {v0, v11, v12}, Lcom/android/server/power/PowerManagerService;->scheduleUserInactivityTimeout(J)V

    :cond_162
    :goto_162
    return-void
.end method

.method public final updateWakeLockCallbackInternal(Landroid/os/IBinder;Landroid/os/IWakeLockCallback;I)V
    .registers 16

    .line 2016
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2017
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    if-ltz v0, :cond_35

    .line 2027
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2033
    iget-object p1, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    invoke-static {p2, p1}, Lcom/android/server/power/PowerManagerService;->isSameCallback(Landroid/os/IWakeLockCallback;Landroid/os/IWakeLockCallback;)Z

    move-result p1

    if-nez p1, :cond_33

    .line 2034
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v8, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v9, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v10, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    move-object v2, p0

    move-object v11, p2

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    .line 2037
    iput-object v11, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    goto :goto_33

    :catchall_30
    move-exception v0

    move-object p0, v0

    goto :goto_54

    .line 2039
    :cond_33
    :goto_33
    monitor-exit v1

    return-void

    .line 2023
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wake lock not active: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from uid "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2039
    :goto_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_30

    throw p0
.end method

.method public final updateWakeLockDisabledStatesLocked()V
    .registers 2

    .line 4612
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked(Ljava/util/List;)V

    return-void
.end method

.method public final updateWakeLockDisabledStatesLocked(Ljava/util/List;)V
    .registers 9

    .line 4587
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    const/4 v3, 0x1

    if-ge v1, v0, :cond_32

    .line 4589
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4590
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    if-eq v5, v3, :cond_1d

    .line 4591
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 4592
    :cond_1d
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 4594
    iget-boolean v2, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v2, :cond_2b

    .line 4596
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_2e

    .line 4598
    :cond_2b
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :goto_2e
    move v2, v3

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_32
    if-eqz v2, :cond_3c

    .line 4605
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr p1, v3

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4606
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_3c
    return-void
.end method

.method public final updateWakeLockSummaryLocked(I)V
    .registers 12

    const v0, 0x10003

    and-int/2addr p1, v0

    if-eqz p1, :cond_f7

    const/4 p1, 0x0

    .line 2938
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2940
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, p1

    :goto_10
    if-ge v1, v0, :cond_1f

    .line 2942
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iput p1, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1f
    move v1, p1

    .line 2945
    :goto_20
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 2946
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v2, p1}, Lcom/android/server/power/PowerGroup;->setWakeLockSummaryLocked(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 2950
    :cond_36
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, p1

    move v3, v2

    :goto_3e
    if-ge v2, v1, :cond_a5

    .line 2952
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2953
    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService$WakeLock;->getPowerGroupId()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_a2

    .line 2955
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_62

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 2956
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->contains(I)Z

    move-result v6

    if-nez v6, :cond_62

    goto :goto_a2

    .line 2960
    :cond_62
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerGroup;

    .line 2961
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->getWakeLockSummaryFlags(Lcom/android/server/power/PowerManagerService$WakeLock;)I

    move-result v8

    .line 2962
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/2addr v9, v8

    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2964
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v7, :cond_86

    .line 2965
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v5

    or-int/2addr v5, v8

    .line 2967
    invoke-virtual {v6, v5}, Lcom/android/server/power/PowerGroup;->setWakeLockSummaryLocked(I)V

    goto :goto_87

    :cond_86
    or-int/2addr v3, v8

    :goto_87
    move v5, p1

    :goto_88
    if-ge v5, v0, :cond_a2

    .line 2973
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2974
    iget v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {p0, v4, v7}, Lcom/android/server/power/PowerManagerService;->wakeLockAffectsUser(Lcom/android/server/power/PowerManagerService$WakeLock;I)Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 2975
    iget v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    or-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    :cond_9f
    add-int/lit8 v5, v5, 0x1

    goto :goto_88

    :cond_a2
    :goto_a2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 2981
    :cond_a5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutOverridePolicy:Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    if-eqz v1, :cond_ae

    .line 2982
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-virtual {v1, v2}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->checkScreenWakeLock(I)V

    :cond_ae
    move v1, p1

    .line 2985
    :goto_af
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_d2

    .line 2986
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 2987
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v4

    .line 2988
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v5

    or-int/2addr v5, v3

    .line 2987
    invoke-static {v4, v5}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummary(II)I

    move-result v4

    .line 2989
    invoke-virtual {v2, v4}, Lcom/android/server/power/PowerGroup;->setWakeLockSummaryLocked(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_af

    .line 2992
    :cond_d2
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummary(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    :goto_de
    if-ge p1, v0, :cond_f7

    .line 2996
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2997
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v2

    iget v3, v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummary(II)I

    move-result v2

    iput v2, v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_de

    :cond_f7
    return-void
.end method

.method public final updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .registers 16

    .line 1987
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1988
    :try_start_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v1

    if-ltz v1, :cond_32

    .line 1998
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2004
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 2005
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    const/4 v9, 0x0

    move-object v0, p0

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    .line 2008
    iput-object p3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 2009
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    goto :goto_30

    :catchall_2e
    move-exception v0

    goto :goto_51

    .line 2011
    :cond_30
    :goto_30
    monitor-exit v10

    return-void

    .line 1994
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wake lock not active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2011
    :goto_51
    monitor-exit v10
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_2e

    throw v0
.end method

.method public final updateWakefulnessLocked(I)Z
    .registers 11

    const v0, 0x24eb7

    and-int/2addr p1, v0

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 3505
    :cond_8
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {p1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    .line 3511
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v8, 0x1

    sub-int/2addr p1, v8

    :goto_16
    if-ltz p1, :cond_6a

    .line 3512
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 3518
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->canTransitionBetweenNonInteractiveStates()Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 v6, 0x3e8

    const/4 v7, 0x1

    const/4 v5, 0x2

    move-object v1, p0

    .line 3520
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JIIZ)Z

    move-result p0

    :goto_30
    move v0, p0

    goto :goto_66

    :cond_32
    move-object v1, p0

    .line 3526
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result p0

    if-ne p0, v8, :cond_66

    .line 3527
    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result p0

    if-nez p0, :cond_40

    goto :goto_66

    .line 3534
    :cond_40
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z

    move-result p0

    if-eqz p0, :cond_4f

    const/16 v5, 0x9

    const/16 v6, 0x3e8

    .line 3538
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    move-result p0

    goto :goto_30

    .line 3540
    :cond_4f
    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result p0

    if-eqz p0, :cond_5d

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    .line 3541
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->dreamPowerGroupLocked(Lcom/android/server/power/PowerGroup;JIZ)Z

    move-result p0

    goto :goto_30

    :cond_5d
    const/16 v6, 0x3e8

    const/4 v7, 0x0

    const/4 v5, 0x2

    .line 3544
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JIIZ)Z

    move-result p0

    goto :goto_30

    :cond_66
    :goto_66
    add-int/lit8 p1, p1, -0x1

    move-object p0, v1

    goto :goto_16

    :cond_6a
    return v0
.end method

.method public final userActivityFromNative(JIII)V
    .registers 13

    const/16 v6, 0x3e8

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move v1, p4

    move v5, p5

    .line 2174
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(IJIII)V

    return-void
.end method

.method public final userActivityInternal(IJIII)V
    .registers 15

    .line 2179
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1a

    move-object v2, p0

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    .line 2181
    :try_start_b
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 2182
    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_18

    :catchall_15
    move-exception v0

    move-object p0, v0

    goto :goto_41

    .line 2184
    :cond_18
    :goto_18
    monitor-exit v1

    return-void

    :cond_1a
    move-object v2, p0

    .line 2187
    iget-object p0, v2, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p0

    if-nez p0, :cond_25

    .line 2189
    monitor-exit v1

    return-void

    .line 2191
    :cond_25
    iget p0, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    if-ne p0, v0, :cond_2b

    .line 2193
    monitor-exit v1

    return-void

    .line 2195
    :cond_2b
    iget-object p1, v2, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/android/server/power/PowerGroup;

    move-object p0, v2

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    move-result p1

    move-object v2, p0

    if-eqz p1, :cond_3f

    .line 2197
    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2199
    :cond_3f
    monitor-exit v1

    return-void

    :goto_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_15

    throw p0
.end method

.method public final userActivityNoUpdateLocked(JIII)Z
    .registers 16

    const/4 v0, 0x0

    move v1, v0

    .line 2224
    :goto_2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_28

    .line 2225
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/power/PowerGroup;

    move-object v3, p0

    move-wide v5, p1

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    move v1, p0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    move-object p0, v3

    move-wide p1, v5

    move p3, v7

    move p4, v8

    move p5, v9

    goto :goto_2

    :cond_28
    return v1
.end method

.method public final userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z
    .registers 13

    .line 2237
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    .line 2245
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getLastSleepTimeLocked()J

    move-result-wide v0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_b2

    .line 2246
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v2

    cmp-long v0, p2, v2

    if-ltz v0, :cond_b2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_1a

    goto/16 :goto_b2

    .line 2250
    :cond_1a
    const-string/jumbo v0, "userActivity"

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2252
    :try_start_23
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    cmp-long v0, p2, v4

    if-lez v0, :cond_32

    .line 2253
    invoke-virtual {p0, v1, v1}, Lcom/android/server/power/PowerManagerService;->setPowerBoostInternal(II)V

    .line 2254
    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    goto :goto_32

    :catchall_2f
    move-exception p0

    goto/16 :goto_ae

    .line 2257
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v4

    invoke-virtual {v0, v4, p4, p6}, Lcom/android/server/power/Notifier;->onUserActivity(III)V

    .line 2258
    iget-object p6, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {p6, p2, p3, p4}, Lcom/android/server/power/AttentionDetector;->onUserActivity(JI)I

    .line 2260
    iget-object p6, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutOverridePolicy:Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    if-eqz p6, :cond_49

    .line 2261
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-virtual {p6, v0, p4, p5}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->onUserActivity(III)V

    .line 2264
    :cond_49
    iget-boolean p6, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    if-eqz p6, :cond_53

    .line 2265
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    const-wide/16 v4, -0x1

    .line 2266
    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 2268
    :cond_53
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result p6

    if-eqz p6, :cond_aa

    const/4 v0, 0x3

    if-eq p6, v0, :cond_aa

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_61

    goto :goto_aa

    .line 2275
    :cond_61
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/PowerManagerService;->maybeUpdateForegroundProfileLastActivityLocked(J)V

    const/4 p6, 0x1

    and-int/2addr p5, p6

    if-eqz p5, :cond_8b

    .line 2278
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeNoChangeLightsLocked()J

    move-result-wide v4

    cmp-long p5, p2, v4

    if-lez p5, :cond_a6

    .line 2279
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v4

    cmp-long p5, p2, v4

    if-lez p5, :cond_a6

    .line 2280
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/power/PowerGroup;->setLastUserActivityTimeNoChangeLightsLocked(JI)V

    .line 2281
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p2, p1, 0x4

    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-ne p4, p6, :cond_87

    or-int/lit16 p1, p1, 0x1004

    .line 2283
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_87
    .catchall {:try_start_23 .. :try_end_87} :catchall_2f

    .line 2299
    :cond_87
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return p6

    .line 2289
    :cond_8b
    :try_start_8b
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v4

    cmp-long p5, p2, v4

    if-lez p5, :cond_a6

    .line 2290
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/power/PowerGroup;->setLastUserActivityTimeLocked(JI)V

    .line 2291
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p2, p1, 0x4

    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-ne p4, p6, :cond_a2

    or-int/lit16 p1, p1, 0x1004

    .line 2293
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_a2
    .catchall {:try_start_8b .. :try_end_a2} :catchall_2f

    .line 2299
    :cond_a2
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return p6

    :cond_a6
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return v1

    :cond_aa
    :goto_aa
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return v1

    :goto_ae
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2300
    throw p0

    :cond_b2
    :goto_b2
    return v1
.end method

.method public final validateWakeupIsEligible(J)V
    .registers 6

    .line 7564
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_13

    .line 7569
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.DEVICE_POWER"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7566
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event time "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " cannot be newer than "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PowerManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7567
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "event time must not be in the future"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final wakeLockAffectsUser(Lcom/android/server/power/PowerManagerService$WakeLock;I)Z
    .registers 7

    .line 3079
    iget-object p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_42

    move p0, v0

    .line 3080
    :goto_7
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-ge p0, v2, :cond_1f

    .line 3081
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, p0}, Landroid/os/WorkSource;->getUid(I)I

    move-result v2

    .line 3082
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne p2, v2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    .line 3087
    :cond_1f
    iget-object p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_42

    move v2, v0

    .line 3089
    :goto_28
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 3090
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v3}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v3

    .line 3091
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p2, v3, :cond_3f

    return v1

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 3097
    :cond_42
    iget p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    if-ne p2, p0, :cond_4b

    return v1

    :cond_4b
    return v0
.end method

.method public final wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V
    .registers 18

    .line 2331
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_27

    if-eqz p1, :cond_27

    .line 2332
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->hasWakeLockKeepingGroupAsleep(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_27

    .line 2335
    :cond_15
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 2336
    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v8

    move-object v0, p1

    move-wide v1, p2

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 2335
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerGroup;->wakeUpLocked(JILjava/lang/String;ILjava/lang/String;ILcom/android/internal/util/LatencyTracker;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public final wakeupDisplayGroupsLocked(Landroid/util/IntArray;JILjava/lang/String;Ljava/lang/String;I)V
    .registers 19

    .line 7579
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v1, :cond_12

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v1, :cond_12

    .line 7580
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 7581
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void

    .line 7584
    :cond_12
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v9

    const/4 v1, 0x0

    move v10, v1

    :goto_18
    if-ge v10, v9, :cond_41

    .line 7586
    invoke-virtual {p1, v10}, Landroid/util/IntArray;->get(I)I

    move-result v1

    .line 7587
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    if-eqz v2, :cond_3e

    .line 7589
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    move/from16 v8, p7

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    :cond_3e
    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :cond_41
    return-void
.end method

.method public wasDeviceIdleForInternal(J)Z
    .registers 8

    .line 4817
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4818
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v3

    add-long/2addr v3, p1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 4819
    invoke-interface {p0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-gez p0, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    monitor-exit v0

    return v2

    :catchall_1e
    move-exception p0

    .line 4820
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method
