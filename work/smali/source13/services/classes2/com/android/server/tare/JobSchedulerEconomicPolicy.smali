.class public Lcom/android/server/tare/JobSchedulerEconomicPolicy;
.super Lcom/android/server/tare/EconomicPolicy;
.source "JobSchedulerEconomicPolicy.java"


# static fields
.field public static final ACTION_JOB_DEFAULT_RUNNING:I = 0x60000005

.field public static final ACTION_JOB_DEFAULT_START:I = 0x60000004

.field public static final ACTION_JOB_HIGH_RUNNING:I = 0x60000003

.field public static final ACTION_JOB_HIGH_START:I = 0x60000002

.field public static final ACTION_JOB_LOW_RUNNING:I = 0x60000007

.field public static final ACTION_JOB_LOW_START:I = 0x60000006

.field public static final ACTION_JOB_MAX_RUNNING:I = 0x60000001

.field public static final ACTION_JOB_MAX_START:I = 0x60000000

.field public static final ACTION_JOB_MIN_RUNNING:I = 0x60000009

.field public static final ACTION_JOB_MIN_START:I = 0x60000008

.field public static final ACTION_JOB_TIMEOUT:I = 0x6000000a

.field private static final COST_MODIFIERS:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tare/EconomicPolicy$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mHardSatiatedConsumptionLimit:J

.field private mInitialSatiatedConsumptionLimit:J

.field private final mInternalResourceService:Lcom/android/server/tare/InternalResourceService;

.field private mMaxSatiatedBalance:J

.field private mMinSatiatedBalanceExempted:J

.field private mMinSatiatedBalanceOther:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field private final mRewards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tare/EconomicPolicy$Reward;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/tare/JobSchedulerEconomicPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->TAG:Ljava/lang/String;

    .line 140
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->COST_MODIFIERS:[I

    return-void

    :array_24
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .registers 4
    .param p1, "irs"    # Lcom/android/server/tare/InternalResourceService;

    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/tare/EconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    .line 153
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 156
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    .line 157
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    .line 161
    iput-object p1, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mInternalResourceService:Lcom/android/server/tare/InternalResourceService;

    .line 162
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V

    .line 163
    return-void
.end method

.method private loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V
    .registers 21
    .param p1, "policyValuesString"    # Ljava/lang/String;
    .param p2, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 217
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 218
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 221
    :try_start_c
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_e} :catch_16

    move-object/from16 v8, p1

    :try_start_10
    invoke-virtual {v0, v8}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_13} :catch_14

    .line 224
    goto :goto_20

    .line 222
    :catch_14
    move-exception v0

    goto :goto_19

    :catch_16
    move-exception v0

    move-object/from16 v8, p1

    .line 223
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_19
    sget-object v1, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Global setting key incorrect: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_20
    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_MIN_SATIATED_BALANCE_EXEMPTED_CAKES:J

    const-string v4, "js_min_satiated_balance_exempted"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    .line 229
    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_MIN_SATIATED_BALANCE_OTHER_APP_CAKES:J

    const-string v4, "js_min_satiated_balance_other_app"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceOther:J

    .line 232
    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_MAX_SATIATED_BALANCE_CAKES:J

    const-string v4, "js_max_satiated_balance"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMaxSatiatedBalance:J

    .line 235
    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_INITIAL_CONSUMPTION_LIMIT_CAKES:J

    const-string v4, "js_initial_consumption_limit"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    .line 238
    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_HARD_CONSUMPTION_LIMIT_CAKES:J

    .line 239
    const-string v4, "js_hard_consumption_limit"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    .line 238
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mHardSatiatedConsumptionLimit:J

    .line 243
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const/high16 v9, 0x60000000

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Action;

    const/high16 v11, 0x60000000

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MAX_START_CTP_CAKES:J

    .line 244
    const-string v4, "js_action_job_max_start_ctp"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MAX_START_BASE_PRICE_CAKES:J

    .line 247
    const-string v4, "js_action_job_max_start_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 243
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v9, 0x60000001

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Action;

    const v11, 0x60000001

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MAX_RUNNING_CTP_CAKES:J

    .line 251
    const-string v4, "js_action_job_max_running_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MAX_RUNNING_BASE_PRICE_CAKES:J

    .line 254
    const-string v4, "js_action_job_max_running_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 250
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v9, 0x60000002

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Action;

    const v11, 0x60000002

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_HIGH_START_CTP_CAKES:J

    .line 258
    const-string v4, "js_action_job_high_start_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_HIGH_START_BASE_PRICE_CAKES:J

    .line 261
    const-string v4, "js_action_job_high_start_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 257
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v9, 0x60000003

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Action;

    const v11, 0x60000003

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_HIGH_RUNNING_CTP_CAKES:J

    .line 265
    const-string v4, "js_action_job_high_running_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_HIGH_RUNNING_BASE_PRICE_CAKES:J

    .line 268
    const-string v4, "js_action_job_high_running_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 264
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v9, 0x60000004

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Action;

    const v11, 0x60000004

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_DEFAULT_START_CTP_CAKES:J

    .line 272
    const-string v4, "js_action_job_default_start_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_DEFAULT_START_BASE_PRICE_CAKES:J

    .line 275
    const-string v4, "js_action_job_default_start_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 271
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v9, 0x60000005

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Action;

    const v11, 0x60000005

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_DEFAULT_RUNNING_CTP_CAKES:J

    .line 279
    const-string v4, "js_action_job_default_running_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_DEFAULT_RUNNING_BASE_PRICE_CAKES:J

    .line 282
    const-string v4, "js_action_job_default_running_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 278
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v9, 0x60000006

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Action;

    const v11, 0x60000006

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_LOW_START_CTP_CAKES:J

    .line 286
    const-string v4, "js_action_job_low_start_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_LOW_START_BASE_PRICE_CAKES:J

    .line 289
    const-string v4, "js_action_job_low_start_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 285
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v9, 0x60000007

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Action;

    const v11, 0x60000007

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_LOW_RUNNING_CTP_CAKES:J

    .line 293
    const-string v4, "js_action_job_low_running_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_LOW_RUNNING_BASE_PRICE_CAKES:J

    .line 296
    const-string v4, "js_action_job_low_running_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 292
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v9, 0x60000008

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Action;

    const v11, 0x60000008

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MIN_START_CTP_CAKES:J

    .line 300
    const-string v4, "js_action_job_min_start_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MIN_START_BASE_PRICE_CAKES:J

    .line 303
    const-string v4, "js_action_job_min_start_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 299
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v9, 0x60000009

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Action;

    const v11, 0x60000009

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MIN_RUNNING_CTP_CAKES:J

    .line 307
    const-string v4, "js_action_job_min_running_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MIN_RUNNING_BASE_PRICE_CAKES:J

    .line 310
    const-string v4, "js_action_job_min_running_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 306
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v9, 0x6000000a

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Action;

    const v11, 0x6000000a

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_TIMEOUT_PENALTY_CTP_CAKES:J

    .line 314
    const-string v4, "js_action_job_timeout_penalty_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_TIMEOUT_PENALTY_BASE_PRICE_CAKES:J

    .line 317
    const-string v4, "js_action_job_timeout_penalty_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 313
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v9, -0x7ffffffe

    new-instance v14, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v11, -0x7ffffffe

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_TOP_ACTIVITY_INSTANT_CAKES:J

    .line 322
    const-string v4, "js_reward_top_activity_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v5, 0x1dcd6500

    .line 325
    const-string v4, "js_reward_top_activity_ongoing"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v15

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_TOP_ACTIVITY_MAX_CAKES:J

    .line 328
    const-string v4, "js_reward_top_activity_max"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v10, v14

    move-object v3, v14

    move-wide v14, v15

    move-wide/from16 v16, v1

    invoke-direct/range {v10 .. v17}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 321
    invoke-virtual {v0, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const/high16 v9, -0x80000000

    new-instance v14, Lcom/android/server/tare/EconomicPolicy$Reward;

    const/high16 v11, -0x80000000

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_SEEN_INSTANT_CAKES:J

    .line 332
    const-string v4, "js_reward_notification_seen_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_SEEN_ONGOING_CAKES:J

    .line 335
    const-string v4, "js_reward_notification_seen_ongoing"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v15

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_SEEN_MAX_CAKES:J

    .line 338
    const-string v4, "js_reward_notification_seen_max"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v10, v14

    move-object v3, v14

    move-wide v14, v15

    move-wide/from16 v16, v1

    invoke-direct/range {v10 .. v17}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 331
    invoke-virtual {v0, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v9, -0x7fffffff

    new-instance v14, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v11, -0x7fffffff

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_INTERACTION_INSTANT_CAKES:J

    .line 343
    const-string v4, "js_reward_notification_interaction_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_INTERACTION_ONGOING_CAKES:J

    .line 346
    const-string v4, "js_reward_notification_interaction_ongoing"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v15

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_INTERACTION_MAX_CAKES:J

    .line 349
    const-string v4, "js_reward_notification_interaction_max"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v10, v14

    move-object v3, v14

    move-wide v14, v15

    move-wide/from16 v16, v1

    invoke-direct/range {v10 .. v17}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 341
    invoke-virtual {v0, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v9, -0x7ffffffd

    new-instance v14, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v11, -0x7ffffffd

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_WIDGET_INTERACTION_INSTANT_CAKES:J

    .line 353
    const-string v4, "js_reward_widget_interaction_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_WIDGET_INTERACTION_ONGOING_CAKES:J

    .line 356
    const-string v4, "js_reward_widget_interaction_ongoing"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v15

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_WIDGET_INTERACTION_MAX_CAKES:J

    .line 359
    const-string v4, "js_reward_widget_interaction_max"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v10, v14

    move-object v3, v14

    move-wide v14, v15

    move-wide/from16 v16, v1

    invoke-direct/range {v10 .. v17}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 352
    invoke-virtual {v0, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v9, -0x7ffffffc

    new-instance v14, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v11, -0x7ffffffc

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_OTHER_USER_INTERACTION_INSTANT_CAKES:J

    .line 364
    const-string v4, "js_reward_other_user_interaction_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_OTHER_USER_INTERACTION_ONGOING_CAKES:J

    .line 367
    const-string v4, "js_reward_other_user_interaction_ongoing"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v15

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_OTHER_USER_INTERACTION_MAX_CAKES:J

    .line 370
    const-string v4, "js_reward_other_user_interaction_max"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v10, v14

    move-object v3, v14

    move-wide v14, v15

    move-wide/from16 v16, v1

    invoke-direct/range {v10 .. v17}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 362
    invoke-virtual {v0, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 373
    return-void
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 377
    const-string v0, "Min satiated balances:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 379
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exempted"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 380
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceOther:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Other"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 381
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 382
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMaxSatiatedBalance:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Max satiated balance"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 383
    const-string v0, "Consumption limits: ["

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 384
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 385
    const-string v0, ", "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 386
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mHardSatiatedConsumptionLimit:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 387
    const-string v0, "]"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 390
    const-string v0, "Actions:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_65
    iget-object v1, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_7b

    .line 393
    iget-object v1, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomicPolicy$Action;

    invoke-static {p1, v1}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->dumpAction(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Action;)V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 395
    .end local v0    # "i":I
    :cond_7b
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 397
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 398
    const-string v0, "Rewards:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 400
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8a
    iget-object v1, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_a0

    .line 401
    iget-object v1, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomicPolicy$Reward;

    invoke-static {p1, v1}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->dumpReward(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Reward;)V

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 403
    .end local v0    # "i":I
    :cond_a0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 404
    return-void
.end method

.method getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;
    .registers 3
    .param p1, "actionId"    # I

    .line 206
    iget-object v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/EconomicPolicy$Action;

    return-object v0
.end method

.method getCostModifiers()[I
    .registers 2

    .line 200
    sget-object v0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->COST_MODIFIERS:[I

    return-object v0
.end method

.method getHardSatiatedConsumptionLimit()J
    .registers 3

    .line 194
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mHardSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method getInitialSatiatedConsumptionLimit()J
    .registers 3

    .line 189
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method getMaxSatiatedBalance()J
    .registers 3

    .line 184
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMaxSatiatedBalance:J

    return-wide v0
.end method

.method getMinSatiatedBalance(ILjava/lang/String;)J
    .registers 5
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mInternalResourceService:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isPackageExempted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 176
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    return-wide v0

    .line 179
    :cond_b
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceOther:J

    return-wide v0
.end method

.method getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;
    .registers 3
    .param p1, "rewardId"    # I

    .line 212
    iget-object v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/EconomicPolicy$Reward;

    return-object v0
.end method

.method setup(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 167
    invoke-super {p0, p1}, Lcom/android/server/tare/EconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    .line 168
    iget-object v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mInternalResourceService:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 169
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tare_job_scheduler_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V

    .line 171
    return-void
.end method
