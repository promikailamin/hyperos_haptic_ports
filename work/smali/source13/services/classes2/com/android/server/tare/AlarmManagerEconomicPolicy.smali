.class public Lcom/android/server/tare/AlarmManagerEconomicPolicy;
.super Lcom/android/server/tare/EconomicPolicy;
.source "AlarmManagerEconomicPolicy.java"


# static fields
.field public static final ACTION_ALARM_CLOCK:I = 0x40000008

.field public static final ACTION_ALARM_NONWAKEUP_EXACT:I = 0x40000005

.field public static final ACTION_ALARM_NONWAKEUP_EXACT_ALLOW_WHILE_IDLE:I = 0x40000004

.field public static final ACTION_ALARM_NONWAKEUP_INEXACT:I = 0x40000007

.field public static final ACTION_ALARM_NONWAKEUP_INEXACT_ALLOW_WHILE_IDLE:I = 0x40000006

.field public static final ACTION_ALARM_WAKEUP_EXACT:I = 0x40000001

.field public static final ACTION_ALARM_WAKEUP_EXACT_ALLOW_WHILE_IDLE:I = 0x40000000

.field public static final ACTION_ALARM_WAKEUP_INEXACT:I = 0x40000003

.field public static final ACTION_ALARM_WAKEUP_INEXACT_ALLOW_WHILE_IDLE:I = 0x40000002

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

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/tare/AlarmManagerEconomicPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->TAG:Ljava/lang/String;

    .line 138
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->COST_MODIFIERS:[I

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

    .line 158
    invoke-direct {p0, p1}, Lcom/android/server/tare/EconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    .line 151
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 154
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    .line 159
    iput-object p1, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInternalResourceService:Lcom/android/server/tare/InternalResourceService;

    .line 160
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V

    .line 161
    return-void
.end method

.method private loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V
    .registers 36
    .param p1, "policyValuesString"    # Ljava/lang/String;
    .param p2, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 220
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 221
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 224
    :try_start_c
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_e} :catch_16

    move-object/from16 v8, p1

    :try_start_10
    invoke-virtual {v0, v8}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_13} :catch_14

    .line 227
    goto :goto_20

    .line 225
    :catch_14
    move-exception v0

    goto :goto_19

    :catch_16
    move-exception v0

    move-object/from16 v8, p1

    .line 226
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_19
    sget-object v1, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Global setting key incorrect: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_20
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MIN_SATIATED_BALANCE_EXEMPTED_CAKES:J

    const-string v4, "am_min_satiated_balance_exempted"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    .line 232
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MIN_SATIATED_BALANCE_OTHER_APP_CAKES:J

    const-string v4, "am_min_satiated_balance_other_app"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceOther:J

    .line 235
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MAX_SATIATED_BALANCE_CAKES:J

    const-string v4, "am_max_satiated_balance"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMaxSatiatedBalance:J

    .line 238
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_INITIAL_CONSUMPTION_LIMIT_CAKES:J

    const-string v4, "am_initial_consumption_limit"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    .line 240
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_HARD_CONSUMPTION_LIMIT_CAKES:J

    .line 241
    const-string v4, "am_hard_consumption_limit"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    .line 240
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mHardSatiatedConsumptionLimit:J

    .line 244
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_EXACT_WAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_exact_wakeup_base_price"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v15

    .line 248
    .local v15, "exactAllowWhileIdleWakeupBasePrice":J
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const/high16 v13, 0x40000000    # 2.0f

    new-instance v14, Lcom/android/server/tare/EconomicPolicy$Action;

    const/high16 v10, 0x40000000    # 2.0f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_EXACT_WAKEUP_CTP_CAKES:J

    .line 250
    const-string v4, "am_action_alarm_allow_while_idle_exact_wakeup_ctp"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    move-object v9, v14

    move v1, v13

    move-object v2, v14

    move-wide v13, v15

    invoke-direct/range {v9 .. v14}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 248
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v9, 0x40000001    # 2.0000002f

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Action;

    const v11, 0x40000001    # 2.0000002f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_WAKEUP_CTP_CAKES:J

    .line 256
    const-string v4, "am_action_alarm_exact_wakeup_ctp"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_WAKEUP_BASE_PRICE_CAKES:J

    .line 259
    const-string v4, "am_action_alarm_exact_wakeup_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 254
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_WAKEUP_BASE_PRICE_CAKES:J

    .line 264
    const-string v4, "am_action_alarm_allow_while_idle_inexact_wakeup_base_price"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v17

    .line 268
    .local v17, "inexactAllowWhileIdleWakeupBasePrice":J
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v13, 0x40000002    # 2.0000005f

    new-instance v14, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x40000002    # 2.0000005f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_WAKEUP_CTP_CAKES:J

    .line 270
    const-string v4, "am_action_alarm_allow_while_idle_inexact_wakeup_ctp"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    move-object v9, v14

    move v1, v13

    move-object v2, v14

    move-wide/from16 v13, v17

    invoke-direct/range {v9 .. v14}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 268
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 274
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v9, 0x40000003    # 2.0000007f

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Action;

    const v11, 0x40000003    # 2.0000007f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_WAKEUP_CTP_CAKES:J

    .line 276
    const-string v4, "am_action_alarm_inexact_wakeup_ctp"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_WAKEUP_BASE_PRICE_CAKES:J

    .line 279
    const-string v4, "am_action_alarm_inexact_wakeup_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 274
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_NONWAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_exact_nonwakeup_base_price"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v19

    .line 286
    .local v19, "exactAllowWhileIdleNonWakeupBasePrice":J
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v13, 0x40000004    # 2.000001f

    new-instance v14, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x40000004    # 2.000001f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_EXACT_NONWAKEUP_CTP_CAKES:J

    .line 288
    const-string v4, "am_action_alarm_allow_while_idle_exact_nonwakeup_ctp"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    move-object v9, v14

    move v1, v13

    move-object v2, v14

    move-wide/from16 v13, v19

    invoke-direct/range {v9 .. v14}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 286
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 293
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v9, 0x40000005    # 2.0000012f

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Action;

    const v11, 0x40000005    # 2.0000012f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_NONWAKEUP_CTP_CAKES:J

    .line 295
    const-string v4, "am_action_alarm_exact_nonwakeup_ctp"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_NONWAKEUP_BASE_PRICE_CAKES:J

    .line 298
    const-string v4, "am_action_alarm_exact_nonwakeup_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 293
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_NONWAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_inexact_nonwakeup_base_price"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v21

    .line 305
    .local v21, "inexactAllowWhileIdleNonWakeupBasePrice":J
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_NONWAKEUP_CTP_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_inexact_nonwakeup_ctp"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v23

    .line 308
    .local v23, "inexactAllowWhileIdleNonWakeupCtp":J
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v1, 0x40000006    # 2.0000014f

    new-instance v2, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x40000006    # 2.0000014f

    move-object v9, v2

    move-wide/from16 v11, v23

    move-wide/from16 v13, v21

    invoke-direct/range {v9 .. v14}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v9, 0x40000007    # 2.0000017f

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Action;

    const v11, 0x40000007    # 2.0000017f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_NONWAKEUP_CTP_CAKES:J

    .line 315
    const-string v4, "am_action_alarm_inexact_nonwakeup_ctp"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_NONWAKEUP_BASE_PRICE_CAKES:J

    .line 318
    const-string v4, "am_action_alarm_inexact_nonwakeup_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 313
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v9, 0x40000008    # 2.000002f

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Action;

    const v11, 0x40000008    # 2.000002f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALARMCLOCK_CTP_CAKES:J

    .line 323
    const-string v4, "am_action_alarm_alarmclock_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALARMCLOCK_BASE_PRICE_CAKES:J

    .line 326
    const-string v4, "am_action_alarm_alarmclock_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 321
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 330
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v9, -0x7ffffffe

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v26, -0x7ffffffe

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_TOP_ACTIVITY_INSTANT_CAKES:J

    .line 331
    const-string v4, "am_reward_top_activity_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v27

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v5, 0x989680

    .line 334
    const-string v4, "am_reward_top_activity_ongoing"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v29

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_TOP_ACTIVITY_MAX_CAKES:J

    .line 337
    const-string v4, "am_reward_top_activity_max"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v31

    move-object/from16 v25, v10

    invoke-direct/range {v25 .. v32}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 330
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const/high16 v9, -0x80000000

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Reward;

    const/high16 v26, -0x80000000

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_SEEN_INSTANT_CAKES:J

    .line 341
    const-string v4, "am_reward_notification_seen_instant"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v27

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_SEEN_ONGOING_CAKES:J

    .line 344
    const-string v4, "am_reward_notification_seen_ongoing"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v29

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_SEEN_MAX_CAKES:J

    .line 347
    const-string v4, "am_reward_notification_seen_max"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v31

    move-object/from16 v25, v10

    invoke-direct/range {v25 .. v32}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 340
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v9, -0x7fffffff

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v26, -0x7fffffff

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_INTERACTION_INSTANT_CAKES:J

    .line 352
    const-string v4, "am_reward_notification_interaction_instant"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v27

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_INTERACTION_ONGOING_CAKES:J

    .line 355
    const-string v4, "am_reward_notification_interaction_ongoing"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v29

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_INTERACTION_MAX_CAKES:J

    .line 358
    const-string v4, "am_reward_notification_interaction_max"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v31

    move-object/from16 v25, v10

    invoke-direct/range {v25 .. v32}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 350
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v9, -0x7ffffffd

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v26, -0x7ffffffd

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_WIDGET_INTERACTION_INSTANT_CAKES:J

    .line 362
    const-string v4, "am_reward_widget_interaction_instant"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v27

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_WIDGET_INTERACTION_ONGOING_CAKES:J

    .line 365
    const-string v4, "am_reward_widget_interaction_ongoing"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v29

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_WIDGET_INTERACTION_MAX_CAKES:J

    .line 368
    const-string v4, "am_reward_widget_interaction_max"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v31

    move-object/from16 v25, v10

    invoke-direct/range {v25 .. v32}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 361
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v9, -0x7ffffffc

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v26, -0x7ffffffc

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_OTHER_USER_INTERACTION_INSTANT_CAKES:J

    .line 373
    const-string v4, "am_reward_other_user_interaction_instant"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v27

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_OTHER_USER_INTERACTION_ONGOING_CAKES:J

    .line 376
    const-string v4, "am_reward_other_user_interaction_ongoing"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v29

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_OTHER_USER_INTERACTION_MAX_CAKES:J

    .line 379
    const-string v4, "am_reward_other_user_interaction_max"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v31

    move-object/from16 v25, v10

    invoke-direct/range {v25 .. v32}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 371
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    return-void
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 386
    const-string v0, "Min satiated balances:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 388
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exempted"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 389
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceOther:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Other"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 390
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 391
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMaxSatiatedBalance:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Max satiated balance"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 392
    const-string v0, "Consumption limits: ["

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 393
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 394
    const-string v0, ", "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 395
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mHardSatiatedConsumptionLimit:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 396
    const-string v0, "]"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 399
    const-string v0, "Actions:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_65
    iget-object v1, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_7b

    .line 402
    iget-object v1, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomicPolicy$Action;

    invoke-static {p1, v1}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->dumpAction(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Action;)V

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 404
    .end local v0    # "i":I
    :cond_7b
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 406
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 407
    const-string v0, "Rewards:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 409
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8a
    iget-object v1, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_a0

    .line 410
    iget-object v1, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomicPolicy$Reward;

    invoke-static {p1, v1}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->dumpReward(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Reward;)V

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 412
    .end local v0    # "i":I
    :cond_a0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 413
    return-void
.end method

.method getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;
    .registers 3
    .param p1, "actionId"    # I

    .line 209
    iget-object v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/EconomicPolicy$Action;

    return-object v0
.end method

.method getCostModifiers()[I
    .registers 2

    .line 203
    sget-object v0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->COST_MODIFIERS:[I

    return-object v0
.end method

.method getHardSatiatedConsumptionLimit()J
    .registers 3

    .line 197
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mHardSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method getInitialSatiatedConsumptionLimit()J
    .registers 3

    .line 192
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method getMaxSatiatedBalance()J
    .registers 3

    .line 187
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMaxSatiatedBalance:J

    return-wide v0
.end method

.method getMinSatiatedBalance(ILjava/lang/String;)J
    .registers 5
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInternalResourceService:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isPackageExempted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 174
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    return-wide v0

    .line 177
    :cond_b
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceOther:J

    return-wide v0
.end method

.method getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;
    .registers 3
    .param p1, "rewardId"    # I

    .line 215
    iget-object v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/EconomicPolicy$Reward;

    return-object v0
.end method

.method setup(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 165
    invoke-super {p0, p1}, Lcom/android/server/tare/EconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    .line 166
    iget-object v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInternalResourceService:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tare_alarm_manager_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V

    .line 169
    return-void
.end method
