.class public Lcom/android/server/display/feature/DisplayManagerFlags;
.super Ljava/lang/Object;
.source "DisplayManagerFlags.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "DisplayManagerFlags"


# instance fields
.field public final mAutoBrightnessModeBedtimeWearFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mBackUpSmoothDisplayAndForcePeakRefreshRateFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mBaseDensityForExternalDisplays:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mBlockAutobrightnessChangesOnStylusUsage:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mBrightnessWearBedtimeModeClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mCommittedStateSeparateEvent:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mConnectedDisplayErrorHandlingFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mDelayImplicitRrRegistrationUntilRrAccessed:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mDisplayListenerPerformanceImprovementsFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mDisplayOffloadFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mDisplayTopology:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mDisplayTopologyApi:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mDozeBrightnessStrategy:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mEnableBatteryStatsForAllDisplays:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mEnableDefaultDisplayInTopologySwitch:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mEnableDisplayContentModeManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mEnableHdrOverridePluginTypeFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mEnableUpdatedDisplayConnectionDialogFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mEnsureColorFadeWhenTurningOn:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mEvenDimmerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mFastHdrTransitions:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mFramerateOverrideTriggersRrCallbacks:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mGetSupportedRefreshRatesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mHasArrSupport:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mHdrBrightnessSetting:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mIgnoreAppPreferredRefreshRate:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mIsDisplayMirrorInLockTaskModeEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mIsLoggingForDisplayEventsEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mIsMinmodeCapBrightnessEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mIsOnDisplayAddedInObserverEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mIsSingleAppEventForModeAndFrameRateOverrideEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mIsSizeOverrideForExternalDisplaysEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mModeSwitchWithoutSaving:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mNormalBrightnessForDozeParameter:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mOffloadSessionCancelBlockScreenOn:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mPeakRefreshRatePhysicalLimit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mPowerThrottlingClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mRefreshRateEventForForegroundApps:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mResolutionBackupRestore:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mSensorBasedBrightnessThrottling:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mSeparateTimeouts:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mSetBrightnessByUnit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mSmallAreaDetectionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mSubscribeGranularDisplayEvents:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mSyncedResolutionSwitch:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mSynthetic60hzModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mSyntheticModesV2:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mUseFusionProxSensor:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/display/feature/DisplayManagerFlags;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 44
    const-string v0, "DisplayManagerFlags"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/feature/DisplayManagerFlags;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.enable_display_offload"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayOffloadFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 50
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    sget-object v1, Landroid/window/DesktopExperienceFlags;->DISPLAY_TOPOLOGY:Landroid/window/DesktopExperienceFlags;

    .line 52
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(Landroid/window/DesktopExperienceFlags;)V

    const-string v1, "com.android.server.display.feature.flags.display_topology"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayTopology:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 54
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.display_topology_api"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayTopologyApi:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 58
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.enable_connected_display_error_handling"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayErrorHandlingFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 62
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.back_up_smooth_display_and_force_peak_refresh_rate"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBackUpSmoothDisplayAndForcePeakRefreshRateFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 66
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.enable_power_throttling_clamper"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPowerThrottlingClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 70
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.even_dimmer"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEvenDimmerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 73
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.graphics.surfaceflinger.flags.enable_small_area_detection"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSmallAreaDetectionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 77
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "com.android.graphics.surfaceflinger.flags.synced_resolution_switch"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSyncedResolutionSwitch:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 82
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.resolution_backup_restore"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mResolutionBackupRestore:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 86
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.brightness_wear_bedtime_mode_clamper"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessWearBedtimeModeClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 90
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.auto_brightness_modes"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 94
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.fast_hdr_transitions"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mFastHdrTransitions:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 98
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.sensor_based_brightness_throttling"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSensorBasedBrightnessThrottling:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 103
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.refactor_display_power_controller"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 108
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.doze_brightness_strategy"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDozeBrightnessStrategy:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 113
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.use_fusion_prox_sensor"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mUseFusionProxSensor:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 118
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.enable_peak_refresh_rate_physical_limit"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPeakRefreshRatePhysicalLimit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 123
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.ignore_app_preferred_refresh_rate_request"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIgnoreAppPreferredRefreshRate:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 128
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.enable_synthetic_60hz_modes"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSynthetic60hzModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 133
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.offload_session_cancel_block_screen_on"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadSessionCancelBlockScreenOn:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 137
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.normal_brightness_for_doze_parameter"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mNormalBrightnessForDozeParameter:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 141
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.block_autobrightness_changes_on_stylus_usage"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBlockAutobrightnessChangesOnStylusUsage:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 146
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.enable_battery_stats_for_all_displays"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableBatteryStatsForAllDisplays:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 151
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.enable_has_arr_support"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mHasArrSupport:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 156
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.auto_brightness_mode_bedtime_wear"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModeBedtimeWearFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 161
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.enable_get_supported_refresh_rates"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mGetSupportedRefreshRatesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 166
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.enable_hdr_override_plugin_type"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableHdrOverridePluginTypeFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 171
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.display_listener_performance_improvements"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayListenerPerformanceImprovementsFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 175
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    sget-object v1, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    .line 177
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(Landroid/window/DesktopExperienceFlags;)V

    const-string v1, "com.android.server.display.feature.flags.enable_display_content_mode_management"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableDisplayContentModeManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 180
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    sget-object v1, Landroid/window/DesktopExperienceFlags;->ENABLE_UPDATED_DISPLAY_CONNECTION_DIALOG:Landroid/window/DesktopExperienceFlags;

    .line 182
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(Landroid/window/DesktopExperienceFlags;)V

    const-string v1, "com.android.window.flags.enable_updated_display_connection_dialog"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableUpdatedDisplayConnectionDialogFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 185
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.subscribe_granular_display_events"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSubscribeGranularDisplayEvents:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 190
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    sget-object v1, Landroid/window/DesktopExperienceFlags;->BASE_DENSITY_FOR_EXTERNAL_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    .line 192
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(Landroid/window/DesktopExperienceFlags;)V

    const-string v1, "com.android.server.display.feature.flags.base_density_for_external_displays"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBaseDensityForExternalDisplays:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 195
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.framerate_override_triggers_rr_callbacks"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mFramerateOverrideTriggersRrCallbacks:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 200
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.refresh_rate_event_for_foreground_apps"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefreshRateEventForForegroundApps:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 205
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.committed_state_separate_event"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mCommittedStateSeparateEvent:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 210
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.separate_timeouts"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSeparateTimeouts:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 215
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.set_brightness_by_unit"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSetBrightnessByUnit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 220
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.delay_implicit_rr_registration_until_rr_accessed"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDelayImplicitRrRegistrationUntilRrAccessed:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 225
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.hdr_brightness_setting"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mHdrBrightnessSetting:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 230
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    sget-object v1, Landroid/window/DesktopExperienceFlags;->ENABLE_DEFAULT_DISPLAY_IN_TOPOLOGY_SWITCH:Landroid/window/DesktopExperienceFlags;

    .line 232
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(Landroid/window/DesktopExperienceFlags;)V

    const-string v1, "com.android.server.display.feature.flags.enable_default_display_in_topology_switch"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableDefaultDisplayInTopologySwitch:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 235
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.mode_switch_without_saving"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mModeSwitchWithoutSaving:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 239
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.ensure_color_fade_when_turning_on"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnsureColorFadeWhenTurningOn:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 244
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.enable_on_display_added_in_observer"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsOnDisplayAddedInObserverEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 249
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.enable_logging_for_display_events"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsLoggingForDisplayEventsEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 254
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.minmode_cap_brightness_enabled"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsMinmodeCapBrightnessEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 259
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.enable_synthetic_modes_v2"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSyntheticModesV2:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 264
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.enable_single_app_event_for_mode_and_frame_rate_override"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsSingleAppEventForModeAndFrameRateOverrideEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 269
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    sget-object v1, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_MIRROR_IN_LOCK_TASK_MODE:Landroid/window/DesktopExperienceFlags;

    .line 271
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(Landroid/window/DesktopExperienceFlags;)V

    const-string v1, "com.android.server.display.feature.flags.enable_display_mirror_in_lock_task_mode"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsDisplayMirrorInLockTaskModeEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 274
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.display.feature.flags.enable_size_override_for_external_displays"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/display/feature/DisplayManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsSizeOverrideForExternalDisplaysEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    return-void
.end method


# virtual methods
.method public areAutoBrightnessModesEnabled()Z
    .registers 1

    .line 328
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 543
    const-string v0, "DisplayManagerFlags:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    const-string v0, "--------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBackUpSmoothDisplayAndForcePeakRefreshRateFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayErrorHandlingFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayOffloadFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayTopology:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayTopologyApi:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPowerThrottlingClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEvenDimmerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSmallAreaDetectionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSyncedResolutionSwitch:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessWearBedtimeModeClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mFastHdrTransitions:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSensorBasedBrightnessThrottling:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDozeBrightnessStrategy:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mResolutionBackupRestore:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mUseFusionProxSensor:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPeakRefreshRatePhysicalLimit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIgnoreAppPreferredRefreshRate:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSynthetic60hzModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadSessionCancelBlockScreenOn:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mNormalBrightnessForDozeParameter:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableBatteryStatsForAllDisplays:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBlockAutobrightnessChangesOnStylusUsage:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mHasArrSupport:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModeBedtimeWearFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mGetSupportedRefreshRatesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayListenerPerformanceImprovementsFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSubscribeGranularDisplayEvents:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableDisplayContentModeManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBaseDensityForExternalDisplays:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mFramerateOverrideTriggersRrCallbacks:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefreshRateEventForForegroundApps:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mCommittedStateSeparateEvent:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSeparateTimeouts:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSetBrightnessByUnit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDelayImplicitRrRegistrationUntilRrAccessed:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mHdrBrightnessSetting:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableDefaultDisplayInTopologySwitch:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mModeSwitchWithoutSaving:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnsureColorFadeWhenTurningOn:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsOnDisplayAddedInObserverEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableUpdatedDisplayConnectionDialogFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsLoggingForDisplayEventsEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsMinmodeCapBrightnessEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSyntheticModesV2:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsSingleAppEventForModeAndFrameRateOverrideEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsDisplayMirrorInLockTaskModeEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsSizeOverrideForExternalDisplaysEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableGetSupportedRefreshRates()Z
    .registers 1

    .line 416
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mGetSupportedRefreshRatesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public getUseFusionProxSensorFlagName()Ljava/lang/String;
    .registers 1

    .line 352
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mUseFusionProxSensor:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$mgetName(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasArrSupportFlag()Z
    .registers 1

    .line 401
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mHasArrSupport:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public ignoreAppPreferredRefreshRateRequest()Z
    .registers 1

    .line 367
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIgnoreAppPreferredRefreshRate:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isAutoBrightnessModeBedtimeWearEnabled()Z
    .registers 1

    .line 409
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModeBedtimeWearFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isBackUpSmoothDisplayAndForcePeakRefreshRateEnabled()Z
    .registers 1

    .line 300
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBackUpSmoothDisplayAndForcePeakRefreshRateFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isBaseDensityForExternalDisplaysEnabled()Z
    .registers 1

    .line 449
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBaseDensityForExternalDisplays:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isBatteryStatsEnabledForAllDisplays()Z
    .registers 1

    .line 387
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableBatteryStatsForAllDisplays:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isBlockAutobrightnessChangesOnStylusUsage()Z
    .registers 1

    .line 394
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBlockAutobrightnessChangesOnStylusUsage:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isBrightnessWearBedtimeModeClamperEnabled()Z
    .registers 1

    .line 321
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessWearBedtimeModeClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isCommittedStateSeparateEventEnabled()Z
    .registers 1

    .line 473
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mCommittedStateSeparateEvent:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isConnectedDisplayErrorHandlingEnabled()Z
    .registers 1

    .line 296
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayErrorHandlingFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isDefaultDisplayInTopologySwitchEnabled()Z
    .registers 1

    .line 496
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableDefaultDisplayInTopologySwitch:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isDelayImplicitRrRegistrationUntilRrAccessedEnabled()Z
    .registers 1

    .line 488
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDelayImplicitRrRegistrationUntilRrAccessed:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isDisplayContentModeManagementEnabled()Z
    .registers 1

    .line 431
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableDisplayContentModeManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isDisplayEventsLoggingEnabled()Z
    .registers 1

    .line 515
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsLoggingForDisplayEventsEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isDisplayListenerPerformanceImprovementsEnabled()Z
    .registers 1

    .line 427
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayListenerPerformanceImprovementsFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isDisplayMirrorInLockTaskModeEnabled()Z
    .registers 1

    .line 531
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsDisplayMirrorInLockTaskModeEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isDisplayOffloadEnabled()Z
    .registers 1

    .line 291
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayOffloadFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isDisplayTopologyEnabled()Z
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayTopology:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isDozeBrightnessStrategyEnabled()Z
    .registers 1

    .line 344
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDozeBrightnessStrategy:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isEnsureColorFadeWhenTurningOnEnabled()Z
    .registers 1

    .line 507
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnsureColorFadeWhenTurningOn:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isEvenDimmerEnabled()Z
    .registers 1

    .line 305
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEvenDimmerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isFastHdrTransitionsEnabled()Z
    .registers 1

    .line 332
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mFastHdrTransitions:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isFramerateOverrideTriggersRrCallbacksEnabled()Z
    .registers 1

    .line 457
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mFramerateOverrideTriggersRrCallbacks:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isHdrBrightnessSettingEnabled()Z
    .registers 1

    .line 492
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mHdrBrightnessSetting:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isHdrOverrideEnabled()Z
    .registers 1

    .line 420
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableHdrOverridePluginTypeFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isMinmodeCapBrightnessEnabled()Z
    .registers 1

    .line 519
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsMinmodeCapBrightnessEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isModeSwitchWithoutSavingEnabled()Z
    .registers 1

    .line 500
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mModeSwitchWithoutSaving:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isNormalBrightnessForDozeParameterEnabled(Landroid/content/Context;)Z
    .registers 2

    .line 378
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mNormalBrightnessForDozeParameter:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1110021

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public isOffloadSessionCancelBlockScreenOnEnabled()Z
    .registers 1

    .line 360
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadSessionCancelBlockScreenOn:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isOnDisplayAddedInObserverEnabled()Z
    .registers 1

    .line 511
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsOnDisplayAddedInObserverEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isPeakRefreshRatePhysicalLimitEnabled()Z
    .registers 1

    .line 356
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPeakRefreshRatePhysicalLimit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isPowerThrottlingClamperEnabled()Z
    .registers 1

    .line 281
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPowerThrottlingClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isRefactorDisplayPowerControllerEnabled()Z
    .registers 1

    .line 340
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isRefreshRateEventForForegroundAppsEnabled()Z
    .registers 1

    .line 465
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefreshRateEventForForegroundApps:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isResolutionBackupRestoreEnabled()Z
    .registers 1

    .line 317
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mResolutionBackupRestore:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isSensorBasedBrightnessThrottlingEnabled()Z
    .registers 1

    .line 336
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSensorBasedBrightnessThrottling:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isSeparateTimeoutsEnabled()Z
    .registers 1

    .line 481
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSeparateTimeouts:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isSingleAppEventForModeAndFrameRateOverrideEnabled()Z
    .registers 1

    .line 527
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsSingleAppEventForModeAndFrameRateOverrideEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isSizeOverrideForExternalDisplaysEnabled()Z
    .registers 1

    .line 535
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsSizeOverrideForExternalDisplaysEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isSmallAreaDetectionEnabled()Z
    .registers 1

    .line 309
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSmallAreaDetectionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isSubscribeGranularDisplayEventsEnabled()Z
    .registers 1

    .line 442
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSubscribeGranularDisplayEvents:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isSyncedResolutionSwitchEnabled()Z
    .registers 1

    .line 313
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSyncedResolutionSwitch:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isSynthetic60HzModesEnabled()Z
    .registers 1

    .line 371
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSynthetic60hzModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isSyntheticModesV2Enabled()Z
    .registers 1

    .line 523
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSyntheticModesV2:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isUpdatedDisplayConnectionDialogEnabled()Z
    .registers 1

    .line 435
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableUpdatedDisplayConnectionDialogFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isUseFusionProxSensorEnabled()Z
    .registers 1

    .line 348
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mUseFusionProxSensor:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method
