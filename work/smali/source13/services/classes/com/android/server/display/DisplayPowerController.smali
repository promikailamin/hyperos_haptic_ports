.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
.implements Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;,
        Lcom/android/server/display/DisplayPowerController$BrightnessReason;,
        Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;,
        Lcom/android/server/display/DisplayPowerController$SettingsObserver;,
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/display/DisplayPowerController$BrightnessEvent;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BRIGHTNESS_CHANGE_STATSD_REPORT_INTERVAL_MS:I = 0x1f4

.field private static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x64

.field private static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static final CURTAIN_ANIM_DURATION_MILLIS:I = 0x1db

.field private static final CURTAIN_ANIM_INTERPOLATOR_FACTOR:F = 1.5f

.field private static DEBUG:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final MSG_BRIGHTNESS_RAMP_DONE:I = 0xc

.field private static final MSG_CONFIGURE_BRIGHTNESS:I = 0x5

.field private static final MSG_IGNORE_PROXIMITY:I = 0x8

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_RESET_SHORT_MODEL:I = 0xff

.field private static final MSG_SCREEN_OFF_UNBLOCKED:I = 0x4

.field private static final MSG_SCREEN_ON_UNBLOCKED:I = 0x3

.field private static final MSG_SET_TEMPORARY_AUTO_BRIGHTNESS_ADJUSTMENT:I = 0x7

.field private static final MSG_SET_TEMPORARY_BRIGHTNESS:I = 0x6

.field private static final MSG_STATSD_HBM_BRIGHTNESS:I = 0xd

.field private static final MSG_STOP:I = 0x9

.field private static final MSG_UPDATE_BRIGHTNESS:I = 0xa

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final MSG_UPDATE_RBC:I = 0xb

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final RAMP_STATE_SKIP_AUTOBRIGHT:I = 0x2

.field private static final RAMP_STATE_SKIP_INITIAL:I = 0x1

.field private static final RAMP_STATE_SKIP_NONE:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_OFF:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_ON:I = 0x2

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_OFF:I = 0x3

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_ON:I = 0x1

.field private static final REPORTED_TO_POLICY_UNREPORTED:I = -0x1

.field private static final RINGBUFFER_MAX:I = 0x64

.field private static final SCREEN_ANIMATION_RATE_MINIMUM:F = 0.0f

.field private static final SCREEN_OFF_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen off blocked"

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z = false


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mAllowAutoBrightnessWhileDozingConfig:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAppliedAutoBrightness:Z

.field private mAppliedBrightnessBoost:Z

.field private mAppliedDimming:Z

.field private mAppliedLowPower:Z

.field private mAppliedScreenBrightnessOverride:Z

.field private mAppliedTemporaryAutoBrightnessAdjustment:Z

.field private mAppliedTemporaryBrightness:Z

.field private mAppliedThrottling:Z

.field private mAutoBrightnessAdjustment:F

.field private mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private mBootCompleted:Z

.field private final mBrightnessBucketsInDozeConfig:Z

.field private mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field private mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/display/DisplayPowerController$BrightnessEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightnessRampDecreaseMaxTimeMillis:J

.field private mBrightnessRampIncreaseMaxTimeMillis:J

.field private mBrightnessRampRateFast:F

.field private mBrightnessRampRateFastDecrease:F

.field private mBrightnessRampRateFastIncrease:F

.field private mBrightnessRampRateManualDimming:F

.field private mBrightnessRampRateSlow:F

.field private mBrightnessRampRateSlowDecrease:F

.field private mBrightnessRampRateSlowIncrease:F

.field private final mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

.field private final mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

.field private final mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

.field private mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

.field private final mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

.field private final mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field private final mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private final mColorFadeEnabled:Z

.field private final mColorFadeFadesConfig:Z

.field private mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mCurrentScreenBrightnessSetting:F

.field private mCurtainLayerAnimator:Landroid/animation/ObjectAnimator;

.field private final mDisplayBlanksAfterDozeConfig:Z

.field private mDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field private final mDisplayId:I

.field private mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

.field private mDisplayReadyLocked:Z

.field private mDisplayStatsId:I

.field private final mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

.field private final mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

.field private mDozing:Z

.field private final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field private final mHbmController:Lcom/android/server/display/HighBrightnessModeController;

.field private mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private mIgnoreProximityUntilChanged:Z

.field private mInitialAutoBrightness:F

.field private mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private mIsRbcActive:Z

.field private final mLastBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

.field private mLastStatsBrightness:F

.field private mLastUserSetScreenBrightness:F

.field private mLightSensor:Landroid/hardware/Sensor;

.field private final mLock:Ljava/lang/Object;

.field private final mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

.field private mNitsRange:[F

.field private final mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

.field private mOnProximityNegativeMessages:I

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private mOnProximityPositiveMessages:I

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private mOnStateChangedPending:Z

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPendingAutoBrightnessAdjustment:F

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPendingScreenBrightnessSetting:F

.field private mPendingScreenOff:Z

.field private mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

.field private mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/display/DisplayPowerState;

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field private mReportedScreenStateToPolicy:I

.field private final mScreenBrightnessDefault:F

.field private final mScreenBrightnessDimConfig:F

.field private final mScreenBrightnessDozeConfig:F

.field private mScreenBrightnessForVr:F

.field private final mScreenBrightnessForVrDefault:F

.field private final mScreenBrightnessForVrRangeMaximum:F

.field private final mScreenBrightnessForVrRangeMinimum:F

.field private final mScreenBrightnessMinimumDimAmount:F

.field private mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator$DualRampAnimator<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:F

.field private final mScreenBrightnessRangeMinimum:F

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOffBlockStartRealTime:J

.field private mScreenOnBlockStartRealTime:J

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

.field private mSkipRampState:I

.field private final mSkipScreenOnBrightnessRamp:Z

.field private mStopped:Z

.field private mSunlightListener:Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;

.field private final mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

.field private final mSuspendBlockerIdProxDebounce:Ljava/lang/String;

.field private final mSuspendBlockerIdProxNegative:Ljava/lang/String;

.field private final mSuspendBlockerIdProxPositive:Ljava/lang/String;

.field private final mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

.field private final mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

.field private mTemporaryAutoBrightnessAdjRatio:F

.field private mTemporaryAutoBrightnessAdjustment:F

.field private mTemporaryScreenBrightness:F

.field private mUnfinishedBusiness:Z

.field private mUniqueDisplayId:Ljava/lang/String;

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mWaitingForNegativeProximity:Z

.field private final mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public static synthetic $r8$lambda$tDAjTa-HJrq6OAaVFhgoCDgC2lM(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetTAG(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutomaticBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayDeviceConfig(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayId(Lcom/android/server/display/DisplayPowerController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayPowerControllerImpl(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerControllerStub;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnProximityNegativeMessages(Lcom/android/server/display/DisplayPowerController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeMessages:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnProximityPositiveMessages(Lcom/android/server/display/DisplayPowerController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveMessages:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingScreenOffUnblocker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingScreenOnUnblocker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerState(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProximitySensorEnabled(Lcom/android/server/display/DisplayPowerController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProximityThreshold(Lcom/android/server/display/DisplayPowerController;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenOnBlockStartRealTime(Lcom/android/server/display/DisplayPowerController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmStopped(Lcom/android/server/display/DisplayPowerController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuspendBlockerIdOnStateChanged(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuspendBlockerIdProxNegative(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuspendBlockerIdProxPositive(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTemporaryScreenBrightness(Lcom/android/server/display/DisplayPowerController;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmBrightnessConfiguration(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOnProximityNegativeMessages(Lcom/android/server/display/DisplayPowerController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeMessages:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOnProximityPositiveMessages(Lcom/android/server/display/DisplayPowerController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveMessages:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOnStateChangedPending(Lcom/android/server/display/DisplayPowerController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedPending:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTemporaryAutoBrightnessAdjRatio(Lcom/android/server/display/DisplayPowerController;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjRatio:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTemporaryScreenBrightness(Lcom/android/server/display/DisplayPowerController;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyReduceBrightColorsSplineAdjustment(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->applyReduceBrightColorsSplineAdjustment()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanupHandlerThreadAfterStop(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->cleanupHandlerThreadAfterStop()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdebounceProximitySensor(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleProximitySensorEvent(Lcom/android/server/display/DisplayPowerController;JZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRbcChanged(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->handleRbcChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayPowerController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mignoreProximitySensorUntilChangedInternal(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->ignoreProximitySensorUntilChangedInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogHbmBrightnessStats(Lcom/android/server/display/DisplayPowerController;FI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->logHbmBrightnessStats(FI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportStats(Lcom/android/server/display/DisplayPowerController;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->reportStats(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendUpdatePowerState(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munblockScreenOff(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munblockScreenOn(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateScreenBrightnessSetting(Lcom/android/server/display/DisplayPowerController;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->updateScreenBrightnessSetting(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 107
    nop

    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;)V
    .registers 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "blanker"    # Lcom/android/server/display/DisplayBlanker;
    .param p6, "logicalDisplay"    # Lcom/android/server/display/LogicalDisplay;
    .param p7, "brightnessTracker"    # Lcom/android/server/display/BrightnessTracker;
    .param p8, "brightnessSetting"    # Lcom/android/server/display/BrightnessSetting;
    .param p9, "onBrightnessChangeRunnable"    # Ljava/lang/Runnable;

    .line 541
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v10, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 258
    new-instance v0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;-><init>()V

    iput-object v0, v10, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 337
    const/4 v0, -0x1

    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 340
    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 341
    const-wide/16 v1, -0x1

    iput-wide v1, v10, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 365
    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 385
    new-instance v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-direct {v0, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v10, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 386
    new-instance v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-direct {v0, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v10, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 399
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateManualDimming:F

    .line 404
    const/4 v13, 0x0

    iput v13, v10, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    .line 434
    const/4 v0, 0x0

    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 460
    const/high16 v14, 0x7fc00000    # Float.NaN

    iput v14, v10, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:F

    .line 1186
    new-instance v1, Lcom/android/server/display/DisplayPowerController$3;

    invoke-direct {v1, v10}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v10, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1202
    new-instance v1, Lcom/android/server/display/DisplayPowerController$4;

    invoke-direct {v1, v10}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v10, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 2489
    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;

    invoke-direct {v1, v10}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v10, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 2755
    new-instance v1, Lcom/android/server/display/DisplayPowerController$6;

    invoke-direct {v1, v10}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v10, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 2770
    new-instance v1, Lcom/android/server/display/DisplayPowerController$7;

    invoke-direct {v1, v10}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v10, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 2785
    new-instance v1, Lcom/android/server/display/DisplayPowerController$8;

    invoke-direct {v1, v10}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v10, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 3282
    new-instance v1, Lcom/android/server/display/DisplayPowerController$9;

    invoke-direct {v1, v10}, Lcom/android/server/display/DisplayPowerController$9;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v10, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 3587
    new-instance v1, Lcom/android/server/display/DisplayPowerController$10;

    invoke-direct {v1, v10}, Lcom/android/server/display/DisplayPowerController$10;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v10, Lcom/android/server/display/DisplayPowerController;->mSunlightListener:Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;

    .line 542
    move-object/from16 v15, p6

    iput-object v15, v10, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 543
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    iput v1, v10, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 545
    .local v9, "displayIdStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayPowerController"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "unfinished business"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "on state changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "prox positive"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "prox negative"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "prox debounce"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    .line 552
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 553
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 554
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iput v2, v10, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 555
    new-instance v2, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v10, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v2, v10, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 556
    new-instance v3, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    invoke-direct {v3, v10, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    iput-object v3, v10, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    .line 557
    new-instance v3, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    invoke-direct {v3, v10, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    iput-object v3, v10, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    .line 559
    const/4 v3, 0x0

    if-nez v1, :cond_155

    .line 560
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    goto :goto_157

    .line 562
    :cond_155
    iput-object v3, v10, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 565
    :goto_157
    new-instance v4, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-direct {v4, v10, v2}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V

    iput-object v4, v10, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 566
    move-object/from16 v8, p2

    iput-object v8, v10, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 567
    iput-object v12, v10, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 568
    const-class v4, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v4, v10, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 569
    move-object/from16 v7, p5

    iput-object v7, v10, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 570
    iput-object v11, v10, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 571
    move-object/from16 v6, p7

    iput-object v6, v10, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 573
    move-object/from16 v5, p8

    iput-object v5, v10, Lcom/android/server/display/DisplayPowerController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    .line 574
    move-object/from16 v4, p9

    iput-object v4, v10, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    .line 576
    const-class v13, Landroid/os/PowerManager;

    invoke-virtual {v11, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    .line 578
    .local v13, "pm":Landroid/os/PowerManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 581
    .local v14, "resources":Landroid/content/res/Resources;
    nop

    .line 582
    invoke-virtual {v13, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v16

    .line 581
    invoke-static/range {v16 .. v16}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v3

    .line 586
    .local v3, "screenBrightnessSettingMinimumFloat":F
    const/4 v0, 0x4

    .line 587
    invoke-virtual {v13, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    .line 586
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v0

    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 591
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v4, "star"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1b4

    .line 592
    const v0, 0x3e19999a    # 0.15f

    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    goto :goto_1bf

    .line 594
    :cond_1b4
    const/4 v0, 0x3

    .line 595
    invoke-virtual {v13, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    .line 594
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v0

    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    .line 597
    :goto_1bf
    iget v0, v10, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    .line 598
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    .line 599
    nop

    .line 600
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    .line 599
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v0

    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    .line 602
    const v0, 0x10500d7

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMinimumDimAmount:F

    .line 606
    nop

    .line 607
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 606
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v0

    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    .line 609
    const/4 v0, 0x7

    .line 610
    invoke-virtual {v13, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    .line 609
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v0

    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:F

    .line 611
    const/4 v0, 0x6

    .line 612
    invoke-virtual {v13, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    .line 611
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v0

    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:F

    .line 613
    const/4 v0, 0x5

    .line 614
    invoke-virtual {v13, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    .line 613
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v0

    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:F

    .line 619
    const v0, 0x1110033

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_217

    if-nez v1, :cond_217

    move v0, v4

    goto :goto_218

    :cond_217
    const/4 v0, 0x0

    :goto_218
    iput-boolean v0, v10, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 623
    const v0, 0x1110013

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 626
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 627
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 629
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->loadBrightnessRampRates()V

    .line 630
    const v0, 0x11101b1

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    .line 633
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->createHbmControllerLocked()Lcom/android/server/display/HighBrightnessModeController;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 635
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->createBrightnessThrottlerLocked()Lcom/android/server/display/BrightnessThrottler;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v0

    invoke-direct {v10, v0}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(F)Z

    .line 640
    const/16 v16, 0x0

    .line 641
    .local v16, "displayWhiteBalanceSettings":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
    const/16 v18, 0x0

    .line 642
    .local v18, "displayWhiteBalanceController":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    if-nez v1, :cond_28e

    .line 644
    :try_start_252
    new-instance v0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-direct {v0, v11, v2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_257
    .catch Ljava/lang/Exception; {:try_start_252 .. :try_end_257} :catch_270

    move-object v1, v0

    .line 645
    .end local v16    # "displayWhiteBalanceSettings":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
    .local v1, "displayWhiteBalanceSettings":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
    :try_start_258
    invoke-static {v2, v12, v14}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->create(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    move-result-object v0
    :try_end_25c
    .catch Ljava/lang/Exception; {:try_start_258 .. :try_end_25c} :catch_26c

    move-object v2, v0

    .line 647
    .end local v18    # "displayWhiteBalanceController":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    .local v2, "displayWhiteBalanceController":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    :try_start_25d
    invoke-virtual {v1, v10}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z

    .line 648
    invoke-virtual {v2, v10}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_25d .. :try_end_263} :catch_266

    .line 651
    move-object v0, v1

    move-object v4, v2

    goto :goto_292

    .line 649
    :catch_266
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    goto :goto_271

    .end local v2    # "displayWhiteBalanceController":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    .restart local v18    # "displayWhiteBalanceController":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    :catch_26c
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_271

    .end local v1    # "displayWhiteBalanceSettings":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
    .restart local v16    # "displayWhiteBalanceSettings":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
    :catch_270
    move-exception v0

    .line 650
    .local v0, "e":Ljava/lang/Exception;
    :goto_271
    iget-object v1, v10, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to set up display white-balance: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    move-object/from16 v4, v18

    goto :goto_292

    .line 642
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_28e
    move-object/from16 v0, v16

    move-object/from16 v4, v18

    .line 653
    .end local v16    # "displayWhiteBalanceSettings":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
    .end local v18    # "displayWhiteBalanceController":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    .local v0, "displayWhiteBalanceSettings":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
    .local v4, "displayWhiteBalanceController":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    :goto_292
    iput-object v0, v10, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    .line 654
    iput-object v4, v10, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 656
    invoke-direct {v10, v14}, Lcom/android/server/display/DisplayPowerController;->loadNitsRange(Landroid/content/res/Resources;)V

    .line 658
    iget v1, v10, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v1, :cond_2b6

    .line 659
    const-class v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object v1, v10, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 660
    new-instance v2, Lcom/android/server/display/DisplayPowerController$1;

    invoke-direct {v2, v10}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setReduceBrightColorsListener(Lcom/android/server/display/color/ColorDisplayService$ReduceBrightColorsListener;)Z

    move-result v1

    .line 673
    .local v1, "active":Z
    if-eqz v1, :cond_2b5

    .line 674
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->applyReduceBrightColorsSplineAdjustment()V

    .line 676
    .end local v1    # "active":Z
    :cond_2b5
    goto :goto_2b9

    .line 677
    :cond_2b6
    const/4 v1, 0x0

    iput-object v1, v10, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 681
    :goto_2b9
    invoke-static {}, Lcom/android/server/display/DisplayPowerControllerStub;->getInstance()Lcom/android/server/display/DisplayPowerControllerStub;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    .line 682
    iget-object v2, v10, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    .end local v0    # "displayWhiteBalanceSettings":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
    .restart local v16    # "displayWhiteBalanceSettings":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
    iget-object v0, v10, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget v5, v10, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget v6, v10, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    iget v7, v10, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    iget-object v8, v10, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    move-object/from16 v17, v9

    .end local v9    # "displayIdStr":Ljava/lang/String;
    .local v17, "displayIdStr":Ljava/lang/String;
    iget-object v9, v10, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    move-object/from16 v18, v2

    move-object/from16 v2, p0

    move/from16 v20, v3

    .end local v3    # "screenBrightnessSettingMinimumFloat":F
    .local v20, "screenBrightnessSettingMinimumFloat":F
    move-object/from16 v3, v18

    move-object/from16 v18, v4

    const/16 v19, 0x1

    .end local v4    # "displayWhiteBalanceController":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    .restart local v18    # "displayWhiteBalanceController":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    move-object v4, v0

    invoke-interface/range {v1 .. v9}, Lcom/android/server/display/DisplayPowerControllerStub;->init(Lcom/android/server/display/DisplayPowerController;Landroid/content/Context;Landroid/os/Looper;IFFLcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/LogicalDisplay;)V

    .line 685
    iget-object v0, v10, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    iget-object v1, v10, Lcom/android/server/display/DisplayPowerController;->mSunlightListener:Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;

    invoke-interface {v0, v1}, Lcom/android/server/display/DisplayPowerControllerStub;->setSunlightListener(Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;)V

    .line 688
    move-object/from16 v1, p3

    invoke-direct {v10, v14, v1}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/res/Resources;Landroid/os/Handler;)V

    .line 690
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v10, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 691
    const v0, 0x1110027

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 694
    const v0, 0x1110113

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    .line 697
    const v0, 0x1110114

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    .line 700
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->loadProximitySensor()V

    .line 702
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v0

    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    .line 703
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()F

    move-result v0

    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    .line 704
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v0

    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 705
    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, v10, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 706
    iput v2, v10, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 707
    iput v2, v10, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 709
    const/4 v3, 0x0

    iput v3, v10, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjRatio:F

    .line 710
    iput v2, v10, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 712
    const v0, 0x10500b3

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:F

    .line 714
    const v0, 0x10500b2

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, v10, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:F

    .line 718
    return-void
.end method

.method private animateScreenBrightness(FFF)V
    .registers 9
    .param p1, "target"    # F
    .param p2, "sdrTarget"    # F
    .param p3, "rate"    # F

    .line 2257
    const-string v0, "debug.tracing.screen_brightness"

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    invoke-interface {v1, p3}, Lcom/android/server/display/DisplayPowerControllerStub;->adjustBackLightRate(F)F

    move-result p3

    .line 2258
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_38

    .line 2259
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animating brightness: target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sdrTarget="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    :cond_38
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->animateTo(FFF)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 2264
    const-wide/32 v1, 0x20000

    float-to-int v3, p1

    const-string v4, "TargetScreenBrightness"

    invoke-static {v1, v2, v4, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2269
    :try_start_49
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_50} :catch_51

    .line 2273
    goto :goto_76

    .line 2270
    :catch_51
    move-exception v1

    .line 2271
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setprop debug.tracing.screen_brightnes failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_76
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->noteScreenBrightness(F)V

    .line 2277
    :cond_79
    return-void
.end method

.method private animateScreenStateChange(IZ)V
    .registers 10
    .param p1, "target"    # I
    .param p2, "performScreenOffTransition"    # Z

    .line 2281
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 2282
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2283
    :cond_16
    if-eq p1, v2, :cond_19

    .line 2284
    return-void

    .line 2287
    :cond_19
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2290
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2291
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2292
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 2295
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2296
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v5, :cond_3c

    move v5, v2

    goto :goto_3d

    :cond_3c
    move v5, v1

    .line 2295
    :goto_3d
    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 2297
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_47

    .line 2298
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 2305
    :cond_47
    if-eq p1, v3, :cond_4b

    move v0, v3

    goto :goto_4c

    :cond_4b
    move v0, v1

    :goto_4c
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IZ)Z

    .line 2311
    :cond_4f
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v0, :cond_5f

    if-eq p1, v3, :cond_5f

    .line 2312
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2313
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2314
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    .line 2317
    :cond_5f
    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne p1, v2, :cond_bf

    .line 2321
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 2322
    return-void

    .line 2338
    :cond_6b
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 2339
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 2342
    :cond_7c
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v1, :cond_a4

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v1, :cond_a4

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    .line 2343
    invoke-interface {v1}, Lcom/android/server/display/DisplayPowerControllerStub;->isCurtainAnimationNeeded()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 2344
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setCurtainAnimLevel(F)V

    .line 2345
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->isScreenReady()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 2346
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    invoke-interface {v0}, Lcom/android/server/display/DisplayPowerControllerStub;->onCurtainAnimationFinished()V

    .line 2347
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurtainLayerAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_b3

    .line 2349
    :cond_a4
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getCurtainAnimLevel()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_b3

    .line 2350
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissCurtainAnim()V

    .line 2354
    :cond_b3
    :goto_b3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2355
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_201

    .line 2357
    :cond_bf
    const/4 v5, 0x5

    if-ne p1, v5, :cond_f0

    .line 2361
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2362
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-ne v0, v2, :cond_d3

    .line 2363
    return-void

    .line 2367
    :cond_d3
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-nez v0, :cond_da

    .line 2368
    return-void

    .line 2372
    :cond_da
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2373
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 2375
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setCurtainAnimLevel(F)V

    .line 2376
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissCurtainAnim()V

    goto/16 :goto_201

    .line 2378
    :cond_f0
    const/4 v5, 0x3

    if-ne p1, v5, :cond_121

    .line 2383
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_104

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2384
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-ne v0, v2, :cond_104

    .line 2385
    return-void

    .line 2389
    :cond_104
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-nez v0, :cond_10b

    .line 2390
    return-void

    .line 2394
    :cond_10b
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2395
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 2397
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setCurtainAnimLevel(F)V

    .line 2398
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissCurtainAnim()V

    goto/16 :goto_201

    .line 2400
    :cond_121
    const/4 v6, 0x4

    if-ne p1, v6, :cond_15d

    .line 2404
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_135

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2405
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v6, :cond_135

    .line 2406
    return-void

    .line 2411
    :cond_135
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v6, :cond_147

    .line 2412
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-nez v0, :cond_144

    .line 2413
    return-void

    .line 2415
    :cond_144
    invoke-direct {p0, v6}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2419
    :cond_147
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2420
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 2422
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setCurtainAnimLevel(F)V

    .line 2423
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissCurtainAnim()V

    goto/16 :goto_201

    .line 2425
    :cond_15d
    const/4 v5, 0x6

    if-ne p1, v5, :cond_198

    .line 2429
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_171

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2430
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v5, :cond_171

    .line 2431
    return-void

    .line 2436
    :cond_171
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v5, :cond_183

    .line 2437
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-nez v0, :cond_180

    .line 2438
    return-void

    .line 2440
    :cond_180
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2444
    :cond_183
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2445
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 2447
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setCurtainAnimLevel(F)V

    .line 2448
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissCurtainAnim()V

    goto :goto_201

    .line 2452
    :cond_198
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2455
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v4, :cond_1a6

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    invoke-interface {v4}, Lcom/android/server/display/DisplayPowerControllerStub;->isColorInversionEnabled()Z

    move-result v4

    if-eqz v4, :cond_1ab

    .line 2456
    :cond_1a6
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2459
    :cond_1ab
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v4

    cmpl-float v0, v4, v0

    if-nez v0, :cond_1dc

    .line 2462
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2463
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2466
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1c9

    .line 2467
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 2469
    :cond_1c9
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurtainLayerAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1d6

    .line 2470
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurtainLayerAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 2472
    :cond_1d6
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissCurtainAnim()V

    goto :goto_201

    .line 2474
    :cond_1dc
    if-eqz p2, :cond_1fc

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2476
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v4, :cond_1e7

    .line 2477
    goto :goto_1e8

    :cond_1e7
    move v2, v3

    .line 2475
    :goto_1e8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1fc

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2478
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v3, :cond_1fc

    .line 2480
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_201

    .line 2484
    :cond_1fc
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 2487
    :goto_201
    return-void
.end method

.method private applyReduceBrightColorsSplineAdjustment()V
    .registers 3

    .line 721
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 722
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 723
    return-void
.end method

.method private blockScreenOff()V
    .registers 5

    .line 2104
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-nez v0, :cond_22

    .line 2105
    const-wide/32 v0, 0x20000

    const/4 v2, 0x0

    const-string v3, "Screen off blocked"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2106
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker-IA;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 2107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    .line 2108
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string v1, "Blocking screen off"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    :cond_22
    return-void
.end method

.method private blockScreenOn()V
    .registers 5

    .line 2086
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_22

    .line 2087
    const-wide/32 v0, 0x20000

    const/4 v2, 0x0

    const-string v3, "Screen on blocked"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2088
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker-IA;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 2089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 2090
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string v1, "Blocking screen on until initial contents have been drawn."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :cond_22
    return-void
.end method

.method private static clampAbsoluteBrightness(F)F
    .registers 3
    .param p0, "value"    # F

    .line 3002
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private static clampAutoBrightnessAdjustment(F)F
    .registers 3
    .param p0, "value"    # F

    .line 3007
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(F)F
    .registers 4
    .param p1, "value"    # F

    .line 2239
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2242
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    .line 2244
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 2245
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v1

    .line 2244
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private clampScreenBrightnessForVr(F)F
    .registers 4
    .param p1, "value"    # F

    .line 2233
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:F

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:F

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private cleanupHandlerThreadAfterStop()V
    .registers 6

    .line 1213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1214
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->stop()V

    .line 1215
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessThrottler;->stop()V

    .line 1216
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1219
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-eqz v1, :cond_21

    .line 1220
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 1221
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1223
    :cond_21
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedPending:Z

    if-eqz v1, :cond_2e

    .line 1224
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 1225
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedPending:Z

    .line 1227
    :cond_2e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2f
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveMessages:I

    if-ge v1, v3, :cond_3d

    .line 1228
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 1227
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 1230
    .end local v1    # "i":I
    :cond_3d
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveMessages:I

    .line 1231
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_40
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeMessages:I

    if-ge v1, v3, :cond_4e

    .line 1232
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 1231
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 1234
    .end local v1    # "i":I
    :cond_4e
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeMessages:I

    .line 1236
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_59

    .line 1237
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v0

    goto :goto_5a

    .line 1238
    :cond_59
    const/4 v0, 0x0

    :goto_5a
    nop

    .line 1239
    .local v0, "brightness":F
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->reportStats(F)V

    .line 1241
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v1, :cond_67

    .line 1242
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->stop()V

    .line 1243
    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1245
    :cond_67
    return-void
.end method

.method private clearPendingProximityDebounceTime()V
    .registers 5

    .line 2574
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_13

    .line 2575
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2576
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 2578
    :cond_13
    return-void
.end method

.method private convertToNits(F)F
    .registers 3
    .param p1, "brightness"    # F

    .line 2728
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v0, :cond_7

    .line 2729
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 2731
    :cond_7
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->convertToNits(F)F

    move-result v0

    return v0
.end method

.method private createBrightnessThrottlerLocked()Lcom/android/server/display/BrightnessThrottler;
    .registers 7

    .line 2074
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 2075
    .local v0, "device":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    .line 2077
    .local v1, "ddConfig":Lcom/android/server/display/DisplayDeviceConfig;
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessThrottlingData()Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    move-result-object v2

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 2078
    .local v2, "data":Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;
    :goto_12
    new-instance v3, Lcom/android/server/display/BrightnessThrottler;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v5, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    invoke-direct {v3, v4, v2, v5}, Lcom/android/server/display/BrightnessThrottler;-><init>(Landroid/os/Handler;Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;Ljava/lang/Runnable;)V

    return-object v3
.end method

.method private createHbmControllerLocked()Lcom/android/server/display/HighBrightnessModeController;
    .registers 21

    .line 2037
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    .line 2038
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v2

    .line 2039
    .local v2, "ddConfig":Lcom/android/server/display/DisplayDeviceConfig;
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 2040
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v3

    .line 2041
    .local v3, "displayToken":Landroid/os/IBinder;
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 2042
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v16

    .line 2044
    .local v16, "displayUniqueId":Ljava/lang/String;
    if-eqz v2, :cond_27

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    move-result-object v4

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    :goto_28
    move-object v12, v4

    .line 2045
    .local v12, "hbmData":Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v15

    .line 2046
    .local v15, "info":Lcom/android/server/display/DisplayDeviceInfo;
    new-instance v17, Lcom/android/server/display/HighBrightnessModeController;

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget v6, v15, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v7, v15, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    new-instance v13, Lcom/android/server/display/DisplayPowerController$5;

    invoke-direct {v13, v0}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    new-instance v14, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    invoke-direct {v14, v0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    move-object/from16 v4, v17

    move-object v8, v3

    move-object/from16 v18, v9

    move-object/from16 v9, v16

    move-object/from16 v19, v15

    .end local v15    # "info":Lcom/android/server/display/DisplayDeviceInfo;
    .local v19, "info":Lcom/android/server/display/DisplayDeviceInfo;
    move-object/from16 v15, v18

    invoke-direct/range {v4 .. v15}, Lcom/android/server/display/HighBrightnessModeController;-><init>(Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Landroid/content/Context;)V

    return-object v17
.end method

.method private debounceProximitySensor()V
    .registers 7

    .line 2545
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_6a

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6a

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6a

    .line 2548
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2549
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_5c

    .line 2550
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_44

    .line 2552
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mIgnoreProximityUntilChanged:Z

    .line 2553
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No longer ignoring proximity ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    :cond_44
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 2557
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 2559
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v2, :cond_58

    .line 2560
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_55

    move v4, v5

    :cond_55
    invoke-virtual {v2, v4}, Lcom/android/server/display/BrightnessTracker;->adjustSensorListenerWithProximity(Z)V

    .line 2563
    :cond_58
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_6a

    .line 2567
    :cond_5c
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2568
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2571
    .end local v0    # "now":J
    .end local v2    # "msg":Landroid/os/Message;
    :cond_6a
    :goto_6a
    return-void
.end method

.method private dumpBrightnessEvents(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2988
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    .line 2989
    .local v0, "size":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_f

    .line 2990
    const-string v1, "No Automatic Brightness Adjustments"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2991
    return-void

    .line 2994
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Automatic Brightness Adjustments Last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2995
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    .line 2996
    .local v1, "eventArray":[Lcom/android/server/display/DisplayPowerController$BrightnessEvent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 2997
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2996
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 2999
    .end local v2    # "i":I
    :cond_5b
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2857
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2858
    const-string v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnfinishedBusiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2868
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2867
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastUserSetScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentScreenBrightnessSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenBrightnessSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryAutoBrightnessAdjRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrFloat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedThrottling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedThrottling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedScreenBrightnessOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedTemporaryBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedBrightnessBoost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipRampState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->skipRampStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInitialAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOnBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOffUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 2902
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2901
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsRbcActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsRbcActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOnStateChangePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOnProximityPositiveMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveMessages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOnProximityNegativeMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeMessages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2908
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-eqz v0, :cond_414

    .line 2909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 2910
    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2909
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2913
    :cond_414
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_434

    .line 2914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 2915
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2914
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2917
    :cond_434
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_454

    .line 2918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 2919
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2918
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2922
    :cond_454
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_45b

    .line 2923
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 2926
    :cond_45b
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_465

    .line 2927
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 2928
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpBrightnessEvents(Ljava/io/PrintWriter;)V

    .line 2931
    :cond_465
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    if-eqz v0, :cond_46c

    .line 2932
    invoke-virtual {v0, p1}, Lcom/android/server/display/HighBrightnessModeController;->dump(Ljava/io/PrintWriter;)V

    .line 2935
    :cond_46c
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    if-eqz v0, :cond_473

    .line 2936
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessThrottler;->dump(Ljava/io/PrintWriter;)V

    .line 2939
    :cond_473
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2940
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_482

    .line 2941
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->dump(Ljava/io/PrintWriter;)V

    .line 2942
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->dump(Ljava/io/PrintWriter;)V

    .line 2945
    :cond_482
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    invoke-interface {v0, p1}, Lcom/android/server/display/DisplayPowerControllerStub;->dump(Ljava/io/PrintWriter;)V

    .line 2946
    return-void
.end method

.method private getAutoBrightnessAdjustmentSetting()F
    .registers 5

    .line 2619
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2621
    .local v0, "adj":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    :cond_16
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAutoBrightnessAdjustment(F)F

    move-result v2

    :goto_1a
    return v2
.end method

.method private getScreenBrightnessForVrSetting()F
    .registers 5

    .line 2633
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:F

    const-string/jumbo v2, "screen_brightness_for_vr_float"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2636
    .local v0, "brightnessFloat":F
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForVr(F)F

    move-result v1

    return v1
.end method

.method private handleProximitySensorEvent(JZ)V
    .registers 8
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .line 2517
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_2c

    .line 2518
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_b

    if-nez p3, :cond_b

    .line 2519
    return-void

    .line 2521
    :cond_b
    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    if-eqz p3, :cond_11

    .line 2522
    return-void

    .line 2528
    :cond_11
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2529
    const-wide/16 v2, 0x0

    if-eqz p3, :cond_22

    .line 2530
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2531
    add-long/2addr v2, p1

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_29

    .line 2534
    :cond_22
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2535
    add-long/2addr v2, p1

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 2540
    :goto_29
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    .line 2542
    :cond_2c
    return-void
.end method

.method private handleRbcChanged()V
    .registers 5

    .line 726
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v0, :cond_5

    .line 727
    return-void

    .line 729
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_1b

    :cond_f
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 731
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-nez v0, :cond_23

    .line 733
    :cond_1b
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string v1, "No brightness mapping available to recalculate splines for this mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return-void

    .line 737
    :cond_23
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    array-length v0, v0

    new-array v0, v0, [F

    .line 738
    .local v0, "adjustedNits":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    array-length v3, v2

    if-ge v1, v3, :cond_3b

    .line 739
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    aget v2, v2, v1

    invoke-virtual {v3, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->getReduceBrightColorsAdjustedBrightnessNits(F)F

    move-result v2

    aput v2, v0, v1

    .line 738
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 741
    .end local v1    # "i":I
    :cond_3b
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->isReduceBrightColorsActivated()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsRbcActive:Z

    .line 742
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->recalculateSplines(Z[F)V

    .line 743
    return-void
.end method

.method private handleSettingsChange(Z)V
    .registers 3
    .param p1, "userSwitch"    # Z

    .line 2603
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 2604
    if-eqz p1, :cond_12

    .line 2606
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setCurrentScreenBrightness(F)V

    .line 2607
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_12

    .line 2608
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 2611
    :cond_12
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 2614
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    .line 2615
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 2616
    return-void
.end method

.method private ignoreProximitySensorUntilChangedInternal()V
    .registers 3

    .line 2746
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIgnoreProximityUntilChanged:Z

    if-nez v0, :cond_15

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 2749
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIgnoreProximityUntilChanged:Z

    .line 2750
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string v1, "Ignoring proximity"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 2753
    :cond_15
    return-void
.end method

.method private initialize(I)V
    .registers 8
    .param p1, "displayState"    # I

    .line 982
    new-instance v0, Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 983
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v2, :cond_10

    new-instance v2, Lcom/android/server/display/ColorFade;

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-direct {v2, v3}, Lcom/android/server/display/ColorFade;-><init>(I)V

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;II)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 985
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v1, :cond_78

    .line 986
    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_fa

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 988
    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 989
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 991
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v3, v2, [F

    fill-array-data v3, :array_102

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 993
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 994
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 997
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->CURTAIN_ANIM_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    fill-array-data v2, :array_10a

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurtainLayerAnimator:Landroid/animation/ObjectAnimator;

    .line 998
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 999
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurtainLayerAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1db

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1000
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurtainLayerAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1004
    :cond_78
    new-instance v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    sget-object v3, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator$DualRampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;Landroid/util/FloatProperty;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 1007
    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    iget-wide v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setAnimationTimeLimits(JJ)V

    .line 1010
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 1012
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    invoke-virtual {v0, v1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setDisplayPowerController(Lcom/android/server/display/DisplayPowerControllerStub;)V

    .line 1013
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-interface {v0, v1}, Lcom/android/server/display/DisplayPowerControllerStub;->setRampAnimator(Lcom/android/server/display/RampAnimator$DualRampAnimator;)V

    .line 1016
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(I)V

    .line 1017
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->noteScreenBrightness(F)V

    .line 1020
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->convertToNits(F)F

    move-result v0

    .line 1021
    .local v0, "brightness":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_c7

    .line 1022
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessTracker;->start(F)V

    .line 1024
    :cond_c7
    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    .line 1029
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v2, v1}, Lcom/android/server/display/BrightnessSetting;->registerListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V

    .line 1030
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1031
    const-string/jumbo v2, "screen_brightness_for_vr_float"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1030
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1033
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1034
    const-string/jumbo v2, "screen_auto_brightness_adj"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1033
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1036
    return-void

    :array_fa
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_102
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_10a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isValidBrightnessValue(F)Z
    .registers 3
    .param p1, "brightnessState"    # F

    .line 2251
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private loadAmbientLightSensor()V
    .registers 6

    .line 2203
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientLightSensor()Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    move-result-object v0

    .line 2204
    .local v0, "lightSensor":Lcom/android/server/display/DisplayDeviceConfig$SensorData;
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v1, :cond_c

    .line 2205
    const/4 v1, 0x5

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 2206
    .local v1, "fallbackType":I
    :goto_d
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 2208
    return-void
.end method

.method private loadBrightnessRampRates()V
    .registers 3

    .line 1147
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampFastDecrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastDecrease:F

    .line 1148
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampFastIncrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastIncrease:F

    .line 1149
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampSlowDecrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecrease:F

    .line 1150
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampSlowIncrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncrease:F

    .line 1151
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1152
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampDecreaseMaxMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    .line 1153
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1154
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampIncreaseMaxMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    .line 1155
    return-void
.end method

.method private loadFromDisplayDeviceConfig(Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V
    .registers 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Lcom/android/server/display/DisplayDeviceInfo;

    .line 934
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->loadBrightnessRampRates()V

    .line 935
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->loadProximitySensor()V

    .line 936
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->loadNitsRange(Landroid/content/res/Resources;)V

    .line 937
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/res/Resources;Landroid/os/Handler;)V

    .line 938
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->reloadReduceBrightColours()V

    .line 939
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-eqz v0, :cond_28

    .line 940
    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    iget-wide v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setAnimationTimeLimits(JJ)V

    .line 944
    :cond_28
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget v6, p2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v7, p2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-object v9, p2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 945
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    move-result-object v10

    new-instance v11, Lcom/android/server/display/DisplayPowerController$2;

    invoke-direct {v11, p0}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 944
    move-object v8, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/display/HighBrightnessModeController;->resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V

    .line 959
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 960
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessThrottlingData()Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    move-result-object v1

    .line 959
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessThrottler;->resetThrottlingData(Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;)V

    .line 963
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updateStubConfigInfo()V

    .line 964
    return-void
.end method

.method private loadNitsRange(Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 1158
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1159
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    goto :goto_27

    .line 1161
    :cond_13
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string v1, "Screen brightness nits configuration is unavailable; falling back"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const v0, 0x10700aa

    .line 1163
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1162
    invoke-static {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    .line 1165
    :goto_27
    return-void
.end method

.method private loadProximitySensor()V
    .registers 6

    .line 2214
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 2215
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getProximitySensor()Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    move-result-object v0

    .line 2216
    .local v0, "proxSensor":Lcom/android/server/display/DisplayDeviceConfig$SensorData;
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v1, :cond_d

    .line 2217
    const/16 v1, 0x8

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 2218
    .local v1, "fallbackType":I
    :goto_e
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 2220
    if-eqz v2, :cond_28

    .line 2221
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    .line 2224
    :cond_28
    return-void
.end method

.method private logDisplayPolicyChanged(I)V
    .registers 4
    .param p1, "newPolicy"    # I

    .line 2596
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6a0

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2597
    .local v0, "log":Landroid/metrics/LogMaker;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2598
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 2599
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 2600
    return-void
.end method

.method private logHbmBrightnessStats(FI)V
    .registers 5
    .param p1, "brightness"    # F
    .param p2, "displayStatsId"    # I

    .line 3072
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    monitor-enter v0

    .line 3073
    const/16 v1, 0x1a1

    :try_start_5
    invoke-static {v1, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIF)V

    .line 3075
    monitor-exit v0

    .line 3076
    return-void

    .line 3075
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private noteScreenBrightness(F)V
    .registers 4
    .param p1, "brightness"    # F

    .line 3022
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_12

    .line 3029
    nop

    .line 3030
    :try_start_5
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToIntRangeForLowLevel(F)F

    move-result v1

    .line 3029
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_11

    .line 3034
    goto :goto_12

    .line 3032
    :catch_11
    move-exception v0

    .line 3036
    :cond_12
    :goto_12
    return-void
.end method

.method private noteScreenState(I)V
    .registers 3
    .param p1, "screenState"    # I

    .line 3011
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_9

    .line 3014
    :try_start_4
    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 3017
    goto :goto_9

    .line 3015
    :catch_8
    move-exception v0

    .line 3019
    :cond_9
    :goto_9
    return-void
.end method

.method private notifyBrightnessTrackerChanged(FZZ)V
    .registers 12
    .param p1, "brightness"    # F
    .param p2, "userInitiated"    # Z
    .param p3, "hadUserDataPoint"    # Z

    .line 2712
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->convertToNits(F)F

    move-result v7

    .line 2713
    .local v7, "brightnessInNits":F
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-ltz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_33

    .line 2718
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v0, :cond_1f

    .line 2719
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    move v3, v0

    goto :goto_22

    .line 2720
    :cond_1f
    const/high16 v0, 0x3f800000    # 1.0f

    move v3, v0

    :goto_22
    nop

    .line 2721
    .local v3, "powerFactor":F
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2723
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 2721
    move v1, v7

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/BrightnessTracker;->notifyBrightnessChanged(FZFZZLjava/lang/String;)V

    .line 2725
    .end local v3    # "powerFactor":F
    :cond_33
    return-void
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 2949
    packed-switch p0, :pswitch_data_12

    .line 2957
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2955
    :pswitch_8
    const-string v0, "Positive"

    return-object v0

    .line 2953
    :pswitch_b
    const-string v0, "Negative"

    return-object v0

    .line 2951
    :pswitch_e
    const-string v0, "Unknown"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private putAutoBrightnessAdjustmentSetting(F)V
    .registers 5
    .param p1, "adjustment"    # F

    .line 2666
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v0, :cond_20

    .line 2668
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_10

    :cond_c
    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->clampAutoBrightnessAdjustment(F)F

    move-result v0

    :goto_10
    move p1, v0

    .line 2669
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 2670
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "screen_auto_brightness_adj"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2674
    :cond_20
    return-void
.end method

.method private reloadReduceBrightColours()V
    .registers 2

    .line 1168
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->isReduceBrightColorsActivated()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1169
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->applyReduceBrightColorsSplineAdjustment()V

    .line 1171
    :cond_d
    return-void
.end method

.method private reportStats(F)V
    .registers 9
    .param p1, "brightness"    # F

    .line 3039
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    .line 3040
    return-void

    .line 3043
    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3044
    .local v0, "hbmTransitionPoint":F
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v1

    .line 3045
    :try_start_c
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    if-nez v2, :cond_14

    .line 3046
    monitor-exit v1

    return-void

    .line 3048
    :cond_14
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    move v0, v2

    .line 3049
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_5c

    .line 3051
    cmpl-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_24

    move v1, v2

    goto :goto_25

    :cond_24
    move v1, v3

    .line 3052
    .local v1, "aboveTransition":Z
    :goto_25
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v3

    .line 3054
    .local v2, "oldAboveTransition":Z
    :goto_2d
    if-nez v1, :cond_31

    if-eqz v2, :cond_5b

    .line 3055
    :cond_31
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    .line 3056
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 3057
    if-eq v1, v2, :cond_42

    .line 3059
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/display/DisplayPowerController;->logHbmBrightnessStats(FI)V

    goto :goto_5b

    .line 3062
    :cond_42
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 3063
    .local v3, "msg":Landroid/os/Message;
    iput v4, v3, Landroid/os/Message;->what:I

    .line 3064
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 3065
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    iput v4, v3, Landroid/os/Message;->arg2:I

    .line 3066
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3069
    .end local v3    # "msg":Landroid/os/Message;
    :cond_5b
    :goto_5b
    return-void

    .line 3049
    .end local v1    # "aboveTransition":Z
    .end local v2    # "oldAboveTransition":Z
    :catchall_5c
    move-exception v2

    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v2
.end method

.method private static reportedToPolicyToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 2962
    packed-switch p0, :pswitch_data_12

    .line 2970
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2968
    :pswitch_8
    const-string v0, "REPORTED_TO_POLICY_SCREEN_ON"

    return-object v0

    .line 2966
    :pswitch_b
    const-string v0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    return-object v0

    .line 2964
    :pswitch_e
    const-string v0, "REPORTED_TO_POLICY_SCREEN_OFF"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private saveBrightnessInfo(F)Z
    .registers 3
    .param p1, "brightness"    # F

    .line 1995
    invoke-direct {p0, p1, p1}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FF)Z

    move-result v0

    return v0
.end method

.method private saveBrightnessInfo(FF)Z
    .registers 10
    .param p1, "brightness"    # F
    .param p2, "adjustedBrightness"    # F

    .line 1999
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v0

    .line 2000
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 2001
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessCap()F

    move-result v2

    .line 2000
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 2002
    .local v1, "minBrightness":F
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v2}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 2003
    invoke-virtual {v3}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessCap()F

    move-result v3

    .line 2002
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2004
    .local v2, "maxBrightness":F
    const/4 v3, 0x0

    .line 2006
    .local v3, "changed":Z
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    .line 2007
    invoke-virtual {v4, v5, p1}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2009
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    .line 2010
    invoke-virtual {v4, v5, p2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2012
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    .line 2013
    invoke-virtual {v4, v5, v1}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2015
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    .line 2016
    invoke-virtual {v4, v5, v2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2018
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 2020
    invoke-virtual {v6}, Lcom/android/server/display/HighBrightnessModeController;->getHighBrightnessMode()I

    move-result v6

    .line 2019
    invoke-virtual {v4, v5, v6}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetInt(Landroid/util/MutableInt;I)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2021
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 2023
    invoke-virtual {v6}, Lcom/android/server/display/HighBrightnessModeController;->getTransitionPoint()F

    move-result v6

    .line 2022
    invoke-virtual {v4, v5, v6}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2024
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 2026
    invoke-virtual {v6}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessMaxReason()I

    move-result v6

    .line 2025
    invoke-virtual {v4, v5, v6}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetInt(Landroid/util/MutableInt;I)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2028
    monitor-exit v0

    return v3

    .line 2029
    .end local v1    # "minBrightness":F
    .end local v2    # "maxBrightness":F
    .end local v3    # "changed":Z
    :catchall_77
    move-exception v1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_77

    throw v1
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .registers 3

    .line 2780
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeMessages:I

    .line 2781
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 2782
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2783
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .registers 3

    .line 2765
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 2766
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2767
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveMessages:I

    .line 2768
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .registers 3

    .line 2588
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedPending:Z

    if-nez v0, :cond_15

    .line 2589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedPending:Z

    .line 2590
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 2591
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2593
    :cond_15
    return-void
.end method

.method private sendUpdatePowerState()V
    .registers 3

    .line 967
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 968
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 969
    monitor-exit v0

    .line 970
    return-void

    .line 969
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private sendUpdatePowerStateLocked()V
    .registers 3

    .line 974
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v0, :cond_16

    .line 975
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 976
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 977
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 979
    .end local v0    # "msg":Landroid/os/Message;
    :cond_16
    return-void
.end method

.method private setCurrentScreenBrightness(F)V
    .registers 3
    .param p1, "brightnessValue"    # F

    .line 2659
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 2660
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    .line 2661
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 2663
    :cond_b
    return-void
.end method

.method private setPendingProximityDebounceTime(J)V
    .registers 7
    .param p1, "debounceTime"    # J

    .line 2581
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    .line 2582
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 2584
    :cond_f
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2585
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .line 2492
    const/4 v0, 0x0

    if-eqz p1, :cond_19

    .line 2493
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v1, :cond_36

    .line 2496
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 2497
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIgnoreProximityUntilChanged:Z

    .line 2498
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_36

    .line 2502
    :cond_19
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v1, :cond_36

    .line 2505
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 2506
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 2507
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIgnoreProximityUntilChanged:Z

    .line 2508
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2509
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2510
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2511
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 2514
    :cond_36
    :goto_36
    return-void
.end method

.method private setReportedScreenState(I)V
    .registers 5
    .param p1, "state"    # I

    .line 2198
    const-wide/32 v0, 0x20000

    const-string v2, "ReportedScreenStateToPolicy"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2199
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 2200
    return-void
.end method

.method private setScreenState(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 2122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IZ)Z

    move-result v0

    return v0
.end method

.method private setScreenState(IZ)Z
    .registers 11
    .param p1, "state"    # I
    .param p2, "reportOnly"    # Z

    .line 2126
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 2128
    .local v2, "isOff":Z
    :goto_7
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, -0x1

    if-ne v3, p1, :cond_15

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v3, v5, :cond_65

    .line 2132
    :cond_15
    if-eqz v2, :cond_42

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v3, :cond_42

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 2134
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPhase()I

    move-result v3

    if-eqz v3, :cond_42

    .line 2135
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_30

    if-ne v3, v5, :cond_2b

    goto :goto_30

    .line 2141
    :cond_2b
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v3, :cond_42

    .line 2143
    return v1

    .line 2137
    :cond_30
    :goto_30
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2138
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOff()V

    .line 2139
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v6, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-interface {v3, v6, v7}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 2140
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    .line 2147
    :cond_42
    if-nez p2, :cond_65

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    if-eq v3, p1, :cond_65

    .line 2148
    const-wide/32 v6, 0x20000

    const-string v3, "ScreenState"

    invoke-static {v6, v7, v3, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2150
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "debug.tracing.screen_state"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    .line 2153
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(I)V

    .line 2163
    :cond_65
    if-eqz v2, :cond_85

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v3, :cond_85

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v3, :cond_85

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 2166
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPhase()I

    move-result v3

    if-eqz v3, :cond_85

    .line 2167
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2168
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 2169
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff(I)V

    goto :goto_98

    .line 2170
    :cond_85
    if-nez v2, :cond_98

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v3, v4, :cond_98

    .line 2175
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    .line 2176
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff(I)V

    .line 2177
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2179
    :cond_98
    :goto_98
    if-nez v2, :cond_c6

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v3, :cond_a0

    if-ne v3, v5, :cond_c6

    :cond_a0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 2183
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPhase()I

    move-result v3

    if-eqz v3, :cond_c6

    .line 2184
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2185
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_ba

    .line 2186
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    goto :goto_bd

    .line 2188
    :cond_ba
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 2190
    :goto_bd
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {v3, v4, v5}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOn(ILcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 2194
    :cond_c6
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v3, :cond_cb

    goto :goto_cc

    :cond_cb
    move v0, v1

    :goto_cc
    return v0
.end method

.method private setUpAutoBrightness(Landroid/content/res/Resources;Landroid/os/Handler;)V
    .registers 49
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1039
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    iget-boolean v0, v14, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-nez v0, :cond_9

    .line 1040
    return-void

    .line 1043
    :cond_9
    const v0, 0x1110136

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v25

    .line 1049
    .local v25, "isIdleScreenBrightnessEnabled":Z
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-nez v0, :cond_1e

    .line 1050
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-static {v15, v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/res/Resources;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/display/DisplayPowerController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 1054
    :cond_1e
    if-eqz v25, :cond_2a

    .line 1055
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-static {v15, v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->createForIdleMode(Landroid/content/res/Resources;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/display/DisplayPowerController;->mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 1059
    :cond_2a
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_175

    .line 1060
    const v0, 0x1130006

    const/4 v1, 0x1

    invoke-virtual {v15, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v26

    .line 1064
    .local v26, "dozeScaleFactor":F
    const v0, 0x107000d

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v27

    .line 1066
    .local v27, "ambientBrighteningThresholds":[I
    const v0, 0x107000e

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v28

    .line 1068
    .local v28, "ambientDarkeningThresholds":[I
    const v0, 0x107000f

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v29

    .line 1070
    .local v29, "ambientThresholdLevels":[I
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1071
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientLuxDarkeningMinThreshold()F

    move-result v30

    .line 1072
    .local v30, "ambientDarkeningMinThreshold":F
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1073
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientLuxBrighteningMinThreshold()F

    move-result v31

    .line 1074
    .local v31, "ambientBrighteningMinThreshold":F
    new-instance v17, Lcom/android/server/display/HysteresisLevels;

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    move/from16 v5, v30

    move/from16 v6, v31

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[IFF)V

    .line 1079
    .local v17, "ambientBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    const v0, 0x10700a8

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v32

    .line 1081
    .local v32, "screenBrighteningThresholds":[I
    const v0, 0x10700ab

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v33

    .line 1083
    .local v33, "screenDarkeningThresholds":[I
    const v0, 0x10700ac

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v34

    .line 1085
    .local v34, "screenThresholdLevels":[I
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1086
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getScreenDarkeningMinThreshold()F

    move-result v35

    .line 1087
    .local v35, "screenDarkeningMinThreshold":F
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1088
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getScreenBrighteningMinThreshold()F

    move-result v36

    .line 1089
    .local v36, "screenBrighteningMinThreshold":F
    new-instance v18, Lcom/android/server/display/HysteresisLevels;

    move-object/from16 v1, v18

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    move/from16 v5, v35

    move/from16 v6, v36

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[IFF)V

    .line 1093
    .local v18, "screenBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    const v0, 0x10e001a

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v12, v0

    .line 1095
    .local v12, "brighteningLightDebounce":J
    const v0, 0x10e001b

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v10, v0

    .line 1097
    .local v10, "darkeningLightDebounce":J
    const v0, 0x111002d

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v37

    .line 1100
    .local v37, "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    const v0, 0x10e008b

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v38

    .line 1102
    .local v38, "lightSensorWarmUpTimeConfig":I
    const v0, 0x10e001d

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 1104
    .local v9, "lightSensorRate":I
    const v0, 0x10e001c

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1106
    .local v0, "initialLightSensorRate":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_cd

    .line 1107
    move v0, v9

    move/from16 v39, v0

    goto :goto_f9

    .line 1108
    :cond_cd
    if-le v0, v9, :cond_f7

    .line 1109
    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected config_autoBrightnessInitialLightSensorRate ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to be less than or equal to config_autoBrightnessLightSensorRate ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_f7
    move/from16 v39, v0

    .end local v0    # "initialLightSensorRate":I
    .local v39, "initialLightSensorRate":I
    :goto_f9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->loadAmbientLightSensor()V

    .line 1115
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_105

    .line 1116
    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker;->setLightSensor(Landroid/hardware/Sensor;)V

    .line 1119
    :cond_105
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_10c

    .line 1120
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    .line 1122
    :cond_10c
    new-instance v6, Lcom/android/server/display/AutomaticBrightnessController;

    move-object v0, v6

    .line 1123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v14, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, v14, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v5, v14, Lcom/android/server/display/DisplayPowerController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v7, v14, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    iget v8, v14, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v1

    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    move-object/from16 v20, v1

    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    move-object/from16 v21, v1

    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    move-object/from16 v22, v1

    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1132
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientHorizonShort()I

    move-result v23

    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1133
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientHorizonLong()I

    move-result v24

    move-object/from16 v1, p0

    move-object/from16 v40, v6

    move/from16 v6, v38

    move/from16 v41, v9

    .end local v9    # "lightSensorRate":I
    .local v41, "lightSensorRate":I
    move/from16 v9, v26

    move-wide/from16 v42, v10

    .end local v10    # "darkeningLightDebounce":J
    .local v42, "darkeningLightDebounce":J
    move/from16 v10, v41

    move/from16 v11, v39

    move-wide/from16 v44, v12

    .end local v12    # "brighteningLightDebounce":J
    .local v44, "brighteningLightDebounce":J
    move-wide/from16 v14, v42

    move/from16 v16, v37

    invoke-direct/range {v0 .. v24}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IFFFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/HighBrightnessModeController;Lcom/android/server/display/BrightnessThrottler;Lcom/android/server/display/BrightnessMappingStrategy;II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1135
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const-class v2, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    .line 1138
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1139
    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController;->getImpl()Lcom/android/server/display/AutomaticBrightnessControllerStub;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 1138
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/server/display/DisplayPowerControllerStub;->updateAutoBrightnessComponent(Lcom/android/server/display/BrightnessMappingStrategy;Lcom/android/server/display/AutomaticBrightnessControllerStub;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/HighBrightnessModeController;)V

    .line 1141
    .end local v17    # "ambientBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    .end local v18    # "screenBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    .end local v26    # "dozeScaleFactor":F
    .end local v27    # "ambientBrighteningThresholds":[I
    .end local v28    # "ambientDarkeningThresholds":[I
    .end local v29    # "ambientThresholdLevels":[I
    .end local v30    # "ambientDarkeningMinThreshold":F
    .end local v31    # "ambientBrighteningMinThreshold":F
    .end local v32    # "screenBrighteningThresholds":[I
    .end local v33    # "screenDarkeningThresholds":[I
    .end local v34    # "screenThresholdLevels":[I
    .end local v35    # "screenDarkeningMinThreshold":F
    .end local v36    # "screenBrighteningMinThreshold":F
    .end local v37    # "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    .end local v38    # "lightSensorWarmUpTimeConfig":I
    .end local v39    # "initialLightSensorRate":I
    .end local v41    # "lightSensorRate":I
    .end local v42    # "darkeningLightDebounce":J
    .end local v44    # "brighteningLightDebounce":J
    goto :goto_179

    .line 1142
    :cond_175
    move-object v0, v14

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 1144
    :goto_179
    return-void
.end method

.method private static skipRampStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 2975
    packed-switch p0, :pswitch_data_12

    .line 2983
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2981
    :pswitch_8
    const-string v0, "RAMP_STATE_SKIP_AUTOBRIGHT"

    return-object v0

    .line 2979
    :pswitch_b
    const-string v0, "RAMP_STATE_SKIP_INITIAL"

    return-object v0

    .line 2977
    :pswitch_e
    const-string v0, "RAMP_STATE_SKIP_NONE"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private unblockScreenOff()V
    .registers 7

    .line 2113
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v0, :cond_35

    .line 2114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 2115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 2116
    .local v0, "delay":J
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unblocked screen off after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    const-string v5, "Screen off blocked"

    invoke-static {v2, v3, v5, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2119
    .end local v0    # "delay":J
    :cond_35
    return-void
.end method

.method private unblockScreenOn()V
    .registers 7

    .line 2095
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v0, :cond_35

    .line 2096
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 2097
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 2098
    .local v0, "delay":J
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unblocked screen on after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    const-string v5, "Screen on blocked"

    invoke-static {v2, v3, v5, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2101
    .end local v0    # "delay":J
    :cond_35
    return-void
.end method

.method private updateAutoBrightnessAdjustment()Z
    .registers 5

    .line 2677
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2678
    return v1

    .line 2680
    :cond_a
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v2

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_17

    .line 2681
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 2682
    return v1

    .line 2684
    :cond_17
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 2685
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 2686
    const/4 v0, 0x1

    return v0
.end method

.method private updatePendingProximityRequestsLocked()V
    .registers 3

    .line 2736
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 2737
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 2739
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIgnoreProximityUntilChanged:Z

    if-eqz v1, :cond_10

    .line 2741
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 2743
    :cond_10
    return-void
.end method

.method private updatePowerState()V
    .registers 59

    .line 1251
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1252
    .local v2, "mustInitialize":Z
    const/4 v3, 0x0

    .line 1253
    .local v3, "brightnessAdjustmentFlags":I
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 1254
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reset()V

    .line 1255
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1256
    :try_start_12
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    if-eqz v0, :cond_18

    .line 1257
    monitor-exit v4

    return-void

    .line 1259
    :cond_18
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 1260
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v5, :cond_21

    .line 1261
    monitor-exit v4

    return-void

    .line 1264
    :cond_21
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v5, :cond_36

    .line 1265
    new-instance v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v5, v6}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1266
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updatePendingProximityRequestsLocked()V

    .line 1267
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1268
    const/4 v2, 0x1

    .line 1271
    const/4 v5, 0x3

    .local v5, "previousPolicy":I
    goto :goto_4d

    .line 1272
    .end local v5    # "previousPolicy":I
    :cond_36
    iget-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v6, :cond_4b

    .line 1273
    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 1274
    .restart local v5    # "previousPolicy":I
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v6, v7}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 1275
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updatePendingProximityRequestsLocked()V

    .line 1276
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1277
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    goto :goto_4d

    .line 1279
    .end local v5    # "previousPolicy":I
    :cond_4b
    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I
    :try_end_4d
    .catchall {:try_start_12 .. :try_end_4d} :catchall_8cb

    .line 1282
    .restart local v5    # "previousPolicy":I
    :goto_4d
    :try_start_4d
    iget-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    const/4 v7, 0x1

    if-nez v6, :cond_54

    move v6, v7

    goto :goto_55

    :cond_54
    move v6, v0

    .line 1283
    .local v6, "mustNotify":Z
    :goto_55
    monitor-exit v4
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_8c7

    .line 1289
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 1290
    .local v4, "brightnessState":F
    const/4 v8, 0x0

    .line 1291
    .local v8, "performScreenOffTransition":Z
    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v10, 0x2

    packed-switch v9, :pswitch_data_8ce

    .line 1313
    :pswitch_61
    const/4 v9, 0x2

    .local v9, "state":I
    goto :goto_82

    .line 1308
    .end local v9    # "state":I
    :pswitch_63
    const/4 v9, 0x5

    .line 1309
    .restart local v9    # "state":I
    goto :goto_82

    .line 1297
    .end local v9    # "state":I
    :pswitch_65
    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v9, :cond_70

    .line 1298
    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .restart local v9    # "state":I
    goto :goto_71

    .line 1300
    .end local v9    # "state":I
    :cond_70
    const/4 v9, 0x3

    .line 1302
    .restart local v9    # "state":I
    :goto_71
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-nez v11, :cond_82

    .line 1303
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 1304
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v11, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    goto :goto_82

    .line 1293
    .end local v9    # "state":I
    :pswitch_7f
    const/4 v9, 0x1

    .line 1294
    .restart local v9    # "state":I
    const/4 v8, 0x1

    .line 1295
    nop

    .line 1316
    :cond_82
    :goto_82
    nop

    .line 1319
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v11, :cond_cd

    .line 1320
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v11, :cond_a4

    if-eq v9, v7, :cond_a4

    .line 1324
    invoke-direct {v1, v7}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1325
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v11, :cond_bb

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v11, v7, :cond_bb

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mIgnoreProximityUntilChanged:Z

    if-nez v11, :cond_bb

    .line 1331
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1332
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    goto :goto_bb

    .line 1334
    :cond_a4
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v11, :cond_b6

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_b6

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v11, v7, :cond_b6

    if-eq v9, v7, :cond_b6

    .line 1341
    invoke-direct {v1, v7}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto :goto_bb

    .line 1345
    :cond_b6
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1346
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1349
    :cond_bb
    :goto_bb
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_d1

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v11, v7, :cond_c7

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mIgnoreProximityUntilChanged:Z

    if-eqz v11, :cond_d1

    .line 1354
    :cond_c7
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1355
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto :goto_d1

    .line 1358
    :cond_cd
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1359
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mIgnoreProximityUntilChanged:Z

    .line 1362
    :cond_d1
    :goto_d1
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v11}, Lcom/android/server/display/LogicalDisplay;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_e5

    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1363
    invoke-virtual {v11}, Lcom/android/server/display/LogicalDisplay;->getPhase()I

    move-result v11

    if-eqz v11, :cond_e5

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_e6

    .line 1365
    :cond_e5
    const/4 v9, 0x1

    .line 1369
    :cond_e6
    if-eqz v2, :cond_eb

    .line 1370
    invoke-direct {v1, v9}, Lcom/android/server/display/DisplayPowerController;->initialize(I)V

    .line 1376
    :cond_eb
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v11}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v11

    .line 1377
    .local v11, "oldState":I
    invoke-direct {v1, v9, v8}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IZ)V

    .line 1378
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v12}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v9

    .line 1382
    const/4 v12, 0x5

    if-eq v9, v7, :cond_103

    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v13, v12, :cond_10a

    .line 1383
    :cond_103
    const/high16 v4, -0x40800000    # -1.0f

    .line 1384
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v13, v12}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1388
    :cond_10a
    if-ne v9, v12, :cond_114

    .line 1389
    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    .line 1390
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v14, 0x6

    invoke-virtual {v13, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1393
    :cond_114
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_151

    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 1394
    invoke-direct {v1, v13}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v13

    if-eqz v13, :cond_151

    .line 1395
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 1398
    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    if-eqz v13, :cond_148

    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v13}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v13

    if-eqz v13, :cond_148

    .line 1399
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v13}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v13

    .line 1400
    .local v13, "min":F
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v14}, Lcom/android/server/display/HighBrightnessModeController;->getNormalBrightnessMax()F

    move-result v14

    .line 1401
    .local v14, "max":F
    iget v15, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    invoke-static {v15, v12, v13, v14, v4}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v4

    .line 1405
    .end local v13    # "min":F
    .end local v14    # "max":F
    :cond_148
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v13, 0x7

    invoke-virtual {v12, v13}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1406
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    goto :goto_153

    .line 1408
    :cond_151
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    .line 1411
    :goto_153
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    invoke-interface {v12, v13}, Lcom/android/server/display/DisplayPowerControllerStub;->setAppliedScreenBrightnessOverride(Z)V

    .line 1413
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-eqz v12, :cond_166

    .line 1414
    invoke-static {v9}, Landroid/view/Display;->isDozeState(I)Z

    move-result v12

    if-eqz v12, :cond_166

    move v12, v7

    goto :goto_167

    :cond_166
    move v12, v0

    .line 1415
    .local v12, "autoBrightnessEnabledInDoze":Z
    :goto_167
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v13, :cond_17d

    if-eq v9, v10, :cond_171

    if-eqz v12, :cond_17d

    .line 1417
    :cond_171
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_17d

    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v13, :cond_17d

    move v13, v7

    goto :goto_17e

    :cond_17d
    move v13, v0

    :goto_17e
    move/from16 v24, v13

    .line 1419
    .local v24, "autoBrightnessEnabled":Z
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v13, :cond_18c

    if-eq v9, v10, :cond_18c

    if-nez v12, :cond_18c

    move v13, v7

    goto :goto_18d

    :cond_18c
    move v13, v0

    :goto_18d
    move/from16 v25, v13

    .line 1421
    .local v25, "autoBrightnessDisabledDueToDisplayOff":Z
    if-eqz v24, :cond_194

    .line 1422
    move/from16 v27, v7

    goto :goto_19b

    .line 1423
    :cond_194
    if-eqz v25, :cond_199

    .line 1424
    const/16 v27, 0x3

    goto :goto_19b

    .line 1425
    :cond_199
    move/from16 v27, v10

    :goto_19b
    nop

    .line 1427
    .local v27, "autoBrightnessState":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateUserSetScreenBrightness()Z

    move-result v35

    .line 1431
    .local v35, "userSetBrightnessChanged":Z
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    invoke-direct {v1, v14}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v14

    const/16 v15, 0x8

    if-eqz v14, :cond_1b4

    .line 1432
    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 1433
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    .line 1434
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v14, v15}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    goto :goto_1b6

    .line 1436
    :cond_1b4
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    .line 1439
    :goto_1b6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateAutoBrightnessAdjustment()Z

    move-result v36

    .line 1440
    .local v36, "autoBrightnessAdjustmentChanged":Z
    if-eqz v36, :cond_1c0

    .line 1441
    const/high16 v14, 0x7fc00000    # Float.NaN

    iput v14, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 1446
    :cond_1c0
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_1d0

    .line 1447
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 1448
    .local v14, "autoBrightnessAdjustment":F
    const/4 v3, 0x1

    .line 1449
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    move/from16 v37, v14

    goto :goto_1d7

    .line 1451
    .end local v14    # "autoBrightnessAdjustment":F
    :cond_1d0
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 1452
    .restart local v14    # "autoBrightnessAdjustment":F
    const/4 v3, 0x2

    .line 1453
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    move/from16 v37, v14

    .line 1459
    .end local v14    # "autoBrightnessAdjustment":F
    .local v37, "autoBrightnessAdjustment":F
    :goto_1d7
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    const/high16 v17, -0x40800000    # -1.0f

    if-eqz v14, :cond_1ef

    cmpl-float v14, v4, v17

    if-eqz v14, :cond_1ef

    .line 1461
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1462
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v10, 0x9

    invoke-virtual {v14, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1463
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    goto :goto_1f1

    .line 1465
    :cond_1ef
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    .line 1470
    :goto_1f1
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_1fd

    if-nez v36, :cond_1fb

    if-eqz v35, :cond_1fd

    :cond_1fb
    move v10, v7

    goto :goto_1fe

    :cond_1fd
    move v10, v0

    .line 1472
    .local v10, "userInitiatedChange":Z
    :goto_1fe
    const/4 v14, 0x0

    .line 1474
    .local v14, "hadUserBrightnessPoint":Z
    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v15, :cond_22a

    .line 1475
    invoke-virtual {v15}, Lcom/android/server/display/AutomaticBrightnessController;->hasUserDataPoints()Z

    move-result v14

    .line 1476
    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    iget v7, v1, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:F

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v38, v2

    .end local v2    # "mustInitialize":Z
    .local v38, "mustInitialize":Z
    iget-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    move-object/from16 v26, v15

    move-object/from16 v28, v13

    move/from16 v29, v7

    move/from16 v30, v35

    move/from16 v31, v37

    move/from16 v32, v36

    move/from16 v33, v0

    move/from16 v34, v2

    invoke-virtual/range {v26 .. v34}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ILandroid/hardware/display/BrightnessConfiguration;FZFZIZ)V

    move v2, v14

    goto :goto_22d

    .line 1474
    .end local v38    # "mustInitialize":Z
    .restart local v2    # "mustInitialize":Z
    :cond_22a
    move/from16 v38, v2

    .end local v2    # "mustInitialize":Z
    .restart local v38    # "mustInitialize":Z
    move v2, v14

    .line 1483
    .end local v14    # "hadUserBrightnessPoint":Z
    .local v2, "hadUserBrightnessPoint":Z
    :goto_22d
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_236

    .line 1484
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v7}, Lcom/android/server/display/BrightnessTracker;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1487
    :cond_236
    const/4 v0, 0x0

    .line 1490
    .local v0, "updateScreenBrightnessSetting":Z
    const/4 v7, 0x0

    .line 1491
    .local v7, "slowChange":Z
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_292

    .line 1492
    move/from16 v13, v37

    .line 1493
    .local v13, "newAutoBrightnessAdjustment":F
    if-eqz v24, :cond_250

    .line 1494
    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    invoke-virtual {v15, v14}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness(Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)F

    move-result v4

    .line 1496
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1497
    invoke-virtual {v14}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result v13

    .line 1499
    :cond_250
    invoke-direct {v1, v4}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v14

    if-nez v14, :cond_25f

    cmpl-float v14, v4, v17

    if-nez v14, :cond_25b

    goto :goto_25f

    .line 1514
    :cond_25b
    const/4 v14, 0x0

    iput-boolean v14, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    goto :goto_288

    .line 1502
    :cond_25f
    :goto_25f
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjRatio:F

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v14, v15

    mul-float/2addr v4, v14

    .line 1504
    invoke-direct {v1, v4}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v4

    .line 1506
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    invoke-interface {v14, v4}, Lcom/android/server/display/DisplayPowerControllerStub;->updateFastRateStatus(F)V

    .line 1507
    iget-boolean v14, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v14, :cond_275

    if-nez v36, :cond_275

    .line 1508
    const/4 v7, 0x1

    .line 1510
    :cond_275
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    cmpl-float v14, v14, v4

    if-eqz v14, :cond_27d

    const/4 v14, 0x1

    goto :goto_27e

    :cond_27d
    const/4 v14, 0x0

    :goto_27e
    move v0, v14

    .line 1511
    const/4 v14, 0x1

    iput-boolean v14, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1512
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1516
    :goto_288
    cmpl-float v14, v37, v13

    if-eqz v14, :cond_290

    .line 1519
    invoke-direct {v1, v13}, Lcom/android/server/display/DisplayPowerController;->putAutoBrightnessAdjustmentSetting(F)V

    goto :goto_291

    .line 1522
    :cond_290
    const/4 v3, 0x0

    .line 1524
    .end local v13    # "newAutoBrightnessAdjustment":F
    :goto_291
    goto :goto_296

    .line 1530
    :cond_292
    const/4 v13, 0x0

    iput-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1531
    const/4 v3, 0x0

    .line 1535
    :goto_296
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_2ae

    .line 1536
    invoke-static {v9}, Landroid/view/Display;->isDozeState(I)Z

    move-result v13

    if-eqz v13, :cond_2ae

    .line 1540
    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    invoke-direct {v1, v13}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v4

    .line 1541
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1545
    :cond_2ae
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_2cd

    .line 1546
    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    invoke-direct {v1, v13}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v4

    .line 1547
    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    cmpl-float v13, v4, v13

    if-eqz v13, :cond_2c1

    .line 1551
    const/4 v0, 0x1

    .line 1553
    :cond_2c1
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    move/from16 v57, v4

    move v4, v0

    move/from16 v0, v57

    goto :goto_2d2

    .line 1545
    :cond_2cd
    move/from16 v57, v4

    move v4, v0

    move/from16 v0, v57

    .line 1563
    .local v0, "brightnessState":F
    .local v4, "updateScreenBrightnessSetting":Z
    :goto_2d2
    move v15, v0

    .line 1564
    .local v15, "unthrottledBrightnessState":F
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    invoke-virtual {v13}, Lcom/android/server/display/BrightnessThrottler;->isThrottled()Z

    move-result v13

    if-eqz v13, :cond_2ff

    .line 1565
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    invoke-virtual {v14}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessCap()F

    move-result v14

    iput v14, v13, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    .line 1566
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    invoke-virtual {v13}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessCap()F

    move-result v13

    invoke-static {v0, v13}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1567
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(I)V

    .line 1568
    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedThrottling:Z

    if-nez v13, :cond_2fb

    .line 1571
    const/4 v7, 0x0

    .line 1573
    :cond_2fb
    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedThrottling:Z

    goto :goto_308

    .line 1574
    :cond_2ff
    const/16 v14, 0x8

    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedThrottling:Z

    if-eqz v13, :cond_308

    .line 1575
    const/4 v13, 0x0

    iput-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedThrottling:Z

    .line 1578
    :cond_308
    :goto_308
    if-eqz v4, :cond_30d

    .line 1584
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->updateScreenBrightnessSetting(F)V

    .line 1589
    :cond_30d
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_338

    .line 1590
    const/4 v13, 0x0

    cmpl-float v14, v0, v13

    if-lez v14, :cond_32f

    .line 1591
    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMinimumDimAmount:F

    sub-float v13, v0, v13

    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    .line 1592
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    .line 1591
    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1597
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(I)V

    .line 1599
    :cond_32f
    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v13, :cond_334

    .line 1600
    const/4 v7, 0x0

    .line 1602
    :cond_334
    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    goto :goto_340

    .line 1603
    :cond_338
    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-eqz v13, :cond_340

    .line 1604
    const/4 v7, 0x0

    .line 1605
    const/4 v13, 0x0

    iput-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    .line 1609
    :cond_340
    :goto_340
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v13, :cond_376

    .line 1610
    const/4 v14, 0x0

    cmpl-float v13, v0, v14

    if-lez v13, :cond_369

    .line 1611
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 1612
    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 1613
    .local v13, "brightnessFactor":F
    mul-float v14, v0, v13

    .line 1614
    .local v14, "lowPowerBrightnessFloat":F
    move/from16 v23, v0

    const/4 v0, 0x0

    .end local v0    # "brightnessState":F
    .local v23, "brightnessState":F
    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 1615
    .end local v23    # "brightnessState":F
    .local v22, "brightnessState":F
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    move/from16 v28, v4

    const/4 v4, 0x2

    .end local v4    # "updateScreenBrightnessSetting":Z
    .local v28, "updateScreenBrightnessSetting":Z
    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(I)V

    move/from16 v0, v22

    goto :goto_36d

    .line 1610
    .end local v13    # "brightnessFactor":F
    .end local v14    # "lowPowerBrightnessFloat":F
    .end local v22    # "brightnessState":F
    .end local v28    # "updateScreenBrightnessSetting":Z
    .restart local v0    # "brightnessState":F
    .restart local v4    # "updateScreenBrightnessSetting":Z
    :cond_369
    move/from16 v23, v0

    move/from16 v28, v4

    .line 1617
    .end local v4    # "updateScreenBrightnessSetting":Z
    .restart local v28    # "updateScreenBrightnessSetting":Z
    :goto_36d
    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-nez v4, :cond_372

    .line 1618
    const/4 v7, 0x0

    .line 1620
    :cond_372
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    goto :goto_387

    .line 1621
    .end local v28    # "updateScreenBrightnessSetting":Z
    .restart local v4    # "updateScreenBrightnessSetting":Z
    :cond_376
    move/from16 v23, v0

    move/from16 v28, v4

    .end local v0    # "brightnessState":F
    .end local v4    # "updateScreenBrightnessSetting":Z
    .restart local v23    # "brightnessState":F
    .restart local v28    # "updateScreenBrightnessSetting":Z
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-eqz v0, :cond_385

    .line 1622
    const/4 v7, 0x0

    .line 1623
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    move/from16 v0, v23

    goto :goto_387

    .line 1621
    :cond_385
    move/from16 v0, v23

    .line 1626
    .end local v23    # "brightnessState":F
    .restart local v0    # "brightnessState":F
    :goto_387
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    invoke-interface {v4, v0}, Lcom/android/server/display/DisplayPowerControllerStub;->updateScreenState(F)V

    .line 1628
    move v4, v0

    .line 1629
    .local v4, "previousBrightnessState":F
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    move/from16 v29, v8

    .end local v8    # "performScreenOffTransition":Z
    .local v29, "performScreenOffTransition":Z
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    move/from16 v30, v12

    .end local v12    # "autoBrightnessEnabledInDoze":Z
    .local v30, "autoBrightnessEnabledInDoze":Z
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    invoke-interface {v13, v0, v14, v8, v12}, Lcom/android/server/display/DisplayPowerControllerStub;->adjustSdrBrightness(FZLcom/android/server/display/DisplayPowerController$BrightnessReason;Z)F

    move-result v8

    .line 1638
    .end local v0    # "brightnessState":F
    .local v8, "brightnessState":F
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 1639
    invoke-virtual {v12}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessMaxReason()I

    move-result v12

    .line 1638
    invoke-virtual {v0, v8, v15, v12}, Lcom/android/server/display/HighBrightnessModeController;->onBrightnessChanged(FFI)V

    .line 1643
    const/4 v0, 0x0

    .line 1644
    .local v0, "brightnessAdjusted":Z
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-nez v12, :cond_6d9

    .line 1645
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    if-eqz v12, :cond_3e7

    .line 1646
    const/4 v12, 0x2

    if-ne v9, v12, :cond_3e4

    .line 1647
    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-nez v12, :cond_3c4

    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-eqz v13, :cond_3c4

    .line 1648
    iput v8, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:F

    .line 1649
    const/4 v13, 0x1

    iput v13, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_3e7

    .line 1647
    :cond_3c4
    const/4 v13, 0x1

    .line 1650
    if-ne v12, v13, :cond_3d9

    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v12, :cond_3d9

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:F

    .line 1652
    invoke-static {v8, v12}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v12

    if-nez v12, :cond_3d7

    .line 1654
    const/4 v12, 0x2

    iput v12, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_3e7

    .line 1652
    :cond_3d7
    const/4 v12, 0x2

    goto :goto_3da

    .line 1650
    :cond_3d9
    const/4 v12, 0x2

    .line 1655
    :goto_3da
    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v13, v12, :cond_3e2

    .line 1656
    const/4 v12, 0x0

    iput v12, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_3e7

    .line 1655
    :cond_3e2
    const/4 v12, 0x0

    goto :goto_3e7

    .line 1659
    :cond_3e4
    const/4 v12, 0x0

    iput v12, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 1663
    :cond_3e7
    :goto_3e7
    const/4 v12, 0x5

    if-eq v9, v12, :cond_3ef

    if-ne v11, v12, :cond_3ed

    goto :goto_3ef

    :cond_3ed
    const/4 v12, 0x0

    goto :goto_3f0

    :cond_3ef
    :goto_3ef
    const/4 v12, 0x1

    .line 1665
    .local v12, "wasOrWillBeInVr":Z
    :goto_3f0
    const/4 v13, 0x2

    if-ne v9, v13, :cond_3f9

    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-eqz v13, :cond_3f9

    const/4 v13, 0x1

    goto :goto_3fa

    :cond_3f9
    const/4 v13, 0x0

    :goto_3fa
    move/from16 v31, v13

    .line 1670
    .local v31, "initialRampSkip":Z
    nop

    .line 1671
    invoke-static {v9}, Landroid/view/Display;->isDozeState(I)Z

    move-result v13

    if-eqz v13, :cond_409

    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    if-eqz v13, :cond_409

    const/4 v13, 0x1

    goto :goto_40a

    :cond_409
    const/4 v13, 0x0

    :goto_40a
    move/from16 v32, v13

    .line 1674
    .local v32, "hasBrightnessBuckets":Z
    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v13, :cond_41e

    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1675
    invoke-virtual {v13}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_41e

    const/4 v13, 0x1

    goto :goto_41f

    :cond_41e
    const/4 v13, 0x0

    :goto_41f
    move/from16 v33, v13

    .line 1676
    .local v33, "isDisplayContentVisible":Z
    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    if-nez v13, :cond_42c

    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    if-eqz v13, :cond_42a

    goto :goto_42c

    :cond_42a
    const/4 v13, 0x0

    goto :goto_42d

    :cond_42c
    :goto_42c
    const/4 v13, 0x1

    :goto_42d
    move v14, v13

    .line 1688
    .local v14, "brightnessIsTemporary":Z
    cmpl-float v13, v8, v17

    if-nez v13, :cond_434

    .line 1689
    const/4 v13, 0x0

    goto :goto_438

    :cond_434
    invoke-direct {v1, v8}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v13

    .line 1695
    .local v13, "animateValue":F
    :goto_438
    move/from16 v34, v13

    .line 1705
    .local v34, "sdrAnimateValue":F
    move/from16 v50, v0

    .end local v0    # "brightnessAdjusted":Z
    .local v50, "brightnessAdjusted":Z
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->getHighBrightnessMode()I

    move-result v0

    move/from16 v51, v11

    const/4 v11, 0x2

    .end local v11    # "oldState":I
    .local v51, "oldState":I
    if-eq v0, v11, :cond_452

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 1706
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->isDolbyEnable()Z

    move-result v0

    if-eqz v0, :cond_450

    goto :goto_452

    :cond_450
    const/4 v0, 0x4

    goto :goto_4a5

    :cond_452
    :goto_452
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget v0, v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    const/4 v11, 0x1

    and-int/2addr v0, v11

    if-nez v0, :cond_4a4

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget v0, v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    const/16 v17, 0x2

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4a4

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget v0, v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/2addr v0, v11

    if-nez v0, :cond_4a4

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget v0, v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4a4

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v11, 0x5

    if-eq v0, v11, :cond_4a4

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v0, :cond_4a4

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v11, 0x1

    if-eq v0, v11, :cond_4a4

    .line 1715
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    move-result v0

    .line 1716
    .end local v13    # "animateValue":F
    .local v0, "animateValue":F
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(I)V

    .line 1718
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    invoke-interface {v11, v0}, Lcom/android/server/display/DisplayPowerControllerStub;->adjustBrightnessByTemperature(F)F

    move-result v0

    .line 1719
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-interface {v11, v0, v13}, Lcom/android/server/display/DisplayPowerControllerStub;->adjustBrightness(FLcom/android/server/display/DisplayPowerController$BrightnessReason;)F

    move-result v13

    move v11, v13

    const/4 v0, 0x4

    .end local v0    # "animateValue":F
    .restart local v13    # "animateValue":F
    goto :goto_4a6

    .line 1706
    :cond_4a4
    const/4 v0, 0x4

    .line 1723
    :goto_4a5
    move v11, v13

    .end local v13    # "animateValue":F
    .local v11, "animateValue":F
    :goto_4a6
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v13}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v13

    .line 1724
    .local v13, "currentBrightness":F
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getSdrScreenBrightness()F

    move-result v0

    .line 1725
    .local v0, "currentSdrBrightness":F
    invoke-direct {v1, v11}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v17

    if-eqz v17, :cond_632

    .line 1726
    invoke-static {v11, v13}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v17

    if-eqz v17, :cond_4d8

    .line 1727
    move/from16 v52, v6

    move/from16 v6, v34

    .end local v34    # "sdrAnimateValue":F
    .local v6, "sdrAnimateValue":F
    .local v52, "mustNotify":Z
    invoke-static {v6, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v17

    if-nez v17, :cond_4c9

    goto :goto_4dc

    :cond_4c9
    move/from16 v54, v5

    move/from16 v34, v12

    move/from16 v53, v13

    move v5, v14

    move/from16 v55, v15

    const/16 v26, 0x0

    const/16 v56, 0x4

    goto/16 :goto_643

    .line 1726
    .end local v52    # "mustNotify":Z
    .local v6, "mustNotify":Z
    .restart local v34    # "sdrAnimateValue":F
    :cond_4d8
    move/from16 v52, v6

    move/from16 v6, v34

    .line 1729
    .end local v34    # "sdrAnimateValue":F
    .local v6, "sdrAnimateValue":F
    .restart local v52    # "mustNotify":Z
    :goto_4dc
    if-nez v31, :cond_5e7

    if-nez v32, :cond_5e7

    if-nez v12, :cond_5e7

    if-eqz v33, :cond_5e7

    if-nez v14, :cond_5e7

    move/from16 v34, v12

    .end local v12    # "wasOrWillBeInVr":Z
    .local v34, "wasOrWillBeInVr":Z
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-eqz v12, :cond_4fd

    const/4 v12, 0x2

    if-eq v9, v12, :cond_4f0

    goto :goto_4fd

    :cond_4f0
    move/from16 v54, v5

    move/from16 v53, v13

    move v5, v14

    move/from16 v55, v15

    const/16 v26, 0x0

    const/16 v56, 0x4

    goto/16 :goto_5f4

    .line 1733
    :cond_4fd
    :goto_4fd
    invoke-static {v9}, Landroid/view/Display;->isDozeState(I)Z

    move-result v12

    if-nez v12, :cond_5db

    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v17, v14

    const/4 v14, 0x5

    .end local v14    # "brightnessIsTemporary":Z
    .local v17, "brightnessIsTemporary":Z
    if-eq v12, v14, :cond_5ce

    if-ne v5, v14, :cond_524

    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v14, 0x3

    if-eq v12, v14, :cond_516

    goto :goto_524

    :cond_516
    move/from16 v54, v5

    move/from16 v53, v13

    move/from16 v55, v15

    move/from16 v5, v17

    const/16 v26, 0x0

    const/16 v56, 0x4

    goto/16 :goto_5f4

    :cond_524
    :goto_524
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    if-eqz v12, :cond_540

    .line 1737
    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/server/display/DisplayManagerServiceStub;->getIsResetRate()Z

    move-result v12

    if-eqz v12, :cond_540

    move/from16 v54, v5

    move/from16 v53, v13

    move/from16 v55, v15

    move/from16 v5, v17

    const/16 v26, 0x0

    const/16 v56, 0x4

    goto/16 :goto_5f4

    .line 1757
    :cond_540
    cmpl-float v12, v11, v13

    if-lez v12, :cond_546

    const/4 v12, 0x1

    goto :goto_547

    :cond_546
    const/4 v12, 0x0

    .line 1759
    .local v12, "isIncreasing":Z
    :goto_547
    if-eqz v12, :cond_550

    if-eqz v7, :cond_550

    .line 1760
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncrease:F

    move/from16 v39, v14

    .local v14, "rampSpeed":F
    goto :goto_566

    .line 1761
    .end local v14    # "rampSpeed":F
    :cond_550
    if-eqz v12, :cond_559

    if-nez v7, :cond_559

    .line 1762
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastIncrease:F

    move/from16 v39, v14

    .restart local v14    # "rampSpeed":F
    goto :goto_566

    .line 1763
    .end local v14    # "rampSpeed":F
    :cond_559
    if-nez v12, :cond_562

    if-eqz v7, :cond_562

    .line 1764
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecrease:F

    move/from16 v39, v14

    .restart local v14    # "rampSpeed":F
    goto :goto_566

    .line 1766
    .end local v14    # "rampSpeed":F
    :cond_562
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastDecrease:F

    move/from16 v39, v14

    .line 1770
    .local v39, "rampSpeed":F
    :goto_566
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    move/from16 v40, v12

    const/4 v12, 0x0

    .end local v12    # "isIncreasing":Z
    .local v40, "isIncreasing":Z
    invoke-interface {v14, v12}, Lcom/android/server/display/DisplayPowerControllerStub;->shouldDimmingWhenSlideBrightnessBar(Z)Z

    move-result v14

    .line 1771
    .local v14, "shouldDimming":Z
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    invoke-interface {v12, v14, v11}, Lcom/android/server/display/DisplayPowerControllerStub;->setManualDimmingEnabled(ZF)V

    .line 1774
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    move/from16 v16, v13

    .end local v13    # "currentBrightness":F
    .local v16, "currentBrightness":F
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v21, v14

    const/4 v14, 0x3

    .end local v14    # "shouldDimming":Z
    .local v21, "shouldDimming":Z
    if-ne v13, v14, :cond_58c

    const/4 v13, 0x2

    if-eq v5, v13, :cond_58c

    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v13, :cond_58c

    const/4 v13, 0x1

    goto :goto_58d

    :cond_58c
    const/4 v13, 0x0

    :goto_58d
    invoke-interface {v12, v13}, Lcom/android/server/display/DisplayPowerControllerStub;->updateBrightnessAnimInfoIfNeeded(Z)V

    .line 1778
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    iget-boolean v14, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    move/from16 v22, v14

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v53, v16

    .end local v16    # "currentBrightness":F
    .local v53, "currentBrightness":F
    move/from16 v54, v5

    move/from16 v23, v14

    move/from16 v5, v17

    move/from16 v41, v21

    move/from16 v18, v22

    const/4 v14, 0x1

    const/16 v16, 0x8

    const/16 v26, 0x0

    .end local v17    # "brightnessIsTemporary":Z
    .end local v21    # "shouldDimming":Z
    .local v5, "brightnessIsTemporary":Z
    .local v41, "shouldDimming":Z
    .local v54, "previousPolicy":I
    move/from16 v55, v15

    const/16 v56, 0x4

    .end local v15    # "unthrottledBrightnessState":F
    .local v55, "unthrottledBrightnessState":F
    move v15, v9

    move/from16 v16, v7

    move/from16 v17, v12

    move/from16 v19, v53

    move/from16 v20, v0

    move/from16 v21, v11

    move/from16 v22, v6

    invoke-interface/range {v13 .. v23}, Lcom/android/server/display/DisplayPowerControllerStub;->updateBrightnessChangeStatus(ZIZZZFFFFI)V

    .line 1781
    nop

    .line 1782
    if-eqz v7, :cond_5c7

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:F

    goto :goto_5c9

    :cond_5c7
    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:F

    .line 1781
    :goto_5c9
    invoke-direct {v1, v11, v6, v12}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFF)V

    goto/16 :goto_643

    .line 1733
    .end local v39    # "rampSpeed":F
    .end local v40    # "isIncreasing":Z
    .end local v41    # "shouldDimming":Z
    .end local v53    # "currentBrightness":F
    .end local v54    # "previousPolicy":I
    .end local v55    # "unthrottledBrightnessState":F
    .local v5, "previousPolicy":I
    .restart local v13    # "currentBrightness":F
    .restart local v15    # "unthrottledBrightnessState":F
    .restart local v17    # "brightnessIsTemporary":Z
    :cond_5ce
    move/from16 v54, v5

    move/from16 v53, v13

    move/from16 v55, v15

    move/from16 v5, v17

    const/16 v26, 0x0

    const/16 v56, 0x4

    .end local v13    # "currentBrightness":F
    .end local v15    # "unthrottledBrightnessState":F
    .end local v17    # "brightnessIsTemporary":Z
    .local v5, "brightnessIsTemporary":Z
    .restart local v53    # "currentBrightness":F
    .restart local v54    # "previousPolicy":I
    .restart local v55    # "unthrottledBrightnessState":F
    goto :goto_5f4

    .end local v53    # "currentBrightness":F
    .end local v54    # "previousPolicy":I
    .end local v55    # "unthrottledBrightnessState":F
    .local v5, "previousPolicy":I
    .restart local v13    # "currentBrightness":F
    .local v14, "brightnessIsTemporary":Z
    .restart local v15    # "unthrottledBrightnessState":F
    :cond_5db
    move/from16 v54, v5

    move/from16 v53, v13

    move v5, v14

    move/from16 v55, v15

    const/16 v26, 0x0

    const/16 v56, 0x4

    .end local v13    # "currentBrightness":F
    .end local v14    # "brightnessIsTemporary":Z
    .end local v15    # "unthrottledBrightnessState":F
    .local v5, "brightnessIsTemporary":Z
    .restart local v53    # "currentBrightness":F
    .restart local v54    # "previousPolicy":I
    .restart local v55    # "unthrottledBrightnessState":F
    goto :goto_5f4

    .line 1729
    .end local v34    # "wasOrWillBeInVr":Z
    .end local v53    # "currentBrightness":F
    .end local v54    # "previousPolicy":I
    .end local v55    # "unthrottledBrightnessState":F
    .local v5, "previousPolicy":I
    .local v12, "wasOrWillBeInVr":Z
    .restart local v13    # "currentBrightness":F
    .restart local v14    # "brightnessIsTemporary":Z
    .restart local v15    # "unthrottledBrightnessState":F
    :cond_5e7
    move/from16 v54, v5

    move/from16 v34, v12

    move/from16 v53, v13

    move v5, v14

    move/from16 v55, v15

    const/16 v26, 0x0

    const/16 v56, 0x4

    .line 1742
    .end local v12    # "wasOrWillBeInVr":Z
    .end local v13    # "currentBrightness":F
    .end local v14    # "brightnessIsTemporary":Z
    .end local v15    # "unthrottledBrightnessState":F
    .local v5, "brightnessIsTemporary":Z
    .restart local v34    # "wasOrWillBeInVr":Z
    .restart local v53    # "currentBrightness":F
    .restart local v54    # "previousPolicy":I
    .restart local v55    # "unthrottledBrightnessState":F
    :goto_5f4
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    iget-boolean v15, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v23, v14

    const/4 v14, 0x0

    move/from16 v18, v15

    move v15, v9

    move/from16 v16, v7

    move/from16 v17, v12

    move/from16 v19, v53

    move/from16 v20, v0

    move/from16 v21, v11

    move/from16 v22, v6

    invoke-interface/range {v13 .. v23}, Lcom/android/server/display/DisplayPowerControllerStub;->updateBrightnessChangeStatus(ZIZZZFFFFI)V

    .line 1746
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    invoke-interface {v12, v5}, Lcom/android/server/display/DisplayPowerControllerStub;->shouldDimmingWhenSlideBrightnessBar(Z)Z

    move-result v12

    .line 1748
    .local v12, "shouldDimming":Z
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    invoke-interface {v13, v12, v11}, Lcom/android/server/display/DisplayPowerControllerStub;->setManualDimmingEnabled(ZF)V

    .line 1749
    nop

    .line 1750
    if-eqz v12, :cond_624

    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:F

    goto :goto_626

    :cond_624
    move/from16 v14, v26

    .line 1749
    :goto_626
    invoke-direct {v1, v11, v6, v14}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFF)V

    .line 1752
    if-nez v5, :cond_631

    .line 1753
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/android/server/display/DisplayPowerControllerStub;->updateBrightnessAnimInfoIfNeeded(Z)V

    .line 1756
    .end local v12    # "shouldDimming":Z
    :cond_631
    goto :goto_643

    .line 1725
    .end local v52    # "mustNotify":Z
    .end local v53    # "currentBrightness":F
    .end local v54    # "previousPolicy":I
    .end local v55    # "unthrottledBrightnessState":F
    .local v5, "previousPolicy":I
    .local v6, "mustNotify":Z
    .local v12, "wasOrWillBeInVr":Z
    .restart local v13    # "currentBrightness":F
    .restart local v14    # "brightnessIsTemporary":Z
    .restart local v15    # "unthrottledBrightnessState":F
    .local v34, "sdrAnimateValue":F
    :cond_632
    move/from16 v54, v5

    move/from16 v52, v6

    move/from16 v53, v13

    move v5, v14

    move/from16 v55, v15

    move/from16 v6, v34

    const/16 v26, 0x0

    const/16 v56, 0x4

    move/from16 v34, v12

    .line 1788
    .end local v12    # "wasOrWillBeInVr":Z
    .end local v13    # "currentBrightness":F
    .end local v14    # "brightnessIsTemporary":Z
    .end local v15    # "unthrottledBrightnessState":F
    .local v5, "brightnessIsTemporary":Z
    .local v6, "sdrAnimateValue":F
    .local v34, "wasOrWillBeInVr":Z
    .restart local v52    # "mustNotify":Z
    .restart local v53    # "currentBrightness":F
    .restart local v54    # "previousPolicy":I
    .restart local v55    # "unthrottledBrightnessState":F
    :goto_643
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    iget-boolean v14, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    invoke-interface {v12, v8, v13, v14}, Lcom/android/server/display/DisplayPowerControllerStub;->sendBrightnessToSurfaceFlingerIfNeeded(FFZ)V

    .line 1795
    if-nez v5, :cond_6c2

    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v12, :cond_6c2

    .line 1797
    invoke-virtual {v12}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v12

    if-nez v12, :cond_6bf

    .line 1798
    if-eqz v10, :cond_667

    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v12, :cond_666

    .line 1799
    invoke-virtual {v12}, Lcom/android/server/display/AutomaticBrightnessController;->hasValidAmbientLux()Z

    move-result v12

    if-nez v12, :cond_667

    .line 1802
    :cond_666
    const/4 v10, 0x0

    .line 1804
    :cond_667
    invoke-direct {v1, v8, v10, v2}, Lcom/android/server/display/DisplayPowerController;->notifyBrightnessTrackerChanged(FZZ)V

    .line 1807
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v12, :cond_6bc

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v12, :cond_6bc

    .line 1808
    invoke-static {v9}, Landroid/view/Display;->isActiveState(I)Z

    move-result v12

    if-eqz v12, :cond_686

    cmpl-float v12, v4, v26

    if-lez v12, :cond_686

    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_686

    const/16 v40, 0x1

    goto :goto_688

    :cond_686
    const/16 v40, 0x0

    .line 1810
    .local v40, "screenOn":Z
    :goto_688
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v15, v15, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    move/from16 v16, v0

    .end local v0    # "currentSdrBrightness":F
    .local v16, "currentSdrBrightness":F
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1813
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v46

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1814
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getUserDataPoint()F

    move-result v47

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1815
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v48

    .line 1810
    move-object/from16 v39, v12

    move/from16 v41, v4

    move/from16 v42, v10

    move/from16 v43, v13

    move/from16 v44, v14

    move/from16 v45, v15

    move/from16 v49, v11

    invoke-interface/range {v39 .. v49}, Lcom/android/server/display/DisplayPowerControllerStub;->notifyBrightnessChangeIfNeeded(ZFZZFZFFZF)V

    goto :goto_6c4

    .line 1807
    .end local v16    # "currentSdrBrightness":F
    .end local v40    # "screenOn":Z
    .restart local v0    # "currentSdrBrightness":F
    :cond_6bc
    move/from16 v16, v0

    .end local v0    # "currentSdrBrightness":F
    .restart local v16    # "currentSdrBrightness":F
    goto :goto_6c4

    .line 1797
    .end local v16    # "currentSdrBrightness":F
    .restart local v0    # "currentSdrBrightness":F
    :cond_6bf
    move/from16 v16, v0

    .end local v0    # "currentSdrBrightness":F
    .restart local v16    # "currentSdrBrightness":F
    goto :goto_6c4

    .line 1795
    .end local v16    # "currentSdrBrightness":F
    .restart local v0    # "currentSdrBrightness":F
    :cond_6c2
    move/from16 v16, v0

    .line 1823
    .end local v0    # "currentSdrBrightness":F
    .restart local v16    # "currentSdrBrightness":F
    :goto_6c4
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v0, :cond_6cf

    .line 1824
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    invoke-interface {v0, v5}, Lcom/android/server/display/DisplayPowerControllerStub;->notifyUpdateTempBrightnessTimeStamp(Z)V

    .line 1831
    :cond_6cf
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v0

    invoke-direct {v1, v0, v11}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FF)Z

    move-result v0

    .line 1832
    .end local v5    # "brightnessIsTemporary":Z
    .end local v6    # "sdrAnimateValue":F
    .end local v11    # "animateValue":F
    .end local v16    # "currentSdrBrightness":F
    .end local v31    # "initialRampSkip":Z
    .end local v32    # "hasBrightnessBuckets":Z
    .end local v33    # "isDisplayContentVisible":Z
    .end local v34    # "wasOrWillBeInVr":Z
    .end local v50    # "brightnessAdjusted":Z
    .end local v53    # "currentBrightness":F
    .local v0, "brightnessAdjusted":Z
    move v5, v0

    goto :goto_6ee

    .line 1833
    .end local v51    # "oldState":I
    .end local v52    # "mustNotify":Z
    .end local v54    # "previousPolicy":I
    .end local v55    # "unthrottledBrightnessState":F
    .local v5, "previousPolicy":I
    .local v6, "mustNotify":Z
    .local v11, "oldState":I
    .restart local v15    # "unthrottledBrightnessState":F
    :cond_6d9
    move/from16 v50, v0

    move/from16 v54, v5

    move/from16 v52, v6

    move/from16 v51, v11

    move/from16 v55, v15

    const/16 v56, 0x4

    .end local v0    # "brightnessAdjusted":Z
    .end local v5    # "previousPolicy":I
    .end local v6    # "mustNotify":Z
    .end local v11    # "oldState":I
    .end local v15    # "unthrottledBrightnessState":F
    .restart local v50    # "brightnessAdjusted":Z
    .restart local v51    # "oldState":I
    .restart local v52    # "mustNotify":Z
    .restart local v54    # "previousPolicy":I
    .restart local v55    # "unthrottledBrightnessState":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(F)Z

    move-result v0

    move v5, v0

    .line 1836
    .end local v50    # "brightnessAdjusted":Z
    .local v5, "brightnessAdjusted":Z
    :goto_6ee
    if-eqz v5, :cond_6f3

    .line 1837
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 1841
    :cond_6f3
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v6}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_728

    if-eqz v3, :cond_700

    goto :goto_728

    .line 1846
    :cond_700
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget v0, v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_769

    if-eqz v35, :cond_769

    .line 1848
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Brightness ["

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "] manual adjustment."

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_769

    .line 1842
    :cond_728
    :goto_728
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Brightness ["

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "] reason changing to: \'"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 1843
    invoke-virtual {v11, v3}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "\', previous reason: \'"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "\'."

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1842
    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v6}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 1855
    :cond_769
    :goto_769
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->time:J

    .line 1856
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iput v8, v0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    .line 1857
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v6}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 1858
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v6}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v6

    iput v6, v0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    .line 1859
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v6}, Lcom/android/server/display/HighBrightnessModeController;->getHighBrightnessMode()I

    move-result v6

    iput v6, v0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    .line 1860
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iget v6, v0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mIsRbcActive:Z

    or-int/2addr v6, v11

    iput v6, v0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    .line 1863
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget v0, v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    const/16 v6, 0x8

    if-ne v0, v6, :cond_7af

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget v0, v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    if-ne v0, v6, :cond_7af

    const/4 v0, 0x1

    goto :goto_7b0

    :cond_7af
    const/4 v0, 0x0

    :goto_7b0
    move v6, v0

    .line 1866
    .local v6, "tempToTempTransition":Z
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    invoke-virtual {v0, v11}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->equalsMainData(Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)Z

    move-result v0

    if-nez v0, :cond_7bd

    if-eqz v6, :cond_7bf

    :cond_7bd
    if-eqz v3, :cond_7eb

    .line 1868
    :cond_7bf
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    invoke-virtual {v0, v11}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->copyFrom(Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)V

    .line 1869
    new-instance v0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    invoke-direct {v0, v1, v11}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)V

    .line 1873
    .local v0, "newEvent":Lcom/android/server/display/DisplayPowerController$BrightnessEvent;
    iput v3, v0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    .line 1874
    iget v11, v0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    if-eqz v35, :cond_7d4

    goto :goto_7d6

    :cond_7d4
    const/16 v56, 0x0

    :goto_7d6
    or-int v11, v11, v56

    iput v11, v0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    .line 1875
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    if-eqz v11, :cond_7eb

    .line 1878
    invoke-virtual {v11, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 1883
    .end local v0    # "newEvent":Lcom/android/server/display/DisplayPowerController$BrightnessEvent;
    :cond_7eb
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_80c

    .line 1884
    const/4 v0, 0x2

    if-ne v9, v0, :cond_806

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_806

    .line 1885
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 1886
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateDisplayColorTemperature()V

    goto :goto_80c

    .line 1888
    :cond_806
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 1896
    :cond_80c
    :goto_80c
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_830

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v0, :cond_824

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 1898
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_830

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_830

    :cond_824
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1899
    invoke-virtual {v0, v11}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_830

    const/4 v0, 0x1

    goto :goto_831

    :cond_830
    const/4 v0, 0x0

    :goto_831
    move v11, v0

    .line 1900
    .local v11, "ready":Z
    if-eqz v11, :cond_83e

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 1901
    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_83e

    const/4 v0, 0x1

    goto :goto_83f

    :cond_83e
    const/4 v0, 0x0

    :goto_83f
    move v12, v0

    .line 1904
    .local v12, "finished":Z
    if-eqz v11, :cond_854

    const/4 v0, 0x1

    if-eq v9, v0, :cond_854

    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v13, v0, :cond_854

    .line 1906
    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1907
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-interface {v0, v13}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOn(I)V

    .line 1911
    :cond_854
    if-nez v12, :cond_86f

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-nez v0, :cond_86f

    .line 1912
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_865

    .line 1913
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string v13, "Unfinished business..."

    invoke-static {v0, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :cond_865
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    invoke-interface {v0, v13}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 1916
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1920
    :cond_86f
    if-eqz v11, :cond_892

    if-eqz v52, :cond_892

    .line 1922
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1923
    :try_start_876
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v0, :cond_889

    .line 1924
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1926
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v14, :cond_88a

    .line 1927
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string v15, "Display ready!"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88a

    .line 1923
    :cond_889
    const/4 v0, 0x1

    .line 1930
    :cond_88a
    :goto_88a
    monitor-exit v13
    :try_end_88b
    .catchall {:try_start_876 .. :try_end_88b} :catchall_88f

    .line 1931
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto :goto_893

    .line 1930
    :catchall_88f
    move-exception v0

    :try_start_890
    monitor-exit v13
    :try_end_891
    .catchall {:try_start_890 .. :try_end_891} :catchall_88f

    throw v0

    .line 1920
    :cond_892
    const/4 v0, 0x1

    .line 1935
    :goto_893
    if-eqz v12, :cond_8af

    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-eqz v13, :cond_8af

    .line 1936
    sget-boolean v13, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v13, :cond_8a4

    .line 1937
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string v14, "Finished business..."

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    :cond_8a4
    const/4 v13, 0x0

    iput-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1940
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    invoke-interface {v14, v15}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    goto :goto_8b0

    .line 1935
    :cond_8af
    const/4 v13, 0x0

    .line 1944
    :goto_8b0
    const/4 v14, 0x2

    if-eq v9, v14, :cond_8b4

    goto :goto_8b5

    :cond_8b4
    move v0, v13

    :goto_8b5
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    .line 1946
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v13, v54

    .end local v54    # "previousPolicy":I
    .local v13, "previousPolicy":I
    if-eq v13, v0, :cond_8c6

    .line 1947
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->logDisplayPolicyChanged(I)V

    .line 1949
    :cond_8c6
    return-void

    .line 1283
    .end local v4    # "previousBrightnessState":F
    .end local v5    # "brightnessAdjusted":Z
    .end local v6    # "tempToTempTransition":Z
    .end local v7    # "slowChange":Z
    .end local v8    # "brightnessState":F
    .end local v9    # "state":I
    .end local v10    # "userInitiatedChange":Z
    .end local v11    # "ready":Z
    .end local v12    # "finished":Z
    .end local v13    # "previousPolicy":I
    .end local v24    # "autoBrightnessEnabled":Z
    .end local v25    # "autoBrightnessDisabledDueToDisplayOff":Z
    .end local v27    # "autoBrightnessState":I
    .end local v28    # "updateScreenBrightnessSetting":Z
    .end local v29    # "performScreenOffTransition":Z
    .end local v30    # "autoBrightnessEnabledInDoze":Z
    .end local v35    # "userSetBrightnessChanged":Z
    .end local v36    # "autoBrightnessAdjustmentChanged":Z
    .end local v37    # "autoBrightnessAdjustment":F
    .end local v38    # "mustInitialize":Z
    .end local v51    # "oldState":I
    .end local v52    # "mustNotify":Z
    .end local v55    # "unthrottledBrightnessState":F
    .local v2, "mustInitialize":Z
    :catchall_8c7
    move-exception v0

    move/from16 v38, v2

    .end local v2    # "mustInitialize":Z
    .restart local v38    # "mustInitialize":Z
    goto :goto_8cc

    .end local v38    # "mustInitialize":Z
    .restart local v2    # "mustInitialize":Z
    :catchall_8cb
    move-exception v0

    :goto_8cc
    :try_start_8cc
    monitor-exit v4
    :try_end_8cd
    .catchall {:try_start_8cc .. :try_end_8cd} :catchall_8cb

    throw v0

    :pswitch_data_8ce
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_65
        :pswitch_61
        :pswitch_61
        :pswitch_63
    .end packed-switch
.end method

.method private updateScreenBrightnessSetting(F)V
    .registers 3
    .param p1, "brightnessValue"    # F

    .line 2651
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    .line 2652
    return-void

    .line 2654
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setCurrentScreenBrightness(F)V

    .line 2655
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessSetting;->setBrightness(F)V

    .line 2656
    return-void
.end method

.method private updateStubConfigInfo()V
    .registers 3

    .line 2228
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-interface {v0, v1}, Lcom/android/server/display/DisplayPowerControllerStub;->updateAmbientLightSensor(Landroid/hardware/Sensor;)V

    .line 2229
    return-void
.end method

.method private updateUserSetScreenBrightness()Z
    .registers 4

    .line 2693
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_11

    goto :goto_2f

    .line 2697
    :cond_11
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    invoke-static {v2, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-eqz v0, :cond_20

    .line 2699
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 2700
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 2701
    return v1

    .line 2703
    :cond_20
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setCurrentScreenBrightness(F)V

    .line 2704
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:F

    .line 2705
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 2706
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 2707
    const/4 v0, 0x1

    return v0

    .line 2695
    :cond_2f
    :goto_2f
    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2796
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_DPC:Z

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 2797
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2798
    :try_start_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2799
    const-string v1, "Display Power Controller:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2801
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLightSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2803
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2804
    const-string v1, "Display Power Controller Locked State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2811
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_7 .. :try_end_c0} :catchall_338

    .line 2813
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2814
    const-string v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessRampRateFast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessRampRateSlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipScreenOnBrightnessRamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2835
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v1

    .line 2836
    :try_start_233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.adjustedBrightness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessMin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessMax="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.hbmMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget v2, v2, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.hbmTransitionPoint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessMaxReason ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    iget v2, v2, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2849
    monitor-exit v1
    :try_end_2f8
    .catchall {:try_start_233 .. :try_end_2f8} :catchall_335

    .line 2850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayBlanksAfterDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessBucketsInDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2853
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 2854
    return-void

    .line 2849
    :catchall_335
    move-exception v0

    :try_start_336
    monitor-exit v1
    :try_end_337
    .catchall {:try_start_336 .. :try_end_337} :catchall_335

    throw v0

    .line 2811
    :catchall_338
    move-exception v1

    :try_start_339
    monitor-exit v0
    :try_end_33a
    .catchall {:try_start_339 .. :try_end_33a} :catchall_338

    throw v1
.end method

.method public getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez v0, :cond_6

    .line 777
    const/4 v0, 0x0

    return-object v0

    .line 779
    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "includePackage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez v0, :cond_6

    .line 761
    const/4 v0, 0x0

    return-object v0

    .line 763
    :cond_6
    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->getEvents(IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;
    .registers 11

    .line 1982
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v0

    .line 1983
    :try_start_3
    new-instance v9, Landroid/hardware/display/BrightnessInfo;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    iget v2, v1, Landroid/util/MutableFloat;->value:F

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    iget v3, v1, Landroid/util/MutableFloat;->value:F

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    iget v4, v1, Landroid/util/MutableFloat;->value:F

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    iget v5, v1, Landroid/util/MutableFloat;->value:F

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget v6, v1, Landroid/util/MutableInt;->value:I

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget v7, v1, Landroid/util/MutableFloat;->value:F

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    iget v8, v1, Landroid/util/MutableInt;->value:I

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/hardware/display/BrightnessInfo;-><init>(FFFFIFI)V

    monitor-exit v0

    return-object v9

    .line 1991
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 846
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v0, :cond_6

    .line 847
    const/4 v0, 0x0

    return-object v0

    .line 849
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayControllerHandler()Landroid/os/Handler;
    .registers 2

    .line 3576
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method public getDisplayPowerState()Lcom/android/server/display/DisplayPowerState;
    .registers 2

    .line 3580
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    return-object v0
.end method

.method protected getImpl()Lcom/android/server/display/DisplayPowerControllerStub;
    .registers 2

    .line 3606
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    return-object v0
.end method

.method getScreenBrightnessSetting()F
    .registers 3

    .line 2625
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessSetting;->getBrightness()F

    move-result v0

    .line 2626
    .local v0, "brightness":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2627
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    .line 2629
    :cond_e
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v1

    return v1
.end method

.method public ignoreProximitySensorUntilChanged()V
    .registers 3

    .line 1961
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessage(I)Z

    .line 1962
    return-void
.end method

.method public isProximitySensorAvailable()Z
    .registers 2

    .line 749
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method synthetic lambda$createBrightnessThrottlerLocked$3$com-android-server-display-DisplayPowerController()V
    .registers 1

    .line 2080
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 2081
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 2082
    return-void
.end method

.method synthetic lambda$createHbmControllerLocked$2$com-android-server-display-DisplayPowerController()V
    .registers 2

    .line 2064
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 2065
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 2067
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_d

    .line 2068
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->update()V

    .line 2070
    :cond_d
    return-void
.end method

.method synthetic lambda$dump$4$com-android-server-display-DisplayPowerController(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2853
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method synthetic lambda$initialize$1$com-android-server-display-DisplayPowerController(F)V
    .registers 5
    .param p1, "brightnessValue"    # F

    .line 1025
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1026
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1027
    return-void
.end method

.method synthetic lambda$onBootCompleted$5$com-android-server-display-DisplayPowerController()V
    .registers 2

    .line 3601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    return-void
.end method

.method synthetic lambda$onDisplayChanged$0$com-android-server-display-DisplayPowerController(Lcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V
    .registers 9
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "uniqueId"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/android/server/display/DisplayDeviceConfig;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "info"    # Lcom/android/server/display/DisplayDeviceInfo;

    .line 871
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eq v0, p1, :cond_27

    .line 872
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 873
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 874
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 875
    iput-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 876
    invoke-direct {p0, p4, p5}, Lcom/android/server/display/DisplayPowerController;->loadFromDisplayDeviceConfig(Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V

    .line 877
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    const/4 v1, 0x0

    const-string v2, "DisplayPowerController#updatePowerState"

    if-eqz v0, :cond_1d

    .line 878
    invoke-static {v2, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 880
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 881
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 882
    invoke-static {v2, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 885
    :cond_27
    return-void
.end method

.method public notifyDisplayPowerControllerStub(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 3584
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    invoke-interface {v0, p1, p2}, Lcom/android/server/display/DisplayPowerControllerStub;->receiveNoticeFromDisplayPowerController(ILandroid/os/Bundle;)V

    .line 3585
    return-void
.end method

.method onBootCompleted()V
    .registers 3

    .line 3601
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 3602
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    invoke-interface {v0}, Lcom/android/server/display/DisplayPowerControllerStub;->onBootCompleted()V

    .line 3603
    return-void
.end method

.method public onDeviceStateTransition()V
    .registers 1

    .line 894
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 895
    return-void
.end method

.method public onDisplayChanged()V
    .registers 15

    .line 859
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 860
    .local v0, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v0, :cond_27

    .line 861
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display Device is null in DisplayPowerController for display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 862
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 861
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    return-void

    .line 866
    :cond_27
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v8

    .line 867
    .local v8, "uniqueId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v9

    .line 868
    .local v9, "config":Lcom/android/server/display/DisplayDeviceConfig;
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v10

    .line 869
    .local v10, "token":Landroid/os/IBinder;
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v11

    .line 870
    .local v11, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v13, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;

    move-object v1, v13

    move-object v2, p0

    move-object v3, v0

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V

    invoke-virtual {v12, v13}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 886
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3
    .param p1, "newUserId"    # I

    .line 767
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    .line 768
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_b

    .line 769
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->onSwitchUser(I)V

    .line 771
    :cond_b
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .registers 2

    .line 786
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_7

    .line 787
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->persistBrightnessTrackerState()V

    .line 789
    :cond_7
    return-void
.end method

.method postBrightnessChangeRunnable()V
    .registers 3

    .line 2033
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2034
    return-void
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .registers 7
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .line 807
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 808
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestPowerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", waitForNegativeProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_27
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 813
    :try_start_2a
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_31

    .line 814
    monitor-exit v0

    return v2

    .line 817
    :cond_31
    const/4 v1, 0x0

    .line 819
    .local v1, "changed":Z
    if-eqz p2, :cond_3b

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v3, :cond_3b

    .line 821
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 822
    const/4 v1, 0x1

    .line 825
    :cond_3b
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v3, :cond_48

    .line 826
    new-instance v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 827
    const/4 v1, 0x1

    goto :goto_54

    .line 828
    :cond_48
    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 829
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 830
    const/4 v1, 0x1

    .line 833
    :cond_54
    :goto_54
    if-eqz v1, :cond_62

    .line 834
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 835
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v3, :cond_62

    .line 836
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 837
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 841
    :cond_62
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v0

    return v2

    .line 842
    .end local v1    # "changed":Z
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_2a .. :try_end_68} :catchall_66

    throw v1
.end method

.method setAmbientColorTemperatureOverride(F)V
    .registers 3
    .param p1, "cct"    # F

    .line 3368
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_a

    .line 3369
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setAmbientColorTemperatureOverride(F)Z

    .line 3373
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 3375
    :cond_a
    return-void
.end method

.method setAutoBrightnessLoggingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 3350
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_7

    .line 3351
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setLoggingEnabled(Z)Z

    .line 3353
    :cond_7
    return-void
.end method

.method public setAutomaticScreenBrightnessMode(Z)V
    .registers 3
    .param p1, "isIdle"    # Z

    .line 1174
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_d

    .line 1175
    if-eqz p1, :cond_a

    .line 1176
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->switchToIdleMode()V

    goto :goto_d

    .line 1178
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->switchToInteractiveScreenBrightnessMode()V

    .line 1181
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_14

    .line 1182
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setStrongModeEnabled(Z)V

    .line 1184
    :cond_14
    return-void
.end method

.method setBrightness(F)V
    .registers 3
    .param p1, "brightnessValue"    # F

    .line 2643
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    if-eqz v0, :cond_8

    .line 2644
    invoke-interface {v0, p1}, Lcom/android/server/display/DisplayPowerControllerStub;->getClampedBrightnessForPeak(F)F

    move-result p1

    .line 2647
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessSetting;->setBrightness(F)V

    .line 2648
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 4
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 1965
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1966
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1967
    return-void
.end method

.method setDisplayWhiteBalanceLoggingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 3361
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_c

    .line 3362
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setLoggingEnabled(Z)Z

    .line 3363
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setLoggingEnabled(Z)Z

    .line 3365
    :cond_c
    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .registers 6
    .param p1, "adjustment"    # F

    .line 1976
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 1977
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1976
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1978
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1979
    return-void
.end method

.method public setTemporaryBrightness(F)V
    .registers 6
    .param p1, "brightness"    # F

    .line 1970
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 1971
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1970
    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1972
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1973
    return-void
.end method

.method public stop()V
    .registers 5

    .line 904
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 905
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    .line 906
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 907
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 909
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v2, :cond_1b

    .line 910
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 913
    :cond_1b
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v2, :cond_22

    .line 914
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    .line 917
    :cond_22
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    if-eqz v2, :cond_2b

    .line 918
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    invoke-virtual {v2, v3}, Lcom/android/server/display/BrightnessSetting;->unregisterListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V

    .line 921
    :cond_2b
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 924
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    if-eqz v2, :cond_3d

    .line 925
    invoke-interface {v2}, Lcom/android/server/display/DisplayPowerControllerStub;->stop()V

    .line 928
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3d
    monitor-exit v0

    .line 929
    return-void

    .line 928
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public updateBrightness()V
    .registers 1

    .line 1953
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 1954
    return-void
.end method

.method public updateWhiteBalance()V
    .registers 1

    .line 3357
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 3358
    return-void
.end method
