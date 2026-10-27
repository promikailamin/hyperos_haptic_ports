.class Lcom/android/server/job/controllers/QuotaController$QcConstants;
.super Ljava/lang/Object;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QcConstants"
.end annotation


# static fields
.field private static final DEFAULT_ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J = 0x927c0L

.field private static final DEFAULT_ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J = 0x927c0L

.field private static final DEFAULT_ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J = 0x927c0L

.field private static final DEFAULT_ALLOWED_TIME_PER_PERIOD_RARE_MS:J = 0x927c0L

.field private static final DEFAULT_ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J = 0x927c0L

.field private static final DEFAULT_ALLOWED_TIME_PER_PERIOD_WORKING_MS:J = 0x927c0L

.field private static final DEFAULT_EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J = 0x2bf20L

.field private static final DEFAULT_EJ_GRACE_PERIOD_TOP_APP_MS:J = 0xea60L

.field private static final DEFAULT_EJ_LIMIT_ACTIVE_MS:J = 0x1b7740L

.field private static final DEFAULT_EJ_LIMIT_ADDITION_INSTALLER_MS:J = 0x1b7740L

.field private static final DEFAULT_EJ_LIMIT_ADDITION_SPECIAL_MS:J = 0xdbba0L

.field private static final DEFAULT_EJ_LIMIT_EXEMPTED_MS:J = 0x2932e0L

.field private static final DEFAULT_EJ_LIMIT_FREQUENT_MS:J = 0x927c0L

.field private static final DEFAULT_EJ_LIMIT_RARE_MS:J = 0x927c0L

.field private static final DEFAULT_EJ_LIMIT_RESTRICTED_MS:J = 0x493e0L

.field private static final DEFAULT_EJ_LIMIT_WORKING_MS:J = 0x1b7740L

.field private static final DEFAULT_EJ_REWARD_INTERACTION_MS:J = 0x3a98L

.field private static final DEFAULT_EJ_REWARD_NOTIFICATION_SEEN_MS:J = 0x0L

.field private static final DEFAULT_EJ_REWARD_TOP_APP_MS:J = 0x2710L

.field private static final DEFAULT_EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J = 0x7530L

.field private static final DEFAULT_EJ_WINDOW_SIZE_MS:J = 0x5265c00L

.field private static final DEFAULT_IN_QUOTA_BUFFER_MS:J = 0x7530L

.field private static final DEFAULT_MAX_EXECUTION_TIME_MS:J = 0xdbba00L

.field private static final DEFAULT_MAX_JOB_COUNT_ACTIVE:I = 0x4b

.field private static final DEFAULT_MAX_JOB_COUNT_EXEMPTED:I = 0x4b

.field private static final DEFAULT_MAX_JOB_COUNT_FREQUENT:I = 0xc8

.field private static final DEFAULT_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I = 0x14

.field private static final DEFAULT_MAX_JOB_COUNT_RARE:I = 0x30

.field private static final DEFAULT_MAX_JOB_COUNT_RESTRICTED:I = 0xa

.field private static final DEFAULT_MAX_JOB_COUNT_WORKING:I = 0x78

.field private static final DEFAULT_MAX_SESSION_COUNT_ACTIVE:I = 0x4b

.field private static final DEFAULT_MAX_SESSION_COUNT_EXEMPTED:I = 0x4b

.field private static final DEFAULT_MAX_SESSION_COUNT_FREQUENT:I = 0x8

.field private static final DEFAULT_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I = 0x14

.field private static final DEFAULT_MAX_SESSION_COUNT_RARE:I = 0x3

.field private static final DEFAULT_MAX_SESSION_COUNT_RESTRICTED:I = 0x1

.field private static final DEFAULT_MAX_SESSION_COUNT_WORKING:I = 0xa

.field private static final DEFAULT_MIN_QUOTA_CHECK_DELAY_MS:J = 0xea60L

.field private static final DEFAULT_QUOTA_BUMP_ADDITIONAL_DURATION_MS:J = 0xea60L

.field private static final DEFAULT_QUOTA_BUMP_ADDITIONAL_JOB_COUNT:I = 0x2

.field private static final DEFAULT_QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:I = 0x1

.field private static final DEFAULT_QUOTA_BUMP_LIMIT:I = 0x8

.field private static final DEFAULT_QUOTA_BUMP_WINDOW_SIZE_MS:J = 0x1b77400L

.field private static final DEFAULT_RATE_LIMITING_WINDOW_MS:J = 0xea60L

.field private static final DEFAULT_TIMING_SESSION_COALESCING_DURATION_MS:J = 0x1388L

.field private static final DEFAULT_WINDOW_SIZE_ACTIVE_MS:J = 0x927c0L

.field private static final DEFAULT_WINDOW_SIZE_EXEMPTED_MS:J = 0x927c0L

.field private static final DEFAULT_WINDOW_SIZE_FREQUENT_MS:J = 0x1b77400L

.field private static final DEFAULT_WINDOW_SIZE_RARE_MS:J = 0x5265c00L

.field private static final DEFAULT_WINDOW_SIZE_RESTRICTED_MS:J = 0x5265c00L

.field private static final DEFAULT_WINDOW_SIZE_WORKING_MS:J = 0x6ddd00L

.field static final KEY_ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:Ljava/lang/String; = "qc_allowed_time_per_period_active_ms"

.field static final KEY_ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:Ljava/lang/String; = "qc_allowed_time_per_period_exempted_ms"

.field static final KEY_ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:Ljava/lang/String; = "qc_allowed_time_per_period_frequent_ms"

.field static final KEY_ALLOWED_TIME_PER_PERIOD_RARE_MS:Ljava/lang/String; = "qc_allowed_time_per_period_rare_ms"

.field static final KEY_ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:Ljava/lang/String; = "qc_allowed_time_per_period_restricted_ms"

.field static final KEY_ALLOWED_TIME_PER_PERIOD_WORKING_MS:Ljava/lang/String; = "qc_allowed_time_per_period_working_ms"

.field static final KEY_EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:Ljava/lang/String; = "qc_ej_grace_period_temp_allowlist_ms"

.field static final KEY_EJ_GRACE_PERIOD_TOP_APP_MS:Ljava/lang/String; = "qc_ej_grace_period_top_app_ms"

.field static final KEY_EJ_LIMIT_ACTIVE_MS:Ljava/lang/String; = "qc_ej_limit_active_ms"

.field static final KEY_EJ_LIMIT_ADDITION_INSTALLER_MS:Ljava/lang/String; = "qc_ej_limit_addition_installer_ms"

.field static final KEY_EJ_LIMIT_ADDITION_SPECIAL_MS:Ljava/lang/String; = "qc_ej_limit_addition_special_ms"

.field static final KEY_EJ_LIMIT_EXEMPTED_MS:Ljava/lang/String; = "qc_ej_limit_exempted_ms"

.field static final KEY_EJ_LIMIT_FREQUENT_MS:Ljava/lang/String; = "qc_ej_limit_frequent_ms"

.field static final KEY_EJ_LIMIT_RARE_MS:Ljava/lang/String; = "qc_ej_limit_rare_ms"

.field static final KEY_EJ_LIMIT_RESTRICTED_MS:Ljava/lang/String; = "qc_ej_limit_restricted_ms"

.field static final KEY_EJ_LIMIT_WORKING_MS:Ljava/lang/String; = "qc_ej_limit_working_ms"

.field static final KEY_EJ_REWARD_INTERACTION_MS:Ljava/lang/String; = "qc_ej_reward_interaction_ms"

.field static final KEY_EJ_REWARD_NOTIFICATION_SEEN_MS:Ljava/lang/String; = "qc_ej_reward_notification_seen_ms"

.field static final KEY_EJ_REWARD_TOP_APP_MS:Ljava/lang/String; = "qc_ej_reward_top_app_ms"

.field static final KEY_EJ_TOP_APP_TIME_CHUNK_SIZE_MS:Ljava/lang/String; = "qc_ej_top_app_time_chunk_size_ms"

.field static final KEY_EJ_WINDOW_SIZE_MS:Ljava/lang/String; = "qc_ej_window_size_ms"

.field static final KEY_IN_QUOTA_BUFFER_MS:Ljava/lang/String; = "qc_in_quota_buffer_ms"

.field static final KEY_MAX_EXECUTION_TIME_MS:Ljava/lang/String; = "qc_max_execution_time_ms"

.field static final KEY_MAX_JOB_COUNT_ACTIVE:Ljava/lang/String; = "qc_max_job_count_active"

.field static final KEY_MAX_JOB_COUNT_EXEMPTED:Ljava/lang/String; = "qc_max_job_count_exempted"

.field static final KEY_MAX_JOB_COUNT_FREQUENT:Ljava/lang/String; = "qc_max_job_count_frequent"

.field static final KEY_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:Ljava/lang/String; = "qc_max_job_count_per_rate_limiting_window"

.field static final KEY_MAX_JOB_COUNT_RARE:Ljava/lang/String; = "qc_max_job_count_rare"

.field static final KEY_MAX_JOB_COUNT_RESTRICTED:Ljava/lang/String; = "qc_max_job_count_restricted"

.field static final KEY_MAX_JOB_COUNT_WORKING:Ljava/lang/String; = "qc_max_job_count_working"

.field static final KEY_MAX_SESSION_COUNT_ACTIVE:Ljava/lang/String; = "qc_max_session_count_active"

.field static final KEY_MAX_SESSION_COUNT_EXEMPTED:Ljava/lang/String; = "qc_max_session_count_exempted"

.field static final KEY_MAX_SESSION_COUNT_FREQUENT:Ljava/lang/String; = "qc_max_session_count_frequent"

.field static final KEY_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:Ljava/lang/String; = "qc_max_session_count_per_rate_limiting_window"

.field static final KEY_MAX_SESSION_COUNT_RARE:Ljava/lang/String; = "qc_max_session_count_rare"

.field static final KEY_MAX_SESSION_COUNT_RESTRICTED:Ljava/lang/String; = "qc_max_session_count_restricted"

.field static final KEY_MAX_SESSION_COUNT_WORKING:Ljava/lang/String; = "qc_max_session_count_working"

.field static final KEY_MIN_QUOTA_CHECK_DELAY_MS:Ljava/lang/String; = "qc_min_quota_check_delay_ms"

.field static final KEY_QUOTA_BUMP_ADDITIONAL_DURATION_MS:Ljava/lang/String; = "qc_quota_bump_additional_duration_ms"

.field static final KEY_QUOTA_BUMP_ADDITIONAL_JOB_COUNT:Ljava/lang/String; = "qc_quota_bump_additional_job_count"

.field static final KEY_QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:Ljava/lang/String; = "qc_quota_bump_additional_session_count"

.field static final KEY_QUOTA_BUMP_LIMIT:Ljava/lang/String; = "qc_quota_bump_limit"

.field static final KEY_QUOTA_BUMP_WINDOW_SIZE_MS:Ljava/lang/String; = "qc_quota_bump_window_size_ms"

.field static final KEY_RATE_LIMITING_WINDOW_MS:Ljava/lang/String; = "qc_rate_limiting_window_ms"

.field static final KEY_TIMING_SESSION_COALESCING_DURATION_MS:Ljava/lang/String; = "qc_timing_session_coalescing_duration_ms"

.field static final KEY_WINDOW_SIZE_ACTIVE_MS:Ljava/lang/String; = "qc_window_size_active_ms"

.field static final KEY_WINDOW_SIZE_EXEMPTED_MS:Ljava/lang/String; = "qc_window_size_exempted_ms"

.field static final KEY_WINDOW_SIZE_FREQUENT_MS:Ljava/lang/String; = "qc_window_size_frequent_ms"

.field static final KEY_WINDOW_SIZE_RARE_MS:Ljava/lang/String; = "qc_window_size_rare_ms"

.field static final KEY_WINDOW_SIZE_RESTRICTED_MS:Ljava/lang/String; = "qc_window_size_restricted_ms"

.field static final KEY_WINDOW_SIZE_WORKING_MS:Ljava/lang/String; = "qc_window_size_working_ms"

.field private static final MIN_BUCKET_JOB_COUNT:I = 0xa

.field private static final MIN_BUCKET_SESSION_COUNT:I = 0x1

.field private static final MIN_MAX_EXECUTION_TIME_MS:J = 0x36ee80L

.field private static final MIN_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I = 0xa

.field private static final MIN_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I = 0xa

.field private static final MIN_RATE_LIMITING_WINDOW_MS:J = 0x7530L

.field private static final QC_CONSTANT_PREFIX:Ljava/lang/String; = "qc_"


# instance fields
.field public ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J

.field public ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J

.field public ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J

.field public ALLOWED_TIME_PER_PERIOD_RARE_MS:J

.field public ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J

.field public ALLOWED_TIME_PER_PERIOD_WORKING_MS:J

.field public EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J

.field public EJ_GRACE_PERIOD_TOP_APP_MS:J

.field public EJ_LIMIT_ACTIVE_MS:J

.field public EJ_LIMIT_ADDITION_INSTALLER_MS:J

.field public EJ_LIMIT_ADDITION_SPECIAL_MS:J

.field public EJ_LIMIT_EXEMPTED_MS:J

.field public EJ_LIMIT_FREQUENT_MS:J

.field public EJ_LIMIT_RARE_MS:J

.field public EJ_LIMIT_RESTRICTED_MS:J

.field public EJ_LIMIT_WORKING_MS:J

.field public EJ_REWARD_INTERACTION_MS:J

.field public EJ_REWARD_NOTIFICATION_SEEN_MS:J

.field public EJ_REWARD_TOP_APP_MS:J

.field public EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

.field public EJ_WINDOW_SIZE_MS:J

.field public IN_QUOTA_BUFFER_MS:J

.field public MAX_EXECUTION_TIME_MS:J

.field public MAX_JOB_COUNT_ACTIVE:I

.field public MAX_JOB_COUNT_EXEMPTED:I

.field public MAX_JOB_COUNT_FREQUENT:I

.field public MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

.field public MAX_JOB_COUNT_RARE:I

.field public MAX_JOB_COUNT_RESTRICTED:I

.field public MAX_JOB_COUNT_WORKING:I

.field public MAX_SESSION_COUNT_ACTIVE:I

.field public MAX_SESSION_COUNT_EXEMPTED:I

.field public MAX_SESSION_COUNT_FREQUENT:I

.field public MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

.field public MAX_SESSION_COUNT_RARE:I

.field public MAX_SESSION_COUNT_RESTRICTED:I

.field public MAX_SESSION_COUNT_WORKING:I

.field public MIN_QUOTA_CHECK_DELAY_MS:J

.field public QUOTA_BUMP_ADDITIONAL_DURATION_MS:J

.field public QUOTA_BUMP_ADDITIONAL_JOB_COUNT:I

.field public QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:I

.field public QUOTA_BUMP_LIMIT:I

.field public QUOTA_BUMP_WINDOW_SIZE_MS:J

.field public RATE_LIMITING_WINDOW_MS:J

.field public TIMING_SESSION_COALESCING_DURATION_MS:J

.field public WINDOW_SIZE_ACTIVE_MS:J

.field public WINDOW_SIZE_EXEMPTED_MS:J

.field public WINDOW_SIZE_FREQUENT_MS:J

.field public WINDOW_SIZE_RARE_MS:J

.field public WINDOW_SIZE_RESTRICTED_MS:J

.field public WINDOW_SIZE_WORKING_MS:J

.field private mEJLimitConstantsUpdated:Z

.field private mExecutionPeriodConstantsUpdated:Z

.field private mQuotaBumpConstantsUpdated:Z

.field private mRateLimitingConstantsUpdated:Z

.field private mShouldReevaluateConstraints:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmShouldReevaluateConstraints(Lcom/android/server/job/controllers/QuotaController$QcConstants;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmEJLimitConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmExecutionPeriodConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmQuotaBumpConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mQuotaBumpConstantsUpdated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRateLimitingConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShouldReevaluateConstraints(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdump(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/IndentingPrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdump(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 16
    .param p1, "this$0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 2941
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2943
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    .line 2944
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    .line 2945
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    .line 2946
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mQuotaBumpConstantsUpdated:Z

    .line 3190
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J

    .line 3196
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J

    .line 3201
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_WORKING_MS:J

    .line 3206
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J

    .line 3212
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RARE_MS:J

    .line 3217
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J

    .line 3224
    const-wide/16 v2, 0x7530

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 3231
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_EXEMPTED_MS:J

    .line 3238
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 3245
    const-wide/32 v4, 0x6ddd00

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 3252
    const-wide/32 v4, 0x1b77400

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 3259
    const-wide/32 v6, 0x5265c00

    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 3266
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    .line 3271
    const-wide/32 v8, 0xdbba00

    iput-wide v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 3277
    const/16 v8, 0x4b

    iput v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_EXEMPTED:I

    .line 3283
    iput v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    .line 3289
    const/16 v9, 0x78

    iput v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    .line 3295
    const/16 v9, 0xc8

    iput v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    .line 3301
    const/16 v9, 0x30

    iput v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    .line 3307
    const/16 v9, 0xa

    iput v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    .line 3310
    const-wide/32 v10, 0xea60

    iput-wide v10, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 3315
    const/16 v12, 0x14

    iput v12, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 3322
    iput v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_EXEMPTED:I

    .line 3328
    iput v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    .line 3334
    iput v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    .line 3340
    const/16 v8, 0x8

    iput v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    .line 3346
    const/4 v9, 0x3

    iput v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    .line 3352
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    .line 3358
    iput v12, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 3365
    const-wide/16 v12, 0x1388

    iput-wide v12, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 3369
    iput-wide v10, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    .line 3399
    const-wide/32 v12, 0x2932e0

    iput-wide v12, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_EXEMPTED_MS:J

    .line 3406
    const-wide/32 v12, 0x1b7740

    iput-wide v12, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    .line 3413
    iput-wide v12, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    .line 3420
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    .line 3427
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    .line 3434
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    .line 3439
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    .line 3445
    iput-wide v12, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    .line 3452
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    .line 3457
    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    .line 3463
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    .line 3468
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    .line 3473
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    .line 3479
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J

    .line 3484
    iput-wide v10, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TOP_APP_MS:J

    .line 3489
    iput-wide v10, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_DURATION_MS:J

    .line 3494
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_JOB_COUNT:I

    .line 3499
    iput v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:I

    .line 3505
    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_WINDOW_SIZE_MS:J

    .line 3511
    iput v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_LIMIT:I

    return-void
.end method

.method private dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 4115
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4116
    const-string v0, "QuotaController:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4117
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4118
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_allowed_time_per_period_exempted_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4119
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4120
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_allowed_time_per_period_active_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4121
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4122
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_WORKING_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_allowed_time_per_period_working_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4123
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4124
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_allowed_time_per_period_frequent_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4125
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4126
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RARE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_allowed_time_per_period_rare_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4127
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4128
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J

    .line 4129
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4128
    const-string/jumbo v1, "qc_allowed_time_per_period_restricted_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4129
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4130
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_in_quota_buffer_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4131
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_EXEMPTED_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_window_size_exempted_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4132
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_window_size_active_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4133
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_window_size_working_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4134
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_window_size_frequent_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4135
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_window_size_rare_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4136
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_window_size_restricted_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4137
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_max_execution_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4138
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_EXEMPTED:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_exempted"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4139
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_active"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4140
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_working"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4141
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_frequent"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4142
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_rare"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4143
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_restricted"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4144
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_rate_limiting_window_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4145
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 4146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4145
    const-string/jumbo v1, "qc_max_job_count_per_rate_limiting_window"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4146
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4147
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_EXEMPTED:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_exempted"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4148
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_active"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4149
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_working"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4150
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_frequent"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4151
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_rare"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4152
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_restricted"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4153
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 4154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4153
    const-string/jumbo v1, "qc_max_session_count_per_rate_limiting_window"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4154
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4155
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 4156
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4155
    const-string/jumbo v1, "qc_timing_session_coalescing_duration_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4156
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4157
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_min_quota_check_delay_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4159
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_EXEMPTED_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_exempted_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4160
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_active_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4161
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_working_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4162
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_frequent_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4163
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_rare_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4164
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_restricted_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4165
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_addition_installer_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4166
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_addition_special_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4167
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_window_size_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4168
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_top_app_time_chunk_size_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4169
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_reward_top_app_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4170
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_reward_interaction_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4171
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_reward_notification_seen_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4172
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J

    .line 4173
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4172
    const-string/jumbo v1, "qc_ej_grace_period_temp_allowlist_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4173
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4174
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TOP_APP_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_grace_period_top_app_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4176
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_DURATION_MS:J

    .line 4177
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4176
    const-string/jumbo v1, "qc_quota_bump_additional_duration_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4177
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4178
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_JOB_COUNT:I

    .line 4179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4178
    const-string/jumbo v1, "qc_quota_bump_additional_job_count"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4179
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4180
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:I

    .line 4181
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4180
    const-string/jumbo v1, "qc_quota_bump_additional_session_count"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4181
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4182
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_WINDOW_SIZE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_quota_bump_window_size_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4183
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_LIMIT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_quota_bump_limit"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4185
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4186
    return-void
.end method

.method private dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 4189
    const-wide v0, 0x10b00000018L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4190
    .local v0, "qcToken":J
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4191
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4193
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    const-wide v4, 0x10300000004L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4195
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    const-wide v4, 0x10300000005L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4197
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    const-wide v4, 0x10300000006L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4198
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    const-wide v4, 0x10300000014L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4200
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    const-wide v4, 0x10300000007L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4202
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    const-wide v3, 0x10500000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4203
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    const-wide v3, 0x10500000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4205
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    const-wide v3, 0x1050000000aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4207
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    const-wide v3, 0x1050000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4208
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    const-wide v3, 0x10500000015L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4210
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    const-wide v4, 0x10500000013L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4212
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-wide v3, 0x1050000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4214
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    const-wide v3, 0x1050000000dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4216
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    const-wide v3, 0x1050000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4218
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    const-wide v3, 0x1050000000fL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4220
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    const-wide v3, 0x10500000010L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4222
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    const-wide v3, 0x10500000016L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4224
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-wide v3, 0x10500000011L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4226
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    const-wide v4, 0x10300000012L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4228
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    const-wide v4, 0x10300000017L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4231
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    const-wide v4, 0x10300000018L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4233
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    const-wide v4, 0x10300000019L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4235
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    const-wide v4, 0x1030000001aL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4237
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    const-wide v4, 0x1030000001bL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4239
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    const-wide v4, 0x1030000001cL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4241
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    const-wide v4, 0x1030000001dL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4243
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    const-wide v4, 0x1030000001eL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4245
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    const-wide v4, 0x1030000001fL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4247
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    const-wide v4, 0x10300000020L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4249
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    const-wide v4, 0x10300000021L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4252
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4253
    return-void
.end method

.method private updateEJLimitConstantsLocked()V
    .registers 25

    .line 3958
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    if-eqz v1, :cond_7

    .line 3959
    return-void

    .line 3961
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    .line 3964
    const-string/jumbo v2, "qc_ej_limit_exempted_ms"

    const-string/jumbo v3, "qc_ej_limit_active_ms"

    const-string/jumbo v4, "qc_ej_limit_working_ms"

    const-string/jumbo v5, "qc_ej_limit_frequent_ms"

    const-string/jumbo v6, "qc_ej_limit_rare_ms"

    const-string/jumbo v7, "qc_ej_limit_restricted_ms"

    const-string/jumbo v8, "qc_ej_limit_addition_special_ms"

    const-string/jumbo v9, "qc_ej_limit_addition_installer_ms"

    const-string/jumbo v10, "qc_ej_window_size_ms"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "jobscheduler"

    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    .line 3972
    .local v2, "properties":Landroid/provider/DeviceConfig$Properties;
    const-wide/32 v3, 0x2932e0

    const-string/jumbo v5, "qc_ej_limit_exempted_ms"

    invoke-virtual {v2, v5, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_EXEMPTED_MS:J

    .line 3974
    const-string/jumbo v3, "qc_ej_limit_active_ms"

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    .line 3976
    const-string/jumbo v3, "qc_ej_limit_working_ms"

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    .line 3978
    const-string/jumbo v3, "qc_ej_limit_frequent_ms"

    const-wide/32 v6, 0x927c0

    invoke-virtual {v2, v3, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    .line 3980
    const-string/jumbo v3, "qc_ej_limit_rare_ms"

    invoke-virtual {v2, v3, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    .line 3982
    const-string/jumbo v3, "qc_ej_limit_restricted_ms"

    const-wide/32 v8, 0x493e0

    invoke-virtual {v2, v3, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    .line 3984
    const-string/jumbo v3, "qc_ej_limit_addition_installer_ms"

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    .line 3986
    const-string/jumbo v3, "qc_ej_limit_addition_special_ms"

    const-wide/32 v4, 0xdbba0

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    .line 3988
    const-string/jumbo v3, "qc_ej_window_size_ms"

    const-wide/32 v10, 0x5265c00

    invoke-virtual {v2, v3, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    .line 3992
    const-wide/32 v14, 0x36ee80

    .line 3993
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 3992
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 3994
    .local v10, "newWindowSizeMs":J
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitWindowSizeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v12

    cmp-long v3, v12, v10

    if-eqz v3, :cond_af

    .line 3995
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3, v10, v11}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmEJLimitWindowSizeMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3996
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3999
    :cond_af
    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_EXEMPTED_MS:J

    .line 4000
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 3999
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 4001
    .local v12, "newExemptLimitMs":J
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v3

    const/4 v14, 0x6

    aget-wide v15, v3, v14

    cmp-long v3, v15, v12

    if-eqz v3, :cond_d0

    .line 4002
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v3

    aput-wide v12, v3, v14

    .line 4003
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4006
    :cond_d0
    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    .line 4007
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 4006
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 4008
    .local v14, "newActiveLimitMs":J
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v3

    const/16 v16, 0x0

    aget-wide v17, v3, v16

    cmp-long v3, v17, v14

    if-eqz v3, :cond_f2

    .line 4009
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v3

    aput-wide v14, v3, v16

    .line 4010
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4013
    :cond_f2
    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    .line 4014
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 4013
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 4015
    .local v3, "newWorkingLimitMs":J
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aget-wide v8, v5, v1

    cmp-long v5, v8, v3

    if-eqz v5, :cond_112

    .line 4016
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aput-wide v3, v5, v1

    .line 4017
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4020
    :cond_112
    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    .line 4021
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 4020
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 4022
    .local v8, "newFrequentLimitMs":J
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    const/16 v18, 0x2

    aget-wide v19, v5, v18

    cmp-long v5, v19, v8

    if-eqz v5, :cond_134

    .line 4023
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aput-wide v8, v5, v18

    .line 4024
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4027
    :cond_134
    move-object/from16 v18, v2

    .end local v2    # "properties":Landroid/provider/DeviceConfig$Properties;
    .local v18, "properties":Landroid/provider/DeviceConfig$Properties;
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    .line 4028
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 4027
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 4029
    .local v1, "newRareLimitMs":J
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v6

    const/4 v7, 0x3

    aget-wide v19, v6, v7

    cmp-long v6, v19, v1

    if-eqz v6, :cond_158

    .line 4030
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v6

    aput-wide v1, v6, v7

    .line 4031
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4034
    :cond_158
    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    .line 4035
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 4034
    move-wide/from16 v19, v1

    const-wide/32 v1, 0x493e0

    .end local v1    # "newRareLimitMs":J
    .local v19, "newRareLimitMs":J
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 4036
    .local v1, "newRestrictedLimitMs":J
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v6

    const/4 v7, 0x5

    aget-wide v16, v6, v7

    cmp-long v6, v16, v1

    if-eqz v6, :cond_17f

    .line 4037
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v6

    aput-wide v1, v6, v7

    .line 4038
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4041
    :cond_17f
    sub-long v6, v10, v14

    move-wide/from16 v16, v1

    .end local v1    # "newRestrictedLimitMs":J
    .local v16, "newRestrictedLimitMs":J
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    .line 4042
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 4041
    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 4043
    .local v1, "newAdditionInstallerMs":J
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEjLimitAdditionInstallerMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v21

    cmp-long v5, v21, v1

    if-eqz v5, :cond_1a1

    .line 4044
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmEjLimitAdditionInstallerMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 4045
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4047
    :cond_1a1
    sub-long v5, v10, v14

    move-wide/from16 v22, v8

    .end local v8    # "newFrequentLimitMs":J
    .local v22, "newFrequentLimitMs":J
    iget-wide v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    .line 4048
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 4047
    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 4049
    .local v5, "newAdditionSpecialMs":J
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEjLimitAdditionSpecialMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-eqz v7, :cond_1c3

    .line 4050
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7, v5, v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmEjLimitAdditionSpecialMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 4051
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4053
    :cond_1c3
    return-void
.end method

.method private updateExecutionPeriodConstantsLocked()V
    .registers 43

    .line 3759
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    if-eqz v1, :cond_7

    .line 3760
    return-void

    .line 3762
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    .line 3765
    const-string/jumbo v2, "qc_allowed_time_per_period_exempted_ms"

    const-string/jumbo v3, "qc_allowed_time_per_period_active_ms"

    const-string/jumbo v4, "qc_allowed_time_per_period_working_ms"

    const-string/jumbo v5, "qc_allowed_time_per_period_frequent_ms"

    const-string/jumbo v6, "qc_allowed_time_per_period_rare_ms"

    const-string/jumbo v7, "qc_allowed_time_per_period_restricted_ms"

    const-string/jumbo v8, "qc_in_quota_buffer_ms"

    const-string/jumbo v9, "qc_max_execution_time_ms"

    const-string/jumbo v10, "qc_window_size_exempted_ms"

    const-string/jumbo v11, "qc_window_size_active_ms"

    const-string/jumbo v12, "qc_window_size_working_ms"

    const-string/jumbo v13, "qc_window_size_frequent_ms"

    const-string/jumbo v14, "qc_window_size_rare_ms"

    const-string/jumbo v15, "qc_window_size_restricted_ms"

    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "jobscheduler"

    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    .line 3776
    .local v2, "properties":Landroid/provider/DeviceConfig$Properties;
    nop

    .line 3777
    const-string/jumbo v3, "qc_allowed_time_per_period_exempted_ms"

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J

    .line 3779
    nop

    .line 3780
    const-string/jumbo v3, "qc_allowed_time_per_period_active_ms"

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J

    .line 3782
    nop

    .line 3783
    const-string/jumbo v3, "qc_allowed_time_per_period_working_ms"

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_WORKING_MS:J

    .line 3785
    nop

    .line 3786
    const-string/jumbo v3, "qc_allowed_time_per_period_frequent_ms"

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J

    .line 3788
    nop

    .line 3789
    const-string/jumbo v3, "qc_allowed_time_per_period_rare_ms"

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RARE_MS:J

    .line 3791
    nop

    .line 3792
    const-string/jumbo v3, "qc_allowed_time_per_period_restricted_ms"

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J

    .line 3794
    const-wide/16 v6, 0x7530

    const-string/jumbo v3, "qc_in_quota_buffer_ms"

    invoke-virtual {v2, v3, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 3796
    const-wide/32 v6, 0xdbba00

    const-string/jumbo v3, "qc_max_execution_time_ms"

    invoke-virtual {v2, v3, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 3798
    const-string/jumbo v3, "qc_window_size_exempted_ms"

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_EXEMPTED_MS:J

    .line 3800
    const-string/jumbo v3, "qc_window_size_active_ms"

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 3802
    const-wide/32 v3, 0x6ddd00

    .line 3803
    const-string/jumbo v5, "qc_window_size_working_ms"

    invoke-virtual {v2, v5, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 3804
    const-wide/32 v3, 0x1b77400

    .line 3805
    const-string/jumbo v5, "qc_window_size_frequent_ms"

    invoke-virtual {v2, v5, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 3807
    const-string/jumbo v3, "qc_window_size_rare_ms"

    const-wide/32 v4, 0x5265c00

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 3809
    nop

    .line 3810
    const-string/jumbo v3, "qc_window_size_restricted_ms"

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    .line 3813
    const-wide/32 v6, 0x36ee80

    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 3814
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 3813
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 3815
    .local v6, "newMaxExecutionTimeMs":J
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-eqz v3, :cond_103

    .line 3816
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3, v6, v7}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3817
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v8

    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmQuotaBufferMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v3, v8, v9}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmMaxExecutionTimeIntoQuotaMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3818
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3820
    :cond_103
    const-wide v8, 0x7fffffffffffffffL

    .line 3821
    .local v8, "minAllowedTimeMs":J
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J

    .line 3822
    const-wide/32 v14, 0xea60

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 3821
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 3823
    .local v10, "newAllowedTimeExemptedMs":J
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 3824
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v3

    const/4 v12, 0x6

    aget-wide v16, v3, v12

    cmp-long v3, v16, v10

    if-eqz v3, :cond_136

    .line 3825
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v3

    aput-wide v10, v3, v12

    .line 3826
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3828
    :cond_136
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v4

    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J

    .line 3829
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 3828
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 3830
    .local v4, "newAllowedTimeActiveMs":J
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 3831
    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v12

    const/4 v13, 0x0

    aget-wide v18, v12, v13

    cmp-long v12, v18, v4

    if-eqz v12, :cond_161

    .line 3832
    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v12

    aput-wide v4, v12, v13

    .line 3833
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3835
    :cond_161
    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    move-wide/from16 v19, v4

    .end local v4    # "newAllowedTimeActiveMs":J
    .local v19, "newAllowedTimeActiveMs":J
    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v3

    move-object v12, v2

    .end local v2    # "properties":Landroid/provider/DeviceConfig$Properties;
    .local v12, "properties":Landroid/provider/DeviceConfig$Properties;
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_WORKING_MS:J

    .line 3836
    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3835
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 3837
    .local v1, "newAllowedTimeWorkingMs":J
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 3838
    .end local v8    # "minAllowedTimeMs":J
    .local v3, "minAllowedTimeMs":J
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    const/4 v5, 0x1

    aget-wide v8, v8, v5

    cmp-long v8, v8, v1

    if-eqz v8, :cond_18f

    .line 3839
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    aput-wide v1, v8, v5

    .line 3840
    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3842
    :cond_18f
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v8

    move-wide/from16 v21, v6

    .end local v6    # "newMaxExecutionTimeMs":J
    .local v21, "newMaxExecutionTimeMs":J
    iget-wide v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J

    .line 3843
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 3842
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 3844
    .local v8, "newAllowedTimeFrequentMs":J
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 3845
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    const/4 v6, 0x2

    aget-wide v23, v5, v6

    cmp-long v5, v23, v8

    if-eqz v5, :cond_1bd

    .line 3846
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aput-wide v8, v5, v6

    .line 3847
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3849
    :cond_1bd
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    move-wide/from16 v25, v1

    .end local v1    # "newAllowedTimeWorkingMs":J
    .local v25, "newAllowedTimeWorkingMs":J
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RARE_MS:J

    .line 3850
    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3849
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 3851
    .local v1, "newAllowedTimeRareMs":J
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 3852
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    const/4 v6, 0x3

    aget-wide v27, v5, v6

    cmp-long v5, v27, v1

    if-eqz v5, :cond_1eb

    .line 3853
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aput-wide v1, v5, v6

    .line 3854
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3856
    :cond_1eb
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    move-wide/from16 v28, v1

    .end local v1    # "newAllowedTimeRareMs":J
    .local v28, "newAllowedTimeRareMs":J
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J

    .line 3857
    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3856
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 3858
    .local v1, "newAllowedTimeRestrictedMs":J
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 3859
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    const/4 v6, 0x5

    aget-wide v14, v5, v6

    cmp-long v5, v14, v1

    if-eqz v5, :cond_219

    .line 3860
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aput-wide v1, v5, v6

    .line 3861
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3865
    :cond_219
    const-wide/16 v14, 0x0

    const-wide/32 v5, 0x493e0

    move-wide/from16 v30, v8

    .end local v8    # "newAllowedTimeFrequentMs":J
    .local v30, "newAllowedTimeFrequentMs":J
    iget-wide v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 3866
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 3865
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 3867
    .local v6, "newQuotaBufferMs":J
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmQuotaBufferMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v14

    cmp-long v5, v14, v6

    if-eqz v5, :cond_251

    .line 3868
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5, v6, v7}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmQuotaBufferMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3869
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v14

    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmQuotaBufferMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v32

    sub-long v14, v14, v32

    invoke-static {v5, v14, v15}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmMaxExecutionTimeIntoQuotaMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3870
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3872
    :cond_251
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    move-wide/from16 v32, v6

    const/4 v14, 0x6

    .end local v6    # "newQuotaBufferMs":J
    .local v32, "newQuotaBufferMs":J
    aget-wide v5, v8, v14

    iget-wide v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_EXEMPTED_MS:J

    .line 3873
    move-wide/from16 v34, v10

    const-wide/32 v9, 0x5265c00

    .end local v10    # "newAllowedTimeExemptedMs":J
    .local v34, "newAllowedTimeExemptedMs":J
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 3872
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 3874
    .local v6, "newExemptedPeriodMs":J
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aget-wide v8, v5, v14

    cmp-long v5, v8, v6

    if-eqz v5, :cond_282

    .line 3875
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aput-wide v6, v5, v14

    .line 3876
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3878
    :cond_282
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    aget-wide v8, v8, v13

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 3879
    move-wide/from16 v36, v6

    const-wide/32 v5, 0x5265c00

    .end local v6    # "newExemptedPeriodMs":J
    .local v36, "newExemptedPeriodMs":J
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 3878
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 3880
    .local v8, "newActivePeriodMs":J
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aget-wide v5, v5, v13

    cmp-long v5, v5, v8

    if-eqz v5, :cond_2b1

    .line 3881
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aput-wide v8, v5, v13

    .line 3882
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto :goto_2b2

    .line 3880
    :cond_2b1
    const/4 v5, 0x1

    .line 3884
    :goto_2b2
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v6

    aget-wide v6, v6, v5

    iget-wide v13, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 3885
    move-object v10, v12

    const-wide/32 v11, 0x5265c00

    .end local v12    # "properties":Landroid/provider/DeviceConfig$Properties;
    .local v10, "properties":Landroid/provider/DeviceConfig$Properties;
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    .line 3884
    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 3886
    .local v6, "newWorkingPeriodMs":J
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v11}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v11

    aget-wide v11, v11, v5

    cmp-long v11, v11, v6

    if-eqz v11, :cond_2de

    .line 3887
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v11}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v11

    aput-wide v6, v11, v5

    .line 3888
    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3890
    :cond_2de
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v11}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v11

    const/4 v12, 0x2

    aget-wide v13, v11, v12

    move-wide/from16 v38, v6

    .end local v6    # "newWorkingPeriodMs":J
    .local v38, "newWorkingPeriodMs":J
    iget-wide v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 3891
    move-wide/from16 v40, v8

    const-wide/32 v7, 0x5265c00

    .end local v8    # "newActivePeriodMs":J
    .local v40, "newActivePeriodMs":J
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 3890
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 3892
    .local v6, "newFrequentPeriodMs":J
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aget-wide v8, v5, v12

    cmp-long v5, v8, v6

    if-eqz v5, :cond_30f

    .line 3893
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aput-wide v6, v5, v12

    .line 3894
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3896
    :cond_30f
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    const/4 v9, 0x3

    aget-wide v11, v8, v9

    iget-wide v13, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 3897
    move-wide/from16 v23, v6

    const-wide/32 v5, 0x5265c00

    .end local v6    # "newFrequentPeriodMs":J
    .local v23, "newFrequentPeriodMs":J
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 3896
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 3898
    .local v11, "newRarePeriodMs":J
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aget-wide v5, v5, v9

    cmp-long v5, v5, v11

    if-eqz v5, :cond_33e

    .line 3899
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aput-wide v11, v5, v9

    .line 3900
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3903
    :cond_33e
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v6

    const/4 v7, 0x5

    aget-wide v8, v6, v7

    const-wide/32 v13, 0x240c8400

    iget-wide v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    .line 3904
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 3903
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 3905
    .local v5, "newRestrictedPeriodMs":J
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    aget-wide v8, v8, v7

    cmp-long v8, v8, v5

    if-eqz v8, :cond_36b

    .line 3906
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    aput-wide v5, v8, v7

    .line 3907
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3909
    :cond_36b
    return-void
.end method

.method private updateQuotaBumpConstantsLocked()V
    .registers 14

    .line 4056
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mQuotaBumpConstantsUpdated:Z

    if-eqz v0, :cond_5

    .line 4057
    return-void

    .line 4059
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mQuotaBumpConstantsUpdated:Z

    .line 4062
    const-string/jumbo v1, "qc_quota_bump_additional_duration_ms"

    const-string/jumbo v2, "qc_quota_bump_additional_job_count"

    const-string/jumbo v3, "qc_quota_bump_additional_session_count"

    const-string/jumbo v4, "qc_quota_bump_window_size_ms"

    const-string/jumbo v5, "qc_quota_bump_limit"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "jobscheduler"

    invoke-static {v7, v6}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v6

    .line 4067
    .local v6, "properties":Landroid/provider/DeviceConfig$Properties;
    const-wide/32 v7, 0xea60

    invoke-virtual {v6, v1, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_DURATION_MS:J

    .line 4070
    const/4 v1, 0x2

    invoke-virtual {v6, v2, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_JOB_COUNT:I

    .line 4072
    invoke-virtual {v6, v3, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:I

    .line 4075
    const-wide/32 v1, 0x1b77400

    invoke-virtual {v6, v4, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_WINDOW_SIZE_MS:J

    .line 4077
    const/16 v1, 0x8

    invoke-virtual {v6, v5, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_LIMIT:I

    .line 4081
    const-wide/32 v1, 0x36ee80

    const-wide/32 v3, 0x5265c00

    iget-wide v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_WINDOW_SIZE_MS:J

    .line 4082
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 4081
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 4083
    .local v1, "newWindowSizeMs":J
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmQuotaBumpWindowSizeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_6a

    .line 4084
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmQuotaBumpWindowSizeMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 4085
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4088
    :cond_6a
    iget v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_LIMIT:I

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4089
    .local v3, "newLimit":I
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmQuotaBumpLimit(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v5

    if-eq v5, v3, :cond_80

    .line 4090
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5, v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmQuotaBumpLimit(Lcom/android/server/job/controllers/QuotaController;I)V

    .line 4091
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4094
    :cond_80
    iget v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_JOB_COUNT:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 4095
    .local v5, "newJobAddition":I
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmQuotaBumpAdditionalJobCount(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v7

    if-eq v7, v5, :cond_95

    .line 4096
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7, v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmQuotaBumpAdditionalJobCount(Lcom/android/server/job/controllers/QuotaController;I)V

    .line 4097
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4100
    :cond_95
    iget v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 4101
    .local v4, "newSessionAddition":I
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmQuotaBumpAdditionalSessionCount(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v7

    if-eq v7, v4, :cond_aa

    .line 4102
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7, v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmQuotaBumpAdditionalSessionCount(Lcom/android/server/job/controllers/QuotaController;I)V

    .line 4103
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4106
    :cond_aa
    const-wide/16 v7, 0x0

    const-wide/32 v9, 0x927c0

    iget-wide v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_DURATION_MS:J

    .line 4107
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 4106
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 4108
    .local v7, "newAdditionalDuration":J
    iget-object v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmQuotaBumpAdditionalDurationMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-eqz v9, :cond_ca

    .line 4109
    iget-object v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9, v7, v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmQuotaBumpAdditionalDurationMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 4110
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4112
    :cond_ca
    return-void
.end method

.method private updateRateLimitingConstantsLocked()V
    .registers 10

    .line 3912
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    if-eqz v0, :cond_5

    .line 3913
    return-void

    .line 3915
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    .line 3918
    const-string/jumbo v1, "qc_rate_limiting_window_ms"

    const-string/jumbo v2, "qc_max_job_count_per_rate_limiting_window"

    const-string/jumbo v3, "qc_max_session_count_per_rate_limiting_window"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "jobscheduler"

    invoke-static {v5, v4}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v4

    .line 3923
    .local v4, "properties":Landroid/provider/DeviceConfig$Properties;
    const-wide/32 v5, 0xea60

    .line 3924
    invoke-virtual {v4, v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 3927
    nop

    .line 3928
    const/16 v1, 0x14

    invoke-virtual {v4, v2, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 3931
    nop

    .line 3932
    invoke-virtual {v4, v3, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 3935
    const-wide/32 v1, 0x5265c00

    const-wide/16 v5, 0x7530

    iget-wide v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 3936
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 3935
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 3937
    .local v1, "newRateLimitingWindowMs":J
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmRateLimitingWindowMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    cmp-long v3, v5, v1

    if-eqz v3, :cond_55

    .line 3938
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmRateLimitingWindowMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3939
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3941
    :cond_55
    iget v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    const/16 v5, 0xa

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3944
    .local v3, "newMaxJobCountPerRateLimitingWindow":I
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxJobCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v6

    if-eq v6, v3, :cond_6c

    .line 3945
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6, v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmMaxJobCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;I)V

    .line 3946
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3948
    :cond_6c
    iget v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3951
    .local v5, "newMaxSessionCountPerRateLimitPeriod":I
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxSessionCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v6

    if-eq v6, v5, :cond_81

    .line 3952
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6, v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmMaxSessionCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;I)V

    .line 3953
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3955
    :cond_81
    return-void
.end method


# virtual methods
.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .registers 19
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;
    .param p2, "key"    # Ljava/lang/String;

    .line 3515
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v6, 0x5

    sparse-switch v3, :sswitch_data_5c0

    :cond_e
    goto/16 :goto_27c

    :sswitch_10
    const-string/jumbo v3, "qc_max_session_count_frequent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x26

    goto/16 :goto_27d

    :sswitch_1d
    const-string/jumbo v3, "qc_max_session_count_rare"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x27

    goto/16 :goto_27d

    :sswitch_2a
    const-string/jumbo v3, "qc_max_session_count_restricted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x28

    goto/16 :goto_27d

    :sswitch_37
    const-string/jumbo v3, "qc_ej_window_size_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x17

    goto/16 :goto_27d

    :sswitch_44
    const-string/jumbo v3, "qc_timing_session_coalescing_duration_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x29

    goto/16 :goto_27d

    :sswitch_51
    const-string/jumbo v3, "qc_window_size_active_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x8

    goto/16 :goto_27d

    :sswitch_5e
    const-string/jumbo v3, "qc_max_job_count_working"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x1f

    goto/16 :goto_27d

    :sswitch_6b
    const-string/jumbo v3, "qc_ej_reward_top_app_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x2c

    goto/16 :goto_27d

    :sswitch_78
    const-string/jumbo v3, "qc_ej_limit_working_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x11

    goto/16 :goto_27d

    :sswitch_85
    const-string/jumbo v3, "qc_allowed_time_per_period_exempted_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    goto/16 :goto_27d

    :sswitch_91
    const-string/jumbo v3, "qc_max_session_count_working"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x25

    goto/16 :goto_27d

    :sswitch_9e
    const-string/jumbo v3, "qc_max_session_count_exempted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x23

    goto/16 :goto_27d

    :sswitch_ab
    const-string/jumbo v3, "qc_in_quota_buffer_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x6

    goto/16 :goto_27d

    :sswitch_b7
    const-string/jumbo v3, "qc_min_quota_check_delay_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x2a

    goto/16 :goto_27d

    :sswitch_c4
    const-string/jumbo v3, "qc_ej_grace_period_temp_allowlist_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x2f

    goto/16 :goto_27d

    :sswitch_d1
    const-string/jumbo v3, "qc_allowed_time_per_period_rare_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x4

    goto/16 :goto_27d

    :sswitch_dd
    const-string/jumbo v3, "qc_quota_bump_additional_session_count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x1a

    goto/16 :goto_27d

    :sswitch_ea
    const-string/jumbo v3, "qc_max_session_count_active"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x24

    goto/16 :goto_27d

    :sswitch_f7
    const-string/jumbo v3, "qc_quota_bump_additional_job_count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x19

    goto/16 :goto_27d

    :sswitch_104
    const-string/jumbo v3, "qc_window_size_working_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x9

    goto/16 :goto_27d

    :sswitch_111
    const-string/jumbo v3, "qc_ej_grace_period_top_app_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x30

    goto/16 :goto_27d

    :sswitch_11e
    const-string/jumbo v3, "qc_max_execution_time_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x7

    goto/16 :goto_27d

    :sswitch_12a
    const-string/jumbo v3, "qc_ej_limit_addition_installer_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x16

    goto/16 :goto_27d

    :sswitch_137
    const-string/jumbo v3, "qc_ej_limit_rare_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x13

    goto/16 :goto_27d

    :sswitch_144
    const-string/jumbo v3, "qc_ej_limit_restricted_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x14

    goto/16 :goto_27d

    :sswitch_151
    const-string/jumbo v3, "qc_max_job_count_per_rate_limiting_window"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0xe

    goto/16 :goto_27d

    :sswitch_15e
    const-string/jumbo v3, "qc_quota_bump_additional_duration_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x18

    goto/16 :goto_27d

    :sswitch_16b
    const-string/jumbo v3, "qc_allowed_time_per_period_working_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x2

    goto/16 :goto_27d

    :sswitch_177
    const-string/jumbo v3, "qc_max_job_count_frequent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x20

    goto/16 :goto_27d

    :sswitch_184
    const-string/jumbo v3, "qc_window_size_rare_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0xb

    goto/16 :goto_27d

    :sswitch_191
    const-string/jumbo v3, "qc_quota_bump_limit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x1c

    goto/16 :goto_27d

    :sswitch_19e
    const-string/jumbo v3, "qc_max_job_count_restricted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x22

    goto/16 :goto_27d

    :sswitch_1ab
    const-string/jumbo v3, "qc_max_job_count_exempted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x1d

    goto/16 :goto_27d

    :sswitch_1b8
    const-string/jumbo v3, "qc_max_session_count_per_rate_limiting_window"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0xf

    goto/16 :goto_27d

    :sswitch_1c5
    const-string/jumbo v3, "qc_rate_limiting_window_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0xd

    goto/16 :goto_27d

    :sswitch_1d2
    const-string/jumbo v3, "qc_ej_reward_interaction_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x2d

    goto/16 :goto_27d

    :sswitch_1df
    const-string/jumbo v3, "qc_allowed_time_per_period_frequent_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x3

    goto/16 :goto_27d

    :sswitch_1eb
    const-string/jumbo v3, "qc_window_size_restricted_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0xc

    goto/16 :goto_27d

    :sswitch_1f8
    const-string/jumbo v3, "qc_max_job_count_rare"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x21

    goto/16 :goto_27d

    :sswitch_205
    const-string/jumbo v3, "qc_ej_top_app_time_chunk_size_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x2b

    goto/16 :goto_27d

    :sswitch_212
    const-string/jumbo v3, "qc_max_job_count_active"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x1e

    goto :goto_27d

    :sswitch_21e
    const-string/jumbo v3, "qc_ej_reward_notification_seen_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x2e

    goto :goto_27d

    :sswitch_22a
    const-string/jumbo v3, "qc_ej_limit_addition_special_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x15

    goto :goto_27d

    :sswitch_236
    const-string/jumbo v3, "qc_ej_limit_frequent_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x12

    goto :goto_27d

    :sswitch_242
    const-string/jumbo v3, "qc_allowed_time_per_period_restricted_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v6

    goto :goto_27d

    :sswitch_24d
    const-string/jumbo v3, "qc_quota_bump_window_size_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x1b

    goto :goto_27d

    :sswitch_259
    const-string/jumbo v3, "qc_window_size_frequent_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0xa

    goto :goto_27d

    :sswitch_265
    const-string/jumbo v3, "qc_allowed_time_per_period_active_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_27d

    :sswitch_270
    const-string/jumbo v3, "qc_ej_limit_active_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x10

    goto :goto_27d

    :goto_27c
    const/4 v3, -0x1

    :goto_27d
    const-string v13, " vs "

    const-string v14, "EJ top app time chunk less than reward: "

    const-string v15, "JobScheduler.Quota"

    const-wide/32 v7, 0x36ee80

    const-wide/32 v4, 0xea60

    const-wide/16 v9, 0x1388

    const-wide/16 v11, 0x0

    packed-switch v3, :pswitch_data_686

    goto/16 :goto_5be

    .line 3749
    :pswitch_292
    nop

    .line 3750
    invoke-virtual {v1, v2, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TOP_APP_MS:J

    .line 3752
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 3753
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 3752
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmEJGracePeriodTopAppMs(Lcom/android/server/job/controllers/QuotaController;J)V

    goto/16 :goto_5be

    .line 3741
    :pswitch_2a8
    const-wide/32 v3, 0x2bf20

    .line 3742
    invoke-virtual {v1, v2, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J

    .line 3744
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 3745
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 3744
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmEJGracePeriodTempAllowlistMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3746
    goto/16 :goto_5be

    .line 3733
    :pswitch_2c0
    nop

    .line 3734
    invoke-virtual {v1, v2, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    .line 3736
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    const-wide/32 v6, 0x493e0

    .line 3737
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 3736
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmEJRewardNotificationSeenMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3738
    goto/16 :goto_5be

    .line 3724
    :pswitch_2d9
    const-wide/16 v3, 0x3a98

    .line 3725
    invoke-virtual {v1, v2, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    .line 3728
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 3729
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 3728
    const-wide/32 v6, 0xdbba0

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmEJRewardInteractionMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3730
    goto/16 :goto_5be

    .line 3706
    :pswitch_2f3
    nop

    .line 3707
    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    .line 3709
    nop

    .line 3710
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 3709
    const-wide/32 v5, 0xdbba0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 3711
    .local v3, "newTopReward":J
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_5be

    .line 3712
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3713
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_5be

    .line 3717
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5be

    .line 3688
    .end local v3    # "newTopReward":J
    :pswitch_351
    const-wide/16 v3, 0x7530

    .line 3689
    invoke-virtual {v1, v2, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    .line 3691
    const-wide/16 v5, 0x1

    .line 3692
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 3691
    const-wide/32 v5, 0xdbba0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 3693
    .local v3, "newChunkSizeMs":J
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_5be

    .line 3694
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3695
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_5be

    .line 3699
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5be

    .line 3679
    .end local v3    # "newChunkSizeMs":J
    :pswitch_3af
    nop

    .line 3680
    invoke-virtual {v1, v2, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    .line 3683
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmInQuotaAlarmQueue(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    .line 3684
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/32 v6, 0xdbba0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 3683
    invoke-virtual {v3, v4, v5}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->setMinTimeBetweenAlarmsMs(J)V

    .line 3685
    goto/16 :goto_5be

    .line 3669
    :pswitch_3ce
    nop

    .line 3670
    invoke-virtual {v1, v2, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 3671
    nop

    .line 3672
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 3671
    const-wide/32 v5, 0xdbba0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 3673
    .local v3, "newSessionCoalescingDurationMs":J
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTimingSessionCoalescingDurationMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_5be

    .line 3674
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmTimingSessionCoalescingDurationMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3675
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5be

    .line 3660
    .end local v3    # "newSessionCoalescingDurationMs":J
    :pswitch_3f5
    const/4 v5, 0x1

    .line 3661
    invoke-virtual {v1, v2, v5}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    .line 3662
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3663
    .local v3, "newRestrictedMaxSessionCount":I
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    aget v4, v4, v6

    if-eq v4, v3, :cond_5be

    .line 3664
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    aput v3, v4, v6

    .line 3665
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5be

    .line 3651
    .end local v3    # "newRestrictedMaxSessionCount":I
    :pswitch_418
    const/4 v4, 0x1

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    .line 3652
    nop

    .line 3653
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3654
    .local v5, "newRareMaxSessionCount":I
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v6

    aget v6, v6, v3

    if-eq v6, v5, :cond_5be

    .line 3655
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v6

    aput v5, v6, v3

    .line 3656
    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5be

    .line 3641
    .end local v5    # "newRareMaxSessionCount":I
    :pswitch_43b
    const/4 v4, 0x1

    .line 3642
    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    .line 3643
    nop

    .line 3644
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3645
    .local v3, "newFrequentMaxSessionCount":I
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v5

    const/4 v6, 0x2

    aget v5, v5, v6

    if-eq v5, v3, :cond_5be

    .line 3646
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v5

    aput v3, v5, v6

    .line 3647
    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5be

    .line 3631
    .end local v3    # "newFrequentMaxSessionCount":I
    :pswitch_460
    const/4 v4, 0x1

    .line 3632
    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    .line 3633
    nop

    .line 3634
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3635
    .local v3, "newWorkingMaxSessionCount":I
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v5

    aget v5, v5, v4

    if-eq v5, v3, :cond_5be

    .line 3636
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v5

    aput v3, v5, v4

    .line 3637
    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5be

    .line 3621
    .end local v3    # "newWorkingMaxSessionCount":I
    :pswitch_484
    const/4 v4, 0x1

    .line 3622
    const/16 v3, 0x4b

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    .line 3623
    nop

    .line 3624
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3625
    .local v3, "newActiveMaxSessionCount":I
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    if-eq v5, v3, :cond_5be

    .line 3626
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v5

    aput v3, v5, v6

    .line 3627
    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5be

    .line 3611
    .end local v3    # "newActiveMaxSessionCount":I
    :pswitch_4a9
    const/4 v4, 0x1

    .line 3612
    const/16 v3, 0x4b

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_EXEMPTED:I

    .line 3613
    nop

    .line 3614
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3615
    .local v3, "newExemptedMaxSessionCount":I
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v5

    const/4 v6, 0x6

    aget v5, v5, v6

    if-eq v5, v3, :cond_5be

    .line 3616
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v5

    aput v3, v5, v6

    .line 3617
    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5be

    .line 3601
    .end local v3    # "newExemptedMaxSessionCount":I
    :pswitch_4ce
    nop

    .line 3602
    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    .line 3603
    nop

    .line 3604
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3605
    .local v3, "newRestrictedMaxJobCount":I
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    aget v4, v4, v6

    if-eq v4, v3, :cond_5be

    .line 3606
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    aput v3, v4, v6

    .line 3607
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5be

    .line 3593
    .end local v3    # "newRestrictedMaxJobCount":I
    :pswitch_4f3
    const/16 v3, 0x30

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    .line 3594
    const/16 v4, 0xa

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3595
    .local v3, "newRareMaxJobCount":I
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    const/4 v5, 0x3

    aget v4, v4, v5

    if-eq v4, v3, :cond_5be

    .line 3596
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    aput v3, v4, v5

    .line 3597
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5be

    .line 3584
    .end local v3    # "newRareMaxJobCount":I
    :pswitch_519
    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    .line 3585
    const/16 v4, 0xa

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3587
    .local v3, "newFrequentMaxJobCount":I
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    const/4 v5, 0x2

    aget v4, v4, v5

    if-eq v4, v3, :cond_5be

    .line 3588
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    aput v3, v4, v5

    .line 3589
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5be

    .line 3575
    .end local v3    # "newFrequentMaxJobCount":I
    :pswitch_53f
    const/16 v3, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    .line 3576
    const/16 v4, 0xa

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3578
    .local v3, "newWorkingMaxJobCount":I
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    if-eq v4, v3, :cond_5be

    .line 3579
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    aput v3, v4, v5

    .line 3580
    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto :goto_5be

    .line 3567
    .end local v3    # "newWorkingMaxJobCount":I
    :pswitch_563
    const/16 v3, 0x4b

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    .line 3568
    const/16 v4, 0xa

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3569
    .local v3, "newActiveMaxJobCount":I
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    if-eq v4, v3, :cond_5be

    .line 3570
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    aput v3, v4, v5

    .line 3571
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto :goto_5be

    .line 3558
    .end local v3    # "newActiveMaxJobCount":I
    :pswitch_588
    const/16 v3, 0x4b

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_EXEMPTED:I

    .line 3559
    nop

    .line 3560
    const/16 v4, 0xa

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3561
    .local v3, "newExemptedMaxJobCount":I
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    const/4 v5, 0x6

    aget v4, v4, v5

    if-eq v4, v3, :cond_5be

    .line 3562
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    aput v3, v4, v5

    .line 3563
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto :goto_5be

    .line 3554
    .end local v3    # "newExemptedMaxJobCount":I
    :pswitch_5ae
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->updateQuotaBumpConstantsLocked()V

    .line 3555
    goto :goto_5be

    .line 3546
    :pswitch_5b2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->updateEJLimitConstantsLocked()V

    .line 3547
    goto :goto_5be

    .line 3535
    :pswitch_5b6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->updateRateLimitingConstantsLocked()V

    .line 3536
    goto :goto_5be

    .line 3529
    :pswitch_5ba
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->updateExecutionPeriodConstantsLocked()V

    .line 3530
    nop

    .line 3756
    :cond_5be
    :goto_5be
    return-void

    nop

    :sswitch_data_5c0
    .sparse-switch
        -0x74649652 -> :sswitch_270
        -0x66826d2f -> :sswitch_265
        -0x64595545 -> :sswitch_259
        -0x5ae728b6 -> :sswitch_24d
        -0x5a58eba4 -> :sswitch_242
        -0x59dc2eda -> :sswitch_236
        -0x5925a282 -> :sswitch_22a
        -0x559f9f27 -> :sswitch_21e
        -0x54322d00 -> :sswitch_212
        -0x53fcd7ab -> :sswitch_205
        -0x4d93a8e4 -> :sswitch_1f8
        -0x4ab902f2 -> :sswitch_1eb
        -0x3bdfc277 -> :sswitch_1df
        -0x3877c08a -> :sswitch_1d2
        -0x38722911 -> :sswitch_1c5
        -0x36564f14 -> :sswitch_1b8
        -0x335625c8 -> :sswitch_1ab
        -0x2c5330ab -> :sswitch_19e
        -0x24b769da -> :sswitch_191
        -0x1c3a6d99 -> :sswitch_184
        -0x89fefb8 -> :sswitch_177
        0xc171262 -> :sswitch_16b
        0xd62190e -> :sswitch_15e
        0x131036e5 -> :sswitch_151
        0x151434b9 -> :sswitch_144
        0x1514a652 -> :sswitch_137
        0x1ec063cf -> :sswitch_12a
        0x20593da9 -> :sswitch_11e
        0x2751f3d8 -> :sswitch_111
        0x3c5536f0 -> :sswitch_104
        0x3d572e2a -> :sswitch_f7
        0x3fca90c7 -> :sswitch_ea
        0x3ff277c3 -> :sswitch_dd
        0x46a4bc35 -> :sswitch_d1
        0x48395f9f -> :sswitch_c4
        0x4978a53a -> :sswitch_b7
        0x5461fd31 -> :sswitch_ab
        0x546e423f -> :sswitch_9e
        0x59af5190 -> :sswitch_91
        0x5a02ed99 -> :sswitch_85
        0x5db41725 -> :sswitch_78
        0x6788a0b1 -> :sswitch_6b
        0x6e145677 -> :sswitch_5e
        0x71c1a483 -> :sswitch_51
        0x728b0d07 -> :sswitch_44
        0x7685d342 -> :sswitch_37
        0x7bf7519c -> :sswitch_2a
        0x7c3bdaa3 -> :sswitch_1d
        0x7f24784f -> :sswitch_10
    .end sparse-switch

    :pswitch_data_686
    .packed-switch 0x0
        :pswitch_5ba
        :pswitch_5ba
        :pswitch_5ba
        :pswitch_5ba
        :pswitch_5ba
        :pswitch_5ba
        :pswitch_5ba
        :pswitch_5ba
        :pswitch_5ba
        :pswitch_5ba
        :pswitch_5ba
        :pswitch_5ba
        :pswitch_5ba
        :pswitch_5b6
        :pswitch_5b6
        :pswitch_5b6
        :pswitch_5b2
        :pswitch_5b2
        :pswitch_5b2
        :pswitch_5b2
        :pswitch_5b2
        :pswitch_5b2
        :pswitch_5b2
        :pswitch_5b2
        :pswitch_5ae
        :pswitch_5ae
        :pswitch_5ae
        :pswitch_5ae
        :pswitch_5ae
        :pswitch_588
        :pswitch_563
        :pswitch_53f
        :pswitch_519
        :pswitch_4f3
        :pswitch_4ce
        :pswitch_4a9
        :pswitch_484
        :pswitch_460
        :pswitch_43b
        :pswitch_418
        :pswitch_3f5
        :pswitch_3ce
        :pswitch_3af
        :pswitch_351
        :pswitch_2f3
        :pswitch_2d9
        :pswitch_2c0
        :pswitch_2a8
        :pswitch_292
    .end packed-switch
.end method
