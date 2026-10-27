.class final Lcom/android/server/am/ActivityManagerConstants;
.super Landroid/database/ContentObserver;
.source "ActivityManagerConstants.java"


# static fields
.field private static final ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

.field private static final ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I = 0x0

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z = false

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F = 0.0f

.field public static BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I = 0x0

.field public static BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z = false

.field public static BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F = 0.0f

.field static final DEFAULT_BACKGROUND_SETTLE_TIME:J = 0xea60L

.field private static final DEFAULT_BG_START_TIMEOUT:J = 0x3a98L

.field private static final DEFAULT_BOOT_TIME_TEMP_ALLOWLIST_DURATION:I = 0x4e20

.field private static final DEFAULT_BOUND_SERVICE_CRASH_MAX_RETRY:I = 0x10

.field private static final DEFAULT_BOUND_SERVICE_CRASH_RESTART_DURATION:J = 0x1b7740L

.field private static final DEFAULT_COMPONENT_ALIAS_OVERRIDES:Ljava/lang/String; = ""

.field private static final DEFAULT_CONTENT_PROVIDER_RETAIN_TIME:J = 0x4e20L

.field private static final DEFAULT_DEFER_BOOT_COMPLETED_BROADCAST:I = 0x6

.field private static final DEFAULT_ENABLE_COMPONENT_ALIAS:Z = false

.field private static final DEFAULT_ENABLE_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:Z = true

.field private static final DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_CRITICAL_MEM:J = 0x7530L

.field private static final DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_LOW_MEM:J = 0x4e20L

.field private static final DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

.field private static final DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MODERATE_MEM:J = 0x2710L

.field private static final DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_NORMAL_MEM:J = 0x0L

.field private static final DEFAULT_FGSERVICE_MIN_REPORT_TIME:J = 0xbb8L

.field private static final DEFAULT_FGSERVICE_MIN_SHOWN_TIME:J = 0x7d0L

.field private static final DEFAULT_FGSERVICE_SCREEN_ON_AFTER_TIME:J = 0x1388L

.field private static final DEFAULT_FGSERVICE_SCREEN_ON_BEFORE_TIME:J = 0x3e8L

.field private static final DEFAULT_FGS_ALLOW_OPT_OUT:Z = false

.field private static final DEFAULT_FGS_ATOM_SAMPLE_RATE:F = 1.0f

.field private static final DEFAULT_FGS_START_ALLOWED_LOG_SAMPLE_RATE:F = 0.25f

.field private static final DEFAULT_FGS_START_DENIED_LOG_SAMPLE_RATE:F = 1.0f

.field private static final DEFAULT_FGS_START_FOREGROUND_TIMEOUT_MS:I = 0x2710

.field private static final DEFAULT_FG_TO_BG_FGS_GRACE_DURATION:J = 0x1388L

.field private static final DEFAULT_FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z = true

.field private static final DEFAULT_FULL_PSS_LOWERED_INTERVAL:J = 0x493e0L

.field private static final DEFAULT_FULL_PSS_MIN_INTERVAL:J = 0x124f80L

.field private static final DEFAULT_GC_MIN_INTERVAL:J = 0xea60L

.field private static final DEFAULT_GC_TIMEOUT:J = 0x1388L

.field static final DEFAULT_KILL_BG_RESTRICTED_CACHED_IDLE:Z = false

.field static final DEFAULT_KILL_BG_RESTRICTED_CACHED_IDLE_SETTLE_TIME_MS:J = 0xea60L

.field private static DEFAULT_MAX_CACHED_PROCESSES:I = 0x0

.field private static final DEFAULT_MAX_EMPTY_TIME_MILLIS:J = 0x1b7740L

.field private static final DEFAULT_MAX_PHANTOM_PROCESSES:I = 0x20

.field private static final DEFAULT_MAX_SERVICE_INACTIVITY:J = 0x1b7740L

.field private static final DEFAULT_MEMORY_INFO_THROTTLE_TIME:J = 0x493e0L

.field private static final DEFAULT_MIN_ASSOC_LOG_DURATION:J = 0x493e0L

.field private static final DEFAULT_MIN_CRASH_INTERVAL:I = 0x1d4c0

.field private static final DEFAULT_NETWORK_ACCESS_TIMEOUT_MS:J = 0xc8L

.field private static final DEFAULT_NO_KILL_CACHED_PROCESSES_POST_BOOT_COMPLETED_DURATION_MILLIS:J = 0x927c0L

.field private static final DEFAULT_NO_KILL_CACHED_PROCESSES_UNTIL_BOOT_COMPLETED:Z = true

.field private static final DEFAULT_OOMADJ_UPDATE_POLICY:I = 0x1

.field private static final DEFAULT_PENDINGINTENT_ERROR_THRESHOLD:I = 0x2710

.field private static final DEFAULT_PENDINGINTENT_WARNING_THRESHOLD:I = 0x7d0

.field private static final DEFAULT_POWER_CHECK_INTERVAL:J

.field private static final DEFAULT_POWER_CHECK_MAX_CPU_1:I = 0x19

.field private static final DEFAULT_POWER_CHECK_MAX_CPU_2:I = 0x19

.field private static final DEFAULT_POWER_CHECK_MAX_CPU_3:I = 0xa

.field private static final DEFAULT_POWER_CHECK_MAX_CPU_4:I = 0x5

.field private static final DEFAULT_POWER_CHECK_MAX_CPU_5:I = 0x2

.field private static final DEFAULT_PROCESS_CRASH_COUNT_LIMIT:I = 0xc

.field private static final DEFAULT_PROCESS_CRASH_COUNT_RESET_INTERVAL:I = 0x2932e00

.field private static final DEFAULT_PROCESS_KILL_TIMEOUT_MS:J = 0x2710L

.field private static final DEFAULT_PROCESS_START_ASYNC:Z = true

.field private static final DEFAULT_PUSH_MESSAGING_OVER_QUOTA_BEHAVIOR:I = 0x1

.field private static final DEFAULT_SERVICE_BG_ACTIVITY_START_TIMEOUT:J = 0x2710L

.field private static final DEFAULT_SERVICE_BIND_ALMOST_PERCEPTIBLE_TIMEOUT_MS:J = 0x3a98L

.field private static final DEFAULT_SERVICE_MIN_RESTART_TIME_BETWEEN:J = 0x2710L

.field private static final DEFAULT_SERVICE_RESET_RUN_DURATION:J = 0xea60L

.field private static final DEFAULT_SERVICE_RESTART_DURATION:J = 0x3e8L

.field private static final DEFAULT_SERVICE_RESTART_DURATION_FACTOR:I = 0x4

.field private static final DEFAULT_SERVICE_START_FOREGROUND_ANR_DELAY_MS:I = 0x2710

.field private static final DEFAULT_SERVICE_START_FOREGROUND_TIMEOUT_MS:I = 0x7530

.field private static final DEFAULT_SERVICE_USAGE_INTERACTION_TIME_POST_S:J = 0xea60L

.field private static final DEFAULT_SERVICE_USAGE_INTERACTION_TIME_PRE_S:J = 0x1b7740L

.field private static final DEFAULT_TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J = 0x3a98L

.field private static final DEFAULT_TOP_TO_FGS_GRACE_DURATION:J = 0x3a98L

.field private static final DEFAULT_USAGE_STATS_INTERACTION_INTERVAL_POST_S:J = 0x927c0L

.field private static final DEFAULT_USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J = 0x6ddd00L

.field static EMPTY_APP_PERCENT:I = 0x0

.field private static final ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

.field private static final FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

.field static final KEY_BACKGROUND_SETTLE_TIME:Ljava/lang/String; = "background_settle_time"

.field static final KEY_BG_START_TIMEOUT:Ljava/lang/String; = "service_bg_start_timeout"

.field private static final KEY_BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:Ljava/lang/String; = "binder_heavy_hitter_auto_sampler_batchsize"

.field private static final KEY_BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Ljava/lang/String; = "binder_heavy_hitter_auto_sampler_enabled"

.field private static final KEY_BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:Ljava/lang/String; = "binder_heavy_hitter_auto_sampler_threshold"

.field private static final KEY_BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:Ljava/lang/String; = "binder_heavy_hitter_watcher_batchsize"

.field private static final KEY_BINDER_HEAVY_HITTER_WATCHER_ENABLED:Ljava/lang/String; = "binder_heavy_hitter_watcher_enabled"

.field private static final KEY_BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:Ljava/lang/String; = "binder_heavy_hitter_watcher_threshold"

.field static final KEY_BOOT_TIME_TEMP_ALLOWLIST_DURATION:Ljava/lang/String; = "boot_time_temp_allowlist_duration"

.field static final KEY_BOUND_SERVICE_CRASH_MAX_RETRY:Ljava/lang/String; = "service_crash_max_retry"

.field static final KEY_BOUND_SERVICE_CRASH_RESTART_DURATION:Ljava/lang/String; = "service_crash_restart_duration"

.field static final KEY_COMPONENT_ALIAS_OVERRIDES:Ljava/lang/String; = "component_alias_overrides"

.field private static final KEY_CONTENT_PROVIDER_RETAIN_TIME:Ljava/lang/String; = "content_provider_retain_time"

.field private static final KEY_DEFAULT_BACKGROUND_ACTIVITY_STARTS_ENABLED:Ljava/lang/String; = "default_background_activity_starts_enabled"

.field private static final KEY_DEFAULT_BACKGROUND_FGS_STARTS_RESTRICTION_ENABLED:Ljava/lang/String; = "default_background_fgs_starts_restriction_enabled"

.field private static final KEY_DEFAULT_FGS_STARTS_RESTRICTION_CHECK_CALLER_TARGET_SDK:Ljava/lang/String; = "default_fgs_starts_restriction_check_caller_target_sdk"

.field private static final KEY_DEFAULT_FGS_STARTS_RESTRICTION_ENABLED:Ljava/lang/String; = "default_fgs_starts_restriction_enabled"

.field private static final KEY_DEFAULT_FGS_STARTS_RESTRICTION_NOTIFICATION_ENABLED:Ljava/lang/String; = "default_fgs_starts_restriction_notification_enabled"

.field private static final KEY_DEFERRED_FGS_NOTIFICATIONS_API_GATED:Ljava/lang/String; = "deferred_fgs_notifications_api_gated"

.field private static final KEY_DEFERRED_FGS_NOTIFICATIONS_ENABLED:Ljava/lang/String; = "deferred_fgs_notifications_enabled"

.field private static final KEY_DEFERRED_FGS_NOTIFICATION_EXCLUSION_TIME:Ljava/lang/String; = "deferred_fgs_notification_exclusion_time"

.field private static final KEY_DEFERRED_FGS_NOTIFICATION_INTERVAL:Ljava/lang/String; = "deferred_fgs_notification_interval"

.field private static final KEY_DEFER_BOOT_COMPLETED_BROADCAST:Ljava/lang/String; = "defer_boot_completed_broadcast"

.field static final KEY_ENABLE_COMPONENT_ALIAS:Ljava/lang/String; = "enable_experimental_component_alias"

.field static final KEY_ENABLE_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:Ljava/lang/String; = "enable_extra_delay_svc_restart_mem_pressure"

.field static final KEY_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:Ljava/lang/String; = "extra_delay_svc_restart_mem_pressure"

.field private static final KEY_FGSERVICE_MIN_REPORT_TIME:Ljava/lang/String; = "fgservice_min_report_time"

.field private static final KEY_FGSERVICE_MIN_SHOWN_TIME:Ljava/lang/String; = "fgservice_min_shown_time"

.field private static final KEY_FGSERVICE_SCREEN_ON_AFTER_TIME:Ljava/lang/String; = "fgservice_screen_on_after_time"

.field private static final KEY_FGSERVICE_SCREEN_ON_BEFORE_TIME:Ljava/lang/String; = "fgservice_screen_on_before_time"

.field static final KEY_FGS_ALLOW_OPT_OUT:Ljava/lang/String; = "fgs_allow_opt_out"

.field static final KEY_FGS_ATOM_SAMPLE_RATE:Ljava/lang/String; = "fgs_atom_sample_rate"

.field static final KEY_FGS_START_ALLOWED_LOG_SAMPLE_RATE:Ljava/lang/String; = "fgs_start_allowed_log_sample_rate"

.field static final KEY_FGS_START_DENIED_LOG_SAMPLE_RATE:Ljava/lang/String; = "fgs_start_denied_log_sample_rate"

.field static final KEY_FGS_START_FOREGROUND_TIMEOUT:Ljava/lang/String; = "fgs_start_foreground_timeout"

.field static final KEY_FG_TO_BG_FGS_GRACE_DURATION:Ljava/lang/String; = "fg_to_bg_fgs_grace_duration"

.field private static final KEY_FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Ljava/lang/String; = "force_bg_check_on_restricted"

.field private static final KEY_FULL_PSS_LOWERED_INTERVAL:Ljava/lang/String; = "full_pss_lowered_interval"

.field private static final KEY_FULL_PSS_MIN_INTERVAL:Ljava/lang/String; = "full_pss_min_interval"

.field private static final KEY_GC_MIN_INTERVAL:Ljava/lang/String; = "gc_min_interval"

.field private static final KEY_GC_TIMEOUT:Ljava/lang/String; = "gc_timeout"

.field private static final KEY_IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Ljava/lang/String; = "imperceptible_kill_exempt_packages"

.field private static final KEY_IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Ljava/lang/String; = "imperceptible_kill_exempt_proc_states"

.field static final KEY_KILL_BG_RESTRICTED_CACHED_IDLE:Ljava/lang/String; = "kill_bg_restricted_cached_idle"

.field static final KEY_KILL_BG_RESTRICTED_CACHED_IDLE_SETTLE_TIME:Ljava/lang/String; = "kill_bg_restricted_cached_idle_settle_time"

.field private static final KEY_MAX_CACHED_PROCESSES:Ljava/lang/String; = "max_cached_processes"

.field private static final KEY_MAX_EMPTY_TIME_MILLIS:Ljava/lang/String; = "max_empty_time_millis"

.field private static final KEY_MAX_PHANTOM_PROCESSES:Ljava/lang/String; = "max_phantom_processes"

.field static final KEY_MAX_SERVICE_INACTIVITY:Ljava/lang/String; = "service_max_inactivity"

.field static final KEY_MEMORY_INFO_THROTTLE_TIME:Ljava/lang/String; = "memory_info_throttle_time"

.field private static final KEY_MIN_ASSOC_LOG_DURATION:Ljava/lang/String; = "min_assoc_log_duration"

.field static final KEY_MIN_CRASH_INTERVAL:Ljava/lang/String; = "min_crash_interval"

.field static final KEY_NETWORK_ACCESS_TIMEOUT_MS:Ljava/lang/String; = "network_access_timeout_ms"

.field private static final KEY_NO_KILL_CACHED_PROCESSES_POST_BOOT_COMPLETED_DURATION_MILLIS:Ljava/lang/String; = "no_kill_cached_processes_post_boot_completed_duration_millis"

.field private static final KEY_NO_KILL_CACHED_PROCESSES_UNTIL_BOOT_COMPLETED:Ljava/lang/String; = "no_kill_cached_processes_until_boot_completed"

.field private static final KEY_OOMADJ_UPDATE_POLICY:Ljava/lang/String; = "oomadj_update_policy"

.field static final KEY_PENDINGINTENT_WARNING_THRESHOLD:Ljava/lang/String; = "pendingintent_warning_threshold"

.field private static final KEY_POWER_CHECK_INTERVAL:Ljava/lang/String; = "power_check_interval"

.field private static final KEY_POWER_CHECK_MAX_CPU_1:Ljava/lang/String; = "power_check_max_cpu_1"

.field private static final KEY_POWER_CHECK_MAX_CPU_2:Ljava/lang/String; = "power_check_max_cpu_2"

.field private static final KEY_POWER_CHECK_MAX_CPU_3:Ljava/lang/String; = "power_check_max_cpu_3"

.field private static final KEY_POWER_CHECK_MAX_CPU_4:Ljava/lang/String; = "power_check_max_cpu_4"

.field private static final KEY_POWER_CHECK_MAX_CPU_5:Ljava/lang/String; = "power_check_max_cpu_5"

.field static final KEY_PROCESS_CRASH_COUNT_LIMIT:Ljava/lang/String; = "process_crash_count_limit"

.field static final KEY_PROCESS_CRASH_COUNT_RESET_INTERVAL:Ljava/lang/String; = "process_crash_count_reset_interval"

.field private static final KEY_PROCESS_KILL_TIMEOUT:Ljava/lang/String; = "process_kill_timeout"

.field static final KEY_PROCESS_START_ASYNC:Ljava/lang/String; = "process_start_async"

.field private static final KEY_PUSH_MESSAGING_OVER_QUOTA_BEHAVIOR:Ljava/lang/String; = "push_messaging_over_quota_behavior"

.field static final KEY_SERVICE_BG_ACTIVITY_START_TIMEOUT:Ljava/lang/String; = "service_bg_activity_start_timeout"

.field private static final KEY_SERVICE_BIND_ALMOST_PERCEPTIBLE_TIMEOUT_MS:Ljava/lang/String; = "service_bind_almost_perceptible_timeout_ms"

.field static final KEY_SERVICE_MIN_RESTART_TIME_BETWEEN:Ljava/lang/String; = "service_min_restart_time_between"

.field static final KEY_SERVICE_RESET_RUN_DURATION:Ljava/lang/String; = "service_reset_run_duration"

.field static final KEY_SERVICE_RESTART_DURATION:Ljava/lang/String; = "service_restart_duration"

.field static final KEY_SERVICE_RESTART_DURATION_FACTOR:Ljava/lang/String; = "service_restart_duration_factor"

.field private static final KEY_SERVICE_START_FOREGROUND_ANR_DELAY_MS:Ljava/lang/String; = "service_start_foreground_anr_delay_ms"

.field private static final KEY_SERVICE_START_FOREGROUND_TIMEOUT_MS:Ljava/lang/String; = "service_start_foreground_timeout_ms"

.field private static final KEY_SERVICE_USAGE_INTERACTION_TIME_POST_S:Ljava/lang/String; = "service_usage_interaction_time_post_s"

.field private static final KEY_SERVICE_USAGE_INTERACTION_TIME_PRE_S:Ljava/lang/String; = "service_usage_interaction_time"

.field static final KEY_TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:Ljava/lang/String; = "top_to_almost_perceptible_grace_duration"

.field static final KEY_TOP_TO_FGS_GRACE_DURATION:Ljava/lang/String; = "top_to_fgs_grace_duration"

.field private static final KEY_USAGE_STATS_INTERACTION_INTERVAL_POST_S:Ljava/lang/String; = "usage_stats_interaction_interval_post_s"

.field private static final KEY_USAGE_STATS_INTERACTION_INTERVAL_PRE_S:Ljava/lang/String; = "usage_stats_interaction_interval"

.field public static MIN_ASSOC_LOG_DURATION:J = 0x0L

.field private static final MIN_AUTOMATIC_HEAP_DUMP_PSS_THRESHOLD_BYTES:J = 0x19000L

.field public static MIN_CRASH_INTERVAL:I = 0x0

.field private static final OOMADJ_UPDATE_POLICY_QUICK:I = 0x1

.field private static final OOMADJ_UPDATE_POLICY_SLOW:I = 0x0

.field static PROCESS_CRASH_COUNT_LIMIT:I = 0x0

.field static PROCESS_CRASH_COUNT_RESET_INTERVAL:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "ActivityManagerConstants"

.field static TRIM_CACHE_PERCENT:I

.field static TRIM_EMPTY_PERCENT:I

.field static TRIM_ENABLE_MEMORY:J

.field static USE_TRIM_SETTINGS:Z

.field public static mPerf:Landroid/util/BoostFramework;


# instance fields
.field public BACKGROUND_SETTLE_TIME:J

.field public BG_START_TIMEOUT:J

.field public BOUND_SERVICE_CRASH_RESTART_DURATION:J

.field public BOUND_SERVICE_MAX_CRASH_RETRY:J

.field CONTENT_PROVIDER_RETAIN_TIME:J

.field public CUR_MAX_CACHED_PROCESSES:I

.field public CUR_MAX_EMPTY_PROCESSES:I

.field public CUR_TRIM_CACHED_PROCESSES:I

.field public CUR_TRIM_EMPTY_PROCESSES:I

.field public FGSERVICE_MIN_REPORT_TIME:J

.field public FGSERVICE_MIN_SHOWN_TIME:J

.field public FGSERVICE_SCREEN_ON_AFTER_TIME:J

.field public FGSERVICE_SCREEN_ON_BEFORE_TIME:J

.field public FLAG_PROCESS_START_ASYNC:Z

.field FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

.field FULL_PSS_LOWERED_INTERVAL:J

.field FULL_PSS_MIN_INTERVAL:J

.field GC_MIN_INTERVAL:J

.field GC_TIMEOUT:J

.field public IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final KEEP_WARMING_SERVICES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public MAX_CACHED_PROCESSES:I

.field public MAX_PHANTOM_PROCESSES:I

.field public MAX_SERVICE_INACTIVITY:J

.field public MEMORY_INFO_THROTTLE_TIME:J

.field public OOMADJ_UPDATE_QUICK:Z

.field public PENDINGINTENT_ERROR_THRESHOLD:I

.field public PENDINGINTENT_WARNING_THRESHOLD:I

.field POWER_CHECK_INTERVAL:J

.field POWER_CHECK_MAX_CPU_1:I

.field POWER_CHECK_MAX_CPU_2:I

.field POWER_CHECK_MAX_CPU_3:I

.field POWER_CHECK_MAX_CPU_4:I

.field POWER_CHECK_MAX_CPU_5:I

.field public SERVICE_BG_ACTIVITY_START_TIMEOUT:J

.field public SERVICE_MIN_RESTART_TIME_BETWEEN:J

.field public SERVICE_RESET_RUN_DURATION:J

.field public SERVICE_RESTART_DURATION:J

.field public SERVICE_RESTART_DURATION_FACTOR:I

.field SERVICE_USAGE_INTERACTION_TIME_POST_S:J

.field SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

.field public TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

.field public TOP_TO_FGS_GRACE_DURATION:J

.field USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

.field USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

.field volatile mBootTimeTempAllowlistDuration:J

.field volatile mComponentAliasOverrides:Ljava/lang/String;

.field private final mCustomizedMaxCachedProcesses:I

.field private final mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

.field private final mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

.field private final mDefaultBinderHeavyHitterAutoSamplerThreshold:F

.field private final mDefaultBinderHeavyHitterWatcherBatchSize:I

.field private final mDefaultBinderHeavyHitterWatcherEnabled:Z

.field private final mDefaultBinderHeavyHitterWatcherThreshold:F

.field private mDefaultImperceptibleKillExemptPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field volatile mDeferBootCompletedBroadcast:I

.field volatile mEnableComponentAlias:Z

.field mEnableExtraServiceRestartDelayOnMemPressure:Z

.field mExtraServiceRestartDelayOnMemPressure:[J

.field volatile mFgToBgFgsGraceDuration:J

.field volatile mFgsAllowOptOut:Z

.field volatile mFgsAtomSampleRate:F

.field volatile mFgsNotificationDeferralExclusionTime:J

.field volatile mFgsNotificationDeferralInterval:J

.field volatile mFgsStartAllowedLogSampleRate:F

.field volatile mFgsStartDeniedLogSampleRate:F

.field volatile mFgsStartForegroundTimeoutMs:J

.field volatile mFgsStartRestrictionCheckCallerTargetSdk:Z

.field volatile mFgsStartRestrictionNotificationEnabled:Z

.field volatile mFlagActivityStartsLoggingEnabled:Z

.field volatile mFlagBackgroundActivityStartsEnabled:Z

.field volatile mFlagBackgroundFgsStartRestrictionEnabled:Z

.field volatile mFlagFgsNotificationDeferralApiGated:Z

.field volatile mFlagFgsNotificationDeferralEnabled:Z

.field volatile mFlagFgsStartRestrictionEnabled:Z

.field volatile mFlagForegroundServiceStartsLoggingEnabled:Z

.field volatile mKillBgRestrictedAndCachedIdle:Z

.field volatile mKillBgRestrictedAndCachedIdleSettleTimeMs:J

.field volatile mMaxEmptyTimeMillis:J

.field volatile mNetworkAccessTimeoutMs:J

.field volatile mNoKillCachedProcessesPostBootCompletedDurationMillis:J

.field volatile mNoKillCachedProcessesUntilBootCompleted:Z

.field private final mOnDeviceConfigChangedForComponentAliasListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private mOverrideMaxCachedProcesses:I

.field private final mParser:Landroid/util/KeyValueListParser;

.field volatile mProcessKillTimeoutMs:J

.field volatile mPushMessagingOverQuotaBehavior:I

.field private mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field volatile mServiceBindAlmostPerceptibleTimeoutMs:J

.field volatile mServiceStartForegroundAnrDelayMs:I

.field volatile mServiceStartForegroundTimeoutMs:I

.field private final mSystemServerAutomaticHeapDumpEnabled:Z

.field private final mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

.field private mSystemServerAutomaticHeapDumpPssThresholdBytes:J


# direct methods
.method static bridge synthetic -$$Nest$mupdateBackgroundActivityStarts(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateBackgroundActivityStarts()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBackgroundFgsStartsRestriction(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateBackgroundFgsStartsRestriction()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBinderHeavyHitterWatcher(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateBinderHeavyHitterWatcher()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBootTimeTempAllowListDuration(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateBootTimeTempAllowListDuration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateComponentAliases(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateComponentAliases()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDeferBootCompletedBroadcast(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateDeferBootCompletedBroadcast()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEnableExtraServiceRestartDelayOnMemPressure(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableExtraServiceRestartDelayOnMemPressure()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateExtraServiceRestartDelayOnMemPressure(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateExtraServiceRestartDelayOnMemPressure()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFgToBgFgsGraceDuration(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgToBgFgsGraceDuration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFgsAllowOptOut(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsAllowOptOut()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFgsAtomSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsAtomSamplePercent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFgsNotificationDeferralApiGated(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsNotificationDeferralApiGated()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFgsNotificationDeferralEnable(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsNotificationDeferralEnable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFgsNotificationDeferralExclusionTime(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsNotificationDeferralExclusionTime()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFgsNotificationDeferralInterval(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsNotificationDeferralInterval()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFgsStartAllowedLogSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartAllowedLogSamplePercent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFgsStartDeniedLogSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartDeniedLogSamplePercent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFgsStartForegroundTimeout(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartForegroundTimeout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFgsStartsRestriction(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartsRestriction()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFgsStartsRestrictionCheckCallerTargetSdk(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartsRestrictionCheckCallerTargetSdk()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFgsStartsRestrictionNotification(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartsRestrictionNotification()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateForceRestrictedBackgroundCheck(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateForceRestrictedBackgroundCheck()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateImperceptibleKillExemptions(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateImperceptibleKillExemptions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateKillBgRestrictedCachedIdle(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateKillBgRestrictedCachedIdle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateKillBgRestrictedCachedIdleSettleTime(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateKillBgRestrictedCachedIdleSettleTime()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMaxCachedProcesses(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMaxEmptyTimeMillis(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxEmptyTimeMillis()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMaxPhantomProcesses(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxPhantomProcesses()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMinAssocLogDuration(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMinAssocLogDuration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNetworkAccessTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateNetworkAccessTimeoutMs()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNoKillCachedProcessesPostBootCompletedDurationMillis(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateNoKillCachedProcessesPostBootCompletedDurationMillis()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNoKillCachedProcessesUntilBootCompleted(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateNoKillCachedProcessesUntilBootCompleted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateOomAdjUpdatePolicy(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateOomAdjUpdatePolicy()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateProcessKillTimeout(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateProcessKillTimeout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePushMessagingOverQuotaBehavior(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updatePushMessagingOverQuotaBehavior()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateServiceBindAlmostPerceptibleTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateServiceBindAlmostPerceptibleTimeoutMs()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateServiceStartForegroundAnrDealyMs(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateServiceStartForegroundAnrDealyMs()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateServiceStartForegroundTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateServiceStartForegroundTimeoutMs()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 153
    const/16 v0, 0x20

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 164
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER_QUICK:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x5

    :goto_c
    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    sput-wide v2, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_POWER_CHECK_INTERVAL:J

    .line 226
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_6a

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

    .line 511
    const v0, 0x1d4c0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 520
    const-wide/32 v2, 0x2932e00

    sput-wide v2, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    .line 528
    const/16 v0, 0xc

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    .line 727
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->mPerf:Landroid/util/BoostFramework;

    .line 729
    sput-boolean v1, Lcom/android/server/am/ActivityManagerConstants;->USE_TRIM_SETTINGS:Z

    .line 730
    const/16 v0, 0x32

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_APP_PERCENT:I

    .line 731
    const/16 v0, 0x64

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_EMPTY_PERCENT:I

    .line 732
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_CACHE_PERCENT:I

    .line 733
    const-wide/32 v0, 0x40000000

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_ENABLE_MEMORY:J

    .line 858
    const-string v0, "activity_manager_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    .line 861
    const-string v0, "activity_starts_logging_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    .line 864
    nop

    .line 865
    const-string v0, "foreground_service_starts_logging_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    .line 868
    nop

    .line 869
    const-string v0, "enable_automatic_system_server_heap_dumps"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    .line 878
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    return-void

    nop

    :array_6a
    .array-data 8
        0x0
        0x2710
        0x4e20
        0x7530
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1061
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 352
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 356
    const-wide/32 v2, 0xea60

    iput-wide v2, v0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 361
    const-wide/16 v4, 0x7d0

    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    .line 366
    const-wide/16 v4, 0xbb8

    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    .line 372
    const-wide/16 v4, 0x3e8

    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    .line 377
    const-wide/16 v6, 0x1388

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    .line 382
    const-wide/16 v8, 0x4e20

    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    .line 385
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    .line 388
    iput-wide v2, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    .line 395
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    .line 399
    const-wide/32 v11, 0x124f80

    iput-wide v11, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    .line 403
    const-wide/32 v11, 0x493e0

    iput-wide v11, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    .line 407
    sget-wide v13, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_POWER_CHECK_INTERVAL:J

    iput-wide v13, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 411
    const/16 v13, 0x19

    iput v13, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    .line 416
    iput v13, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    .line 420
    const/16 v13, 0xa

    iput v13, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    .line 424
    const/4 v13, 0x5

    iput v13, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    .line 429
    const/4 v13, 0x2

    iput v13, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_5:I

    .line 435
    const-wide/32 v14, 0x1b7740

    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 440
    iput-wide v2, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    .line 445
    const-wide/32 v6, 0x6ddd00

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    .line 450
    const-wide/32 v6, 0x927c0

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    .line 454
    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 458
    iput-wide v2, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 462
    const/4 v4, 0x4

    iput v4, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    .line 467
    const-wide/16 v4, 0x2710

    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 472
    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    .line 476
    const-wide/16 v6, 0x3a98

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    .line 480
    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    .line 483
    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    .line 486
    const-wide/16 v14, 0x10

    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    .line 489
    iput-boolean v10, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    .line 493
    iput-wide v11, v0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    .line 497
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    .line 503
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    .line 547
    iput-boolean v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    .line 553
    iput-boolean v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    .line 557
    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    .line 564
    iput-boolean v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    .line 568
    iput-boolean v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    .line 573
    iput-boolean v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    .line 577
    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    .line 581
    const-wide/32 v14, 0x1d4c0

    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    .line 587
    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 595
    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    .line 601
    const-wide/16 v8, 0x1388

    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    .line 607
    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    .line 614
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    .line 621
    const/high16 v9, 0x3e800000    # 0.25f

    iput v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    .line 628
    iput v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    .line 634
    iput-boolean v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    .line 640
    iput-wide v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 646
    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    .line 652
    iput-boolean v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    .line 657
    sget-object v2, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

    iput-object v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    .line 664
    iput-boolean v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    .line 672
    iput-boolean v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    .line 679
    const/4 v2, 0x6

    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    .line 687
    const/16 v2, 0x7530

    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    .line 693
    const/16 v2, 0x2710

    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    .line 700
    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    .line 707
    const-string v3, ""

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    .line 711
    new-instance v3, Landroid/util/KeyValueListParser;

    const/16 v4, 0x2c

    invoke-direct {v3, v4}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 713
    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 763
    nop

    .line 764
    const-string/jumbo v3, "persist.sys.protect_cache.enable"

    invoke-static {v3, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    .line 775
    nop

    .line 776
    const-string/jumbo v3, "persist.sys.protect_cache.time"

    const-wide/32 v4, 0x927c0

    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    .line 780
    iget v3, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v3

    div-int/2addr v3, v13

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 784
    iget v3, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 785
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 793
    const-wide/32 v3, 0x1b7740

    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    .line 798
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    .line 803
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    .line 809
    const/16 v3, 0x7d0

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    .line 815
    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_ERROR_THRESHOLD:I

    .line 820
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    .line 825
    const/16 v3, 0x20

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    .line 833
    const-wide/16 v3, 0xc8

    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    .line 846
    iput-boolean v10, v0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    .line 907
    new-instance v3, Lcom/android/server/am/ActivityManagerConstants$1;

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityManagerConstants$1;-><init>(Lcom/android/server/am/ActivityManagerConstants;)V

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 1040
    new-instance v3, Lcom/android/server/am/ActivityManagerConstants$2;

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityManagerConstants$2;-><init>(Lcom/android/server/am/ActivityManagerConstants;)V

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedForComponentAliasListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 1062
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1063
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_149

    .line 1064
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11100ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_149

    goto :goto_14a

    :cond_149
    move v10, v11

    :goto_14a
    iput-boolean v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    .line 1066
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

    .line 1067
    const-wide/32 v4, 0x19000

    .line 1069
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0043

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    .line 1067
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPssThresholdBytes:J

    .line 1071
    nop

    .line 1072
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107003d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1071
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    .line 1074
    nop

    .line 1075
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 1074
    invoke-static {v4}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    .line 1077
    invoke-interface {v4}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iput-object v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    .line 1078
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1079
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1080
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110102

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherEnabled:Z

    .line 1082
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0047

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherBatchSize:I

    .line 1084
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10500b7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    iput v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherThreshold:F

    .line 1086
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110101

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

    .line 1088
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0046

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

    .line 1090
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10500b6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v9

    iput v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerThreshold:F

    .line 1092
    sput-boolean v4, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    .line 1093
    sput v5, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    .line 1094
    sput v6, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    .line 1095
    sput-boolean v7, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    .line 1096
    sput v8, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    .line 1097
    sput v9, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

    .line 1098
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ActivityManagerService;->scheduleUpdateBinderHeavyHitterWatcherConfig()V

    .line 1099
    nop

    .line 1100
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070079

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1099
    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda1;-><init>()V

    .line 1102
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 1099
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1103
    invoke-static {}, Lcom/android/server/am/ActivityManagerConstants;->getDefaultMaxCachedProcesses()I

    move-result v2

    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    .line 1104
    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 1105
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 1106
    return-void
.end method

.method public static allowTrim()Z
    .registers 4

    .line 734
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/am/ActivityManagerConstants;->TRIM_ENABLE_MEMORY:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static computeEmptyProcessLimit(I)I
    .registers 2
    .param p0, "totalProcessLimit"    # I

    .line 1180
    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerConstants;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1181
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_APP_PERCENT:I

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x64

    return v0

    .line 1183
    :cond_10
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static computeTrimCachedApps(II)I
    .registers 3
    .param p0, "rawMaxEmptyProcesses"    # I
    .param p1, "totalProcessLimit"    # I

    .line 1220
    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerConstants;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1221
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_CACHE_PERCENT:I

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    return v0

    .line 1223
    :cond_10
    sub-int v0, p1, p0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static computeTrimEmptyApps(I)I
    .registers 2
    .param p0, "rawMaxEmptyProcesses"    # I

    .line 1212
    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerConstants;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1213
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_EMPTY_PERCENT:I

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x64

    return v0

    .line 1215
    :cond_10
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method private static getDefaultMaxCachedProcesses()I
    .registers 10

    .line 1189
    const-wide/32 v0, 0x40000000

    .line 1190
    .local v0, "GB":J
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v2

    .line 1191
    .local v2, "totalMemByte":J
    const-string/jumbo v4, "persist.sys.mms.compact_enable"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1192
    const/16 v4, 0x3e8

    const-string/jumbo v5, "persist.sys.mms.cache_limit"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    return v4

    .line 1194
    :cond_1b
    const-wide/16 v4, 0x0

    .line 1195
    .local v4, "tmp":J
    const-wide/16 v6, 0x4

    mul-long v8, v0, v6

    cmp-long v8, v2, v8

    if-gtz v8, :cond_27

    .line 1196
    move-wide v4, v0

    goto :goto_3b

    .line 1197
    :cond_27
    mul-long v8, v0, v6

    cmp-long v8, v2, v8

    if-lez v8, :cond_39

    const-wide/16 v8, 0xa

    mul-long/2addr v8, v0

    cmp-long v8, v2, v8

    if-gtz v8, :cond_39

    .line 1198
    const-wide/16 v6, 0x2

    mul-long v4, v0, v6

    goto :goto_3b

    .line 1200
    :cond_39
    mul-long v4, v0, v6

    .line 1201
    :goto_3b
    add-long v6, v2, v4

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    sub-long v8, v4, v8

    not-long v8, v8

    and-long/2addr v6, v8

    div-long/2addr v6, v0

    long-to-int v6, v6

    .line 1202
    .local v6, "totalMem":I
    packed-switch v6, :pswitch_data_56

    .line 1206
    const/16 v7, 0x20

    return v7

    .line 1205
    :pswitch_4c
    const/16 v7, 0x18

    return v7

    .line 1204
    :pswitch_4f
    const/16 v7, 0x10

    return v7

    .line 1203
    :pswitch_52
    const/16 v7, 0xc

    return v7

    nop

    :pswitch_data_56
    .packed-switch 0x2
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
    .end packed-switch
.end method

.method private loadDeviceConfigConstants()V
    .registers 5

    .line 1163
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 1164
    const-string v3, "activity_manager"

    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    .line 1163
    invoke-interface {v0, v2}, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 1165
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedForComponentAliasListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    new-array v1, v1, [Ljava/lang/String;

    .line 1166
    const-string v2, "activity_manager_ca"

    invoke-static {v2, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    .line 1165
    invoke-interface {v0, v1}, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 1168
    return-void
.end method

.method private parseLongArray(Ljava/lang/String;[J)[J
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # [J

    .line 1607
    const-string v0, "activity_manager"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1609
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1610
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1611
    .local v1, "ss":[Ljava/lang/String;
    array-length v2, v1

    array-length v3, p2

    if-ne v2, v3, :cond_2b

    .line 1612
    array-length v2, v1

    new-array v2, v2, [J

    .line 1614
    .local v2, "tmp":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    :try_start_1b
    array-length v4, v1

    if-ge v3, v4, :cond_29

    .line 1615
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_26} :catch_2a

    .line 1614
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1617
    .end local v3    # "i":I
    :cond_29
    return-object v2

    .line 1618
    :catch_2a
    move-exception v3

    .line 1622
    .end local v1    # "ss":[Ljava/lang/String;
    .end local v2    # "tmp":[J
    :cond_2b
    return-object p2
.end method

.method private updateActivityStartsLoggingEnabled()V
    .registers 4

    .line 1352
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

    .line 1354
    return-void
.end method

.method private updateBackgroundActivityStarts()V
    .registers 4

    .line 1357
    const-string v0, "activity_manager"

    const-string v1, "default_background_activity_starts_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    .line 1361
    return-void
.end method

.method private updateBackgroundFgsStartsRestriction()V
    .registers 4

    .line 1369
    const-string v0, "activity_manager"

    const-string v1, "default_background_fgs_starts_restriction_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    .line 1373
    return-void
.end method

.method private updateBinderHeavyHitterWatcher()V
    .registers 4

    .line 1717
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherEnabled:Z

    const-string v1, "activity_manager"

    const-string v2, "binder_heavy_hitter_watcher_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    .line 1720
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherBatchSize:I

    const-string v2, "binder_heavy_hitter_watcher_batchsize"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    .line 1723
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherThreshold:F

    const-string v2, "binder_heavy_hitter_watcher_threshold"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    .line 1726
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

    const-string v2, "binder_heavy_hitter_auto_sampler_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    .line 1730
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

    const-string v2, "binder_heavy_hitter_auto_sampler_batchsize"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    .line 1734
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerThreshold:F

    const-string v2, "binder_heavy_hitter_auto_sampler_threshold"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    .line 1738
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->scheduleUpdateBinderHeavyHitterWatcherConfig()V

    .line 1739
    return-void
.end method

.method private updateBootTimeTempAllowListDuration()V
    .registers 5

    .line 1453
    const-string v0, "activity_manager"

    const-string v1, "boot_time_temp_allowlist_duration"

    const-wide/16 v2, 0x4e20

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    .line 1457
    return-void
.end method

.method private updateComponentAliases()V
    .registers 4

    .line 1626
    const-string v0, "activity_manager_ca"

    const-string v1, "enable_experimental_component_alias"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    .line 1630
    const-string v1, "component_alias_overrides"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    .line 1634
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mComponentAliasResolver:Lcom/android/server/am/ComponentAliasResolver;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ComponentAliasResolver;->update(ZLjava/lang/String;)V

    .line 1635
    return-void
.end method

.method private updateConstants()V
    .registers 16

    .line 1242
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "activity_manager_constants"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1244
    .local v2, "setting":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1246
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_14} :catch_18
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    .line 1251
    goto :goto_20

    .line 1348
    :catchall_15
    move-exception v0

    goto/16 :goto_20f

    .line 1247
    :catch_18
    move-exception v0

    .line 1250
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_19
    const-string v4, "ActivityManagerConstants"

    const-string v5, "Bad activity manager config settings"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1252
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_20
    iget-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 1254
    .local v4, "currentPowerCheckInterval":J
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "background_settle_time"

    const-wide/32 v7, 0xea60

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 1256
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "fgservice_min_shown_time"

    const-wide/16 v9, 0x7d0

    invoke-virtual {v0, v6, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    .line 1258
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "fgservice_min_report_time"

    const-wide/16 v9, 0xbb8

    invoke-virtual {v0, v6, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    .line 1260
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "fgservice_screen_on_before_time"

    const-wide/16 v9, 0x3e8

    invoke-virtual {v0, v6, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    .line 1262
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "fgservice_screen_on_after_time"

    const-wide/16 v11, 0x1388

    invoke-virtual {v0, v6, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    .line 1264
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "content_provider_retain_time"

    const-wide/16 v13, 0x4e20

    invoke-virtual {v0, v6, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    .line 1266
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "gc_timeout"

    invoke-virtual {v0, v6, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    .line 1268
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "gc_min_interval"

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    .line 1270
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "full_pss_min_interval"

    const-wide/32 v11, 0x124f80

    invoke-virtual {v0, v6, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    .line 1272
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "full_pss_lowered_interval"

    const-wide/32 v11, 0x493e0

    invoke-virtual {v0, v6, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    .line 1274
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "power_check_interval"

    sget-wide v13, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_POWER_CHECK_INTERVAL:J

    invoke-virtual {v0, v6, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 1276
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "power_check_max_cpu_1"

    const/16 v13, 0x19

    invoke-virtual {v0, v6, v13}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    .line 1278
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "power_check_max_cpu_2"

    invoke-virtual {v0, v6, v13}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    .line 1280
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "power_check_max_cpu_3"

    const/16 v13, 0xa

    invoke-virtual {v0, v6, v13}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    .line 1282
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "power_check_max_cpu_4"

    const/4 v13, 0x5

    invoke-virtual {v0, v6, v13}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    .line 1285
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "power_check_max_cpu_5"

    const/4 v13, 0x2

    invoke-virtual {v0, v6, v13}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_5:I

    .line 1288
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_usage_interaction_time"

    const-wide/32 v13, 0x1b7740

    invoke-virtual {v0, v6, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 1291
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_usage_interaction_time_post_s"

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    .line 1294
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "usage_stats_interaction_interval"

    const-wide/32 v11, 0x6ddd00

    invoke-virtual {v0, v6, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    .line 1297
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "usage_stats_interaction_interval_post_s"

    const-wide/32 v11, 0x927c0

    invoke-virtual {v0, v6, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    .line 1300
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_restart_duration"

    invoke-virtual {v0, v6, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 1302
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_reset_run_duration"

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 1304
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_restart_duration_factor"

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    .line 1306
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_min_restart_time_between"

    const-wide/16 v7, 0x2710

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 1308
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_max_inactivity"

    invoke-virtual {v0, v6, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    .line 1310
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_bg_start_timeout"

    const-wide/16 v9, 0x3a98

    invoke-virtual {v0, v6, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    .line 1312
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_bg_activity_start_timeout"

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    .line 1315
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_crash_restart_duration"

    invoke-virtual {v0, v6, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    .line 1318
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_crash_max_retry"

    const/16 v7, 0x10

    invoke-virtual {v0, v6, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v6, v0

    iput-wide v6, v1, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    .line 1320
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "process_start_async"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    .line 1322
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "memory_info_throttle_time"

    const-wide/32 v7, 0x493e0

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    .line 1324
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "top_to_fgs_grace_duration"

    invoke-virtual {v0, v6, v9, v10}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    .line 1326
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "top_to_almost_perceptible_grace_duration"

    invoke-virtual {v0, v6, v9, v10}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    .line 1329
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "min_crash_interval"

    const v7, 0x1d4c0

    invoke-virtual {v0, v6, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 1331
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "pendingintent_warning_threshold"

    const/16 v7, 0x7d0

    invoke-virtual {v0, v6, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    .line 1333
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "process_crash_count_reset_interval"

    const v7, 0x2932e00

    invoke-virtual {v0, v6, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v6, v0

    sput-wide v6, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    .line 1336
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "process_crash_count_limit"

    const/16 v7, 0xc

    invoke-virtual {v0, v6, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    .line 1339
    iget-wide v6, v1, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_20a

    .line 1340
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v6, 0x1b

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 1342
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1344
    .local v0, "msg":Landroid/os/Message;
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-wide v7, v1, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1348
    .end local v0    # "msg":Landroid/os/Message;
    .end local v4    # "currentPowerCheckInterval":J
    :cond_20a
    monitor-exit v3
    :try_end_20b
    .catchall {:try_start_19 .. :try_end_20b} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1349
    return-void

    .line 1348
    :goto_20f
    :try_start_20f
    monitor-exit v3
    :try_end_210
    .catchall {:try_start_20f .. :try_end_210} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private updateDeferBootCompletedBroadcast()V
    .registers 4

    .line 1550
    const-string v0, "activity_manager"

    const-string v1, "defer_boot_completed_broadcast"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    .line 1554
    return-void
.end method

.method private updateEnableAutomaticSystemServerHeapDumps()V
    .registers 10

    .line 1668
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    if-nez v0, :cond_d

    .line 1669
    const-string v0, "ActivityManagerConstants"

    const-string/jumbo v1, "updateEnableAutomaticSystemServerHeapDumps called when leak detection disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    return-void

    .line 1676
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "enable_automatic_system_server_heap_dumps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    move v0, v2

    .line 1680
    .local v0, "enabled":Z
    if-eqz v0, :cond_20

    iget-wide v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPssThresholdBytes:J

    goto :goto_22

    :cond_20
    const-wide/16 v1, 0x0

    :goto_22
    move-wide v6, v1

    .line 1681
    .local v6, "threshold":J
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 1683
    return-void
.end method

.method private updateEnableExtraServiceRestartDelayOnMemPressure()V
    .registers 7

    .line 1537
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1538
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    .line 1539
    .local v1, "prevEnabled":Z
    const-string v2, "activity_manager"

    const-string v3, "enable_extra_delay_svc_restart_mem_pressure"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    .line 1543
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-boolean v3, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    .line 1545
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1543
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/am/ActiveServices;->rescheduleServiceRestartOnMemoryPressureIfNeededLocked(ZZJ)V

    .line 1546
    .end local v1    # "prevEnabled":Z
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1547
    return-void

    .line 1546
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private updateExtraServiceRestartDelayOnMemPressure()V
    .registers 13

    .line 1524
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1525
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler;->getLastMemoryLevelLocked()I

    move-result v1

    .line 1526
    .local v1, "memFactor":I
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    .line 1527
    .local v2, "prevDelays":[J
    const-string v3, "extra_delay_svc_restart_mem_pressure"

    sget-object v4, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/ActivityManagerConstants;->parseLongArray(Ljava/lang/String;[J)[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    .line 1530
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    aget-wide v5, v3, v1

    aget-wide v7, v2, v1

    const-string v9, "config"

    .line 1532
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1530
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActiveServices;->performRescheduleServiceRestartOnMemoryPressureLocked(JJLjava/lang/String;J)V

    .line 1533
    .end local v1    # "memFactor":I
    .end local v2    # "prevDelays":[J
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1534
    return-void

    .line 1533
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private updateFgToBgFgsGraceDuration()V
    .registers 5

    .line 1460
    const-string v0, "activity_manager"

    const-string v1, "fg_to_bg_fgs_grace_duration"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    .line 1464
    return-void
.end method

.method private updateFgsAllowOptOut()V
    .registers 4

    .line 1517
    const-string v0, "activity_manager"

    const-string v1, "fgs_allow_opt_out"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    .line 1521
    return-void
.end method

.method private updateFgsAtomSamplePercent()V
    .registers 4

    .line 1474
    const-string v0, "activity_manager"

    const-string v1, "fgs_atom_sample_rate"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    .line 1478
    return-void
.end method

.method private updateFgsNotificationDeferralApiGated()V
    .registers 4

    .line 1404
    const-string v0, "activity_manager"

    const-string v1, "deferred_fgs_notifications_api_gated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    .line 1408
    return-void
.end method

.method private updateFgsNotificationDeferralEnable()V
    .registers 4

    .line 1397
    const-string v0, "activity_manager"

    const-string v1, "deferred_fgs_notifications_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    .line 1401
    return-void
.end method

.method private updateFgsNotificationDeferralExclusionTime()V
    .registers 5

    .line 1418
    const-string v0, "activity_manager"

    const-string v1, "deferred_fgs_notification_exclusion_time"

    const-wide/32 v2, 0x1d4c0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    .line 1422
    return-void
.end method

.method private updateFgsNotificationDeferralInterval()V
    .registers 5

    .line 1411
    const-string v0, "activity_manager"

    const-string v1, "deferred_fgs_notification_interval"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    .line 1415
    return-void
.end method

.method private updateFgsStartAllowedLogSamplePercent()V
    .registers 4

    .line 1481
    const-string v0, "activity_manager"

    const-string v1, "fgs_start_allowed_log_sample_rate"

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    .line 1485
    return-void
.end method

.method private updateFgsStartDeniedLogSamplePercent()V
    .registers 4

    .line 1488
    const-string v0, "activity_manager"

    const-string v1, "fgs_start_denied_log_sample_rate"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    .line 1492
    return-void
.end method

.method private updateFgsStartForegroundTimeout()V
    .registers 5

    .line 1467
    const-string v0, "activity_manager"

    const-string v1, "fgs_start_foreground_timeout"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    .line 1471
    return-void
.end method

.method private updateFgsStartsRestriction()V
    .registers 4

    .line 1376
    const-string v0, "activity_manager"

    const-string v1, "default_fgs_starts_restriction_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    .line 1380
    return-void
.end method

.method private updateFgsStartsRestrictionCheckCallerTargetSdk()V
    .registers 4

    .line 1390
    const-string v0, "activity_manager"

    const-string v1, "default_fgs_starts_restriction_check_caller_target_sdk"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    .line 1394
    return-void
.end method

.method private updateFgsStartsRestrictionNotification()V
    .registers 4

    .line 1383
    const-string v0, "activity_manager"

    const-string v1, "default_fgs_starts_restriction_notification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    .line 1387
    return-void
.end method

.method private updateForceRestrictedBackgroundCheck()V
    .registers 4

    .line 1446
    const-string v0, "activity_manager"

    const-string v1, "force_bg_check_on_restricted"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    .line 1450
    return-void
.end method

.method private updateForegroundServiceStartsLoggingEnabled()V
    .registers 4

    .line 1364
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

    .line 1366
    return-void
.end method

.method private updateImperceptibleKillExemptions()V
    .registers 7

    .line 1645
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1646
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1647
    const-string v0, "activity_manager"

    const-string/jumbo v1, "imperceptible_kill_exempt_packages"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1649
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ","

    if-nez v3, :cond_2b

    .line 1650
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1653
    :cond_2b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 1654
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1655
    const-string/jumbo v3, "imperceptible_kill_exempt_proc_states"

    invoke-static {v0, v3, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1657
    .end local v1    # "val":Ljava/lang/String;
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 1658
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ActivityManagerConstants;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1665
    :cond_58
    return-void
.end method

.method private updateKillBgRestrictedCachedIdle()V
    .registers 4

    .line 1495
    const-string v0, "activity_manager"

    const-string/jumbo v1, "kill_bg_restricted_cached_idle"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    .line 1499
    return-void
.end method

.method private updateKillBgRestrictedCachedIdleSettleTime()V
    .registers 7

    .line 1502
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 1503
    .local v0, "currentSettleTime":J
    const-string v2, "activity_manager"

    const-string/jumbo v3, "kill_bg_restricted_cached_idle_settle_time"

    const-wide/32 v4, 0xea60

    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 1507
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_28

    .line 1508
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 1510
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1514
    :cond_28
    return-void
.end method

.method private updateMaxCachedProcesses()V
    .registers 5

    .line 1686
    const-string v0, "activity_manager"

    const-string/jumbo v1, "max_cached_processes"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1689
    .local v0, "maxCachedProcessesFlag":Ljava/lang/String;
    :try_start_9
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    if-gez v1, :cond_1b

    .line 1690
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1691
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    goto :goto_1c

    :cond_16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1c

    .line 1692
    :cond_1b
    nop

    :goto_1c
    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_1e} :catch_1f

    .line 1698
    goto :goto_3c

    .line 1693
    :catch_1f
    move-exception v1

    .line 1695
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse flag for max_cached_processes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManagerConstants"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1697
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 1699
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_3c
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 1704
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v1

    .line 1705
    .local v1, "rawMaxEmptyProcesses":I
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeTrimEmptyApps(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 1706
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 1707
    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerConstants;->computeTrimCachedApps(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 1708
    return-void
.end method

.method private updateMaxEmptyTimeMillis()V
    .registers 5

    .line 1571
    const-string v0, "activity_manager"

    const-string/jumbo v1, "max_empty_time_millis"

    const-wide/32 v2, 0x1b7740

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    .line 1575
    return-void
.end method

.method private updateMaxPhantomProcesses()V
    .registers 5

    .line 1742
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    .line 1743
    .local v0, "oldVal":I
    const-string v1, "activity_manager"

    const-string/jumbo v2, "max_phantom_processes"

    const/16 v3, 0x20

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    .line 1746
    if-le v0, v1, :cond_24

    .line 1747
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1749
    :cond_24
    return-void
.end method

.method private updateMinAssocLogDuration()V
    .registers 5

    .line 1711
    const-string v0, "activity_manager"

    const-string/jumbo v1, "min_assoc_log_duration"

    const-wide/32 v2, 0x493e0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    .line 1714
    return-void
.end method

.method private updateNetworkAccessTimeoutMs()V
    .registers 5

    .line 1578
    const-string v0, "activity_manager"

    const-string/jumbo v1, "network_access_timeout_ms"

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    .line 1582
    return-void
.end method

.method private updateNoKillCachedProcessesPostBootCompletedDurationMillis()V
    .registers 5

    .line 1564
    const-string v0, "activity_manager"

    const-string/jumbo v1, "no_kill_cached_processes_post_boot_completed_duration_millis"

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    .line 1568
    return-void
.end method

.method private updateNoKillCachedProcessesUntilBootCompleted()V
    .registers 4

    .line 1557
    const-string v0, "activity_manager"

    const-string/jumbo v1, "no_kill_cached_processes_until_boot_completed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    .line 1561
    return-void
.end method

.method private updateOomAdjUpdatePolicy()V
    .registers 4

    .line 1438
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

    .line 1443
    return-void
.end method

.method private updatePerfConfigConstants()V
    .registers 4

    .line 1109
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_8e

    .line 1114
    invoke-static {}, Lcom/android/server/am/ActivityManagerConstants;->getDefaultMaxCachedProcesses()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 1118
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "ro.vendor.qti.sys.fw.use_trim_settings"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->USE_TRIM_SETTINGS:Z

    .line 1119
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "ro.vendor.qti.sys.fw.empty_app_percent"

    const-string v2, "50"

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_APP_PERCENT:I

    .line 1120
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "ro.vendor.qti.sys.fw.trim_empty_percent"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_EMPTY_PERCENT:I

    .line 1121
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "ro.vendor.qti.sys.fw.trim_cache_percent"

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_CACHE_PERCENT:I

    .line 1122
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "ro.vendor.qti.sys.fw.trim_enable_memory"

    const-string v2, "1073741824"

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_ENABLE_MEMORY:J

    .line 1125
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 1127
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v0

    .line 1128
    .local v0, "rawEmptyProcesses":I
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeTrimEmptyApps(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 1129
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerConstants;->computeTrimCachedApps(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 1131
    .end local v0    # "rawEmptyProcesses":I
    :cond_8e
    return-void
.end method

.method private updateProcessKillTimeout()V
    .registers 5

    .line 1638
    const-string v0, "activity_manager"

    const-string/jumbo v1, "process_kill_timeout"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    .line 1642
    return-void
.end method

.method private updatePushMessagingOverQuotaBehavior()V
    .registers 4

    .line 1425
    const-string v0, "activity_manager"

    const-string/jumbo v1, "push_messaging_over_quota_behavior"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 1429
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_15

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    if-le v0, v2, :cond_17

    .line 1432
    :cond_15
    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 1435
    :cond_17
    return-void
.end method

.method private updateServiceBindAlmostPerceptibleTimeoutMs()V
    .registers 5

    .line 1599
    const-string v0, "activity_manager"

    const-string/jumbo v1, "service_bind_almost_perceptible_timeout_ms"

    const-wide/16 v2, 0x3a98

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    .line 1603
    return-void
.end method

.method private updateServiceStartForegroundAnrDealyMs()V
    .registers 4

    .line 1592
    const-string v0, "activity_manager"

    const-string/jumbo v1, "service_start_foreground_anr_delay_ms"

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    .line 1596
    return-void
.end method

.method private updateServiceStartForegroundTimeoutMs()V
    .registers 4

    .line 1585
    const-string v0, "activity_manager"

    const-string/jumbo v1, "service_start_foreground_timeout_ms"

    const/16 v2, 0x7530

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    .line 1589
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1753
    const-string v0, "ACTIVITY MANAGER SETTINGS (dumpsys activity settings) activity_manager_constants:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1756
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "max_cached_processes"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1757
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1758
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "background_settle_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1759
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1760
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgservice_min_shown_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1761
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1762
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgservice_min_report_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1763
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1764
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgservice_screen_on_before_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1765
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1766
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgservice_screen_on_after_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1767
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1768
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "content_provider_retain_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1769
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1770
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "gc_timeout"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1771
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1772
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "gc_min_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1773
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1774
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "force_bg_check_on_restricted"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1775
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1776
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "full_pss_min_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1777
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1778
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "full_pss_lowered_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1779
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1780
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1781
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1782
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_max_cpu_1"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1783
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1784
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_max_cpu_2"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1785
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1786
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_max_cpu_3"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1787
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1788
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_max_cpu_4"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1789
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1791
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_max_cpu_5"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1792
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_5:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1794
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_usage_interaction_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1795
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1796
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_usage_interaction_time_post_s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1797
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1798
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "usage_stats_interaction_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1799
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1800
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "usage_stats_interaction_interval_post_s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1801
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1802
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_restart_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1803
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1804
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_reset_run_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1805
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1806
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_restart_duration_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1807
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1808
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_min_restart_time_between"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1809
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1810
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_max_inactivity"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1811
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1812
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_bg_start_timeout"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1813
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1814
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_bg_activity_start_timeout"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1815
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1816
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_crash_restart_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1817
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1818
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_crash_max_retry"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1819
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1820
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "process_start_async"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1821
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1822
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "memory_info_throttle_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1823
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1824
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "top_to_fgs_grace_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1825
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1826
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "top_to_almost_perceptible_grace_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1827
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1828
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_crash_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1829
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1830
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "process_crash_count_reset_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1831
    sget-wide v2, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1832
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "process_crash_count_limit"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1833
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1834
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "imperceptible_kill_exempt_proc_states"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1835
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1836
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "imperceptible_kill_exempt_packages"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1837
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1838
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_assoc_log_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1839
    sget-wide v2, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1840
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "binder_heavy_hitter_watcher_enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1841
    sget-boolean v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1842
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "binder_heavy_hitter_watcher_batchsize"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1843
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1844
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "binder_heavy_hitter_watcher_threshold"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1845
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1846
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "binder_heavy_hitter_auto_sampler_enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1847
    sget-boolean v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1848
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "binder_heavy_hitter_auto_sampler_batchsize"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1849
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1850
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "binder_heavy_hitter_auto_sampler_threshold"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1851
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1852
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_phantom_processes"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1853
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1854
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "boot_time_temp_allowlist_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1855
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1856
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fg_to_bg_fgs_grace_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1857
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1858
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgs_start_foreground_timeout"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1859
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1860
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "default_background_activity_starts_enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1861
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1862
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "default_background_fgs_starts_restriction_enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1864
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "default_fgs_starts_restriction_enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1865
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1866
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "default_fgs_starts_restriction_notification_enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1867
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1868
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1869
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "default_fgs_starts_restriction_check_caller_target_sdk"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1870
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1871
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgs_atom_sample_rate"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1872
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1873
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgs_start_allowed_log_sample_rate"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1874
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1875
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgs_start_denied_log_sample_rate"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1876
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1877
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "push_messaging_over_quota_behavior"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1878
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1879
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgs_allow_opt_out"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1880
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1881
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "enable_experimental_component_alias"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1882
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1883
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "component_alias_overrides"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1884
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1885
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "defer_boot_completed_broadcast"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1886
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1887
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "no_kill_cached_processes_until_boot_completed"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1888
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1889
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "no_kill_cached_processes_post_boot_completed_duration_millis"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1890
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1891
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_empty_time_millis"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1892
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1893
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_start_foreground_timeout_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1894
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1895
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_start_foreground_anr_delay_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1896
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1897
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_bind_almost_perceptible_timeout_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1898
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1899
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "network_access_timeout_ms"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1900
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 1902
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1903
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    if-ltz v0, :cond_4c1

    .line 1904
    const-string v0, "  mOverrideMaxCachedProcesses="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1906
    :cond_4c1
    const-string v0, "  mCustomizedMaxCachedProcesses="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1907
    const-string v0, "  CUR_MAX_CACHED_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1908
    const-string v0, "  CUR_MAX_EMPTY_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1909
    const-string v0, "  CUR_TRIM_EMPTY_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1910
    const-string v0, "  CUR_TRIM_CACHED_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1911
    const-string v0, "  OOMADJ_UPDATE_QUICK="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1912
    return-void
.end method

.method public getOverrideMaxCachedProcesses()I
    .registers 2

    .line 1176
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    return v0
.end method

.method synthetic lambda$updateImperceptibleKillExemptions$0$com-android-server-am-ActivityManagerConstants(Ljava/lang/String;)V
    .registers 4
    .param p1, "v"    # Ljava/lang/String;

    .line 1660
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_e

    .line 1662
    goto :goto_f

    .line 1661
    :catch_e
    move-exception v0

    .line 1663
    :goto_f
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1229
    if-nez p2, :cond_3

    return-void

    .line 1230
    :cond_3
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1231
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateConstants()V

    goto :goto_32

    .line 1232
    :cond_f
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1233
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateActivityStartsLoggingEnabled()V

    goto :goto_32

    .line 1234
    :cond_1b
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1235
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateForegroundServiceStartsLoggingEnabled()V

    goto :goto_32

    .line 1236
    :cond_27
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1237
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableAutomaticSystemServerHeapDumps()V

    .line 1239
    :cond_32
    :goto_32
    return-void
.end method

.method public setOverrideMaxCachedProcesses(I)V
    .registers 2
    .param p1, "value"    # I

    .line 1171
    iput p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 1172
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    .line 1173
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 1134
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 1135
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1136
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1137
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1139
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    if-eqz v0, :cond_21

    .line 1140
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1143
    :cond_21
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateConstants()V

    .line 1144
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updatePerfConfigConstants()V

    .line 1146
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    if-eqz v0, :cond_2e

    .line 1147
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableAutomaticSystemServerHeapDumps()V

    .line 1149
    :cond_2e
    nop

    .line 1150
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 1149
    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1152
    nop

    .line 1154
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedForComponentAliasListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 1152
    const-string v2, "activity_manager_ca"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1156
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->loadDeviceConfigConstants()V

    .line 1158
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateActivityStartsLoggingEnabled()V

    .line 1159
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateForegroundServiceStartsLoggingEnabled()V

    .line 1160
    return-void
.end method
