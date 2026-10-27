.class public final Lcom/android/server/am/ActivityManagerConstants;
.super Landroid/database/ContentObserver;
.source "ActivityManagerConstants.java"


# static fields
.field public static final ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

.field public static final ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I = 0x0

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z = false

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F = 0.0f

.field public static BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I = 0x0

.field public static BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z = false

.field public static BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F = 0.0f

.field public static final DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

.field public static final DEFAULT_FREEZER_CUTOFF_ADJ:I = 0x384

.field public static final DEFAULT_SERVICE_BACKGROUND_TIMEOUT:J

.field public static final DEFAULT_SERVICE_TIMEOUT:J

.field public static final DEFAULT_USE_TIERED_CACHED_ADJ:Z

.field public static final ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

.field public static final FORCE_ENABLE_PSS_PROFILING_URI:Landroid/net/Uri;

.field public static final FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

.field public static LOW_SWAP_THRESHOLD_PERCENT:F

.field public static MAX_PREVIOUS_TIME:J

.field public static MIN_ASSOC_LOG_DURATION:J

.field public static MIN_CRASH_INTERVAL:I

.field public static PROACTIVE_KILLS_ENABLED:Z

.field public static PROCESS_CRASH_COUNT_LIMIT:I

.field public static PROCESS_CRASH_COUNT_RESET_INTERVAL:J


# instance fields
.field public APP_PROFILER_PSS_PROFILING_DISABLED:Z

.field public BACKGROUND_SETTLE_TIME:J

.field public BG_START_TIMEOUT:J

.field public BOUND_SERVICE_CRASH_RESTART_DURATION:J

.field public BOUND_SERVICE_MAX_CRASH_RETRY:J

.field public CONTENT_PROVIDER_RETAIN_TIME:J

.field public CUR_MAX_CACHED_PROCESSES:I

.field public CUR_MAX_EMPTY_PROCESSES:I

.field public CUR_TRIM_CACHED_PROCESSES:I

.field public CUR_TRIM_EMPTY_PROCESSES:I

.field public ENABLE_BATCHING_OOM_ADJ:Z

.field public FGSERVICE_MIN_REPORT_TIME:J

.field public FGSERVICE_MIN_SHOWN_TIME:J

.field public FGSERVICE_SCREEN_ON_AFTER_TIME:J

.field public FGSERVICE_SCREEN_ON_BEFORE_TIME:J

.field public FGS_BOOT_COMPLETED_ALLOWLIST:I

.field public FLAG_PROCESS_START_ASYNC:Z

.field public FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

.field public FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

.field public FREEZER_CUTOFF_ADJ:I

.field public FULL_PSS_LOWERED_INTERVAL:J

.field public FULL_PSS_MIN_INTERVAL:J

.field public GC_MIN_INTERVAL:J

.field public GC_TIMEOUT:J

.field public IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

.field public IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

.field public final KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

.field public MAX_CACHED_PROCESSES:I

.field public MAX_PHANTOM_PROCESSES:I

.field public MAX_SERVICE_INACTIVITY:J

.field public MEMORY_INFO_THROTTLE_TIME:J

.field public OOMADJ_UPDATE_QUICK:Z

.field public PENDINGINTENT_WARNING_THRESHOLD:I

.field public POWER_CHECK_INTERVAL:J

.field public POWER_CHECK_MAX_CPU_1:I

.field public POWER_CHECK_MAX_CPU_2:I

.field public POWER_CHECK_MAX_CPU_3:I

.field public POWER_CHECK_MAX_CPU_4:I

.field public PSS_TO_RSS_THRESHOLD_MODIFIER:F

.field public SERVICE_BACKGROUND_TIMEOUT:J

.field public SERVICE_BG_ACTIVITY_START_TIMEOUT:J

.field public SERVICE_MIN_RESTART_TIME_BETWEEN:J

.field public SERVICE_RESET_RUN_DURATION:J

.field public SERVICE_RESTART_DURATION:J

.field public SERVICE_RESTART_DURATION_FACTOR:I

.field public SERVICE_TIMEOUT:J

.field public SERVICE_USAGE_INTERACTION_TIME_POST_S:J

.field public SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

.field public TIERED_CACHED_ADJ_DECAY_TIME:J

.field public TIERED_CACHED_ADJ_UI_TIER_SIZE:I

.field public TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

.field public volatile TOP_TO_FGS_GRACE_DURATION:J

.field public USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

.field public USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

.field public USE_TIERED_CACHED_ADJ:Z

.field public volatile mBootTimeTempAllowlistDuration:J

.field public volatile mComponentAliasOverrides:Ljava/lang/String;

.field public final mCustomizedMaxCachedProcesses:I

.field public volatile mDataSyncFgsTimeoutDuration:J

.field public final mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

.field public final mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

.field public final mDefaultBinderHeavyHitterAutoSamplerThreshold:F

.field public final mDefaultBinderHeavyHitterWatcherBatchSize:I

.field public final mDefaultBinderHeavyHitterWatcherEnabled:Z

.field public final mDefaultBinderHeavyHitterWatcherThreshold:F

.field public final mDefaultDisableAppProfilerPssProfiling:Z

.field public mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

.field public mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

.field public final mDefaultPssToRssThresholdModifier:F

.field public final mDefaultTieredCachedAdjUiTierSize:I

.field public volatile mDeferBootCompletedBroadcast:I

.field public volatile mEnableComponentAlias:Z

.field public mEnableExtraServiceRestartDelayOnMemPressure:Z

.field public volatile mEnableProcStateStacktrace:Z

.field public volatile mEnableWaitForFinishAttachApplication:Z

.field public mExtraServiceRestartDelayOnMemPressure:[J

.field public volatile mFgToBgFgsGraceDuration:J

.field public volatile mFgsAllowOptOut:Z

.field public volatile mFgsAtomSampleRate:F

.field public volatile mFgsCrashExtraWaitDuration:J

.field public volatile mFgsNotificationDeferralExclusionTime:J

.field public volatile mFgsNotificationDeferralExclusionTimeForShort:J

.field public volatile mFgsNotificationDeferralInterval:J

.field public volatile mFgsNotificationDeferralIntervalForShort:J

.field public volatile mFgsStartAllowedLogSampleRate:F

.field public volatile mFgsStartDeniedLogSampleRate:F

.field public volatile mFgsStartForegroundTimeoutMs:J

.field public volatile mFgsStartRestrictionCheckCallerTargetSdk:Z

.field public volatile mFgsStartRestrictionNotificationEnabled:Z

.field public volatile mFlagActivityStartsLoggingEnabled:Z

.field public volatile mFlagBackgroundActivityStartsEnabled:Z

.field public volatile mFlagBackgroundFgsStartRestrictionEnabled:Z

.field public volatile mFlagFgsNotificationDeferralApiGated:Z

.field public volatile mFlagFgsNotificationDeferralEnabled:Z

.field public volatile mFlagFgsStartRestrictionEnabled:Z

.field public volatile mFlagForegroundServiceStartsLoggingEnabled:Z

.field public volatile mFlagSystemExemptPowerRestrictionsEnabled:Z

.field public volatile mForceEnablePssProfiling:Z

.field public volatile mKillBgRestrictedAndCachedIdle:Z

.field public volatile mKillBgRestrictedAndCachedIdleSettleTimeMs:J

.field public volatile mMaxEmptyTimeMillis:J

.field public volatile mMaxServiceConnectionsPerProcess:I

.field public volatile mMediaProcessingFgsTimeoutDuration:J

.field public volatile mNetworkAccessTimeoutMs:J

.field public volatile mNoKillCachedProcessesPostBootCompletedDurationMillis:J

.field public volatile mNoKillCachedProcessesUntilBootCompleted:Z

.field public final mOnDeviceConfigChangedForComponentAliasListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public mOverrideMaxCachedProcesses:I

.field public final mParser:Landroid/util/KeyValueListParser;

.field public volatile mPrioritizeAlarmBroadcasts:Z

.field public volatile mProcStateDebugSetProcStateDelay:I

.field public volatile mProcStateDebugSetUidStateDelay:I

.field public volatile mProcStateDebugUids:Landroid/util/SparseBooleanArray;

.field public volatile mProcessKillTimeoutMs:J

.field public volatile mPushMessagingOverQuotaBehavior:I

.field public mResolver:Landroid/content/ContentResolver;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public volatile mServiceBindAlmostPerceptibleTimeoutMs:J

.field public volatile mServiceStartForegroundAnrDelayMs:I

.field public volatile mServiceStartForegroundTimeoutMs:I

.field public volatile mShortFgsAnrExtraWaitDuration:J

.field public volatile mShortFgsProcStateExtraWaitDuration:J

.field public volatile mShortFgsTimeoutDuration:J

.field public final mSystemServerAutomaticHeapDumpEnabled:Z

.field public final mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

.field public mSystemServerAutomaticHeapDumpPssThresholdBytes:J

.field public volatile mVisibleToInvisibleUijScheduleGraceDurationMs:J


# direct methods
.method public static synthetic $r8$lambda$mD6niBFtKBeU-NJaPeAdcFXEbJs(Lcom/android/server/am/ActivityManagerConstants;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerConstants;->lambda$updateImperceptibleKillExemptions$0(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBackgroundActivityStarts(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateBackgroundActivityStarts()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBackgroundFgsStartsRestriction(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateBackgroundFgsStartsRestriction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBinderHeavyHitterWatcher(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateBinderHeavyHitterWatcher()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBootTimeTempAllowListDuration(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateBootTimeTempAllowListDuration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateComponentAliases(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateComponentAliases()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDataSyncFgsTimeoutDuration(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateDataSyncFgsTimeoutDuration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDeferBootCompletedBroadcast(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateDeferBootCompletedBroadcast()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDisableAppProfilerPssProfiling(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateDisableAppProfilerPssProfiling()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateEnableExtraServiceRestartDelayOnMemPressure(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableExtraServiceRestartDelayOnMemPressure()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateEnableWaitForFinishAttachApplication(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableWaitForFinishAttachApplication()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateExtraServiceRestartDelayOnMemPressure(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateExtraServiceRestartDelayOnMemPressure()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFGSPermissionEnforcementFlagsIfNecessary(Lcom/android/server/am/ActivityManagerConstants;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerConstants;->updateFGSPermissionEnforcementFlagsIfNecessary(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgToBgFgsGraceDuration(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgToBgFgsGraceDuration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsAllowOptOut(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsAllowOptOut()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsAtomSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsAtomSamplePercent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsCrashExtraWaitDuration(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsCrashExtraWaitDuration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsNotificationDeferralApiGated(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsNotificationDeferralApiGated()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsNotificationDeferralEnable(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsNotificationDeferralEnable()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsNotificationDeferralExclusionTime(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsNotificationDeferralExclusionTime()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsNotificationDeferralExclusionTimeForShort(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsNotificationDeferralExclusionTimeForShort()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsNotificationDeferralInterval(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsNotificationDeferralInterval()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsNotificationDeferralIntervalForShort(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsNotificationDeferralIntervalForShort()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsStartAllowedLogSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartAllowedLogSamplePercent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsStartDeniedLogSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartDeniedLogSamplePercent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsStartForegroundTimeout(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartForegroundTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsStartsRestriction(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartsRestriction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsStartsRestrictionCheckCallerTargetSdk(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartsRestrictionCheckCallerTargetSdk()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsStartsRestrictionNotification(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartsRestrictionNotification()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFollowUpOomAdjUpdateWaitDuration(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFollowUpOomAdjUpdateWaitDuration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateForceRestrictedBackgroundCheck(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateForceRestrictedBackgroundCheck()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateImperceptibleKillExemptions(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateImperceptibleKillExemptions()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateKillBgRestrictedCachedIdle(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateKillBgRestrictedCachedIdle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateKillBgRestrictedCachedIdleSettleTime(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateKillBgRestrictedCachedIdleSettleTime()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLowSwapThresholdPercent(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateLowSwapThresholdPercent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMaxCachedProcesses(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMaxEmptyTimeMillis(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxEmptyTimeMillis()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMaxPhantomProcesses(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxPhantomProcesses()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMaxPreviousTime(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxPreviousTime()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMaxServiceConnectionsPerProcess(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxServiceConnectionsPerProcess()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMediaProcessingFgsTimeoutDuration(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMediaProcessingFgsTimeoutDuration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMinAssocLogDuration(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMinAssocLogDuration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNetworkAccessTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateNetworkAccessTimeoutMs()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNoKillCachedProcessesPostBootCompletedDurationMillis(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateNoKillCachedProcessesPostBootCompletedDurationMillis()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNoKillCachedProcessesUntilBootCompleted(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateNoKillCachedProcessesUntilBootCompleted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateOomAdjUpdatePolicy(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateOomAdjUpdatePolicy()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePrioritizeAlarmBroadcasts(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updatePrioritizeAlarmBroadcasts()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateProactiveKillsEnabled(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateProactiveKillsEnabled()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateProcStateDebugUids(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateProcStateDebugUids()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateProcessKillTimeout(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateProcessKillTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePssToRssThresholdModifier(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updatePssToRssThresholdModifier()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePushMessagingOverQuotaBehavior(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updatePushMessagingOverQuotaBehavior()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateServiceBindAlmostPerceptibleTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateServiceBindAlmostPerceptibleTimeoutMs()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateServiceStartForegroundAnrDealyMs(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateServiceStartForegroundAnrDealyMs()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateServiceStartForegroundTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateServiceStartForegroundTimeoutMs()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateShortFgsAnrExtraWaitDuration(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateShortFgsAnrExtraWaitDuration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateShortFgsProcStateExtraWaitDuration(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateShortFgsProcStateExtraWaitDuration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateShortFgsTimeoutDuration(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateShortFgsTimeoutDuration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSystemExemptPowerRestrictionsEnabled(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateSystemExemptPowerRestrictionsEnabled()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTopToFgsGraceDuration(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateTopToFgsGraceDuration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateUseTieredCachedAdj(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateUseTieredCachedAdj()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_FREEZER_CUTOFF_ADJ()I
    .registers 1

    .line 0
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_FREEZER_CUTOFF_ADJ:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x4

    .line 290
    new-array v0, v0, [J

    fill-array-data v0, :array_5e

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

    .line 317
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x4e20

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_SERVICE_TIMEOUT:J

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    .line 322
    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_SERVICE_BACKGROUND_TIMEOUT:J

    const-wide/32 v0, 0xea60

    .line 636
    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    const v0, 0x1d4c0

    .line 643
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    const-wide/32 v0, 0x2932e00

    .line 652
    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    const/16 v0, 0xc

    .line 660
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    .line 1011
    const-string v0, "activity_manager_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    .line 1014
    const-string v0, "activity_starts_logging_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    .line 1017
    const-string v0, "foreground_service_starts_logging_enabled"

    .line 1018
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    .line 1021
    const-string v0, "enable_automatic_system_server_heap_dumps"

    .line 1022
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    .line 1024
    const-string v0, "force_enable_pss_profiling"

    .line 1025
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_ENABLE_PSS_PROFILING_URI:Landroid/net/Uri;

    const-wide/32 v0, 0x493e0

    .line 1038
    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    const/4 v0, 0x0

    .line 1066
    sput-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    const v0, 0x3dcccccd    # 0.1f

    .line 1067
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    return-void

    nop

    :array_5e
    .array-data 8
        0x0
        0x2710
        0x4e20
        0x7530
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1438
    invoke-direct {v0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 472
    new-instance v1, Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    .line 473
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableProcStateStacktrace:Z

    .line 474
    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    .line 475
    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    const/16 v1, 0x400

    .line 478
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    const-wide/32 v3, 0xea60

    .line 482
    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    const-wide/16 v5, 0x7d0

    .line 487
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    const-wide/16 v5, 0xbb8

    .line 492
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    const-wide/16 v5, 0x3e8

    .line 498
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    const-wide/16 v7, 0x1388

    .line 503
    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    const v1, 0x40000718    # 2.000433f

    .line 506
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->FGS_BOOT_COMPLETED_ALLOWLIST:I

    const-wide/16 v9, 0x4e20

    .line 511
    iput-wide v9, v0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    .line 514
    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    .line 517
    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    const/4 v1, 0x1

    .line 524
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    const-wide/32 v11, 0x124f80

    .line 528
    iput-wide v11, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    const-wide/32 v11, 0x493e0

    .line 532
    iput-wide v11, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    .line 536
    iput-wide v11, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    const/16 v13, 0x19

    .line 540
    iput v13, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    .line 545
    iput v13, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    const/16 v13, 0xa

    .line 549
    iput v13, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    const/4 v13, 0x2

    .line 553
    iput v13, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    const-wide/32 v14, 0x1b7740

    .line 558
    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 563
    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    const-wide/32 v7, 0x6ddd00

    .line 568
    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    const-wide/32 v7, 0x927c0

    .line 573
    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    .line 577
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 581
    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    move/from16 p3, v13

    const/4 v13, 0x4

    .line 585
    iput v13, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    const-wide/16 v5, 0x2710

    .line 590
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 593
    sget-wide v7, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_SERVICE_TIMEOUT:J

    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_TIMEOUT:J

    .line 596
    sget-wide v7, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_SERVICE_BACKGROUND_TIMEOUT:J

    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BACKGROUND_TIMEOUT:J

    .line 601
    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    const-wide/16 v7, 0x3a98

    .line 605
    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    .line 609
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    .line 612
    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    const-wide/16 v13, 0x10

    .line 615
    iput-wide v13, v0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    .line 618
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    .line 622
    iput-wide v11, v0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    .line 626
    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    .line 632
    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    .line 679
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    .line 685
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    .line 689
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    .line 693
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mForceEnablePssProfiling:Z

    .line 700
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    .line 704
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    .line 709
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    .line 713
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    .line 718
    iget-wide v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    iput-wide v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralIntervalForShort:J

    const-wide/32 v11, 0x1d4c0

    .line 722
    iput-wide v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    .line 727
    iget-wide v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    iput-wide v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTimeForShort:J

    .line 735
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagSystemExemptPowerRestrictionsEnabled:Z

    .line 741
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 749
    iput-wide v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    const-wide/16 v9, 0x1388

    .line 755
    iput-wide v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    .line 763
    iput-wide v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mVisibleToInvisibleUijScheduleGraceDurationMs:J

    .line 770
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    const/high16 v9, 0x3f800000    # 1.0f

    .line 777
    iput v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    const/high16 v10, 0x3e800000    # 0.25f

    .line 784
    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    .line 791
    iput v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    .line 797
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    .line 803
    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 809
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    .line 815
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    .line 820
    sget-object v9, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

    iput-object v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    .line 827
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    .line 835
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    const/4 v9, 0x6

    .line 842
    iput v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    .line 850
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mPrioritizeAlarmBroadcasts:Z

    const/16 v9, 0x7530

    .line 856
    iput v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    const/16 v9, 0x2710

    .line 862
    iput v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    .line 869
    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    .line 876
    const-string v7, ""

    iput-object v7, v0, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    const/16 v7, 0xbb8

    .line 882
    iput v7, v0, Lcom/android/server/am/ActivityManagerConstants;->mMaxServiceConnectionsPerProcess:I

    .line 886
    new-instance v7, Landroid/util/KeyValueListParser;

    const/16 v8, 0x2c

    invoke-direct {v7, v8}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v7, v0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const/4 v7, -0x1

    .line 888
    iput v7, v0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 925
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    const-wide/32 v7, 0x927c0

    .line 934
    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    .line 939
    iget v7, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v7}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iput v7, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 943
    iget v7, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 944
    invoke-static {v7}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x3

    iput v7, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    const-wide v7, 0xd693a400L

    .line 952
    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    .line 957
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iput-object v7, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    .line 962
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iput-object v7, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    const/16 v7, 0x7d0

    .line 968
    iput v7, v0, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    .line 973
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iput-object v7, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    const/16 v8, 0x20

    .line 978
    iput v8, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    const-wide/16 v8, 0xc8

    .line 986
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    .line 999
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    const-wide/32 v8, 0x2bf20

    .line 1077
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    const-wide/16 v9, 0x1388

    .line 1090
    iput-wide v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsProcStateExtraWaitDuration:J

    const-wide/32 v8, 0x1499700

    .line 1101
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mMediaProcessingFgsTimeoutDuration:J

    .line 1112
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    .line 1125
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableWaitForFinishAttachApplication:Z

    .line 1141
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsAnrExtraWaitDuration:J

    .line 1156
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsCrashExtraWaitDuration:J

    .line 1159
    sget-boolean v5, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_USE_TIERED_CACHED_ADJ:Z

    iput-boolean v5, v0, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    .line 1162
    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_DECAY_TIME:J

    .line 1168
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_BATCHING_OOM_ADJ:Z

    const-wide/16 v3, 0x3e8

    .line 1171
    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    .line 1180
    sget v3, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_FREEZER_CUTOFF_ADJ:I

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    .line 1202
    new-instance v3, Lcom/android/server/am/ActivityManagerConstants$1;

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityManagerConstants$1;-><init>(Lcom/android/server/am/ActivityManagerConstants;)V

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 1417
    new-instance v3, Lcom/android/server/am/ActivityManagerConstants$2;

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityManagerConstants$2;-><init>(Lcom/android/server/am/ActivityManagerConstants;)V

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedForComponentAliasListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    move-object/from16 v3, p2

    .line 1439
    iput-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1440
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_18b

    .line 1441
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110130

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_18b

    move v2, v1

    :cond_18b
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    .line 1443
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

    .line 1446
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v4, 0x19000

    .line 1444
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPssThresholdBytes:J

    .line 1449
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1448
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    .line 1452
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 1451
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 1454
    invoke-interface {v1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    .line 1455
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1456
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1457
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherEnabled:Z

    .line 1459
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e0069

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherBatchSize:I

    .line 1461
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    iput v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherThreshold:F

    .line 1463
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110137

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

    .line 1465
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x10e0068

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

    .line 1467
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10500f3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v8

    iput v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerThreshold:F

    .line 1469
    sput-boolean v1, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    .line 1470
    sput v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    .line 1471
    sput v4, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    .line 1472
    sput-boolean v5, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    .line 1473
    sput v6, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    .line 1474
    sput v8, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

    .line 1475
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->scheduleUpdateBinderHeavyHitterWatcherConfig()V

    .line 1477
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1476
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda22;-><init>()V

    .line 1479
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1476
    invoke-virtual {v7, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1480
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    .line 1482
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 1483
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 1485
    iget v1, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    iget v2, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 1486
    invoke-static {v1, v2}, Ljava/lang/Integer;->min(II)I

    move-result v1

    .line 1485
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v1

    .line 1487
    div-int/lit8 v2, v1, 0x2

    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 1488
    iget v2, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    iget v3, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v2, v3}, Ljava/lang/Integer;->min(II)I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x3

    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 1490
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerConstants;->loadNativeBootDeviceConfigConstants()V

    .line 1491
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultDisableAppProfilerPssProfiling:Z

    .line 1493
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    .line 1495
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultPssToRssThresholdModifier:F

    .line 1497
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->PSS_TO_RSS_THRESHOLD_MODIFIER:F

    .line 1499
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultTieredCachedAdjUiTierSize:I

    const/16 v2, 0x32

    .line 1501
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_UI_TIER_SIZE:I

    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .registers 1

    .line 1559
    div-int/lit8 p0, p0, 0x2

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2353
    const-string v0, "ACTIVITY MANAGER SETTINGS (dumpsys activity settings) activity_manager_constants:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2356
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "max_cached_processes"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2357
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2358
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "background_settle_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2359
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2360
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fgservice_min_shown_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2361
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2362
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fgservice_min_report_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2363
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2364
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fgservice_screen_on_before_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2365
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2366
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fgservice_screen_on_after_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2367
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2368
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fgs_boot_completed_allowlist"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2369
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGS_BOOT_COMPLETED_ALLOWLIST:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2370
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "content_provider_retain_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2371
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2372
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "gc_timeout"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2373
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2374
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "gc_min_interval"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2375
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2376
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "force_bg_check_on_restricted"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2377
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2378
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "full_pss_min_interval"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2379
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2380
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "full_pss_lowered_interval"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2381
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2382
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "power_check_interval"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2383
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2384
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "power_check_max_cpu_1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2385
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2386
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "power_check_max_cpu_2"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2387
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2388
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "power_check_max_cpu_3"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2389
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2390
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "power_check_max_cpu_4"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2391
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2392
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_usage_interaction_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2393
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2394
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_usage_interaction_time_post_s"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2395
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2396
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "usage_stats_interaction_interval"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2397
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2398
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "usage_stats_interaction_interval_post_s"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2399
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2400
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_restart_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2401
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2402
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_reset_run_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2403
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2404
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_restart_duration_factor"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2405
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2406
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_min_restart_time_between"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2407
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2408
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_max_inactivity"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2409
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2410
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_bg_start_timeout"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2411
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2412
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_bg_activity_start_timeout"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2413
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2414
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_crash_restart_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2415
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2416
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_crash_max_retry"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2417
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2418
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "process_start_async"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2419
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2420
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "memory_info_throttle_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2421
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2422
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "top_to_fgs_grace_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2423
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2424
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "top_to_almost_perceptible_grace_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2425
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2426
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "min_crash_interval"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2427
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2428
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "process_crash_count_reset_interval"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2429
    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2430
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "process_crash_count_limit"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2431
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2432
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "imperceptible_kill_exempt_proc_states"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2433
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2434
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "imperceptible_kill_exempt_packages"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2435
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2436
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "min_assoc_log_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2437
    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2438
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "binder_heavy_hitter_watcher_enabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2439
    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2440
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "binder_heavy_hitter_watcher_batchsize"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2441
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2442
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "binder_heavy_hitter_watcher_threshold"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2443
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 2444
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "binder_heavy_hitter_auto_sampler_enabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2445
    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2446
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "binder_heavy_hitter_auto_sampler_batchsize"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2447
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2448
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "binder_heavy_hitter_auto_sampler_threshold"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2449
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 2450
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "max_phantom_processes"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2451
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2452
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "boot_time_temp_allowlist_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2453
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2454
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fg_to_bg_fgs_grace_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2455
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2456
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fgs_start_foreground_timeout"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2457
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2458
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "default_background_activity_starts_enabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2459
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2460
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "default_background_fgs_starts_restriction_enabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2461
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2462
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "default_fgs_starts_restriction_enabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2463
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2464
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "default_fgs_starts_restriction_notification_enabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2465
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2466
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2467
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "default_fgs_starts_restriction_check_caller_target_sdk"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2468
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2469
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fgs_atom_sample_rate"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2470
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 2471
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fgs_start_allowed_log_sample_rate"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2472
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 2473
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fgs_start_denied_log_sample_rate"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2474
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 2475
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "push_messaging_over_quota_behavior"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2476
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2477
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fgs_allow_opt_out"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2478
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2479
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enable_experimental_component_alias"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2480
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2481
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "component_alias_overrides"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2482
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2483
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "defer_boot_completed_broadcast"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2484
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2485
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "prioritize_alarm_broadcasts"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2486
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPrioritizeAlarmBroadcasts:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2487
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "no_kill_cached_processes_until_boot_completed"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2488
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2489
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "no_kill_cached_processes_post_boot_completed_duration_millis"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2490
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2491
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "max_empty_time_millis"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2492
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2493
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_start_foreground_timeout_ms"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2495
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_start_foreground_anr_delay_ms"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2496
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2497
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_bind_almost_perceptible_timeout_ms"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2498
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2499
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "network_access_timeout_ms"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2500
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2501
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "max_service_connections_per_process"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2502
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mMaxServiceConnectionsPerProcess:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2503
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "proactive_kills_enabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2504
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2505
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "low_swap_threshold_percent"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2506
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 2508
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "deferred_fgs_notifications_enabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2509
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2510
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "deferred_fgs_notifications_api_gated"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2511
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2513
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "deferred_fgs_notification_interval"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2514
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2515
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "deferred_fgs_notification_interval_for_short"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2516
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralIntervalForShort:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2518
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "deferred_fgs_notification_exclusion_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2519
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2520
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "deferred_fgs_notification_exclusion_time_for_short"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2521
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTimeForShort:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2523
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "system_exempt_power_restrictions_enabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2524
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagSystemExemptPowerRestrictionsEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2526
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "short_fgs_timeout_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2527
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2528
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "short_fgs_proc_state_extra_wait_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2529
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsProcStateExtraWaitDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2530
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "short_fgs_anr_extra_wait_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2531
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsAnrExtraWaitDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2533
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "media_processing_fgs_timeout_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2534
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mMediaProcessingFgsTimeoutDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2535
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "data_sync_fgs_timeout_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2536
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2537
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fgs_crash_extra_wait_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2538
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsCrashExtraWaitDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2540
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "use_tiered_cached_adj"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2541
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2542
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "tiered_cached_adj_decay_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2543
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_DECAY_TIME:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2544
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "tiered_cached_adj_ui_tier_size"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2545
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_UI_TIER_SIZE:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2547
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "freezer_cutoff_adj"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2548
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2550
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "disable_app_profiler_pss_profiling"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2551
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2553
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "pss_to_rss_threshold_modifier"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2554
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->PSS_TO_RSS_THRESHOLD_MODIFIER:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 2556
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "max_previous_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2557
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2559
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enable_batching_oom_adj"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2560
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_BATCHING_OOM_ADJ:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2562
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2563
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    if-ltz v0, :cond_7d8

    .line 2564
    const-string v0, "  mOverrideMaxCachedProcesses="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2566
    :cond_7d8
    const-string v0, "  mCustomizedMaxCachedProcesses="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2567
    const-string v0, "  CUR_MAX_CACHED_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2568
    const-string v0, "  CUR_MAX_EMPTY_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2569
    const-string v0, "  CUR_TRIM_EMPTY_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2570
    const-string v0, "  CUR_TRIM_CACHED_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2571
    const-string v0, "  OOMADJ_UPDATE_QUICK="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2572
    const-string v0, "  ENABLE_WAIT_FOR_FINISH_ATTACH_APPLICATION="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2573
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableWaitForFinishAttachApplication:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2575
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "follow_up_oomadj_update_wait_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2576
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2578
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 2579
    :try_start_835
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "proc_state_debug_uids"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2580
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2581
    const-string v1, "    uid-state-delay="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2582
    const-string v1, "    proc-state-delay="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 2583
    monitor-exit v0

    return-void

    :catchall_860
    move-exception p0

    monitor-exit v0
    :try_end_862
    .catchall {:try_start_835 .. :try_end_862} :catchall_860

    throw p0
.end method

.method public getOverrideMaxCachedProcesses()I
    .registers 1

    .line 1555
    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    return p0
.end method

.method public final synthetic lambda$updateImperceptibleKillExemptions$0(Ljava/lang/String;)V
    .registers 2

    .line 2037
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method

.method public loadDeviceConfigConstants()V
    .registers 5

    .line 1537
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 1538
    const-string v3, "activity_manager"

    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    .line 1537
    invoke-interface {v0, v2}, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 1539
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedForComponentAliasListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string v0, "activity_manager_ca"

    new-array v1, v1, [Ljava/lang/String;

    .line 1540
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    .line 1539
    invoke-interface {p0, v0}, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public final loadNativeBootDeviceConfigConstants()V
    .registers 3

    .line 1545
    const-string v0, "enable_batching_oom_adj"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_BATCHING_OOM_ADJ:Z

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    if-nez p2, :cond_3

    goto :goto_3e

    .line 1565
    :cond_3
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1566
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateConstants()V

    return-void

    .line 1567
    :cond_f
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1568
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateActivityStartsLoggingEnabled()V

    return-void

    .line 1569
    :cond_1b
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 1570
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateForegroundServiceStartsLoggingEnabled()V

    return-void

    .line 1571
    :cond_27
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 1572
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableAutomaticSystemServerHeapDumps()V

    return-void

    .line 1573
    :cond_33
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->FORCE_ENABLE_PSS_PROFILING_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 1574
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateForceEnablePssProfiling()V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final parseLongArray(Ljava/lang/String;[J)[J
    .registers 6

    .line 1984
    const-string p0, "activity_manager"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1986
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 1987
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1988
    array-length p1, p0

    array-length v0, p2

    if-ne p1, v0, :cond_2a

    .line 1989
    array-length p1, p0

    new-array p1, p1, [J

    const/4 v0, 0x0

    .line 1991
    :goto_1b
    :try_start_1b
    array-length v1, p0

    if-ge v0, v1, :cond_29

    .line 1992
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    aput-wide v1, p1, v0
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_26} :catch_2a

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_29
    return-object p1

    :catch_2a
    :cond_2a
    return-object p2
.end method

.method public setOverrideMaxCachedProcesses(I)V
    .registers 2

    .line 1550
    iput p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 1551
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    return-void
.end method

.method public shouldDebugUidForProcState(I)Z
    .registers 6

    .line 2330
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    .line 2331
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const/16 v2, 0x8

    if-gt v0, v2, :cond_20

    move v2, v1

    :goto_f
    if-ge v2, v0, :cond_1f

    .line 2338
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ne v3, p1, :cond_1c

    .line 2339
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    return p0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1f
    return v1

    .line 2344
    :cond_20
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 4

    .line 1506
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 1507
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1508
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1509
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1511
    iget-boolean p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    if-eqz p1, :cond_21

    .line 1512
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1515
    :cond_21
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_ENABLE_PSS_PROFILING_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1516
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateConstants()V

    .line 1517
    iget-boolean p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    if-eqz p1, :cond_32

    .line 1518
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableAutomaticSystemServerHeapDumps()V

    .line 1521
    :cond_32
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 1520
    const-string v1, "activity_manager"

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1525
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedForComponentAliasListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 1523
    const-string v1, "activity_manager_ca"

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1527
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->loadDeviceConfigConstants()V

    .line 1529
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateActivityStartsLoggingEnabled()V

    .line 1530
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateForegroundServiceStartsLoggingEnabled()V

    .line 1531
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateForceEnablePssProfiling()V

    .line 1533
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->initDropboxRateLimiter()V

    return-void
.end method

.method public final updateActivityStartsLoggingEnabled()V
    .registers 4

    .line 1685
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "activity_starts_logging_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagActivityStartsLoggingEnabled:Z

    return-void
.end method

.method public final updateBackgroundActivityStarts()V
    .registers 4

    .line 1695
    const-string v0, "default_background_activity_starts_enabled"

    const/4 v1, 0x0

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    return-void
.end method

.method public final updateBackgroundFgsStartsRestriction()V
    .registers 4

    .line 1707
    const-string v0, "default_background_fgs_starts_restriction_enabled"

    const/4 v1, 0x1

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    return-void
.end method

.method public final updateBinderHeavyHitterWatcher()V
    .registers 4

    .line 2191
    const-string v0, "binder_heavy_hitter_watcher_enabled"

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherEnabled:Z

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    .line 2194
    const-string v0, "binder_heavy_hitter_watcher_batchsize"

    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherBatchSize:I

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    .line 2197
    const-string v0, "binder_heavy_hitter_watcher_threshold"

    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherThreshold:F

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    .line 2200
    const-string v0, "binder_heavy_hitter_auto_sampler_enabled"

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    .line 2204
    const-string v0, "binder_heavy_hitter_auto_sampler_batchsize"

    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    .line 2208
    const-string v0, "binder_heavy_hitter_auto_sampler_threshold"

    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerThreshold:F

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    .line 2212
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->scheduleUpdateBinderHeavyHitterWatcherConfig()V

    return-void
.end method

.method public final updateBootTimeTempAllowListDuration()V
    .registers 5

    .line 1812
    const-string v0, "boot_time_temp_allowlist_duration"

    const-wide/16 v1, 0x4e20

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    return-void
.end method

.method public final updateComponentAliases()V
    .registers 4

    .line 2003
    const-string v0, "enable_experimental_component_alias"

    const/4 v1, 0x0

    const-string v2, "activity_manager_ca"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    .line 2007
    const-string v0, "component_alias_overrides"

    const-string v1, ""

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    .line 2011
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mComponentAliasResolver:Lcom/android/server/am/ComponentAliasResolver;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ComponentAliasResolver;->update(ZLjava/lang/String;)V

    return-void
.end method

.method public final updateConstants()V
    .registers 16

    .line 1579
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "activity_manager_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1581
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1583
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v2, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_13} :catch_17
    .catchall {:try_start_e .. :try_end_13} :catchall_14

    goto :goto_1f

    :catchall_14
    move-exception p0

    goto/16 :goto_1ff

    :catch_17
    move-exception v0

    .line 1587
    :try_start_18
    const-string v2, "ActivityManagerConstants"

    const-string v3, "Bad activity manager config settings"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1589
    :goto_1f
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 1591
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "background_settle_time"

    const-wide/32 v5, 0xea60

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 1593
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "fgservice_min_shown_time"

    const-wide/16 v7, 0x7d0

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    .line 1595
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "fgservice_min_report_time"

    const-wide/16 v7, 0xbb8

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    .line 1597
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "fgservice_screen_on_before_time"

    const-wide/16 v7, 0x3e8

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    .line 1599
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "fgservice_screen_on_after_time"

    const-wide/16 v9, 0x1388

    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    .line 1601
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "fgs_boot_completed_allowlist"

    const v11, 0x40000718    # 2.000433f

    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGS_BOOT_COMPLETED_ALLOWLIST:I

    .line 1603
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "content_provider_retain_time"

    const-wide/16 v11, 0x4e20

    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    .line 1605
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "gc_timeout"

    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    .line 1607
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "gc_min_interval"

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    .line 1609
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "full_pss_min_interval"

    const-wide/32 v9, 0x124f80

    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    .line 1611
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "full_pss_lowered_interval"

    const-wide/32 v9, 0x493e0

    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    .line 1613
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "power_check_interval"

    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 1615
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "power_check_max_cpu_1"

    const/16 v11, 0x19

    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    .line 1617
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "power_check_max_cpu_2"

    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    .line 1619
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "power_check_max_cpu_3"

    const/16 v11, 0xa

    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    .line 1621
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "power_check_max_cpu_4"

    const/4 v11, 0x2

    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    .line 1623
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_usage_interaction_time"

    const-wide/32 v11, 0x1b7740

    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 1626
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_usage_interaction_time_post_s"

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    .line 1629
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "usage_stats_interaction_interval"

    const-wide/32 v13, 0x6ddd00

    invoke-virtual {v0, v4, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    .line 1632
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "usage_stats_interaction_interval_post_s"

    const-wide/32 v13, 0x927c0

    invoke-virtual {v0, v4, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    .line 1635
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_restart_duration"

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 1637
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_reset_run_duration"

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 1639
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_restart_duration_factor"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    .line 1641
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_min_restart_time_between"

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 1643
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_max_inactivity"

    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    .line 1645
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_bg_start_timeout"

    const-wide/16 v7, 0x3a98

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    .line 1647
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_bg_activity_start_timeout"

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    .line 1650
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_crash_restart_duration"

    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    .line 1653
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_crash_max_retry"

    const/16 v5, 0x10

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    .line 1655
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "process_start_async"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    .line 1657
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "memory_info_throttle_time"

    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    .line 1659
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "top_to_almost_perceptible_grace_duration"

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    .line 1662
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "min_crash_interval"

    const v5, 0x1d4c0

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 1664
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "pendingintent_warning_threshold"

    const/16 v5, 0x7d0

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    .line 1666
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "process_crash_count_reset_interval"

    const v5, 0x2932e00

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    .line 1669
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "process_crash_count_limit"

    const/16 v5, 0xc

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    .line 1672
    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1fa

    .line 1673
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x1b

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1675
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1677
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-wide v3, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1681
    :cond_1fa
    monitor-exit v1
    :try_end_1fb
    .catchall {:try_start_18 .. :try_end_1fb} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1ff
    :try_start_1ff
    monitor-exit v1
    :try_end_200
    .catchall {:try_start_1ff .. :try_end_200} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateDataSyncFgsTimeoutDuration()V
    .registers 5

    .line 2261
    const-string v0, "data_sync_fgs_timeout_duration"

    const-wide/32 v1, 0x1499700

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    return-void
.end method

.method public final updateDeferBootCompletedBroadcast()V
    .registers 4

    .line 1927
    const-string v0, "defer_boot_completed_broadcast"

    const/4 v1, 0x6

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    return-void
.end method

.method public final updateDisableAppProfilerPssProfiling()V
    .registers 4

    .line 2311
    const-string v0, "disable_app_profiler_pss_profiling"

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultDisableAppProfilerPssProfiling:Z

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    return-void
.end method

.method public final updateEnableAutomaticSystemServerHeapDumps()V
    .registers 9

    .line 2045
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    if-nez v0, :cond_d

    .line 2046
    const-string p0, "ActivityManagerConstants"

    const-string/jumbo v0, "updateEnableAutomaticSystemServerHeapDumps called when leak detection disabled"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2053
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "enable_automatic_system_server_heap_dumps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1c

    .line 2057
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPssThresholdBytes:J

    :goto_1a
    move-wide v5, v0

    goto :goto_1f

    :cond_1c
    const-wide/16 v0, 0x0

    goto :goto_1a

    .line 2058
    :goto_1f
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public final updateEnableExtraServiceRestartDelayOnMemPressure()V
    .registers 6

    .line 1903
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1904
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    .line 1905
    const-string v2, "activity_manager"

    const-string v3, "enable_extra_delay_svc_restart_mem_pressure"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    .line 1909
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 1911
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1909
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActiveServices;->rescheduleServiceRestartOnMemoryPressureIfNeededLocked(ZZJ)V

    .line 1912
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_23
    move-exception p0

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateEnableWaitForFinishAttachApplication()V
    .registers 4

    .line 2275
    const-string v0, "enable_wait_for_finish_attach_application"

    const/4 v1, 0x1

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableWaitForFinishAttachApplication:Z

    return-void
.end method

.method public final updateExtraServiceRestartDelayOnMemPressure()V
    .registers 13

    .line 1890
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1891
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->getLastMemoryLevelLocked()I

    move-result v0

    .line 1892
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    .line 1893
    const-string v3, "extra_delay_svc_restart_mem_pressure"

    sget-object v4, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ActivityManagerConstants;->parseLongArray(Ljava/lang/String;[J)[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    .line 1896
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    aget-wide v5, v3, v0

    aget-wide v7, v2, v0

    const-string v9, "config"

    .line 1898
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1896
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActiveServices;->performRescheduleServiceRestartOnMemoryPressureLocked(JJLjava/lang/String;J)V

    .line 1899
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_30
    move-exception v0

    move-object p0, v0

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateFGSPermissionEnforcementFlagsIfNecessary(Ljava/lang/String;)V
    .registers 2

    .line 2306
    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->getDefaultPolicy()Landroid/app/ForegroundServiceTypePolicy;

    move-result-object p0

    .line 2307
    invoke-virtual {p0, p1}, Landroid/app/ForegroundServiceTypePolicy;->updatePermissionEnforcementFlagIfNecessary(Ljava/lang/String;)V

    return-void
.end method

.method public final updateFgToBgFgsGraceDuration()V
    .registers 5

    .line 1819
    const-string v0, "fg_to_bg_fgs_grace_duration"

    const-wide/16 v1, 0x1388

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    return-void
.end method

.method public final updateFgsAllowOptOut()V
    .registers 4

    .line 1883
    const-string v0, "fgs_allow_opt_out"

    const/4 v1, 0x0

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    return-void
.end method

.method public final updateFgsAtomSamplePercent()V
    .registers 4

    .line 1840
    const-string v0, "fgs_atom_sample_rate"

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    return-void
.end method

.method public final updateFgsCrashExtraWaitDuration()V
    .registers 5

    .line 2268
    const-string v0, "fgs_crash_extra_wait_duration"

    const-wide/16 v1, 0x2710

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsCrashExtraWaitDuration:J

    return-void
.end method

.method public final updateFgsNotificationDeferralApiGated()V
    .registers 4

    .line 1742
    const-string v0, "deferred_fgs_notifications_api_gated"

    const/4 v1, 0x0

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    return-void
.end method

.method public final updateFgsNotificationDeferralEnable()V
    .registers 4

    .line 1735
    const-string v0, "deferred_fgs_notifications_enabled"

    const/4 v1, 0x1

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    return-void
.end method

.method public final updateFgsNotificationDeferralExclusionTime()V
    .registers 5

    .line 1763
    const-string v0, "deferred_fgs_notification_exclusion_time"

    const-wide/32 v1, 0x1d4c0

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    return-void
.end method

.method public final updateFgsNotificationDeferralExclusionTimeForShort()V
    .registers 5

    .line 1770
    const-string v0, "deferred_fgs_notification_exclusion_time_for_short"

    const-wide/32 v1, 0x1d4c0

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTimeForShort:J

    return-void
.end method

.method public final updateFgsNotificationDeferralInterval()V
    .registers 5

    .line 1749
    const-string v0, "deferred_fgs_notification_interval"

    const-wide/16 v1, 0x2710

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    return-void
.end method

.method public final updateFgsNotificationDeferralIntervalForShort()V
    .registers 5

    .line 1756
    const-string v0, "deferred_fgs_notification_interval_for_short"

    const-wide/16 v1, 0x2710

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralIntervalForShort:J

    return-void
.end method

.method public final updateFgsStartAllowedLogSamplePercent()V
    .registers 4

    .line 1847
    const-string v0, "fgs_start_allowed_log_sample_rate"

    const/high16 v1, 0x3e800000    # 0.25f

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    return-void
.end method

.method public final updateFgsStartDeniedLogSamplePercent()V
    .registers 4

    .line 1854
    const-string v0, "fgs_start_denied_log_sample_rate"

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    return-void
.end method

.method public final updateFgsStartForegroundTimeout()V
    .registers 5

    .line 1833
    const-string v0, "fgs_start_foreground_timeout"

    const-wide/16 v1, 0x2710

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    return-void
.end method

.method public final updateFgsStartsRestriction()V
    .registers 4

    .line 1714
    const-string v0, "default_fgs_starts_restriction_enabled"

    const/4 v1, 0x1

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    return-void
.end method

.method public final updateFgsStartsRestrictionCheckCallerTargetSdk()V
    .registers 4

    .line 1728
    const-string v0, "default_fgs_starts_restriction_check_caller_target_sdk"

    const/4 v1, 0x1

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    return-void
.end method

.method public final updateFgsStartsRestrictionNotification()V
    .registers 4

    .line 1721
    const-string v0, "default_fgs_starts_restriction_notification_enabled"

    const/4 v1, 0x0

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    return-void
.end method

.method public final updateFollowUpOomAdjUpdateWaitDuration()V
    .registers 5

    .line 2299
    const-string v0, "follow_up_oomadj_update_wait_duration"

    const-wide/16 v1, 0x3e8

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    return-void
.end method

.method public final updateForceEnablePssProfiling()V
    .registers 4

    .line 1690
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "force_enable_pss_profiling"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    move v2, v1

    :cond_d
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mForceEnablePssProfiling:Z

    return-void
.end method

.method public final updateForceRestrictedBackgroundCheck()V
    .registers 4

    .line 1805
    const-string v0, "force_bg_check_on_restricted"

    const/4 v1, 0x1

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    return-void
.end method

.method public final updateForegroundServiceStartsLoggingEnabled()V
    .registers 4

    .line 1702
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "foreground_service_starts_logging_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagForegroundServiceStartsLoggingEnabled:Z

    return-void
.end method

.method public final updateImperceptibleKillExemptions()V
    .registers 6

    .line 2022
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2023
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2024
    const-string v0, "activity_manager"

    const-string v1, "imperceptible_kill_exempt_packages"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2026
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ","

    if-nez v3, :cond_2a

    .line 2027
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2030
    :cond_2a
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 2031
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2032
    const-string v1, "imperceptible_kill_exempt_proc_states"

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2034
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 2035
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ActivityManagerConstants;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_56
    return-void
.end method

.method public final updateKillBgRestrictedCachedIdle()V
    .registers 4

    .line 1861
    const-string/jumbo v0, "kill_bg_restricted_cached_idle"

    const/4 v1, 0x0

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    return-void
.end method

.method public final updateKillBgRestrictedCachedIdleSettleTime()V
    .registers 7

    .line 1868
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 1869
    const-string/jumbo v2, "kill_bg_restricted_cached_idle_settle_time"

    const-wide/32 v3, 0xea60

    const-string v5, "activity_manager"

    invoke-static {v5, v2, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 1873
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_21

    .line 1876
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x3a

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_21
    return-void
.end method

.method public final updateLowSwapThresholdPercent()V
    .registers 3

    .line 2093
    const-string/jumbo p0, "low_swap_threshold_percent"

    const v0, 0x3dcccccd    # 0.1f

    const-string v1, "activity_manager"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p0

    sput p0, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    return-void
.end method

.method public final updateMaxCachedProcesses()V
    .registers 5

    .line 2063
    const-string v0, "activity_manager"

    const-string/jumbo v1, "max_cached_processes"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2066
    :try_start_9
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    if-gez v1, :cond_1c

    .line 2067
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2068
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    goto :goto_1c

    :catch_16
    move-exception v1

    goto :goto_1f

    :cond_18
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2069
    :cond_1c
    :goto_1c
    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_1e} :catch_16

    goto :goto_39

    .line 2072
    :goto_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse flag for max_cached_processes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManagerConstants"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2074
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 2076
    :goto_39
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 2078
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 2079
    invoke-static {v0, v1}, Ljava/lang/Integer;->min(II)I

    move-result v0

    .line 2078
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v0

    .line 2080
    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 2081
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->min(II)I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    return-void
.end method

.method public final updateMaxEmptyTimeMillis()V
    .registers 5

    .line 1948
    const-string/jumbo v0, "max_empty_time_millis"

    const-wide v1, 0xd693a400L

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    return-void
.end method

.method public final updateMaxPhantomProcesses()V
    .registers 5

    .line 2216
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    .line 2217
    const-string/jumbo v1, "max_phantom_processes"

    const/16 v2, 0x20

    const-string v3, "activity_manager"

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    if-le v0, v1, :cond_22

    .line 2221
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    return-void
.end method

.method public final updateMaxPreviousTime()V
    .registers 4

    .line 2108
    const-string/jumbo p0, "max_previous_time"

    const-wide/32 v0, 0xea60

    const-string v2, "activity_manager"

    invoke-static {v2, p0, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    return-void
.end method

.method public final updateMaxServiceConnectionsPerProcess()V
    .registers 4

    .line 2226
    const-string/jumbo v0, "max_service_connections_per_process"

    const/16 v1, 0xbb8

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mMaxServiceConnectionsPerProcess:I

    return-void
.end method

.method public final updateMediaProcessingFgsTimeoutDuration()V
    .registers 5

    .line 2254
    const-string/jumbo v0, "media_processing_fgs_timeout_duration"

    const-wide/32 v1, 0x1499700

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mMediaProcessingFgsTimeoutDuration:J

    return-void
.end method

.method public final updateMinAssocLogDuration()V
    .registers 4

    .line 2185
    const-string/jumbo p0, "min_assoc_log_duration"

    const-wide/32 v0, 0x493e0

    const-string v2, "activity_manager"

    invoke-static {v2, p0, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    return-void
.end method

.method public final updateNetworkAccessTimeoutMs()V
    .registers 5

    .line 1955
    const-string/jumbo v0, "network_access_timeout_ms"

    const-wide/16 v1, 0xc8

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    return-void
.end method

.method public final updateNoKillCachedProcessesPostBootCompletedDurationMillis()V
    .registers 5

    .line 1941
    const-string/jumbo v0, "no_kill_cached_processes_post_boot_completed_duration_millis"

    const-wide/32 v1, 0x927c0

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    return-void
.end method

.method public final updateNoKillCachedProcessesUntilBootCompleted()V
    .registers 4

    .line 1934
    const-string/jumbo v0, "no_kill_cached_processes_until_boot_completed"

    const/4 v1, 0x1

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    return-void
.end method

.method public final updateOomAdjUpdatePolicy()V
    .registers 4

    .line 1797
    const-string v0, "activity_manager"

    const-string/jumbo v1, "oomadj_update_policy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    return-void
.end method

.method public final updatePrioritizeAlarmBroadcasts()V
    .registers 4

    .line 1918
    const-string/jumbo v0, "prioritize_alarm_broadcasts"

    const-string v1, ""

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1922
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    goto :goto_17

    .line 1924
    :cond_13
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_17
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPrioritizeAlarmBroadcasts:Z

    return-void
.end method

.method public final updateProactiveKillsEnabled()V
    .registers 3

    .line 2086
    const-string/jumbo p0, "proactive_kills_enabled"

    const/4 v0, 0x0

    const-string v1, "activity_manager"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    return-void
.end method

.method public final updateProcStateDebugUids()V
    .registers 14

    .line 2115
    const-string v0, " in "

    const-string v1, "ActivityManagerConstants"

    const-string/jumbo v2, "proc_state_debug_uids"

    const-string v3, ""

    const-string v4, "activity_manager"

    invoke-static {v4, v2, v3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2118
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 2134
    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableProcStateStacktrace:Z

    .line 2135
    iput v3, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    .line 2136
    iput v3, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    .line 2137
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_28

    .line 2138
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    return-void

    .line 2141
    :cond_28
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2143
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 2145
    array-length v6, v4

    move v7, v3

    :goto_35
    if-ge v7, v6, :cond_b5

    aget-object v8, v4, v7

    .line 2146
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_41

    goto/16 :goto_b2

    .line 2150
    :cond_41
    const-string/jumbo v9, "stack"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_4e

    .line 2151
    iput-boolean v10, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableProcStateStacktrace:Z

    goto :goto_b2

    .line 2155
    :cond_4e
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x61

    if-gt v11, v9, :cond_60

    const/16 v11, 0x7a

    if-gt v9, v11, :cond_60

    .line 2159
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move v11, v3

    goto :goto_61

    :cond_60
    move v11, v10

    .line 2164
    :goto_61
    :try_start_61
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_61 .. :try_end_69} :catch_98

    if-eqz v11, :cond_6f

    .line 2170
    invoke-virtual {v5, v8, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_b2

    :cond_6f
    const/16 v10, 0x70

    if-ne v9, v10, :cond_76

    .line 2173
    iput v8, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    goto :goto_b2

    :cond_76
    const/16 v10, 0x75

    if-ne v9, v10, :cond_7d

    .line 2176
    iput v8, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    goto :goto_b2

    .line 2178
    :cond_7d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid prefix "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    .line 2166
    :catch_98
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b2
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    .line 2181
    :cond_b5
    iput-object v5, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public final updateProcessKillTimeout()V
    .registers 5

    .line 2015
    const-string/jumbo v0, "process_kill_timeout"

    const-wide/16 v1, 0x2710

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    return-void
.end method

.method public final updatePssToRssThresholdModifier()V
    .registers 4

    .line 2317
    const-string/jumbo v0, "pss_to_rss_threshold_modifier"

    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultPssToRssThresholdModifier:F

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->PSS_TO_RSS_THRESHOLD_MODIFIER:F

    return-void
.end method

.method public final updatePushMessagingOverQuotaBehavior()V
    .registers 4

    .line 1784
    const-string v0, "activity_manager"

    const-string/jumbo v1, "push_messaging_over_quota_behavior"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 1788
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_17

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    if-le v0, v2, :cond_16

    goto :goto_17

    :cond_16
    return-void

    .line 1791
    :cond_17
    :goto_17
    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    return-void
.end method

.method public final updateServiceBindAlmostPerceptibleTimeoutMs()V
    .registers 5

    .line 1976
    const-string/jumbo v0, "service_bind_almost_perceptible_timeout_ms"

    const-wide/16 v1, 0x3a98

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    return-void
.end method

.method public final updateServiceStartForegroundAnrDealyMs()V
    .registers 4

    .line 1969
    const-string/jumbo v0, "service_start_foreground_anr_delay_ms"

    const/16 v1, 0x2710

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    return-void
.end method

.method public final updateServiceStartForegroundTimeoutMs()V
    .registers 4

    .line 1962
    const-string/jumbo v0, "service_start_foreground_timeout_ms"

    const/16 v1, 0x7530

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    return-void
.end method

.method public final updateShortFgsAnrExtraWaitDuration()V
    .registers 5

    .line 2247
    const-string/jumbo v0, "short_fgs_anr_extra_wait_duration"

    const-wide/16 v1, 0x2710

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsAnrExtraWaitDuration:J

    return-void
.end method

.method public final updateShortFgsProcStateExtraWaitDuration()V
    .registers 5

    .line 2240
    const-string/jumbo v0, "short_fgs_proc_state_extra_wait_duration"

    const-wide/16 v1, 0x1388

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsProcStateExtraWaitDuration:J

    return-void
.end method

.method public final updateShortFgsTimeoutDuration()V
    .registers 5

    .line 2233
    const-string/jumbo v0, "short_fgs_timeout_duration"

    const-wide/32 v1, 0x2bf20

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    return-void
.end method

.method public final updateSystemExemptPowerRestrictionsEnabled()V
    .registers 4

    .line 1777
    const-string/jumbo v0, "system_exempt_power_restrictions_enabled"

    const/4 v1, 0x1

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagSystemExemptPowerRestrictionsEnabled:Z

    return-void
.end method

.method public final updateTopToFgsGraceDuration()V
    .registers 5

    .line 2101
    const-string/jumbo v0, "top_to_fgs_grace_duration"

    const-wide/16 v1, 0x3a98

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    return-void
.end method

.method public final updateUseTieredCachedAdj()V
    .registers 6

    .line 2282
    const-string/jumbo v0, "use_tiered_cached_adj"

    sget-boolean v1, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_USE_TIERED_CACHED_ADJ:Z

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    .line 2286
    const-string/jumbo v0, "tiered_cached_adj_decay_time"

    const-wide/32 v3, 0xea60

    invoke-static {v2, v0, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_DECAY_TIME:J

    .line 2290
    const-string/jumbo v0, "tiered_cached_adj_ui_tier_size"

    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultTieredCachedAdjUiTierSize:I

    .line 2291
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x32

    .line 2290
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_UI_TIER_SIZE:I

    return-void
.end method
