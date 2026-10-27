.class public final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
.implements Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;


# static fields
.field public static final BRIGHTNESS_RANGE_BOUNDARIES:[F

.field public static final BRIGHTNESS_RANGE_INDEX:[I

.field public static final DEBUG:Z

.field public static final LUX_BUCKET_BOUNDARIES:[F

.field public static final LUX_RANGE_INDEX:[I


# instance fields
.field public final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field public mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field public final mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field public mBootCompleted:Z

.field public final mBrightnessBucketsInDozeConfig:Z

.field public final mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

.field public mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

.field public mBrightnessRampDecreaseMaxTimeIdleMillis:J

.field public mBrightnessRampDecreaseMaxTimeMillis:J

.field public mBrightnessRampIncreaseMaxTimeIdleMillis:J

.field public mBrightnessRampIncreaseMaxTimeMillis:J

.field public mBrightnessRampRateFastDecrease:F

.field public mBrightnessRampRateFastIncrease:F

.field public mBrightnessRampRateSlowDecrease:F

.field public mBrightnessRampRateSlowDecreaseIdle:F

.field public mBrightnessRampRateSlowIncrease:F

.field public mBrightnessRampRateSlowIncreaseIdle:F

.field public final mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

.field final mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

.field public final mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

.field public final mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field public final mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

.field public final mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field public final mCleanListener:Ljava/lang/Runnable;

.field public final mClock:Lcom/android/server/display/DisplayPowerController$Clock;

.field public final mColorFadeEnabled:Z

.field public final mColorFadeFadesConfig:Z

.field public mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayBlanksAfterDozeConfig:Z

.field public final mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

.field public final mDisplayBrightnessFollowers:Landroid/util/SparseArray;

.field public mDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field public mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mDisplayId:I

.field public mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

.field public final mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

.field public mDisplayReadyLocked:Z

.field public final mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

.field public mDisplayStatsId:I

.field public final mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

.field public final mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

.field public mDozeScaleFactor:F

.field public mDozing:Z

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field public mIdleStylusTimeoutMillisConfig:J

.field public mInitialAutoBrightness:F

.field public final mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

.field public mIsDisplayInternal:Z

.field public mIsEnabled:Z

.field public mIsInTransition:Z

.field public mIsRbcActive:Z

.field public mIsWearBedtimeModeEnabled:Z

.field public final mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field public mLastStatsBrightness:F

.field public mLastStylusUsageEventTime:J

.field public mLeadDisplayId:I

.field public mLightSensor:Landroid/hardware/Sensor;

.field public final mLock:Ljava/lang/Object;

.field public final mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

.field public mNitsRange:[F

.field public final mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

.field public mPendingOverrideDozeScreenStateLocked:I

.field public mPendingRequestChangedLocked:Z

.field public mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mPendingScreenOff:Z

.field public mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

.field public mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field public mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

.field public mPendingUpdatePowerStateLocked:Z

.field public mPhysicalDisplayName:Ljava/lang/String;

.field public mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mPowerState:Lcom/android/server/display/DisplayPowerState;

.field public final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field public final mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

.field public mReportedScreenStateToPolicy:I

.field public mScreenBrightnessDozeConfig:F

.field public mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

.field public mScreenOffBlockStartRealTime:J

.field public mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

.field public mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

.field public mScreenOnBlockByDisplayOffloadStartRealTime:J

.field public mScreenOnBlockStartRealTime:J

.field public mScreenTurningOnWasBlockedByDisplayOffload:Z

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

.field public mSkipRampState:I

.field public final mSkipScreenOnBrightnessRamp:Z

.field public mStopped:Z

.field public final mTag:Ljava/lang/String;

.field public final mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field public mUniqueDisplayId:Ljava/lang/String;

.field public mUseSoftwareAutoBrightnessConfig:Z

.field public final mWakelockController:Lcom/android/server/display/WakelockController;

.field public final mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public static synthetic $r8$lambda$3lWZJ4BpIHcX_GeenBdRfMVq_oU(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public static synthetic $r8$lambda$E6oYhad9WKJRmY_uYZMh28UDmEE(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->lambda$dump$8(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O6mpZthfxOx0lhcqL34r3oprwCs(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->lambda$blockScreenOnByDisplayOffload$7(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PyqwBbVTZ4w53dakFwc1n1ZoghQ(Lcom/android/server/display/DisplayPowerController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->lambda$overrideDozeScreenState$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SuWf1yk5lu2qnPpoUMKnLNPfmmM(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$VkeH_dpkq8ekwizFlDrhaPmB5N8(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vtc1Po4a0DGkWz5GRpdfH5REh7Q(Lcom/android/server/display/DisplayPowerController;ZZLcom/android/server/display/DisplayDevice;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 0
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/display/DisplayPowerController;->lambda$onDisplayChanged$4(ZZLcom/android/server/display/DisplayDevice;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZFPhLbQvTzph4eOkWY2hWLOLrk8(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$iVTSAZlXXYTnQ1GVDYvaOw8zfV4(Lcom/android/server/display/DisplayPowerController;F)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->lambda$initialize$5(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$niZtGGrrbvBHFckEP88Htcgg_rk(Lcom/android/server/display/DisplayPowerController;FFF)F
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->lambda$createHbmControllerLocked$6(FFF)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAutomaticBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAutomaticBrightnessStrategy(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightnessTracker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessTracker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$Clock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/brightness/DisplayBrightnessController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayBrightnessFollowers(Lcom/android/server/display/DisplayPowerController;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayOffloadSession(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIdleStylusTimeoutMillisConfig(Lcom/android/server/display/DisplayPowerController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mIdleStylusTimeoutMillisConfig:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsWearBedtimeModeEnabled(Lcom/android/server/display/DisplayPowerController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingScreenOffUnblocker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingScreenOnUnblocker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerState(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStopped(Lcom/android/server/display/DisplayPowerController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBootCompleted(Lcom/android/server/display/DisplayPowerController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsWearBedtimeModeEnabled(Lcom/android/server/display/DisplayPowerController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyReduceBrightColorsSplineAdjustment(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->applyReduceBrightColorsSplineAdjustment()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupHandlerThreadAfterStop(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->cleanupHandlerThreadAfterStop()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleBrightnessModeChange(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->handleBrightnessModeChange()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnSwitchUser(Lcom/android/server/display/DisplayPowerController;IIF)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleOnSwitchUser(IIF)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRbcChanged(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->handleRbcChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogHbmBrightnessStats(Lcom/android/server/display/DisplayPowerController;FI)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->logHbmBrightnessStats(FI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportStats(Lcom/android/server/display/DisplayPowerController;F)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->reportStats(F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendUpdatePowerState(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAnimatorRampSpeeds(Lcom/android/server/display/DisplayPowerController;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setAnimatorRampSpeeds(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDwbcLoggingEnabled(Lcom/android/server/display/DisplayPowerController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setDwbcLoggingEnabled(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDwbcOverride(Lcom/android/server/display/DisplayPowerController;F)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setDwbcOverride(F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDwbcStrongMode(Lcom/android/server/display/DisplayPowerController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setDwbcStrongMode(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUpAutoBrightness(Lcom/android/server/display/DisplayPowerController;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munblockScreenOff(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munblockScreenOn(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munblockScreenOnByDisplayOffload(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOnByDisplayOffload()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 141
    const-string v0, "DisplayPowerController"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    const/16 v0, 0x26

    .line 190
    new-array v1, v0, [F

    fill-array-data v1, :array_2c

    sput-object v1, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_BOUNDARIES:[F

    .line 198
    new-array v0, v0, [I

    fill-array-data v0, :array_7c

    sput-object v0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_INDEX:[I

    const/16 v0, 0xe

    .line 239
    new-array v0, v0, [F

    fill-array-data v0, :array_cc

    sput-object v0, Lcom/android/server/display/DisplayPowerController;->LUX_BUCKET_BOUNDARIES:[F

    const/16 v0, 0xf

    .line 243
    new-array v0, v0, [I

    fill-array-data v0, :array_ec

    sput-object v0, Lcom/android/server/display/DisplayPowerController;->LUX_RANGE_INDEX:[I

    return-void

    nop

    :array_2c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41000000    # 8.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41a00000    # 20.0f
        0x41f00000    # 30.0f
        0x42200000    # 40.0f
        0x42480000    # 50.0f
        0x42700000    # 60.0f
        0x428c0000    # 70.0f
        0x42a00000    # 80.0f
        0x42b40000    # 90.0f
        0x42c80000    # 100.0f
        0x43480000    # 200.0f
        0x43960000    # 300.0f
        0x43c80000    # 400.0f
        0x43fa0000    # 500.0f
        0x44160000    # 600.0f
        0x442f0000    # 700.0f
        0x44480000    # 800.0f
        0x44610000    # 900.0f
        0x447a0000    # 1000.0f
        0x44960000    # 1200.0f
        0x44af0000    # 1400.0f
        0x44c80000    # 1600.0f
        0x44e10000    # 1800.0f
        0x44fa0000    # 2000.0f
        0x450ca000    # 2250.0f
        0x451c4000    # 2500.0f
        0x452be000    # 2750.0f
        0x453b8000    # 3000.0f
    .end array-data

    :array_7c
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
    .end array-data

    :array_cc
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x41200000    # 10.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
        0x43960000    # 300.0f
        0x447a0000    # 1000.0f
        0x453b8000    # 3000.0f
        0x461c4000    # 10000.0f
        0x46ea6000    # 30000.0f
        0x47c35000    # 100000.0f
    .end array-data

    :array_ec
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayPowerController$Injector;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;ZLcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/plugin/PluginManager;)V
    .registers 40

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p5

    .line 538
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 263
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 290
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    .line 312
    new-instance v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    invoke-direct {v2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;-><init>()V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 394
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 407
    new-instance v2, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v2}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 409
    new-instance v2, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v2}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v2, 0x0

    .line 421
    iput v2, v1, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    .line 452
    new-instance v2, Lcom/android/internal/util/RingBuffer;

    const-class v4, Lcom/android/server/display/brightness/BrightnessEvent;

    const/16 v5, 0x14

    invoke-direct {v2, v4, v5}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    const/4 v11, 0x0

    .line 471
    iput v11, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 505
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    const-wide/16 v4, -0x1

    .line 522
    iput-wide v4, v1, Lcom/android/server/display/DisplayPowerController;->mLastStylusUsageEventTime:J

    const-wide/16 v4, 0x0

    .line 525
    iput-wide v4, v1, Lcom/android/server/display/DisplayPowerController;->mIdleStylusTimeoutMillisConfig:J

    .line 1269
    new-instance v2, Lcom/android/server/display/DisplayPowerController$2;

    invoke-direct {v2, v1}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1288
    new-instance v2, Lcom/android/server/display/DisplayPowerController$3;

    invoke-direct {v2, v1}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 2488
    new-instance v2, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 539
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v2, p13

    .line 541
    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    if-eqz p2, :cond_6c

    move-object/from16 v4, p2

    goto :goto_71

    .line 542
    :cond_6c
    new-instance v4, Lcom/android/server/display/DisplayPowerController$Injector;

    invoke-direct {v4}, Lcom/android/server/display/DisplayPowerController$Injector;-><init>()V

    :goto_71
    iput-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    .line 543
    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerController$Injector;->getClock()Lcom/android/server/display/DisplayPowerController$Clock;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    move-object/from16 v13, p7

    .line 544
    iput-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 545
    invoke-virtual {v13}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v9

    iput v9, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 546
    invoke-virtual {v13}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 547
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v20

    .line 548
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v14

    .line 549
    iput-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 550
    new-instance v15, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p4 .. p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v15, v1, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 551
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 552
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDeviceConfig;->getIdleStylusTimeoutMillis()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v1, Lcom/android/server/display/DisplayPowerController;->mIdleStylusTimeoutMillisConfig:J

    .line 553
    invoke-virtual {v13}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    .line 554
    invoke-virtual {v13}, Lcom/android/server/display/LogicalDisplay;->isInTransitionLocked()Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 555
    iget v5, v14, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c2

    move v5, v6

    goto :goto_c3

    :cond_c2
    move v5, v11

    :goto_c3
    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    move-object/from16 v5, p3

    .line 556
    invoke-virtual {v4, v9, v5}, Lcom/android/server/display/DisplayPowerController$Injector;->getWakelockController(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)Lcom/android/server/display/WakelockController;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    move v7, v6

    .line 557
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    move v10, v7

    .line 558
    invoke-virtual {v15}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    new-instance v8, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda3;

    invoke-direct {v8, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v10, p5

    .line 557
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/display/DisplayPowerController$Injector;->getDisplayPowerProximityStateController(Lcom/android/server/display/WakelockController;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Looper;Ljava/lang/Runnable;ILandroid/hardware/SensorManager;)Lcom/android/server/display/DisplayPowerProximityStateController;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 560
    new-instance v6, Lcom/android/server/display/state/DisplayStateController;

    const v7, 0x111026d

    .line 562
    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/server/display/state/DisplayStateController;-><init>(Lcom/android/server/display/DisplayPowerProximityStateController;Z)V

    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    .line 563
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DisplayPowerController["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 565
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 566
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iput v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 567
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPhysicalDisplayName:Ljava/lang/String;

    .line 569
    new-instance v5, Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-direct {v5, v9}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(I)V

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 570
    new-instance v5, Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-direct {v5, v9}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(I)V

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 572
    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isBatteryStatsEnabledForAllDisplays()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_140

    .line 573
    invoke-static {v14}, Lcom/android/server/display/DisplayPowerController;->isDisplaySupportedForBatteryStats(Lcom/android/server/display/DisplayDeviceInfo;)Z

    move-result v5

    if-eqz v5, :cond_140

    .line 574
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    goto :goto_14b

    :cond_140
    if-nez v9, :cond_149

    .line 576
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    goto :goto_14b

    .line 578
    :cond_149
    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 581
    :goto_14b
    new-instance v5, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-direct {v5, v1, v15}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 582
    const-class v7, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    move-object/from16 v7, p6

    .line 583
    iput-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 584
    iput-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    move-object/from16 v7, p8

    .line 585
    iput-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    move-object/from16 v7, p10

    .line 586
    iput-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    .line 588
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "bedtime_mode"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_179

    move v7, v10

    goto :goto_17a

    :cond_179
    move v7, v11

    :goto_17a
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    .line 590
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 591
    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 590
    invoke-virtual {v7, v8, v11, v5, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 595
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 596
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getDefaultDozeBrightness()F

    move-result v0

    .line 595
    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 597
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->loadBrightnessRampRates()V

    const v0, 0x111026e

    .line 598
    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    const v0, 0x1130007

    .line 600
    invoke-virtual {v12, v0, v10, v10}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    .line 603
    new-instance v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v5, p11

    .line 612
    invoke-virtual {v1, v5, v0}, Lcom/android/server/display/DisplayPowerController;->createHbmControllerLocked(Lcom/android/server/display/HighBrightnessModeMetadata;Ljava/lang/Runnable;)Lcom/android/server/display/HighBrightnessModeController;

    move-result-object v5

    .line 615
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v4, v5, v0, v7}, Lcom/android/server/display/DisplayPowerController$Injector;->getBrightnessRangeController(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Runnable;Lcom/android/server/display/DisplayDeviceConfig;)Lcom/android/server/display/BrightnessRangeController;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 618
    new-instance v2, Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 620
    invoke-virtual {v13}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->brightnessDefault:F

    new-instance v7, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;

    invoke-direct {v7, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    new-instance v8, Landroid/os/HandlerExecutor;

    invoke-direct {v8, v15}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move/from16 v22, v10

    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    move-object v11, v6

    move/from16 v23, v22

    move-object/from16 v6, p9

    move-object/from16 v22, v4

    move v4, v9

    move-object/from16 v9, p13

    invoke-direct/range {v2 .. v10}, Lcom/android/server/display/brightness/DisplayBrightnessController;-><init>(Landroid/content/Context;IFLcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Landroid/os/HandlerExecutor;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayDeviceConfig;)V

    move v9, v4

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 625
    invoke-virtual {v13}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 627
    new-instance v4, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;)V

    new-instance v5, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 631
    invoke-virtual {v13}, Lcom/android/server/display/LogicalDisplay;->getPowerThrottlingDataIdLocked()Ljava/lang/String;

    move-result-object v16

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v7, v14, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v8, v14, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    move-object v13, v15

    move-object v15, v3

    move-object v3, v13

    move-object v14, v0

    move-object v13, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v21, v9

    invoke-direct/range {v13 .. v21}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;IILandroid/os/IBinder;I)V

    .line 634
    invoke-virtual {v2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v10

    move-object/from16 v6, p1

    move-object/from16 v8, p5

    move-object/from16 v7, p13

    move-object/from16 v9, p14

    move-object v0, v2

    move-object/from16 v2, v22

    .line 626
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/display/DisplayPowerController$Injector;->getBrightnessClamperController(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;Lcom/android/server/display/plugin/PluginManager;F)Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    move-result-object v4

    move-object v5, v3

    move-object v3, v6

    iput-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 636
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(F)Z

    .line 638
    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getAutomaticBrightnessStrategy()Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    if-nez v21, :cond_26a

    .line 644
    :try_start_230
    invoke-virtual {v2, v5, v8, v12}, Lcom/android/server/display/DisplayPowerController$Injector;->getDisplayWhiteBalanceController(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    move-result-object v6
    :try_end_234
    .catch Ljava/lang/Exception; {:try_start_230 .. :try_end_234} :catch_250

    .line 646
    :try_start_234
    new-instance v2, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-direct {v2, v3, v5}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_239
    .catch Ljava/lang/Exception; {:try_start_234 .. :try_end_239} :catch_24c

    .line 647
    :try_start_239
    invoke-virtual {v2, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z

    .line 648
    invoke-virtual {v6, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z
    :try_end_23f
    .catch Ljava/lang/Exception; {:try_start_239 .. :try_end_23f} :catch_245

    move-object/from16 v24, v6

    move-object v6, v2

    move-object/from16 v2, v24

    goto :goto_26c

    :catch_245
    move-exception v0

    move-object/from16 v24, v6

    move-object v6, v2

    move-object/from16 v2, v24

    goto :goto_253

    :catch_24c
    move-exception v0

    move-object v2, v6

    move-object v6, v11

    goto :goto_253

    :catch_250
    move-exception v0

    move-object v2, v11

    move-object v6, v2

    .line 650
    :goto_253
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to set up display white-balance: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26c

    :cond_26a
    move-object v2, v11

    move-object v6, v2

    .line 653
    :goto_26c
    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    .line 654
    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 656
    invoke-virtual {v1, v12}, Lcom/android/server/display/DisplayPowerController;->loadNitsRange(Landroid/content/res/Resources;)V

    .line 658
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v0, :cond_294

    .line 659
    const-class v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v0, :cond_291

    .line 661
    new-instance v2, Lcom/android/server/display/DisplayPowerController$1;

    invoke-direct {v2, v1}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    invoke-virtual {v0, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setReduceBrightColorsListener(Lcom/android/server/display/color/ColorDisplayService$ReduceBrightColorsListener;)Z

    move-result v0

    if-eqz v0, :cond_291

    .line 676
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->applyReduceBrightColorsSplineAdjustment()V

    :cond_291
    :goto_291
    move-object/from16 v2, p4

    goto :goto_297

    .line 680
    :cond_294
    iput-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    goto :goto_291

    .line 683
    :goto_297
    invoke-virtual {v1, v3, v2}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    .line 685
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController$Injector;->isColorFadeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2ae

    const v0, 0x1110156

    .line 686
    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_2ae

    move/from16 v11, v23

    goto :goto_2af

    :cond_2ae
    const/4 v11, 0x0

    :goto_2af
    iput-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const v0, 0x1110031

    .line 688
    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    const v0, 0x1110154

    .line 691
    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const v0, 0x1110155

    .line 694
    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    move/from16 v2, p12

    .line 697
    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    return-void
.end method

.method public static getBrightnessAdjustmentDirection(FF)I
    .registers 3

    .line 0
    cmpl-float v0, p0, p1

    if-lez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    cmpg-float p0, p0, p1

    if-gez p0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static isDisplaySupportedForBatteryStats(Lcom/android/server/display/DisplayDeviceInfo;)Z
    .registers 3

    .line 2807
    iget p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v1, 0x2

    if-eq p0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    return v0
.end method

.method public static mapLuxToProtoEnumBucket(F)I
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    const/4 v1, 0x0

    if-gez v0, :cond_26

    .line 2973
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_25

    .line 2974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid lux value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ". Returning LUX_RANGE_UNKNOWN."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DisplayPowerController"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return v1

    .line 2980
    :cond_26
    :goto_26
    sget-object v0, Lcom/android/server/display/DisplayPowerController;->LUX_BUCKET_BOUNDARIES:[F

    array-length v2, v0

    if-ge v1, v2, :cond_39

    .line 2981
    aget v0, v0, v1

    cmpg-float v0, p0, v0

    if-gez v0, :cond_36

    .line 2982
    sget-object p0, Lcom/android/server/display/DisplayPowerController;->LUX_RANGE_INDEX:[I

    aget p0, p0, v1

    return p0

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_39
    const/16 p0, 0xe

    return p0
.end method

.method public static reportedToPolicyToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 2789
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2787
    :cond_d
    const-string p0, "REPORTED_TO_POLICY_SCREEN_ON"

    return-object p0

    .line 2785
    :cond_10
    const-string p0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    return-object p0

    .line 2783
    :cond_13
    const-string p0, "REPORTED_TO_POLICY_SCREEN_OFF"

    return-object p0
.end method

.method public static skipRampStateToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 2802
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2800
    :cond_d
    const-string p0, "RAMP_STATE_SKIP_AUTOBRIGHT"

    return-object p0

    .line 2798
    :cond_10
    const-string p0, "RAMP_STATE_SKIP_INITIAL"

    return-object p0

    .line 2796
    :cond_13
    const-string p0, "RAMP_STATE_SKIP_NONE"

    return-object p0
.end method


# virtual methods
.method public addDisplayBrightnessFollower(Lcom/android/server/display/DisplayPowerController;)V
    .registers 5

    .line 2626
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0x16

    const/4 v2, 0x0

    .line 2627
    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    .line 2628
    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v1

    .line 2626
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final animateScreenBrightness(FFF)V
    .registers 5

    const/4 v0, 0x0

    .line 2316
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFFZ)V

    return-void
.end method

.method public final animateScreenBrightness(FFFZ)V
    .registers 8

    .line 2321
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 2322
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animating brightness: target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sdrTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    :cond_2a
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->animateTo(FFFZ)Z

    move-result p2

    if-eqz p2, :cond_73

    .line 2327
    const-string p2, "TargetScreenBrightness"

    float-to-int p3, p1

    const-wide/32 v0, 0x20000

    invoke-static {v0, v1, p2, p3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2329
    const-string p2, "debug.tracing.screen_brightness"

    .line 2330
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    .line 2333
    :try_start_41
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_70

    :catch_45
    move-exception p4

    .line 2335
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set a system property: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " value="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2336
    invoke-virtual {p4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2335
    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    :goto_70
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->noteScreenBrightness(F)V

    :cond_73
    return-void
.end method

.method public final animateScreenStateChange(IIZ)V
    .registers 10

    .line 2346
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_14

    if-eq p1, v2, :cond_12

    goto/16 :goto_108

    .line 2351
    :cond_12
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2354
    :cond_14
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isEnsureColorFadeWhenTurningOnEnabled()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2355
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-ne v0, v3, :cond_35

    if-eq p1, v3, :cond_35

    .line 2359
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2360
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v5, :cond_31

    move v5, v2

    goto :goto_32

    :cond_31
    move v5, v1

    .line 2359
    :goto_32
    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 2363
    :cond_35
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2364
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2365
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_68

    .line 2369
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2370
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v5, :cond_55

    move v5, v2

    goto :goto_56

    :cond_55
    move v5, v1

    .line 2369
    :goto_56
    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 2371
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_60

    .line 2372
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_60
    if-eq p1, v3, :cond_64

    move v0, v3

    goto :goto_65

    :cond_64
    move v0, v1

    .line 2379
    :goto_65
    invoke-virtual {p0, v3, p2, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 2385
    :cond_68
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v0, :cond_78

    if-eq p1, v3, :cond_78

    .line 2386
    invoke-virtual {p0, v3, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 2387
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2388
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    :cond_78
    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p1, v2, :cond_8f

    .line 2395
    invoke-virtual {p0, v2, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    move-result p1

    if-nez p1, :cond_84

    goto/16 :goto_108

    .line 2398
    :cond_84
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2399
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    return-void

    :cond_8f
    const/4 v4, 0x3

    if-ne p1, v4, :cond_b5

    .line 2405
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_a3

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2406
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-ne p1, v2, :cond_a3

    goto :goto_108

    .line 2411
    :cond_a3
    invoke-virtual {p0, v4, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    move-result p1

    if-nez p1, :cond_aa

    goto :goto_108

    .line 2416
    :cond_aa
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2417
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    return-void

    :cond_b5
    const/4 v5, 0x4

    if-ne p1, v5, :cond_e6

    .line 2422
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_c9

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2423
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v5, :cond_c9

    goto :goto_108

    .line 2429
    :cond_c9
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v5, :cond_db

    .line 2430
    invoke-virtual {p0, v4, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    move-result p1

    if-nez p1, :cond_d8

    goto :goto_108

    .line 2433
    :cond_d8
    invoke-virtual {p0, v5, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 2437
    :cond_db
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2438
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    return-void

    :cond_e6
    const/4 v4, 0x6

    if-ne p1, v4, :cond_117

    .line 2443
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_fa

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2444
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v4, :cond_fa

    goto :goto_108

    .line 2450
    :cond_fa
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v4, :cond_10c

    .line 2451
    invoke-virtual {p0, v2, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    move-result p1

    if-nez p1, :cond_109

    :goto_108
    return-void

    .line 2454
    :cond_109
    invoke-virtual {p0, v4, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 2458
    :cond_10c
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2459
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    return-void

    .line 2462
    :cond_117
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2463
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_123

    .line 2464
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2467
    :cond_123
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_138

    .line 2470
    invoke-virtual {p0, v3, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 2471
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2472
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    return-void

    :cond_138
    if-eqz p3, :cond_158

    .line 2473
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2475
    iget-boolean p3, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz p3, :cond_143

    goto :goto_144

    :cond_143
    move v2, v3

    .line 2474
    :goto_144
    invoke-virtual {p1, p2, v2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_158

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2477
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v3, :cond_158

    .line 2479
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 2483
    :cond_158
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    return-void
.end method

.method public final applyReduceBrightColorsSplineAdjustment()V
    .registers 3

    .line 701
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 702
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public final blockScreenOff()V
    .registers 5

    .line 2121
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-nez v0, :cond_22

    .line 2122
    const-string v0, "Screen off blocked"

    const/4 v1, 0x0

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2123
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController-IA;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 2124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    .line 2125
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string v0, "Blocking screen off"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method public final blockScreenOn()V
    .registers 5

    .line 2103
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_22

    .line 2104
    const-string v0, "Screen on blocked"

    const/4 v1, 0x0

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2105
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController-IA;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 2106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 2107
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string v0, "Blocking screen on until initial contents have been drawn."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method public final blockScreenOnByDisplayOffload(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .registers 10

    .line 2139
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez v0, :cond_56

    if-nez p1, :cond_7

    goto :goto_56

    :cond_7
    const/4 v0, 0x1

    .line 2142
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    const-wide/32 v0, 0x20000

    .line 2144
    const-string v2, "Screen on blocked by displayoffload"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockByDisplayOffloadStartRealTime:J

    .line 2148
    new-instance v4, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, p1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V

    iput-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    .line 2150
    invoke-interface {p1, v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->blockScreenOn(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_4f

    const/4 p1, 0x0

    .line 2151
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    .line 2153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockByDisplayOffloadStartRealTime:J

    sub-long/2addr v4, v6

    .line 2154
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried blocking screen on for offloading but failed. So, end trace after "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms."

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void

    .line 2160
    :cond_4f
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string p1, "Blocking screen on for offloading."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    :goto_56
    return-void
.end method

.method public final cancelUnblockScreenOnByDisplayOffload()V
    .registers 2

    .line 2181
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    if-nez v0, :cond_5

    goto :goto_9

    .line 2184
    :cond_5
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez p0, :cond_a

    :goto_9
    return-void

    .line 2188
    :cond_a
    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->cancelBlockScreenOn()V

    return-void
.end method

.method public final clampScreenBrightness(F)F
    .registers 3

    .line 2308
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x0

    .line 2311
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMin()F

    move-result v0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 2312
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result p0

    .line 2311
    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public final cleanupHandlerThreadAfterStop()V
    .registers 3

    .line 1299
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->clearDisplayBrightnessFollowers()V

    .line 1300
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->cleanup()V

    .line 1301
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessRangeController;->stop()V

    .line 1302
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->stop()V

    .line 1303
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1306
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {v0}, Lcom/android/server/display/WakelockController;->releaseAll()V

    .line 1308
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_26

    .line 1309
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v0

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 1311
    :goto_27
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->reportStats(F)V

    .line 1313
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_33

    .line 1314
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->stop()V

    .line 1315
    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1318
    :cond_33
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v0, :cond_42

    .line 1320
    invoke-virtual {v0}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->stop()V

    .line 1323
    :cond_42
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz p0, :cond_4a

    const/4 v0, 0x0

    .line 1324
    invoke-virtual {p0, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    :cond_4a
    return-void
.end method

.method public final clearDisplayBrightnessFollowers()V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 2638
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 2639
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerController;

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 2640
    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/android/server/display/DisplayPowerController;->setBrightnessToFollow(FFFZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2644
    :cond_1d
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final convertBrightnessReasonToStatsEnum(I)I
    .registers 2

    .line 0
    packed-switch p1, :pswitch_data_1c

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/16 p0, 0xa

    return p0

    :pswitch_8
    const/16 p0, 0x9

    return p0

    :pswitch_b
    const/16 p0, 0x8

    return p0

    :pswitch_e
    const/4 p0, 0x7

    return p0

    :pswitch_10
    const/4 p0, 0x6

    return p0

    :pswitch_12
    const/4 p0, 0x5

    return p0

    :pswitch_14
    const/4 p0, 0x4

    return p0

    :pswitch_16
    const/4 p0, 0x3

    return p0

    :pswitch_18
    const/4 p0, 0x2

    return p0

    :pswitch_1a
    const/4 p0, 0x1

    return p0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_18
        :pswitch_16
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public convertToAdjustedNits(F)F
    .registers 2

    .line 3346
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result p0

    return p0
.end method

.method public final createHbmControllerLocked(Lcom/android/server/display/HighBrightnessModeMetadata;Ljava/lang/Runnable;)Lcom/android/server/display/HighBrightnessModeController;
    .registers 19

    move-object/from16 v0, p0

    .line 2087
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    .line 2088
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v7

    .line 2089
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_1c

    .line 2091
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v1

    :goto_1a
    move-object v11, v1

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1a

    .line 2092
    :goto_1e
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 2093
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v6, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    new-instance v12, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda10;

    invoke-direct {v12, v0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/display/DisplayPowerController$Injector;->getHighBrightnessModeController(Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/content/Context;)Lcom/android/server/display/HighBrightnessModeController;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 2648
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2649
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2650
    const-string v1, "Display Power Controller:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2651
    const-string v1, "-------------------------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLeadDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLightSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayBrightnessFollowers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2658
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2659
    const-string v1, "Display Power Controller Locked State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2664
    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_3 .. :try_end_c9} :catchall_279

    .line 2666
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2667
    const-string v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipScreenOnBrightnessRamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsDisplayInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2674
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v1

    .line 2675
    :try_start_158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.adjustedBrightness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessMin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessMax="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.hbmMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget v2, v2, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.hbmTransitionPoint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessMaxReason ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    iget v2, v2, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessReason ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessReason:Landroid/util/MutableInt;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2690
    monitor-exit v1
    :try_end_227
    .catchall {:try_start_158 .. :try_end_227} :catchall_276

    .line 2691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayBlanksAfterDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessBucketsInDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozeScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2694
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_276
    move-exception p0

    .line 2690
    :try_start_277
    monitor-exit v1
    :try_end_278
    .catchall {:try_start_277 .. :try_end_278} :catchall_276

    throw p0

    :catchall_279
    move-exception p0

    .line 2664
    :try_start_27a
    monitor-exit v0
    :try_end_27b
    .catchall {:try_start_27a .. :try_end_27b} :catchall_279

    throw p0
.end method

.method public final dumpBrightnessEvents(Ljava/io/PrintWriter;)V
    .registers 6

    .line 2817
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_f

    .line 2819
    const-string p0, "No Automatic Brightness Adjustments"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2823
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Automatic Brightness Adjustments Last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Events: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2824
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/brightness/BrightnessEvent;

    const/4 v1, 0x0

    .line 2825
    :goto_31
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v2

    if-ge v1, v2, :cond_56

    .line 2826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/server/display/brightness/BrightnessEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_56
    return-void
.end method

.method public final dumpLocal(Ljava/io/PrintWriter;)V
    .registers 5

    .line 2698
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2699
    const-string v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipRampState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->skipRampStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOnBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOffUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 2710
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2709
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsRbcActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsRbcActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2712
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2713
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v1, v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->dump(Ljava/io/PrintWriter;)V

    .line 2715
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    if-eqz v1, :cond_12c

    .line 2716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayOffloadSession.isActive()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 2717
    invoke-interface {v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2716
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2720
    :cond_12c
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-eqz v1, :cond_14a

    .line 2721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 2722
    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2721
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2725
    :cond_14a
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_168

    .line 2726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 2727
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2726
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2730
    :cond_168
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2731
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v1, :cond_172

    .line 2732
    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 2735
    :cond_172
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2736
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    if-eqz v1, :cond_17c

    .line 2737
    invoke-virtual {v1, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 2740
    :cond_17c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2741
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    if-eqz v1, :cond_186

    .line 2742
    invoke-virtual {v1, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->dump(Ljava/io/PrintWriter;)V

    .line 2745
    :cond_186
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2746
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    if-eqz v0, :cond_190

    .line 2747
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessRangeController;->dump(Ljava/io/PrintWriter;)V

    .line 2750
    :cond_190
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2751
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_19d

    .line 2752
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 2753
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpBrightnessEvents(Ljava/io/PrintWriter;)V

    .line 2755
    :cond_19d
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpRbcEvents(Ljava/io/PrintWriter;)V

    .line 2757
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2758
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v0, :cond_1aa

    .line 2759
    invoke-virtual {v0, p1}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->dump(Ljava/io/PrintWriter;)V

    .line 2762
    :cond_1aa
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2763
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_1b9

    .line 2764
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->dump(Ljava/io/PrintWriter;)V

    .line 2765
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->dump(Ljava/io/PrintWriter;)V

    .line 2768
    :cond_1b9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2769
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    if-eqz v0, :cond_1c3

    .line 2770
    invoke-virtual {v0, p1}, Lcom/android/server/display/WakelockController;->dumpLocal(Ljava/io/PrintWriter;)V

    .line 2773
    :cond_1c3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2774
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    if-eqz p0, :cond_1cd

    .line 2775
    invoke-virtual {p0, p1}, Lcom/android/server/display/state/DisplayStateController;->dump(Ljava/io/PrintWriter;)V

    :cond_1cd
    return-void
.end method

.method public final dumpRbcEvents(Ljava/io/PrintWriter;)V
    .registers 6

    .line 2831
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_f

    .line 2833
    const-string p0, "No Reduce Bright Colors Adjustments"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2837
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reduce Bright Colors Adjustments Last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Events: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2838
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/brightness/BrightnessEvent;

    const/4 v1, 0x0

    .line 2839
    :goto_31
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v2

    if-ge v1, v2, :cond_52

    .line 2840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_52
    return-void
.end method

.method public getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .registers 2

    .line 778
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 781
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessTracker;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getAutoBrightnessLevels(I)[F
    .registers 6

    .line 1993
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness_for_als"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1996
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevels(II)[F

    move-result-object p0

    return-object p0
.end method

.method public getAutoBrightnessLuxLevels(I)[F
    .registers 6

    .line 2001
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness_for_als"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2004
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevelsLux(II)[F

    move-result-object p0

    return-object p0
.end method

.method public final getAutoBrightnessOneShotSetting()Z
    .registers 4

    .line 2528
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2529
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    .line 2528
    const-string v1, "auto_brightness_one_shot"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    return v0

    :cond_12
    return v2
.end method

.method public getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .registers 3

    .line 734
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 737
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->getEvents(IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getBrightnessFromAdjustedNits(F)F
    .registers 2

    .line 3353
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getBrightnessFromAdjustedNits(F)F

    move-result p0

    return p0
.end method

.method public getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;
    .registers 12

    .line 2008
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v1

    .line 2009
    :try_start_3
    new-instance v2, Landroid/hardware/display/BrightnessInfo;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    iget v3, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    iget v4, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    iget v5, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    iget v6, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget v7, v0, Landroid/util/MutableInt;->value:I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget v8, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    iget v9, v0, Landroid/util/MutableInt;->value:I

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessReason:Landroid/util/MutableInt;

    iget p0, p0, Landroid/util/MutableInt;->value:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_2d

    const/4 p0, 0x1

    :goto_2b
    move v10, p0

    goto :goto_2f

    :cond_2d
    const/4 p0, 0x0

    goto :goto_2b

    :goto_2f
    invoke-direct/range {v2 .. v10}, Landroid/hardware/display/BrightnessInfo;-><init>(FFFFIFIZ)V

    monitor-exit v1

    return-object v2

    :catchall_34
    move-exception v0

    move-object p0, v0

    .line 2019
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_34

    throw p0
.end method

.method public getCurrentScreenBrightness()F
    .registers 1

    .line 2538
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result p0

    return p0
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 1

    .line 880
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 883
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayId()I
    .registers 1

    .line 2558
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    return p0
.end method

.method public getDozeBrightnessForOffload()F
    .registers 2

    .line 2542
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDozeBrightnessStrategyEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2543
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getManualDozeBrightness()F

    move-result p0

    return p0

    .line 2545
    :cond_f
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v0

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public getLeadDisplayId()I
    .registers 1

    .line 2562
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    return p0
.end method

.method public getScreenBrightnessSetting()F
    .registers 1

    .line 2534
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSettingConstrained()F

    move-result p0

    return p0
.end method

.method public final handleBrightnessModeChange()V
    .registers 5

    .line 2514
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2515
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    .line 2514
    const-string/jumbo v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2518
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v3, v2

    :cond_15
    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setUseAutoBrightness(Z)V

    if-nez v0, :cond_1f

    .line 2523
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->saveBrightnessIfNeeded()V

    :cond_1f
    return-void
.end method

.method public final handleOnSwitchUser(IIF)V
    .registers 8

    .line 746
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching user newUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " userSerial="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_48

    .line 750
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness_for_als"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 754
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->getPreset()I

    move-result v1

    if-eq v0, v1, :cond_48

    .line 755
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    .line 759
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->handleBrightnessModeChange()V

    .line 760
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_52

    .line 761
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->onSwitchUser(I)V

    .line 763
    :cond_52
    invoke-virtual {p0, p3, p2}, Lcom/android/server/display/DisplayPowerController;->setBrightness(FI)V

    .line 766
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p1, p3}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setAndNotifyCurrentScreenBrightness(F)V

    .line 768
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p1, :cond_61

    .line 769
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 771
    :cond_61
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->onUserSwitch()V

    .line 772
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public final handleRbcChanged()V
    .registers 5

    .line 706
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v0, :cond_5

    return-void

    .line 710
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    array-length v0, v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 711
    :goto_b
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1d

    .line 712
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    aget v2, v2, v1

    invoke-virtual {v3, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->getReduceBrightColorsAdjustedBrightnessNits(F)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 714
    :cond_1d
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->isReduceBrightColorsActivated()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsRbcActive:Z

    .line 715
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->recalculateSplines(Z[F)V

    return-void
.end method

.method public final handleSettingsChange()V
    .registers 3

    .line 2506
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->handleSettingsChange()V

    .line 2507
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->updatePendingAutoBrightnessAdjustments()V

    .line 2508
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 2509
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessOneShotSetting()Z

    move-result v1

    .line 2508
    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessOneShotEnabled(Z)V

    .line 2510
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public ignoreProximitySensorUntilChanged()V
    .registers 1

    .line 1963
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->ignoreProximitySensorUntilChanged()V

    return-void
.end method

.method public final initialize(I)V
    .registers 6

    .line 1016
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 1017
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

    .line 1016
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/display/DisplayPowerController$Injector;->getDisplayPowerState(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;II)Lcom/android/server/display/DisplayPowerState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1019
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v0, :cond_37

    .line 1020
    sget-object v0, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_e6

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x190

    .line 1022
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1023
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1026
    :cond_37
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/display/DisplayPowerController$Injector;->getDualRampAnimator(Lcom/android/server/display/DisplayPowerState;Landroid/util/FloatProperty;Landroid/util/FloatProperty;)Lcom/android/server/display/RampAnimator$DualRampAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 1029
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_53

    .line 1030
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result p1

    if-eqz p1, :cond_53

    move p1, v0

    goto :goto_54

    :cond_53
    move p1, v1

    .line 1029
    :goto_54
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setAnimatorRampSpeeds(Z)V

    .line 1031
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {p1, v2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 1033
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(II)V

    .line 1034
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->noteScreenBrightness(F)V

    .line 1037
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1038
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v0

    .line 1037
    invoke-virtual {p1, v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result p1

    .line 1039
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_88

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_88

    .line 1040
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->start(F)V

    .line 1043
    :cond_88
    new-instance p1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 1047
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1048
    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->registerBrightnessSettingChangeListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V

    .line 1050
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_auto_brightness_adj"

    .line 1051
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    const/4 v3, -0x1

    .line 1050
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1053
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_brightness_mode"

    .line 1054
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1053
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1056
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->areAutoBrightnessModesEnabled()Z

    move-result p1

    if-eqz p1, :cond_d1

    .line 1057
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_brightness_for_als"

    .line 1058
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1057
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1061
    :cond_d1
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "auto_brightness_one_shot"

    .line 1062
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1061
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1064
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->handleBrightnessModeChange()V

    return-void

    :array_e6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public isProximitySensorAvailable()Z
    .registers 1

    .line 722
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->isProximitySensorAvailable()Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$blockScreenOnByDisplayOffload$7(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .registers 2

    .line 2149
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->onDisplayOffloadUnblockScreenOn(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V

    return-void
.end method

.method public final synthetic lambda$createHbmControllerLocked$6(FFF)F
    .registers 4

    .line 2097
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessFromSdr(FFF)F

    move-result p0

    return p0
.end method

.method public final synthetic lambda$dump$8(Ljava/io/PrintWriter;)V
    .registers 2

    .line 2694
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final synthetic lambda$initialize$5(F)V
    .registers 5

    .line 1044
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1045
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final synthetic lambda$new$0()V
    .registers 1

    .line 559
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method public final synthetic lambda$new$1()V
    .registers 1

    .line 604
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 605
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 607
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p0, :cond_d

    .line 608
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->update()V

    :cond_d
    return-void
.end method

.method public final synthetic lambda$new$2()V
    .registers 1

    .line 621
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    return-void
.end method

.method public final synthetic lambda$onDisplayChanged$4(ZZLcom/android/server/display/DisplayDevice;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 919
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    if-eqz v0, :cond_5

    goto :goto_59

    .line 926
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-ne v0, p1, :cond_11

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    if-eq v0, p2, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_16

    .line 928
    :cond_11
    :goto_11
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    .line 929
    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    move p1, v1

    .line 932
    :goto_16
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eq p2, p3, :cond_3d

    .line 934
    iput-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 935
    iput-object p4, p0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 936
    iput-object p5, p0, Lcom/android/server/display/DisplayPowerController;->mPhysicalDisplayName:Ljava/lang/String;

    .line 937
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 938
    iput-object p6, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 939
    invoke-virtual {p6}, Lcom/android/server/display/DisplayDeviceConfig;->getIdleStylusTimeoutMillis()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mIdleStylusTimeoutMillisConfig:J

    .line 940
    invoke-virtual {p0, p7, p8, p9}, Lcom/android/server/display/DisplayPowerController;->loadFromDisplayDeviceConfig(Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;)V

    .line 941
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {p1, p6}, Lcom/android/server/display/DisplayPowerProximityStateController;->notifyDisplayDeviceChanged(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 946
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->resetScreenState()V

    goto :goto_3e

    :cond_3d
    move v1, p1

    .line 949
    :goto_3e
    iput-boolean p10, p0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 951
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    new-instance p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    move-object p9, p7

    iget p7, p8, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget p8, p8, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget p10, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    move-object p3, p4

    move-object p4, p11

    move-object p5, p12

    invoke-direct/range {p2 .. p10}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;IILandroid/os/IBinder;I)V

    invoke-virtual {p1, p2}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    if-eqz v1, :cond_59

    .line 957
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    :cond_59
    :goto_59
    return-void
.end method

.method public final synthetic lambda$overrideDozeScreenState$3(I)V
    .registers 5

    .line 854
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 855
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingOverrideDozeScreenStateLocked:I

    .line 856
    invoke-virtual {v1, v2, p1}, Lcom/android/server/display/state/DisplayStateController;->overrideDozeScreenState(II)V

    .line 857
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_15

    .line 858
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 859
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/display/WakelockController;->releaseWakelock(I)Z

    return-void

    :catchall_15
    move-exception p0

    .line 857
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final loadAmbientLightSensor()V
    .registers 4

    .line 2296
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v0, :cond_6

    const/4 v0, 0x5

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 2298
    :goto_7
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 2299
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientLightSensor()Lcom/android/server/display/config/SensorData;

    move-result-object v2

    .line 2298
    invoke-static {v1, v2, v0}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/config/SensorData;I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method public final loadBrightnessRampRates()V
    .registers 3

    .line 1212
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampFastDecrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastDecrease:F

    .line 1213
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampFastIncrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastIncrease:F

    .line 1214
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampSlowDecrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecrease:F

    .line 1215
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampSlowIncrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncrease:F

    .line 1216
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1217
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampSlowDecreaseIdle()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecreaseIdle:F

    .line 1218
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1219
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampSlowIncreaseIdle()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncreaseIdle:F

    .line 1220
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1221
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampDecreaseMaxMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    .line 1222
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1223
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampIncreaseMaxMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    .line 1224
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1225
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampDecreaseMaxIdleMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeIdleMillis:J

    .line 1226
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1227
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampIncreaseMaxIdleMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeIdleMillis:J

    return-void
.end method

.method public final loadFromDisplayDeviceConfig(Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;)V
    .registers 6

    .line 988
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 989
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getDefaultDozeBrightness()F

    move-result v0

    .line 988
    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 990
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->loadBrightnessRampRates()V

    .line 991
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->loadNitsRange(Landroid/content/res/Resources;)V

    .line 992
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    .line 993
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->reloadReduceBrightColours()V

    const/4 v0, 0x0

    .line 994
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setAnimatorRampSpeeds(Z)V

    .line 996
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->onDisplayChanged(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 997
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0, p3, p1, p2, p0}, Lcom/android/server/display/BrightnessRangeController;->loadFromConfig(Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/DisplayDeviceConfig;)V

    return-void
.end method

.method public final loadNitsRange(Landroid/content/res/Resources;)V
    .registers 4

    .line 1231
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1232
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    return-void

    .line 1234
    :cond_13
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string v1, "Screen brightness nits configuration is unavailable; falling back"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x10700d5

    .line 1236
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1235
    invoke-static {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    return-void
.end method

.method public final loadScreenOffBrightnessSensor()V
    .registers 4

    .line 2303
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 2304
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getScreenOffBrightnessSensor()Lcom/android/server/display/config/SensorData;

    move-result-object v1

    const/4 v2, 0x0

    .line 2303
    invoke-static {v0, v1, v2}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/config/SensorData;I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method public final logBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;FLcom/android/server/display/DisplayBrightnessState;)V
    .registers 38

    move-object/from16 v0, p0

    .line 3020
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v1

    .line 3021
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getFlags()I

    move-result v2

    .line 3024
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMax()F

    move-result v3

    cmpl-float v3, p2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1b

    move/from16 v20, v5

    goto :goto_1d

    :cond_1b
    move/from16 v20, v4

    .line 3025
    :goto_1d
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 3026
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getBrightness()F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v8

    .line 3027
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 3028
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getInitialBrightness()F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v7

    .line 3029
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->isLowPowerModeSet()Z

    move-result v3

    const/high16 v6, -0x40800000    # -1.0f

    if-eqz v3, :cond_3f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPowerFactor()F

    move-result v3

    move v12, v3

    goto :goto_40

    :cond_3f
    move v12, v6

    .line 3030
    :goto_40
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->isRbcEnabled()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getRbcStrength()I

    move-result v3

    :goto_4a
    move v13, v3

    goto :goto_4e

    :cond_4c
    const/4 v3, -0x1

    goto :goto_4a

    .line 3032
    :goto_4e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMode()I

    move-result v3

    if-nez v3, :cond_56

    move v14, v6

    goto :goto_61

    .line 3033
    :cond_56
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMax()F

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v3

    move v14, v3

    .line 3036
    :goto_61
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getThermalMax()F

    move-result v3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v9

    if-nez v3, :cond_6d

    :goto_6b
    move v15, v6

    goto :goto_78

    .line 3037
    :cond_6d
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getThermalMax()F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v6

    goto :goto_6b

    .line 3038
    :goto_78
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getLux()F

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->mapLuxToProtoEnumBucket(F)I

    move-result v32

    .line 3039
    invoke-static {v8, v7}, Lcom/android/server/display/DisplayPowerController;->getBrightnessAdjustmentDirection(FF)I

    move-result v33

    .line 3043
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    if-eqz v3, :cond_10f

    .line 3047
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getLux()F

    move-result v9

    .line 3048
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPhysicalDisplayId()Ljava/lang/String;

    move-result-object v10

    .line 3049
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->wasShortTermModelActive()Z

    move-result v11

    .line 3054
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->isAutomaticBrightnessEnabled()Z

    move-result v16

    .line 3056
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController;->convertBrightnessReasonToStatsEnum(I)I

    move-result v18

    .line 3057
    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayPowerController;->nitsToRangeIndex(F)I

    move-result v19

    .line 3059
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMode()I

    move-result v0

    if-ne v0, v5, :cond_b1

    move/from16 v21, v5

    goto :goto_b3

    :cond_b1
    move/from16 v21, v4

    .line 3060
    :goto_b3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_bd

    move/from16 v22, v5

    goto :goto_bf

    :cond_bd
    move/from16 v22, v4

    :goto_bf
    and-int/lit8 v0, v1, 0x2

    if-lez v0, :cond_c6

    move/from16 v23, v5

    goto :goto_c8

    :cond_c6
    move/from16 v23, v4

    .line 3062
    :goto_c8
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessMaxReason()I

    move-result v24

    and-int/lit8 v0, v1, 0x1

    if-lez v0, :cond_d3

    move/from16 v25, v5

    goto :goto_d5

    :cond_d3
    move/from16 v25, v4

    .line 3065
    :goto_d5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->isRbcEnabled()Z

    move-result v26

    and-int/lit8 v0, v2, 0x2

    if-lez v0, :cond_e0

    move/from16 v27, v5

    goto :goto_e2

    :cond_e0
    move/from16 v27, v4

    :goto_e2
    and-int/lit8 v0, v2, 0x4

    if-lez v0, :cond_e9

    move/from16 v28, v5

    goto :goto_eb

    :cond_e9
    move/from16 v28, v4

    :goto_eb
    and-int/lit8 v0, v2, 0x8

    if-lez v0, :cond_f2

    move/from16 v29, v5

    goto :goto_f4

    :cond_f2
    move/from16 v29, v4

    .line 3069
    :goto_f4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getAutoBrightnessMode()I

    move-result v0

    if-ne v0, v5, :cond_fd

    move/from16 v30, v5

    goto :goto_ff

    :cond_fd
    move/from16 v30, v4

    :goto_ff
    and-int/lit8 v0, v2, 0x20

    if-lez v0, :cond_106

    move/from16 v31, v5

    goto :goto_108

    :cond_106
    move/from16 v31, v4

    :goto_108
    const/16 v6, 0x1ee

    const/16 v17, 0x1

    .line 3044
    invoke-static/range {v6 .. v33}, Lcom/android/internal/util/FrameworkStatsLog;->write(IFFFLjava/lang/String;ZFIFFZIIIZZZZIZZZZZZZII)V

    :cond_10f
    return-void
.end method

.method public final logDisplayPolicyChanged(I)V
    .registers 3

    .line 2499
    new-instance p0, Landroid/metrics/LogMaker;

    const/16 v0, 0x6a0

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v0, 0x6

    .line 2500
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2501
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 2502
    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public final logHbmBrightnessStats(FI)V
    .registers 4

    .line 2906
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    monitor-enter p0

    const/16 v0, 0x1a1

    .line 2907
    :try_start_5
    invoke-static {v0, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIF)V

    .line 2909
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final nitsToRangeIndex(F)I
    .registers 4

    const/4 p0, 0x0

    .line 2915
    :goto_1
    sget-object v0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_BOUNDARIES:[F

    array-length v1, v0

    if-ge p0, v1, :cond_14

    .line 2916
    aget v0, v0, p0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_11

    .line 2917
    sget-object p1, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_INDEX:[I

    aget p0, p1, p0

    return p0

    :cond_11
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_14
    const/16 p0, 0x26

    return p0
.end method

.method public final noteScreenBrightness(F)V
    .registers 3

    .line 2860
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_f

    .line 2863
    :try_start_4
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    .line 2864
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-interface {v0, p0, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method public final noteScreenState(II)V
    .registers 5

    const/16 v0, 0x24d

    .line 2847
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    invoke-static {v0, p1, v1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 2849
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_10

    .line 2851
    :try_start_b
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(III)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_10

    :catch_10
    :cond_10
    return-void
.end method

.method public final notifyBrightnessTrackerChanged(FZZZZZ)V
    .registers 17

    .line 2587
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 2588
    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v2

    if-nez p5, :cond_55

    .line 2595
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p1, :cond_55

    .line 2597
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result p1

    if-nez p1, :cond_55

    if-eqz p4, :cond_55

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz p1, :cond_55

    if-eqz p6, :cond_55

    const/4 p1, 0x0

    cmpg-float p1, v2, p1

    if-gez p1, :cond_20

    goto :goto_55

    :cond_20
    if-eqz p2, :cond_2d

    .line 2605
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p1, :cond_2c

    .line 2606
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->hasValidAmbientLux()Z

    move-result p1

    if-nez p1, :cond_2d

    :cond_2c
    const/4 p2, 0x0

    :cond_2d
    move v3, p2

    .line 2615
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz p2, :cond_38

    .line 2616
    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    :goto_36
    move v4, p1

    goto :goto_3b

    :cond_38
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_36

    .line 2618
    :goto_3b
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2620
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2621
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->getLastSensorValues()[F

    move-result-object v8

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2622
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getLastSensorTimestamps()[J

    move-result-object v9

    move v5, p3

    .line 2618
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/display/BrightnessTracker;->notifyBrightnessChanged(FZFZZLjava/lang/String;[F[J)V

    :cond_55
    :goto_55
    return-void
.end method

.method public onBootCompleted()V
    .registers 5

    .line 2023
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2024
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/display/HighBrightnessModeMetadata;I)V
    .registers 18

    move/from16 v0, p2

    .line 895
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    .line 896
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    if-nez v5, :cond_29

    .line 898
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display Device is null in DisplayPowerController for display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 899
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 898
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 903
    :cond_29
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    .line 904
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v7

    .line 905
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v8

    .line 906
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v9

    .line 907
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v10

    .line 908
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v3

    .line 909
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->isInTransitionLocked()Z

    move-result v4

    .line 910
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 911
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 912
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_62

    :goto_60
    move v12, v1

    goto :goto_64

    :cond_62
    const/4 v1, 0x0

    goto :goto_60

    .line 913
    :goto_64
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 914
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v13, v0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 915
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 916
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPowerThrottlingDataIdLocked()Ljava/lang/String;

    move-result-object v14

    .line 918
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v14}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayPowerController;ZZLcom/android/server/display/DisplayDevice;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    .line 959
    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v2

    .line 918
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onDisplayOffloadUnblockScreenOn(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .registers 5

    .line 2164
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2166
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public onSwitchUser(IIF)V
    .registers 6

    .line 741
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0xc

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 742
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public overrideDozeScreenState(II)V
    .registers 6

    .line 844
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New offload doze override: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    if-eqz v0, :cond_46

    .line 846
    invoke-static {p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->isSupportedOffloadState(I)Z

    move-result v0

    if-nez v0, :cond_26

    if-nez p1, :cond_46

    .line 848
    :cond_26
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 850
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 851
    :try_start_2f
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingOverrideDozeScreenStateLocked:I

    .line 852
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_43

    .line 853
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    .line 861
    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v1

    .line 853
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_43
    move-exception p0

    .line 852
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p0

    :cond_46
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .registers 1

    .line 788
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz p0, :cond_7

    .line 789
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->persistBrightnessTrackerState()V

    :cond_7
    return-void
.end method

.method public postBrightnessChangeRunnable()V
    .registers 3

    .line 2080
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2081
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method public final readyToUpdateDisplayState()Z
    .registers 2

    .line 3084
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public final reloadReduceBrightColours()V
    .registers 2

    .line 1241
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->isReduceBrightColorsActivated()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1242
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->applyReduceBrightColorsSplineAdjustment()V

    :cond_d
    return-void
.end method

.method public removeDisplayBrightnessFollower(Lcom/android/server/display/DisplayPowerController;)V
    .registers 5

    .line 2632
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0x17

    const/4 v2, 0x0

    .line 2633
    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    .line 2634
    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v1

    .line 2632
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final reportStats(F)V
    .registers 7

    .line 2872
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    goto :goto_2c

    .line 2877
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v0

    .line 2878
    :try_start_a
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    if-nez v1, :cond_14

    .line 2879
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_5f

    .line 2881
    :cond_14
    iget v1, v1, Landroid/util/MutableFloat;->value:F

    .line 2882
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_12

    cmpl-float v0, p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_1f

    move v0, v3

    goto :goto_20

    :cond_1f
    move v0, v2

    .line 2885
    :goto_20
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    cmpl-float v1, v4, v1

    if-lez v1, :cond_27

    move v2, v3

    :cond_27
    if-nez v0, :cond_2d

    if-eqz v2, :cond_2c

    goto :goto_2d

    :cond_2c
    :goto_2c
    return-void

    .line 2888
    :cond_2d
    :goto_2d
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    .line 2889
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-eq v0, v2, :cond_3e

    .line 2892
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController;->logHbmBrightnessStats(FI)V

    return-void

    .line 2895
    :cond_3e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2896
    iput v3, v0, Landroid/os/Message;->what:I

    .line 2897
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2898
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 2899
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    .line 2882
    :goto_5f
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_12

    throw p0
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .registers 6

    .line 810
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 811
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestPowerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", waitForNegativeProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_23
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 816
    :try_start_26
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2f

    .line 817
    monitor-exit v0

    return v2

    :catchall_2d
    move-exception p0

    goto :goto_60

    .line 820
    :cond_2f
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 821
    invoke-virtual {v1, p2}, Lcom/android/server/display/DisplayPowerProximityStateController;->setPendingWaitForNegativeProximityLocked(Z)Z

    move-result p2

    .line 823
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v1, :cond_42

    .line 824
    new-instance p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    :goto_40
    move p2, v2

    goto :goto_4e

    .line 826
    :cond_42
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 827
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    goto :goto_40

    :cond_4e
    :goto_4e
    if-eqz p2, :cond_5c

    const/4 p1, 0x0

    .line 832
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 833
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez p1, :cond_5c

    .line 834
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 835
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 839
    :cond_5c
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v0

    return p0

    .line 840
    :goto_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_26 .. :try_end_61} :catchall_2d

    throw p0
.end method

.method public final saveBrightnessInfo(F)Z
    .registers 3

    const/4 v0, 0x0

    .line 2028
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FLcom/android/server/display/DisplayBrightnessState;)Z

    move-result p0

    return p0
.end method

.method public final saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z
    .registers 10

    .line 2037
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v0

    if-eqz p3, :cond_d

    .line 2038
    :try_start_5
    invoke-virtual {p3}, Lcom/android/server/display/DisplayBrightnessState;->getMaxBrightness()F

    move-result v1

    goto :goto_f

    :catchall_a
    move-exception p0

    goto/16 :goto_9d

    :cond_d
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_f
    if-eqz p3, :cond_16

    .line 2039
    invoke-virtual {p3}, Lcom/android/server/display/DisplayBrightnessState;->getMinBrightness()F

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    const/4 v3, 0x0

    if-eqz p3, :cond_1f

    .line 2041
    invoke-virtual {p3}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessMaxReason()I

    move-result v4

    goto :goto_20

    :cond_1f
    move v4, v3

    :goto_20
    if-eqz p3, :cond_27

    .line 2043
    invoke-virtual {p3}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object p3

    goto :goto_2c

    .line 2044
    :cond_27
    new-instance p3, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {p3, v3}, Lcom/android/server/display/brightness/BrightnessReason;-><init>(I)V

    .line 2045
    :goto_2c
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 2046
    invoke-virtual {v3}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMin()F

    move-result v3

    .line 2045
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 2047
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 2048
    invoke-virtual {v3}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result v3

    .line 2047
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 2051
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v5, v3, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    .line 2052
    invoke-virtual {v3, v5, p1}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result p1

    .line 2054
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v5, v3, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    .line 2055
    invoke-virtual {v3, v5, p2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result p2

    or-int/2addr p1, p2

    .line 2057
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v3, p2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    .line 2058
    invoke-virtual {p2, v3, v2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result p2

    or-int/2addr p1, p2

    .line 2060
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, p2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    .line 2061
    invoke-virtual {p2, v2, v1}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result p2

    or-int/2addr p1, p2

    .line 2063
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, p2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 2065
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessRangeController;->getHighBrightnessMode()I

    move-result v2

    .line 2064
    invoke-virtual {p2, v1, v2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetInt(Landroid/util/MutableInt;I)Z

    move-result p2

    or-int/2addr p1, p2

    .line 2066
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, p2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 2068
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessRangeController;->getTransitionPoint()F

    move-result v2

    .line 2067
    invoke-virtual {p2, v1, v2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result p2

    or-int/2addr p1, p2

    .line 2069
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, p2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    .line 2070
    invoke-virtual {p2, v1, v4}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetInt(Landroid/util/MutableInt;I)Z

    move-result p2

    or-int/2addr p1, p2

    .line 2072
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessReason:Landroid/util/MutableInt;

    .line 2074
    invoke-virtual {p3}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result p3

    .line 2073
    invoke-virtual {p0, p2, p3}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetInt(Landroid/util/MutableInt;I)Z

    move-result p0

    or-int/2addr p0, p1

    .line 2075
    monitor-exit v0

    return p0

    .line 2076
    :goto_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_5 .. :try_end_9e} :catchall_a

    throw p0
.end method

.method public final saveBrightnessInfo(FLcom/android/server/display/DisplayBrightnessState;)Z
    .registers 3

    .line 2032
    invoke-virtual {p0, p1, p1, p2}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z

    move-result p0

    return p0
.end method

.method public final sendOnStateChangedWithWakelock()V
    .registers 3

    .line 2491
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2494
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->getOnStateChangedRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public final sendUpdatePowerState()V
    .registers 2

    .line 1001
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1002
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 1003
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final sendUpdatePowerStateLocked()V
    .registers 5

    .line 1008
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    .line 1009
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 1010
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1011
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_1c
    return-void
.end method

.method public setAmbientColorTemperatureOverride(F)V
    .registers 3

    .line 3336
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0xf

    .line 3337
    iput v0, p0, Landroid/os/Message;->what:I

    .line 3338
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 3339
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setAnimatorRampSpeeds(Z)V
    .registers 5

    .line 1255
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_f

    .line 1259
    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeIdleMillis:J

    iget-wide p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeIdleMillis:J

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setAnimationTimeLimits(JJ)V

    return-void

    .line 1263
    :cond_f
    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    iget-wide p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setAnimationTimeLimits(JJ)V

    return-void
.end method

.method public setAutoBrightnessLoggingEnabled(Z)V
    .registers 2

    .line 3318
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p0, :cond_7

    .line 3319
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setLoggingEnabled(Z)Z

    :cond_7
    return-void
.end method

.method public setAutomaticScreenBrightnessMode(I)V
    .registers 5

    .line 1248
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xe

    .line 1249
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1250
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1251
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public setBrightness(F)V
    .registers 2

    .line 2550
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightness(F)V

    return-void
.end method

.method public setBrightness(FI)V
    .registers 3

    .line 2554
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightness(FI)V

    return-void
.end method

.method public setBrightnessCap(FI)V
    .registers 3

    .line 3106
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->setBrightnessCap(FI)V

    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V
    .registers 5

    .line 1968
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1970
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setBrightnessFromOffload(F)V
    .registers 5

    .line 1986
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 1987
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x11

    .line 1986
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1988
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public setBrightnessOverrideRequest(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;)V
    .registers 5

    .line 867
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 868
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public setBrightnessToFollow(FFFZ)V
    .registers 6

    .line 2567
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v0, p3}, Lcom/android/server/display/BrightnessRangeController;->onAmbientLuxChange(F)V

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p3, p2, p3

    if-nez p3, :cond_11

    .line 2569
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p2, p1, p4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(FZ)V

    goto :goto_28

    .line 2571
    :cond_11
    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p3, p2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getBrightnessFromNits(F)F

    move-result p2

    .line 2572
    invoke-static {p2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result p3

    if-eqz p3, :cond_23

    .line 2573
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p1, p2, p4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(FZ)V

    goto :goto_28

    .line 2576
    :cond_23
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p2, p1, p4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(FZ)V

    .line 2580
    :goto_28
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public setDisplayOffloadSession(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .registers 3

    .line 872
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    if-ne p1, v0, :cond_5

    return-void

    .line 875
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOnByDisplayOffload()V

    .line 876
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    return-void
.end method

.method public setDisplayWhiteBalanceLoggingEnabled(Z)V
    .registers 3

    .line 3329
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x10

    .line 3330
    iput v0, p0, Landroid/os/Message;->what:I

    .line 3331
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 3332
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setDwbcLoggingEnabled(I)V
    .registers 4

    .line 1947
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 1949
    :goto_9
    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setLoggingEnabled(Z)Z

    .line 1950
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setLoggingEnabled(Z)Z

    :cond_11
    return-void
.end method

.method public final setDwbcOverride(F)V
    .registers 3

    .line 1929
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_a

    .line 1930
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setAmbientColorTemperatureOverride(F)Z

    .line 1935
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    :cond_a
    return-void
.end method

.method public final setDwbcStrongMode(I)V
    .registers 3

    .line 1940
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1942
    :goto_9
    invoke-virtual {p0, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setStrongModeEnabled(Z)V

    :cond_c
    return-void
.end method

.method public final setReportedScreenState(I)V
    .registers 5

    const-wide/32 v0, 0x20000

    .line 2288
    const-string v2, "ReportedScreenStateToPolicy"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2289
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    const/4 p1, 0x0

    .line 2291
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    :cond_10
    return-void
.end method

.method public final setScreenState(II)Z
    .registers 4

    const/4 v0, 0x0

    .line 2192
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    move-result p0

    return p0
.end method

.method public final setScreenState(IIZ)Z
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    const/4 v3, 0x2

    if-ne p1, v3, :cond_c

    move v4, v1

    goto :goto_d

    :cond_c
    move v4, v0

    .line 2198
    :goto_d
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v5

    if-eq v5, p1, :cond_17

    move v5, v1

    goto :goto_18

    :cond_17
    move v5, v0

    :goto_18
    if-eqz v4, :cond_26

    if-eqz v5, :cond_26

    .line 2202
    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    if-nez v6, :cond_26

    .line 2203
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayPowerController;->blockScreenOnByDisplayOffload(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V

    goto :goto_3c

    :cond_26
    if-nez v4, :cond_3c

    .line 2204
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    if-eqz v4, :cond_3c

    .line 2206
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isOffloadSessionCancelBlockScreenOnEnabled()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 2207
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->cancelUnblockScreenOnByDisplayOffload()V

    .line 2209
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOnByDisplayOffload()V

    .line 2210
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    :cond_3c
    :goto_3c
    const/4 v4, 0x3

    const/4 v6, -0x1

    if-nez v5, :cond_44

    .line 2213
    iget v7, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v7, v6, :cond_c0

    :cond_44
    if-eqz v2, :cond_69

    .line 2216
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v7}, Lcom/android/server/display/DisplayPowerProximityStateController;->isScreenOffBecauseOfProximity()Z

    move-result v7

    if-nez v7, :cond_69

    .line 2217
    iget v7, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eq v7, v3, :cond_5a

    if-ne v7, v6, :cond_55

    goto :goto_5a

    .line 2222
    :cond_55
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v3, :cond_69

    return v0

    .line 2219
    :cond_5a
    :goto_5a
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2220
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOff()V

    .line 2221
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v7, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-object v8, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-interface {v3, v7, v8}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    :cond_69
    if-nez p3, :cond_c0

    if-eqz v5, :cond_c0

    .line 2228
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->readyToUpdateDisplayState()Z

    move-result p3

    if-eqz p3, :cond_c0

    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-nez p3, :cond_c0

    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez p3, :cond_c0

    const-wide/32 v7, 0x20000

    .line 2231
    const-string p3, "ScreenState"

    invoke-static {v7, v8, p3, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2233
    const-string p3, "debug.tracing.screen_state"

    .line 2234
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 2237
    :try_start_89
    invoke-static {p3, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/RuntimeException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_b8

    :catch_8d
    move-exception v5

    .line 2239
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to set a system property: key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " value="

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2240
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2239
    invoke-static {v7, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    :goto_b8
    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/display/DisplayPowerState;->setScreenState(II)V

    .line 2245
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(II)V

    :cond_c0
    if-eqz v2, :cond_de

    .line 2255
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz p1, :cond_de

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 2256
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerProximityStateController;->isScreenOffBecauseOfProximity()Z

    move-result p1

    if-nez p1, :cond_de

    .line 2257
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2258
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 2259
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget p2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-boolean p3, p0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    invoke-interface {p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff(IZ)V

    goto :goto_f3

    :cond_de
    if-nez v2, :cond_f3

    .line 2260
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne p1, v4, :cond_f3

    .line 2265
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    .line 2266
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget p2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-boolean p3, p0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    invoke-interface {p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff(IZ)V

    .line 2267
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    :cond_f3
    :goto_f3
    if-nez v2, :cond_120

    .line 2269
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz p1, :cond_fb

    if-ne p1, v6, :cond_120

    .line 2272
    :cond_fb
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2273
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_10d

    .line 2274
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    goto :goto_110

    .line 2276
    :cond_10d
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 2278
    :goto_110
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget p2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOn(ILcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 2279
    const-string p1, "DisplayPowerController"

    const-string p2, "Window Manager Policy screenTurningOn complete"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    :cond_120
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez p1, :cond_129

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez p0, :cond_129

    move v0, v1

    :cond_129
    return v0
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .registers 4

    .line 1980
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 1981
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 1980
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1982
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setTemporaryBrightness(F)V
    .registers 4

    .line 1974
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 1975
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 1974
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1976
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 37

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    .line 1068
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->isAutoBrightnessAvailable()Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-nez v1, :cond_10

    goto/16 :goto_1af

    .line 1074
    :cond_10
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1076
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 1077
    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/display/DisplayPowerController$Injector;->getDefaultModeBrightnessMapper(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v1

    const/4 v3, 0x0

    .line 1079
    invoke-virtual {v6, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1082
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110192

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1085
    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v7, 0x1

    .line 1086
    invoke-static {v0, v4, v7, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;ILcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 1090
    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1095
    :cond_3e
    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v7, 0x2

    .line 1096
    invoke-static {v0, v4, v7, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;ILcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v4

    .line 1098
    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v5}, Lcom/android/server/display/feature/DisplayManagerFlags;->areAutoBrightnessModesEnabled()Z

    move-result v5

    if-eqz v5, :cond_54

    if-eqz v4, :cond_54

    .line 1099
    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1102
    :cond_54
    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->areAutoBrightnessModesEnabled()Z

    move-result v4

    if-eqz v4, :cond_72

    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1103
    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isAutoBrightnessModeBedtimeWearEnabled()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 1104
    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v7, 0x3

    .line 1105
    invoke-static {v0, v4, v7, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;ILcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v4

    if-eqz v4, :cond_72

    .line 1108
    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1114
    :cond_72
    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v4, :cond_85

    .line 1115
    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController;->getUserLux()F

    move-result v4

    .line 1116
    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController;->getUserNits()F

    move-result v5

    move/from16 v31, v4

    move/from16 v32, v5

    goto :goto_8b

    :cond_85
    const/high16 v4, -0x40800000    # -1.0f

    move/from16 v31, v4

    move/from16 v32, v31

    :goto_8b
    if-eqz v1, :cond_1b0

    .line 1121
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1122
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientBrightnessHysteresis()Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v22

    .line 1125
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1126
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getScreenBrightnessHysteresis()Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v23

    .line 1129
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1130
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientBrightnessIdleHysteresis()Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v24

    .line 1133
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1134
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getScreenBrightnessIdleHysteresis()Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v25

    .line 1136
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1137
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLightDebounce()J

    move-result-wide v13

    .line 1138
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1139
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessDarkeningLightDebounce()J

    move-result-wide v15

    .line 1140
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1141
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLightDebounceIdle()J

    move-result-wide v17

    .line 1142
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1143
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessDarkeningLightDebounceIdle()J

    move-result-wide v19

    .line 1144
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    .line 1147
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1149
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 1151
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0031

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_ee

    move v12, v11

    goto :goto_114

    :cond_ee
    if-le v0, v11, :cond_113

    .line 1156
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected config_autoBrightnessInitialLightSensorRate ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") to be less than or equal to config_autoBrightnessLightSensorRate ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_113
    move v12, v0

    .line 1161
    :goto_114
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerController;->loadAmbientLightSensor()V

    .line 1164
    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_124

    iget v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v3, :cond_124

    .line 1165
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v3}, Lcom/android/server/display/BrightnessTracker;->setLightSensor(Landroid/hardware/Sensor;)V

    .line 1168
    :cond_124
    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_12b

    .line 1169
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    :cond_12b
    move-object v0, v1

    .line 1171
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    .line 1172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    iget v10, v2, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    iget-object v8, v2, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v9, v2, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    move-object/from16 p1, v0

    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    move-object/from16 v28, v0

    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1180
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientHorizonShort()I

    move-result v29

    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1181
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientHorizonLong()I

    move-result v30

    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    move-object/from16 v26, v8

    const/4 v8, 0x0

    move-object/from16 v27, v9

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    .line 1171
    invoke-virtual/range {v1 .. v33}, Lcom/android/server/display/DisplayPowerController$Injector;->getAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/util/SparseArray;IFFFIIJJJJZLcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/brightness/clamper/BrightnessClamperController;IIFFLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v8

    iput-object v8, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1182
    iget-object v7, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v9, v2, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v10, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v11, v2, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-boolean v13, v2, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    iget v14, v2, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    move-object v12, v0

    invoke-virtual/range {v7 .. v14}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setUpAutoBrightness(Lcom/android/server/display/AutomaticBrightnessController;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/BrightnessMappingStrategy;ZI)V

    .line 1185
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const-class v3, Lcom/android/server/display/brightness/BrightnessEvent;

    const/16 v4, 0x64

    invoke-direct {v1, v3, v4}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    .line 1187
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v1

    if-nez v1, :cond_1af

    .line 1188
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v1, :cond_18e

    .line 1189
    invoke-virtual {v1}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->stop()V

    const/4 v1, 0x0

    .line 1190
    iput-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 1192
    :cond_18e
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerController;->loadScreenOffBrightnessSensor()V

    .line 1193
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1194
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getScreenOffBrightnessSensorValueToLux()[I

    move-result-object v12

    .line 1195
    iget-object v9, v2, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

    if-eqz v9, :cond_1af

    if-eqz v12, :cond_1af

    .line 1196
    iget-object v7, v2, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v8, v2, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v10, v2, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v11, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda9;

    invoke-direct {v11}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda9;-><init>()V

    move-object v13, v0

    .line 1197
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/display/DisplayPowerController$Injector;->getScreenOffBrightnessSensorController(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/ScreenOffBrightnessSensorController$Clock;[ILcom/android/server/display/BrightnessMappingStrategy;)Lcom/android/server/display/ScreenOffBrightnessSensorController;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    :cond_1af
    :goto_1af
    return-void

    .line 1207
    :cond_1b0
    iput-boolean v3, v2, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    return-void
.end method

.method public stop()V
    .registers 6

    .line 969
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 970
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    .line 971
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 972
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {v3}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 974
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_22

    .line 975
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_34

    .line 978
    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->stop()V

    .line 980
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 981
    monitor-exit v0

    return-void

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_20

    throw p0
.end method

.method public stylusGestureStarted(J)V
    .registers 8

    const-wide/32 v0, 0xf4240

    .line 3088
    div-long/2addr p1, v0

    .line 3089
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastStylusUsageEventTime:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_15

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_14

    goto :goto_15

    :cond_14
    return-void

    .line 3091
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3093
    :try_start_18
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {v2}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v2

    const/16 v4, 0x13

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 3094
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_29

    .line 3095
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastStylusUsageEventTime:J

    return-void

    :catchall_29
    move-exception p0

    .line 3094
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public final unblockScreenOff()V
    .registers 5

    .line 2130
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    .line 2131
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 2132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 2133
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked screen off after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    const-string p0, "Screen off blocked"

    const/4 v0, 0x0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, p0, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_32
    return-void
.end method

.method public final unblockScreenOn()V
    .registers 5

    .line 2112
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    .line 2113
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 2114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 2115
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked screen on after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    const-string p0, "Screen on blocked"

    const/4 v0, 0x0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, p0, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_32
    return-void
.end method

.method public final unblockScreenOnByDisplayOffload()V
    .registers 5

    .line 2170
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 2173
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    .line 2174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockByDisplayOffloadStartRealTime:J

    sub-long/2addr v0, v2

    .line 2175
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked screen on for offloading after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    const-string p0, "Screen on blocked by displayoffload"

    const/4 v0, 0x0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, p0, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public updateBrightness()V
    .registers 1

    .line 1955
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public final updatePowerState()V
    .registers 4

    .line 1330
    const-string v0, "DisplayPowerController#updatePowerState"

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1332
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerStateInternal()V

    .line 1333
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final updatePowerStateInternal()V
    .registers 34

    move-object/from16 v0, p0

    .line 1341
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 1342
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->reset()V

    .line 1343
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1344
    :try_start_10
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    if-eqz v2, :cond_19

    .line 1345
    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    goto/16 :goto_819

    :cond_19
    const/4 v7, 0x0

    .line 1347
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 1348
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v2, :cond_22

    .line 1349
    monitor-exit v1

    return-void

    .line 1352
    :cond_22
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v8, 0x1

    if-nez v3, :cond_3a

    .line 1353
    new-instance v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v2, v3}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1354
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->updatePendingProximityRequestsLocked()V

    .line 1355
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    move v2, v8

    const/4 v9, 0x3

    goto :goto_52

    .line 1360
    :cond_3a
    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v5, :cond_4f

    .line 1361
    iget v5, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 1362
    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 1363
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->updatePendingProximityRequestsLocked()V

    .line 1364
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1365
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    :goto_4c
    move v9, v5

    move v2, v7

    goto :goto_52

    .line 1367
    :cond_4f
    iget v5, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    goto :goto_4c

    .line 1370
    :goto_52
    iget-boolean v10, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1371
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_10 .. :try_end_55} :catchall_16

    .line 1373
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    iget-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    invoke-virtual {v1, v3, v5, v6}, Lcom/android/server/display/state/DisplayStateController;->updateDisplayState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ZZ)Lcom/android/server/display/state/DisplayStateController$DisplayState;

    move-result-object v11

    .line 1375
    invoke-virtual {v11}, Lcom/android/server/display/state/DisplayStateController$DisplayState;->state()I

    move-result v1

    if-eqz v2, :cond_73

    .line 1379
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->readyToUpdateDisplayState()Z

    move-result v2

    if-eqz v2, :cond_6f

    move v2, v1

    goto :goto_70

    :cond_6f
    move v2, v7

    :goto_70
    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController;->initialize(I)V

    .line 1386
    :cond_73
    invoke-virtual {v11}, Lcom/android/server/display/state/DisplayStateController$DisplayState;->reason()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    .line 1387
    invoke-virtual {v3}, Lcom/android/server/display/state/DisplayStateController;->shouldPerformScreenOffTransition()Z

    move-result v3

    .line 1385
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IIZ)V

    .line 1388
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v13

    .line 1393
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isNormalBrightnessForDozeParameterEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 1395
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    if-nez v2, :cond_9a

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v1, v8, :cond_a0

    :cond_9a
    invoke-static {v13}, Landroid/view/Display;->isDozeState(I)Z

    move-result v1

    if-eqz v1, :cond_a2

    :cond_a0
    move v1, v8

    goto :goto_a8

    :cond_a2
    move v1, v7

    goto :goto_a8

    :cond_a4
    invoke-static {v13}, Landroid/view/Display;->isDozeState(I)Z

    move-result v1

    .line 1396
    :goto_a8
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    iget-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    .line 1397
    invoke-virtual {v2, v3, v13, v5, v6}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateBrightness(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILandroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;Z)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object v2

    .line 1402
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v3

    .line 1403
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v5

    .line 1404
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 1405
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->isSlowChange()Z

    move-result v6

    .line 1407
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getCustomAnimationRate()F

    move-result v12

    .line 1408
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessAdjustmentFlag()I

    move-result v21

    .line 1409
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1410
    invoke-virtual {v14}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getIsUserSetScreenBrightnessUpdated()Z

    move-result v19

    .line 1411
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessEvent()Lcom/android/server/display/brightness/BrightnessEvent;

    move-result-object v14

    if-eqz v14, :cond_e6

    .line 1412
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessEvent()Lcom/android/server/display/brightness/BrightnessEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/display/brightness/BrightnessEvent;->copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V

    .line 1415
    :cond_e6
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1416
    invoke-virtual {v14}, Lcom/android/server/display/brightness/DisplayBrightnessController;->isAllowAutoBrightnessWhileDozing()Z

    move-result v14

    .line 1418
    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v15}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v15

    const/4 v4, -0x1

    if-nez v15, :cond_117

    .line 1421
    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v15, :cond_117

    .line 1423
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getShouldUseAutoBrightness()Z

    move-result v16

    if-eqz v16, :cond_113

    iget-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    if-eqz v7, :cond_113

    if-eq v13, v8, :cond_10d

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v7, v8, :cond_113

    if-nez v14, :cond_113

    :cond_10d
    iget v7, v0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    if-ne v7, v4, :cond_113

    move v7, v8

    goto :goto_114

    :cond_113
    const/4 v7, 0x0

    :goto_114
    invoke-virtual {v15, v7}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    .line 1433
    :cond_117
    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1434
    invoke-virtual {v7}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isShortTermModelActive()Z

    move-result v7

    .line 1435
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->isUserInitiatedChange()Z

    move-result v15

    .line 1437
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v4

    const/4 v8, 0x2

    if-nez v4, :cond_197

    .line 1439
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->areAutoBrightnessModesEnabled()Z

    move-result v4

    if-eqz v4, :cond_144

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v4, :cond_144

    .line 1440
    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v4

    if-nez v4, :cond_144

    if-eqz v1, :cond_146

    .line 1444
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v15, 0x0

    invoke-virtual {v4, v8, v15}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    :cond_144
    :goto_144
    move v4, v12

    goto :goto_160

    :cond_146
    const/4 v15, 0x0

    .line 1446
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isAutoBrightnessModeBedtimeWearEnabled()Z

    move-result v4

    if-eqz v4, :cond_15a

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    if-eqz v4, :cond_15a

    .line 1448
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v8, 0x3

    invoke-virtual {v4, v8, v15}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    goto :goto_144

    .line 1451
    :cond_15a
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v4, v15, v15}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    goto :goto_144

    .line 1456
    :goto_160
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1457
    invoke-virtual {v8}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v15

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v25, v1

    iget v1, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-boolean v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    move/from16 v16, v1

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1459
    invoke-virtual {v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getLastUserSetScreenBrightness()F

    move-result v18

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    move/from16 v20, v1

    move/from16 v17, v8

    .line 1456
    invoke-virtual/range {v12 .. v20}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessState(IZIIZFZZ)V

    move/from16 v17, v13

    .line 1464
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_195

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1465
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentChanged()Z

    move-result v1

    if-nez v1, :cond_193

    if-eqz v19, :cond_195

    :cond_193
    const/4 v1, 0x1

    goto :goto_19d

    :cond_195
    const/4 v1, 0x0

    goto :goto_19d

    :cond_197
    move/from16 v25, v1

    move v4, v12

    move/from16 v17, v13

    move v1, v15

    .line 1470
    :goto_19d
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v8}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v8

    if-eqz v8, :cond_1a7

    const/4 v8, 0x1

    goto :goto_1b2

    .line 1472
    :cond_1a7
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v8}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessDisabledDueToDisplayOff()Z

    move-result v8

    if-eqz v8, :cond_1b1

    const/4 v8, 0x3

    goto :goto_1b2

    :cond_1b1
    const/4 v8, 0x2

    .line 1476
    :goto_1b2
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v12, v8}, Lcom/android/server/display/BrightnessRangeController;->setAutoBrightnessEnabled(I)V

    .line 1479
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->shouldUpdateScreenBrightnessSetting()Z

    move-result v8

    .line 1480
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v12}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v12

    .line 1482
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v13}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v13

    const/high16 v18, -0x40800000    # -1.0f

    const/4 v14, 0x4

    if-nez v13, :cond_209

    .line 1484
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_1e4

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1485
    invoke-virtual {v13}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v13

    const/16 v15, 0xb

    if-ne v13, v15, :cond_1dd

    goto :goto_1e4

    .line 1516
    :cond_1dd
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessApplied(Z)V

    goto :goto_209

    .line 1486
    :cond_1e4
    :goto_1e4
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v13

    if-eqz v13, :cond_209

    .line 1487
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v3, v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F

    move-result v3

    .line 1489
    invoke-static {v3}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v13

    if-nez v13, :cond_20d

    cmpl-float v13, v3, v18

    if-nez v13, :cond_1ff

    goto :goto_20d

    .line 1510
    :cond_1ff
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessApplied(Z)V

    .line 1512
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v3

    :cond_209
    :goto_209
    move v13, v8

    move/from16 v8, v21

    goto :goto_24c

    .line 1491
    :cond_20d
    :goto_20d
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1492
    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController;->getRawAutomaticScreenBrightness()F

    move-result v5

    .line 1496
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v6}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->hasAppliedAutoBrightness()Z

    move-result v6

    if-eqz v6, :cond_225

    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1498
    invoke-virtual {v6}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentChanged()Z

    move-result v6

    if-nez v6, :cond_225

    const/4 v6, 0x1

    goto :goto_226

    :cond_225
    const/4 v6, 0x0

    .line 1499
    :goto_226
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1501
    invoke-virtual {v8}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentReasonsFlags()I

    move-result v21

    cmpl-float v8, v12, v3

    if-eqz v8, :cond_232

    const/4 v8, 0x1

    goto :goto_233

    :cond_232
    const/4 v8, 0x0

    .line 1503
    :goto_233
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessApplied(Z)V

    .line 1504
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v13, v14}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    .line 1505
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v13, :cond_246

    const/4 v15, 0x0

    .line 1506
    invoke-virtual {v13, v15}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    :cond_246
    const/high16 v13, 0x7fc00000    # Float.NaN

    .line 1508
    invoke-virtual {v0, v13}, Lcom/android/server/display/DisplayPowerController;->setBrightnessFromOffload(F)V

    goto :goto_209

    .line 1520
    :goto_24c
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_256

    .line 1521
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v3

    .line 1524
    :cond_256
    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v15}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDozeBrightnessStrategyEnabled()Z

    move-result v15

    if-nez v15, :cond_2c0

    if-eqz v25, :cond_2c0

    .line 1525
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_275

    .line 1526
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v14

    const-string v14, "FallbackBrightnessStrategy"

    .line 1527
    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c2

    goto :goto_277

    :cond_275
    move/from16 v16, v14

    .line 1528
    :goto_277
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v13}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayOffloadEnabled()Z

    move-result v13

    if-eqz v13, :cond_2aa

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    if-eqz v13, :cond_2aa

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v13, :cond_28f

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1530
    invoke-virtual {v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v13

    if-nez v13, :cond_2aa

    .line 1535
    :cond_28f
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->getDozeBrightnessForOffload()F

    move-result v5

    .line 1536
    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v3

    .line 1537
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v14, 0xc

    invoke-virtual {v13, v14}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    .line 1538
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 1539
    invoke-virtual {v13}, Lcom/android/server/display/brightness/BrightnessEvent;->getFlags()I

    move-result v14

    or-int/lit8 v14, v14, 0x4

    .line 1538
    invoke-virtual {v13, v14}, Lcom/android/server/display/brightness/BrightnessEvent;->setFlags(I)V

    goto :goto_2be

    .line 1540
    :cond_2aa
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v13}, Lcom/android/server/display/brightness/DisplayBrightnessController;->isAllowAutoBrightnessWhileDozingConfig()Z

    move-result v13

    if-nez v13, :cond_2be

    .line 1542
    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 1543
    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v3

    .line 1544
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    :cond_2be
    :goto_2be
    const/4 v13, 0x0

    goto :goto_2c2

    :cond_2c0
    move/from16 v16, v14

    .line 1549
    :cond_2c2
    :goto_2c2
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v14}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v14

    if-nez v14, :cond_305

    .line 1552
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_305

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1553
    invoke-virtual {v14}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v14

    if-eqz v14, :cond_305

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v14, :cond_305

    .line 1556
    invoke-virtual {v14}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->getAutomaticScreenBrightness()F

    move-result v3

    .line 1558
    invoke-static {v3}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v5

    if-eqz v5, :cond_304

    .line 1559
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v5

    .line 1560
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1561
    invoke-virtual {v13}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v13

    cmpl-float v13, v13, v5

    if-eqz v13, :cond_2f6

    const/4 v13, 0x1

    goto :goto_2f7

    :cond_2f6
    const/4 v13, 0x0

    .line 1563
    :goto_2f7
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v15, 0x9

    invoke-virtual {v14, v15}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    move/from16 v32, v5

    move v5, v3

    move/from16 v3, v32

    goto :goto_305

    :cond_304
    move v5, v3

    .line 1570
    :cond_305
    :goto_305
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_326

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v14}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v14

    if-nez v14, :cond_326

    .line 1572
    invoke-virtual {v0, v12}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v3

    cmpl-float v5, v3, v12

    if-eqz v5, :cond_31c

    const/4 v13, 0x1

    .line 1579
    :cond_31c
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    move v15, v3

    move v3, v12

    :goto_324
    move v5, v13

    goto :goto_329

    :cond_326
    move v15, v3

    move v3, v5

    goto :goto_324

    .line 1582
    :goto_329
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v12, :cond_32f

    const/4 v12, 0x0

    goto :goto_333

    .line 1583
    :cond_32f
    invoke-virtual {v12}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v12

    :goto_333
    const/4 v14, 0x0

    .line 1584
    :goto_334
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v14, v13, :cond_354

    .line 1585
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/display/DisplayPowerController;

    move/from16 v21, v1

    .line 1586
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1587
    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToNits(F)F

    move-result v1

    .line 1586
    invoke-virtual {v13, v3, v1, v12, v6}, Lcom/android/server/display/DisplayPowerController;->setBrightnessToFollow(FFFZ)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v21

    goto :goto_334

    :cond_354
    move/from16 v21, v1

    .line 1599
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object v13, v2

    move/from16 v2, v16

    const/4 v1, 0x0

    move/from16 v16, v6

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->clamp(Lcom/android/server/display/DisplayBrightnessState;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZI)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object v12

    move-object v14, v13

    move/from16 v13, v17

    .line 1602
    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v6

    .line 1603
    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->isSlowChange()Z

    move-result v15

    .line 1606
    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->getCustomAnimationRate()F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1607
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    if-eqz v5, :cond_3aa

    .line 1615
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 1617
    invoke-virtual {v4}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMin()F

    move-result v4

    .line 1618
    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->getMinBrightness()F

    move-result v5

    .line 1617
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 1619
    invoke-virtual {v5}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result v5

    move/from16 v16, v1

    .line 1620
    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->getMaxBrightness()F

    move-result v1

    .line 1619
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1615
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateScreenBrightnessSetting(FFF)V

    goto :goto_3ac

    :cond_3aa
    move/from16 v16, v1

    .line 1628
    :goto_3ac
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v1, v6, v3, v12}, Lcom/android/server/display/BrightnessRangeController;->onBrightnessChanged(FFLcom/android/server/display/DisplayBrightnessState;)V

    .line 1637
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1638
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3c5

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1640
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isTemporaryAutoBrightnessAdjustmentApplied()Z

    move-result v1

    if-eqz v1, :cond_3c3

    goto :goto_3c5

    :cond_3c3
    const/4 v5, 0x0

    goto :goto_3c6

    :cond_3c5
    :goto_3c5
    const/4 v5, 0x1

    .line 1642
    :goto_3c6
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    move/from16 v22, v7

    if-nez v1, :cond_558

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez v1, :cond_558

    .line 1643
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    if-eqz v1, :cond_3e4

    const/4 v1, 0x2

    if-ne v13, v1, :cond_402

    .line 1645
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-nez v1, :cond_3e6

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-eqz v2, :cond_3e6

    .line 1646
    iput v6, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:F

    const/4 v2, 0x1

    .line 1647
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    :cond_3e4
    const/4 v1, 0x2

    goto :goto_405

    :cond_3e6
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f9

    .line 1648
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v1, :cond_3f9

    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:F

    .line 1650
    invoke-static {v6, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_3f9

    const/4 v1, 0x2

    .line 1652
    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_405

    :cond_3f9
    const/4 v1, 0x2

    .line 1653
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v2, v1, :cond_405

    const/4 v2, 0x0

    .line 1654
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_405

    :cond_402
    const/4 v2, 0x0

    .line 1657
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    :cond_405
    :goto_405
    if-ne v13, v1, :cond_40b

    .line 1661
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-nez v1, :cond_413

    :cond_40b
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 1663
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerProximityStateController;->shouldSkipRampBecauseOfProximityChangeToNegative()Z

    move-result v1

    if-eqz v1, :cond_415

    :cond_413
    const/4 v1, 0x1

    goto :goto_416

    :cond_415
    const/4 v1, 0x0

    .line 1668
    :goto_416
    invoke-static {v13}, Landroid/view/Display;->isDozeState(I)Z

    move-result v2

    if-eqz v2, :cond_424

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    if-eqz v2, :cond_424

    const/4 v2, 0x1

    :goto_421
    const/high16 v26, 0x3f800000    # 1.0f

    goto :goto_426

    :cond_424
    const/4 v2, 0x0

    goto :goto_421

    .line 1671
    :goto_426
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v4, :cond_436

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1672
    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v4

    cmpl-float v4, v4, v26

    if-nez v4, :cond_436

    const/4 v4, 0x1

    goto :goto_437

    :cond_436
    const/4 v4, 0x0

    .line 1681
    :goto_437
    invoke-virtual {v0, v6}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v7

    .line 1688
    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->getHdrBrightness()F

    move-result v27

    cmpl-float v27, v27, v18

    if-eqz v27, :cond_450

    .line 1692
    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->getHdrBrightness()F

    move-result v27

    move/from16 v28, v2

    move/from16 v2, v27

    move/from16 v29, v2

    move/from16 v27, v1

    goto :goto_487

    :cond_450
    move/from16 v27, v1

    .line 1694
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessRangeController;->getHighBrightnessMode()I

    move-result v1

    move/from16 v28, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_483

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1696
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v1

    const/16 v24, 0x1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_483

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1697
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v1

    and-int/2addr v1, v2

    if-nez v1, :cond_483

    .line 1701
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessRangeController;->getHdrBrightnessValue()F

    move-result v1

    .line 1703
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    move/from16 v29, v1

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    move/from16 v2, v29

    goto :goto_487

    :cond_483
    const/4 v1, 0x4

    move/from16 v29, v6

    move v2, v7

    .line 1708
    :goto_487
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v30, v3

    iget v3, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v31, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4a0

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v1, :cond_49c

    const/4 v3, 0x4

    if-eq v1, v3, :cond_49c

    const/4 v3, 0x6

    if-ne v1, v3, :cond_4a0

    :cond_49c
    move/from16 v1, v18

    const/4 v15, 0x0

    goto :goto_4a2

    :cond_4a0
    move/from16 v1, v16

    .line 1716
    :goto_4a2
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v3

    .line 1717
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getSdrScreenBrightness()F

    move-result v4

    .line 1719
    invoke-static {v2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v16

    if-eqz v16, :cond_4bd

    cmpl-float v3, v2, v3

    if-nez v3, :cond_4bf

    cmpl-float v16, v7, v4

    if-eqz v16, :cond_4bd

    goto :goto_4bf

    :cond_4bd
    const/4 v3, 0x0

    goto :goto_4f0

    :cond_4bf
    :goto_4bf
    if-nez v27, :cond_4cb

    if-nez v28, :cond_4cb

    if-eqz v31, :cond_4cb

    if-eqz v5, :cond_4c8

    goto :goto_4cb

    :cond_4c8
    const/16 v16, 0x0

    goto :goto_4cd

    :cond_4cb
    :goto_4cb
    const/16 v16, 0x1

    .line 1724
    :goto_4cd
    invoke-static {v7, v4}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v4

    move/from16 v17, v3

    .line 1726
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags;->isFastHdrTransitionsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4e0

    if-nez v16, :cond_4e0

    if-eqz v4, :cond_4e0

    const/4 v15, 0x0

    :cond_4e0
    if-eqz v16, :cond_4e7

    const/4 v3, 0x0

    .line 1736
    invoke-virtual {v0, v2, v7, v3}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFF)V

    goto :goto_4f0

    :cond_4e7
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_4f2

    const/4 v4, 0x1

    .line 1739
    invoke-virtual {v0, v2, v7, v1, v4}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFFZ)V

    :goto_4f0
    move v7, v3

    goto :goto_529

    :cond_4f2
    if-lez v17, :cond_4f6

    const/4 v1, 0x1

    goto :goto_4f7

    :cond_4f6
    const/4 v1, 0x0

    .line 1743
    :goto_4f7
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v4, :cond_503

    .line 1744
    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v4

    if-eqz v4, :cond_503

    const/4 v4, 0x1

    goto :goto_504

    :cond_503
    const/4 v4, 0x0

    :goto_504
    if-eqz v1, :cond_510

    if-eqz v15, :cond_510

    if-eqz v4, :cond_50d

    .line 1746
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncreaseIdle:F

    goto :goto_525

    .line 1747
    :cond_50d
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncrease:F

    goto :goto_525

    :cond_510
    if-eqz v1, :cond_517

    if-nez v15, :cond_517

    .line 1749
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastIncrease:F

    goto :goto_525

    :cond_517
    if-nez v1, :cond_523

    if-eqz v15, :cond_523

    if-eqz v4, :cond_520

    .line 1751
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecreaseIdle:F

    goto :goto_525

    .line 1752
    :cond_520
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecrease:F

    goto :goto_525

    .line 1754
    :cond_523
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastDecrease:F

    .line 1756
    :goto_525
    invoke-virtual {v0, v2, v7, v1}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFF)V

    move v7, v1

    .line 1760
    :goto_529
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1761
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v4

    move v1, v6

    .line 1762
    invoke-virtual {v14}, Lcom/android/server/display/DisplayBrightnessState;->getShouldUseAutoBrightness()Z

    move-result v6

    move/from16 v16, v7

    move/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v20, v14

    move/from16 v11, v26

    move/from16 v7, v30

    const/16 v23, -0x1

    move v10, v2

    move v14, v3

    move/from16 v2, v21

    move/from16 v3, v22

    .line 1760
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/DisplayPowerController;->notifyBrightnessTrackerChanged(FZZZZZ)V

    .line 1766
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v2

    invoke-virtual {v0, v2, v10, v12}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z

    move-result v2

    move/from16 v4, v16

    move/from16 v6, v29

    goto :goto_571

    :cond_558
    move v7, v3

    move v1, v6

    move/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v20, v14

    move/from16 v3, v22

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/16 v23, -0x1

    .line 1769
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v2

    invoke-virtual {v0, v2, v12}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FLcom/android/server/display/DisplayBrightnessState;)Z

    move-result v2

    move v6, v1

    move v4, v14

    :goto_571
    if-eqz v2, :cond_578

    if-nez v5, :cond_578

    .line 1774
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 1778
    :cond_578
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2, v5}, Lcom/android/server/display/brightness/BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5ac

    if-eqz v8, :cond_585

    goto :goto_5ac

    .line 1783
    :cond_585
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5e6

    if-eqz v19, :cond_5e6

    .line 1785
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Brightness ["

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, "] manual adjustment."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e6

    .line 1779
    :cond_5ac
    :goto_5ac
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Brightness ["

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, "] reason changing to: \'"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1780
    invoke-virtual {v10, v8}, Lcom/android/server/display/brightness/BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\', previous reason: \'"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "\'."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1779
    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2, v5}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 1792
    :cond_5e6
    :goto_5e6
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    move-object v5, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/android/server/display/brightness/BrightnessEvent;->setTime(J)V

    .line 1793
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v2, v1}, Lcom/android/server/display/brightness/BrightnessEvent;->setBrightness(F)V

    .line 1794
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v2, v6}, Lcom/android/server/display/brightness/BrightnessEvent;->setHdrBrightness(F)V

    .line 1795
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1796
    invoke-virtual {v10, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v10

    .line 1795
    invoke-virtual {v2, v10}, Lcom/android/server/display/brightness/BrightnessEvent;->setNits(F)V

    .line 1797
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1798
    invoke-virtual {v10, v6}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v6

    .line 1797
    invoke-virtual {v2, v6}, Lcom/android/server/display/brightness/BrightnessEvent;->setHdrNits(F)V

    .line 1799
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result v2

    .line 1800
    invoke-virtual {v5}, Lcom/android/server/display/DisplayBrightnessState;->getMaxBrightness()F

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1802
    invoke-virtual {v5}, Lcom/android/server/display/DisplayBrightnessState;->getMinBrightness()F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    .line 1801
    invoke-static {v14, v11, v10, v6, v1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v1

    .line 1804
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v6, :cond_634

    .line 1805
    invoke-virtual {v6}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->getReduceBrightColorsActivatedForEvenDimmer()Z

    move-result v6

    if-eqz v6, :cond_634

    const/4 v6, 0x1

    goto :goto_635

    :cond_634
    const/4 v6, 0x0

    .line 1806
    :goto_635
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    const/high16 v11, 0x447a0000    # 1000.0f

    .line 1807
    invoke-static {v1}, Lcom/android/internal/display/BrightnessUtils;->convertLinearToGamma(F)F

    move-result v1

    mul-float/2addr v1, v11

    const/high16 v11, 0x41200000    # 10.0f

    div-float/2addr v1, v11

    .line 1806
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v10, v1}, Lcom/android/server/display/brightness/BrightnessEvent;->setPercent(F)V

    .line 1809
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v7}, Lcom/android/server/display/brightness/BrightnessEvent;->setUnclampedBrightness(F)V

    .line 1810
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/android/server/display/brightness/BrightnessEvent;->setPhysicalDisplayId(Ljava/lang/String;)V

    .line 1811
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mPhysicalDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/android/server/display/brightness/BrightnessEvent;->setPhysicalDisplayName(Ljava/lang/String;)V

    .line 1812
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v13}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayState(I)V

    .line 1813
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/display/state/DisplayStateController$DisplayState;->reason()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayStateReason(I)V

    .line 1814
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v1, v10}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayPolicy(I)V

    .line 1815
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v1, v10}, Lcom/android/server/display/brightness/BrightnessEvent;->setReason(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 1816
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setHbmMax(F)V

    .line 1817
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessRangeController;->getHighBrightnessMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setHbmMode(I)V

    .line 1818
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->getFlags()I

    move-result v2

    .line 1819
    iget-boolean v10, v0, Lcom/android/server/display/DisplayPowerController;->mIsRbcActive:Z

    or-int/2addr v2, v10

    .line 1820
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v10, :cond_69c

    const/16 v10, 0x20

    goto :goto_69d

    :cond_69c
    const/4 v10, 0x0

    :goto_69d
    or-int/2addr v2, v10

    if-eqz v6, :cond_6a3

    const/16 v6, 0x40

    goto :goto_6a4

    :cond_6a3
    const/4 v6, 0x0

    :goto_6a4
    or-int/2addr v2, v6

    .line 1818
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setFlags(I)V

    .line 1822
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v2, :cond_6b3

    .line 1823
    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->getReduceBrightColorsStrength()I

    move-result v2

    goto :goto_6b5

    :cond_6b3
    move/from16 v2, v23

    .line 1822
    :goto_6b5
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setRbcStrength(I)V

    .line 1824
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setPowerFactor(F)V

    .line 1825
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/BrightnessEvent;->setWasShortTermModelActive(Z)Z

    .line 1826
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 1827
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/DisplayBrightnessState;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object v2

    .line 1826
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayBrightnessStrategyName(Ljava/lang/String;)V

    .line 1828
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 1829
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/DisplayBrightnessState;->getShouldUseAutoBrightness()Z

    move-result v2

    .line 1828
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setAutomaticBrightnessEnabled(Z)V

    .line 1830
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v15}, Lcom/android/server/display/brightness/BrightnessEvent;->setSlowChange(Z)V

    .line 1831
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->setRampSpeed(F)V

    .line 1834
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 1835
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6fd

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 1836
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    if-ne v1, v2, :cond_6fd

    const/4 v1, 0x1

    goto :goto_6fe

    :cond_6fd
    const/4 v1, 0x0

    .line 1839
    :goto_6fe
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 1840
    invoke-virtual {v3}, Lcom/android/server/display/brightness/BrightnessEvent;->isRbcEnabled()Z

    move-result v3

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v4}, Lcom/android/server/display/brightness/BrightnessEvent;->isRbcEnabled()Z

    move-result v4

    if-eq v3, v4, :cond_70e

    const/4 v3, 0x1

    goto :goto_70f

    :cond_70e
    const/4 v3, 0x0

    .line 1842
    :goto_70f
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v4, v6}, Lcom/android/server/display/brightness/BrightnessEvent;->equalsMainData(Lcom/android/server/display/brightness/BrightnessEvent;)Z

    move-result v4

    if-nez v4, :cond_71b

    if-eqz v1, :cond_71d

    :cond_71b
    if-eqz v8, :cond_76e

    .line 1844
    :cond_71d
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v4}, Lcom/android/server/display/brightness/BrightnessEvent;->getBrightness()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->setInitialBrightness(F)V

    .line 1845
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V

    .line 1846
    new-instance v1, Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-direct {v1, v4}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(Lcom/android/server/display/brightness/BrightnessEvent;)V

    .line 1849
    invoke-virtual {v1, v8}, Lcom/android/server/display/brightness/BrightnessEvent;->setAdjustmentFlags(I)V

    .line 1850
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->getFlags()I

    move-result v4

    if-eqz v19, :cond_742

    const/16 v6, 0x8

    goto :goto_743

    :cond_742
    const/4 v6, 0x0

    :goto_743
    or-int/2addr v4, v6

    invoke-virtual {v1, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->setFlags(I)V

    .line 1852
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/android/server/display/brightness/BrightnessEvent;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v19, :cond_75d

    .line 1855
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v4

    if-eq v4, v2, :cond_760

    .line 1856
    :cond_75d
    invoke-virtual {v0, v1, v7, v5}, Lcom/android/server/display/DisplayPowerController;->logBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;FLcom/android/server/display/DisplayBrightnessState;)V

    .line 1858
    :cond_760
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    if-eqz v2, :cond_767

    .line 1859
    invoke-virtual {v2, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    :cond_767
    if-eqz v3, :cond_76e

    .line 1862
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 1868
    :cond_76e
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v1, :cond_788

    const/4 v1, 0x2

    if-ne v13, v1, :cond_78a

    .line 1869
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_78a

    .line 1870
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 1871
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-virtual {v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateDisplayColorTemperature()V

    :cond_788
    const/4 v15, 0x0

    goto :goto_790

    .line 1873
    :cond_78a
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 1881
    :goto_790
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v1, :cond_7b0

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez v1, :cond_7b0

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v1, :cond_7a4

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 1883
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_7b0

    :cond_7a4
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1884
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_7b0

    const/4 v1, 0x1

    goto :goto_7b1

    :cond_7b0
    move v1, v15

    :goto_7b1
    if-eqz v1, :cond_7bd

    .line 1885
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 1886
    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_7bd

    const/4 v2, 0x1

    goto :goto_7be

    :cond_7bd
    move v2, v15

    :goto_7be
    if-eqz v1, :cond_7d2

    const/4 v4, 0x1

    if-eq v13, v4, :cond_7d2

    .line 1889
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v3, v4, :cond_7d2

    const/4 v3, 0x2

    .line 1891
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1892
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOn(I)V

    :cond_7d2
    if-nez v2, :cond_7da

    .line 1897
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    :cond_7da
    if-eqz v1, :cond_7fe

    if-nez v17, :cond_7fe

    .line 1903
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1904
    :try_start_7e1
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v3, :cond_7f6

    const/4 v4, 0x1

    .line 1905
    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1907
    sget-boolean v3, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_7f7

    .line 1908
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string v5, "Display ready!"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f7

    :catchall_7f4
    move-exception v0

    goto :goto_7fc

    :cond_7f6
    const/4 v4, 0x1

    .line 1911
    :cond_7f7
    :goto_7f7
    monitor-exit v1
    :try_end_7f8
    .catchall {:try_start_7e1 .. :try_end_7f8} :catchall_7f4

    .line 1912
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto :goto_7ff

    .line 1911
    :goto_7fc
    :try_start_7fc
    monitor-exit v1
    :try_end_7fd
    .catchall {:try_start_7fc .. :try_end_7fd} :catchall_7f4

    throw v0

    :cond_7fe
    const/4 v4, 0x1

    :goto_7ff
    if-eqz v2, :cond_807

    .line 1917
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/android/server/display/WakelockController;->releaseWakelock(I)Z

    :cond_807
    const/4 v1, 0x2

    if-eq v13, v1, :cond_80c

    move v7, v4

    goto :goto_80d

    :cond_80c
    move v7, v15

    .line 1921
    :goto_80d
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    .line 1923
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v9, v1, :cond_818

    .line 1924
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController;->logDisplayPolicyChanged(I)V

    :cond_818
    return-void

    .line 1371
    :goto_819
    :try_start_819
    monitor-exit v1
    :try_end_81a
    .catchall {:try_start_819 .. :try_end_81a} :catchall_16

    throw v0
.end method

.method public updateWhiteBalance()V
    .registers 1

    .line 3325
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method
