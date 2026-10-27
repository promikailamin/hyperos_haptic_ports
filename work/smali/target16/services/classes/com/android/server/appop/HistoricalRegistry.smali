.class public Lcom/android/server/appop/HistoricalRegistry;
.super Ljava/lang/Object;
.source "HistoricalRegistry.java"

# interfaces
.implements Lcom/android/server/appop/HistoricalRegistryInterface;


# static fields
.field public static final DEFAULT_HISTORY_RETENTION_MILLIS:J

.field public static final DEFAULT_LONG_INTERVAL_QUANTIZATION:J

.field public static final DEFAULT_SHORT_INTERVAL_QUANTIZATION:J

.field public static final IMPORTANT_OPS_FOR_SECURITY:[I

.field public static final MAXIMUM_HISTORY_RETENTION_MILLIS:J

.field public static final SHORT_INTERVAL_OPS:[I


# instance fields
.field public mChainIdOffset:J

.field public final mContext:Landroid/content/Context;

.field public mHistoryRetentionMillis:J

.field public volatile mIsReady:Z

.field public final mLongIntervalDatabaseFile:Ljava/io/File;

.field public final mLongIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

.field public mLongIntervalQuantizationMillis:J

.field public mMode:I

.field public mShortIntervalAppOpFlags:I

.field public mShortIntervalAppOpsArray:[I

.field public final mShortIntervalDatabaseFile:Ljava/io/File;

.field public final mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

.field public mShortIntervalQuantizationMillis:J


# direct methods
.method public static synthetic $r8$lambda$aiYLvivX7t28FqWoNwjPUksZbrk(Lcom/android/server/appop/HistoricalRegistry;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->lambda$getRecentlyUsedPackageNames$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iS9rmIeLXW-C5M3c8Vf4WZNLeLI(Lcom/android/server/appop/HistoricalRegistry;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$utQC3nbijgiFUMjsONK7_xYhDMg(Lcom/android/server/appop/HistoricalRegistry;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->lambda$getRecentlyUsedPackageNames$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetHistoricalRegistryMode(Lcom/android/server/appop/HistoricalRegistry;Landroid/content/ContentResolver;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->setHistoricalRegistryMode(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    .line 126
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SHORT_INTERVAL_QUANTIZATION:J

    const-wide/16 v0, 0xf

    .line 128
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_LONG_INTERVAL_QUANTIZATION:J

    const-wide/16 v0, 0x7

    .line 129
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_HISTORY_RETENTION_MILLIS:J

    const-wide/16 v0, 0x1e

    .line 130
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/HistoricalRegistry;->MAXIMUM_HISTORY_RETENTION_MILLIS:J

    const/16 v0, 0xd

    .line 151
    new-array v0, v0, [I

    fill-array-data v0, :array_44

    sput-object v0, Lcom/android/server/appop/HistoricalRegistry;->SHORT_INTERVAL_OPS:[I

    const/16 v0, 0x8

    .line 168
    new-array v0, v0, [I

    fill-array-data v0, :array_62

    sput-object v0, Lcom/android/server/appop/HistoricalRegistry;->IMPORTANT_OPS_FOR_SECURITY:[I

    return-void

    nop

    :array_44
    .array-data 4
        0x64
        0x78
        0x88
        0x65
        0x93
        0x1
        0x0
        0x1a
        0x1b
        0x95
        0x98
        0x96
        0x8d
    .end array-data

    :array_62
    .array-data 4
        0x2
        0x19
        0x3f
        0x49
        0x58
        0x59
        0x2a
        0x29
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 199
    const-string v0, "app_op_history_short_interval.db"

    invoke-static {v0}, Lcom/android/server/appop/HistoricalRegistry;->getDatabaseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "app_op_history_long_interval.db"

    .line 200
    invoke-static {v1}, Lcom/android/server/appop/HistoricalRegistry;->getDatabaseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 199
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V
    .registers 7

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 182
    iput v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 183
    sget-wide v1, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SHORT_INTERVAL_QUANTIZATION:J

    iput-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalQuantizationMillis:J

    .line 184
    sget-wide v1, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_LONG_INTERVAL_QUANTIZATION:J

    iput-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalQuantizationMillis:J

    .line 185
    sget-wide v1, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_HISTORY_RETENTION_MILLIS:J

    iput-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mHistoryRetentionMillis:J

    const/16 v1, 0xb

    .line 186
    iput v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalAppOpFlags:I

    const/4 v1, 0x0

    .line 187
    iput-boolean v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mIsReady:Z

    .line 189
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalAppOpsArray:[I

    .line 205
    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mContext:Landroid/content/Context;

    .line 206
    iput-object p2, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalDatabaseFile:Ljava/io/File;

    .line 207
    iput-object p3, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalDatabaseFile:Ljava/io/File;

    .line 208
    new-instance v1, Lcom/android/server/appop/AppOpHistoryHelper;

    sget-object v2, Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;->SHORT:Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;

    invoke-direct {v1, p1, p2, v2, v0}, Lcom/android/server/appop/AppOpHistoryHelper;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;I)V

    iput-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    .line 210
    new-instance p2, Lcom/android/server/appop/AppOpHistoryHelper;

    sget-object v1, Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;->LONG:Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;

    invoke-direct {p2, p1, p3, v1, v0}, Lcom/android/server/appop/AppOpHistoryHelper;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;I)V

    iput-object p2, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/appop/HistoricalRegistry;)V
    .registers 4

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 182
    iput v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 183
    sget-wide v0, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SHORT_INTERVAL_QUANTIZATION:J

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalQuantizationMillis:J

    .line 184
    sget-wide v0, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_LONG_INTERVAL_QUANTIZATION:J

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalQuantizationMillis:J

    .line 185
    sget-wide v0, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_HISTORY_RETENTION_MILLIS:J

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mHistoryRetentionMillis:J

    const/16 v0, 0xb

    .line 186
    iput v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalAppOpFlags:I

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mIsReady:Z

    .line 189
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalAppOpsArray:[I

    .line 215
    iget-object v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mContext:Landroid/content/Context;

    .line 216
    iget-wide v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mChainIdOffset:J

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mChainIdOffset:J

    .line 217
    iget-object v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalAppOpsArray:[I

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalAppOpsArray:[I

    .line 218
    iget v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalAppOpFlags:I

    iput v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalAppOpFlags:I

    .line 219
    iget-boolean v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mIsReady:Z

    iput-boolean v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mIsReady:Z

    .line 220
    iget-wide v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mHistoryRetentionMillis:J

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mHistoryRetentionMillis:J

    .line 221
    iget-wide v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalQuantizationMillis:J

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalQuantizationMillis:J

    .line 222
    iget-wide v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalQuantizationMillis:J

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalQuantizationMillis:J

    .line 223
    iget v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    iput v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 224
    iget-object v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    .line 225
    iget-object v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    .line 226
    iget-object v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalDatabaseFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalDatabaseFile:Ljava/io/File;

    .line 227
    iget-object p1, p1, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalDatabaseFile:Ljava/io/File;

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalDatabaseFile:Ljava/io/File;

    return-void
.end method

.method public static getAppOpsHistoryRetentionMillis(Landroid/provider/DeviceConfig$Properties;)J
    .registers 5

    .line 795
    sget-wide v0, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_HISTORY_RETENTION_MILLIS:J

    .line 796
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v2

    const-string v3, "discrete_history_cutoff_millis"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 797
    invoke-virtual {p0, v3, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 799
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez p0, :cond_1c

    .line 800
    sget-wide v2, Lcom/android/server/appop/HistoricalRegistry;->MAXIMUM_HISTORY_RETENTION_MILLIS:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v0

    :cond_1c
    return-wide v0
.end method

.method public static getDatabaseFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 816
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "appops"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getShortIntervalQuantizationMillis(Landroid/provider/DeviceConfig$Properties;)J
    .registers 5

    .line 774
    sget-wide v0, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SHORT_INTERVAL_QUANTIZATION:J

    .line 775
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v2

    const-string v3, "discrete_history_quantization_millis"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 776
    invoke-virtual {p0, v3, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 779
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez p0, :cond_1b

    .line 780
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_1b
    return-wide v2

    :cond_1c
    return-wide v0
.end method


# virtual methods
.method public addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 2

    .line 0
    return-void
.end method

.method public clearAllHistory()V
    .registers 2

    .line 682
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->isNotReadyOrDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 685
    :cond_7
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpHistoryHelper;->clearHistory()V

    .line 686
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper;->clearHistory()V

    return-void
.end method

.method public clearHistory(ILjava/lang/String;)V
    .registers 4

    .line 673
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->isNotReadyOrDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 676
    :cond_7
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/AppOpHistoryHelper;->clearHistory(ILjava/lang/String;)V

    .line 677
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpHistoryHelper;->clearHistory(ILjava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;ZIZ)V
    .registers 27

    move-object/from16 v5, p2

    move/from16 v0, p6

    .line 394
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->isNotReadyOrDisabled()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 397
    :cond_b
    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 398
    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    const-string p1, "History:"

    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    const-string p1, "  mode="

    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    iget p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    invoke-static {p1}, Landroid/app/AppOpsManager;->historicalModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    iget-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalQuantizationMillis:J

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Duration;->toMinutes()J

    move-result-wide v1

    .line 404
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalQuantizationMillis:J

    invoke-static {v3, v4}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Duration;->toMinutes()J

    move-result-wide v3

    .line 405
    const-string p1, "SHORT_INTERVAL(Aggregation Bucket)="

    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Minute"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    const-string p1, ", LONG_INTERVAL(Aggregation Bucket)="

    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Minutes"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    const-string p1, "Database size(bytes): SHORT_INTERVAL="

    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    const-string p1, "app_op_history_short_interval.db"

    invoke-static {p1}, Lcom/android/server/appop/HistoricalRegistry;->getDatabaseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 412
    const-string p1, ", LONG_INTERVAL="

    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 413
    const-string v1, "app_op_history_long_interval.db"

    invoke-static {v1}, Lcom/android/server/appop/HistoricalRegistry;->getDatabaseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 415
    const-string v1, "Database Total records: SHORT_INTERVAL="

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpHistoryHelper;->getTotalRecordsCount()J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 417
    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-virtual {p1}, Lcom/android/server/appop/AppOpHistoryHelper;->getTotalRecordsCount()J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 419
    new-instance v9, Landroid/util/IntArray;

    invoke-direct {v9}, Landroid/util/IntArray;-><init>()V

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-nez p12, :cond_102

    if-nez p10, :cond_102

    const-wide/16 v0, 0x1

    .line 424
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sub-long v1, v3, v0

    const/16 p1, 0x1a

    .line 425
    invoke-virtual {v9, p1}, Landroid/util/IntArray;->add(I)V

    const/16 p1, 0x65

    .line 426
    invoke-virtual {v9, p1}, Landroid/util/IntArray;->add(I)V

    const/16 p1, 0x1b

    .line 428
    invoke-virtual {v9, p1}, Landroid/util/IntArray;->add(I)V

    const/16 p1, 0x64

    .line 429
    invoke-virtual {v9, p1}, Landroid/util/IntArray;->add(I)V

    const/16 p1, 0x78

    .line 430
    invoke-virtual {v9, p1}, Landroid/util/IntArray;->add(I)V

    const/16 p1, 0x88

    .line 431
    invoke-virtual {v9, p1}, Landroid/util/IntArray;->add(I)V

    const/4 p1, 0x1

    .line 433
    invoke-virtual {v9, p1}, Landroid/util/IntArray;->add(I)V

    const/4 p1, 0x0

    .line 434
    invoke-virtual {v9, p1}, Landroid/util/IntArray;->add(I)V

    const/16 p1, 0x93

    .line 435
    invoke-virtual {v9, p1}, Landroid/util/IntArray;->add(I)V

    .line 436
    const-string p1, "----Location, Microphone, and Camera App Ops (Last 1 Hour)----"

    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    const/4 v8, 0x0

    const/16 v13, 0x1f4

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/16 v10, 0x8

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/appop/AppOpHistoryHelper;->dump(JJLjava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;ILjava/text/SimpleDateFormat;Ljava/util/Date;I)V

    return-void

    :cond_102
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_10c

    const/4 p1, -0x1

    if-eq v0, p1, :cond_10c

    .line 445
    invoke-virtual {v9, v0}, Landroid/util/IntArray;->add(I)V

    .line 447
    :cond_10c
    iget-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mHistoryRetentionMillis:J

    sub-long v1, v3, v0

    if-eqz p10, :cond_12b

    .line 449
    const-string p1, "------------Discrete App Ops-------------"

    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/appop/AppOpHistoryHelper;->dump(JJLjava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;ILjava/text/SimpleDateFormat;Ljava/util/Date;I)V

    return-void

    .line 453
    :cond_12b
    const-string p1, "------------Aggregated App Ops-------------"

    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/appop/AppOpHistoryHelper;->dump(JJLjava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;ILjava/text/SimpleDateFormat;Ljava/util/Date;I)V

    return-void
.end method

.method public final filterOpNames([Ljava/lang/String;Ljava/util/function/Predicate;)[Ljava/lang/String;
    .registers 8

    .line 662
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 663
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_18

    aget-object v3, p1, v2

    .line 664
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 665
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 668
    :cond_18
    new-array p1, v1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getHistoricalOps(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJI[Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v1, p13

    .line 606
    const-string v2, "AppOpHistory#SQLiteGetHistoricalOps"

    const-wide/32 v3, 0x80000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 608
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v2, p9, v7

    if-nez v2, :cond_1b

    move-wide v11, v5

    goto :goto_1d

    :cond_1b
    move-wide/from16 v11, p9

    .line 612
    :goto_1d
    new-instance v8, Landroid/app/AppOpsManager$HistoricalOps;

    move-wide/from16 v9, p7

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 614
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 616
    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->isNotReadyOrDisabled()Z

    move-result v5
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_3b

    const-string v6, "historical_ops"

    if-eqz v5, :cond_3d

    .line 617
    :try_start_31
    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 618
    invoke-virtual {v1, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_3b

    .line 634
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_3b
    move-exception v0

    goto :goto_7a

    .line 622
    :cond_3d
    :try_start_3d
    iget-object v7, v0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    new-instance v5, Landroid/util/ArraySet;

    move-object/from16 v13, p12

    invoke-direct {v5, v13}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v17, p3

    move-object/from16 v16, p4

    move/from16 v20, p5

    move/from16 v13, p6

    move/from16 v18, p11

    move-object/from16 v19, v5

    invoke-virtual/range {v7 .. v20}, Lcom/android/server/appop/AppOpHistoryHelper;->addShortIntervalOpsToHistoricalOpsResult(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;I)V

    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_70

    .line 626
    iget-object v7, v0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v17, p3

    move-object/from16 v16, p4

    move/from16 v13, p6

    move-wide/from16 v9, p7

    move/from16 v18, p11

    invoke-virtual/range {v7 .. v18}, Lcom/android/server/appop/AppOpHistoryHelper;->addLongIntervalOpsToHistoricalOpsResult(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    .line 631
    :cond_70
    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 632
    invoke-virtual {v1, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_76
    .catchall {:try_start_3d .. :try_end_76} :catchall_3b

    .line 634
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_7a
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 635
    throw v0
.end method

.method public getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJI[Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 14

    .line 0
    return-void
.end method

.method public final getOffsetChainId(I)J
    .registers 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    int-to-long p0, p1

    return-wide p0

    .line 590
    :cond_5
    monitor-enter p0

    int-to-long v0, p1

    .line 591
    :try_start_7
    iget-wide v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mChainIdOffset:J

    add-long/2addr v0, v2

    const v2, 0x7fffffff

    if-ne p1, v2, :cond_14

    .line 595
    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mChainIdOffset:J

    goto :goto_14

    :catchall_12
    move-exception p1

    goto :goto_16

    .line 597
    :cond_14
    :goto_14
    monitor-exit p0

    return-wide v0

    .line 598
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_12

    throw p1
.end method

.method public getRecentlyUsedPackageNames([Ljava/lang/String;IIJJI)Landroid/util/ArraySet;
    .registers 19

    .line 642
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_21

    .line 645
    new-instance v1, Lcom/android/server/appop/HistoricalRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/appop/HistoricalRegistry$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appop/HistoricalRegistry;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/appop/HistoricalRegistry;->filterOpNames([Ljava/lang/String;Ljava/util/function/Predicate;)[Ljava/lang/String;

    move-result-object v3

    .line 648
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    move v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/appop/AppOpHistoryHelper;->getRecentlyUsedPackageNames([Ljava/lang/String;IJJI)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_21
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_3d

    .line 652
    new-instance p2, Lcom/android/server/appop/HistoricalRegistry$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/appop/HistoricalRegistry$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/appop/HistoricalRegistry;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->filterOpNames([Ljava/lang/String;Ljava/util/function/Predicate;)[Ljava/lang/String;

    move-result-object v3

    .line 655
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    move v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/appop/AppOpHistoryHelper;->getRecentlyUsedPackageNames([Ljava/lang/String;IJJI)Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_3d
    return-object v0
.end method

.method public final getShortIntervalAppOpsList()[I
    .registers 2

    .line 354
    new-instance p0, Landroid/util/IntArray;

    invoke-direct {p0}, Landroid/util/IntArray;-><init>()V

    .line 355
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->SHORT_INTERVAL_OPS:[I

    invoke-virtual {p0, v0}, Landroid/util/IntArray;->addAll([I)V

    .line 356
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->IMPORTANT_OPS_FOR_SECURITY:[I

    invoke-virtual {p0, v0}, Landroid/util/IntArray;->addAll([I)V

    .line 357
    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public increaseOpAccessDuration(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJII)V
    .registers 31

    move-object/from16 v0, p0

    .line 488
    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->isNotReadyOrDisabled()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    move/from16 v3, p1

    move/from16 v9, p7

    .line 505
    invoke-virtual {v0, v3, v9}, Lcom/android/server/appop/HistoricalRegistry;->isOpCapturedInShortIntervalDatabase(II)Z

    move-result v1

    if-eqz v1, :cond_2f

    move/from16 v1, p13

    .line 506
    invoke-virtual {v0, v1}, Lcom/android/server/appop/HistoricalRegistry;->getOffsetChainId(I)J

    move-result-wide v13

    .line 507
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v15, p10

    move/from16 v12, p12

    invoke-virtual/range {v2 .. v16}, Lcom/android/server/appop/AppOpHistoryHelper;->recordOpAccessDuration(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIJJ)V

    return-void

    .line 511
    :cond_2f
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    const/4 v12, 0x0

    const-wide/16 v13, -0x1

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v15, p10

    invoke-virtual/range {v2 .. v16}, Lcom/android/server/appop/AppOpHistoryHelper;->recordOpAccessDuration(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIJJ)V

    return-void
.end method

.method public incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIZ)V
    .registers 31

    move-object/from16 v0, p0

    .line 523
    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->isNotReadyOrDisabled()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    move/from16 v3, p1

    move/from16 v9, p7

    .line 541
    invoke-virtual {v0, v3, v9}, Lcom/android/server/appop/HistoricalRegistry;->isOpCapturedInShortIntervalDatabase(II)Z

    move-result v1

    if-eqz v1, :cond_31

    move/from16 v1, p11

    .line 542
    invoke-virtual {v0, v1}, Lcom/android/server/appop/HistoricalRegistry;->getOffsetChainId(I)J

    move-result-wide v13

    .line 543
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move/from16 v15, p12

    move/from16 v16, p13

    invoke-virtual/range {v2 .. v16}, Lcom/android/server/appop/AppOpHistoryHelper;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIJIZ)V

    return-void

    .line 547
    :cond_31
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    const/4 v12, 0x0

    const-wide/16 v13, -0x1

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v15, p12

    move/from16 v16, p13

    invoke-virtual/range {v2 .. v16}, Lcom/android/server/appop/AppOpHistoryHelper;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIJIZ)V

    return-void
.end method

.method public incrementOpRejectedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJI)V
    .registers 27

    move-object/from16 v0, p0

    .line 558
    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->isNotReadyOrDisabled()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    move/from16 v3, p1

    move/from16 v9, p7

    .line 573
    invoke-virtual {v0, v3, v9}, Lcom/android/server/appop/HistoricalRegistry;->isOpCapturedInShortIntervalDatabase(II)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 574
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    const/4 v12, 0x0

    const-wide/16 v13, -0x1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v15, p10

    invoke-virtual/range {v2 .. v15}, Lcom/android/server/appop/AppOpHistoryHelper;->incrementOpRejectedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIJI)V

    return-void

    .line 579
    :cond_2a
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    const/4 v12, 0x0

    const-wide/16 v13, -0x1

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v15, p10

    invoke-virtual/range {v2 .. v15}, Lcom/android/server/appop/AppOpHistoryHelper;->incrementOpRejectedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIJI)V

    return-void
.end method

.method public final isNotReadyOrDisabled()Z
    .registers 3

    .line 811
    iget-boolean v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mIsReady:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iget p0, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    if-eq p0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    :goto_c
    return v1
.end method

.method public final isOpCapturedInShortIntervalDatabase(II)Z
    .registers 4

    .line 475
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalAppOpsArray:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_a

    return v0

    .line 478
    :cond_a
    iget p0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalAppOpFlags:I

    and-int/2addr p0, p2

    if-nez p0, :cond_10

    return v0

    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$getRecentlyUsedPackageNames$0(Ljava/lang/String;)Z
    .registers 3

    .line 646
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x1f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/HistoricalRegistry;->isOpCapturedInShortIntervalDatabase(II)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$getRecentlyUsedPackageNames$1(Ljava/lang/String;)Z
    .registers 3

    .line 653
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x1f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/HistoricalRegistry;->isOpCapturedInShortIntervalDatabase(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public offsetDiscreteHistory(J)V
    .registers 3

    .line 0
    return-void
.end method

.method public offsetHistory(J)V
    .registers 3

    .line 0
    return-void
.end method

.method public final parseOpsList(Ljava/lang/String;)[I
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 362
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_11

    .line 365
    :cond_a
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    .line 363
    :cond_11
    :goto_11
    new-array p1, v0, [Ljava/lang/String;

    .line 367
    :goto_13
    array-length v1, p1

    .line 368
    new-array v2, v1, [I

    :goto_16
    if-ge v0, v1, :cond_43

    .line 371
    :try_start_18
    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_20} :catch_23

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :catch_23
    move-exception p1

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse short interval ops list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HistoricalRegistry"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->getShortIntervalAppOpsList()[I

    move-result-object p0

    return-object p0

    :cond_43
    return-object v2
.end method

.method public persistPendingHistory()V
    .registers 2

    .line 719
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->isNotReadyOrDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 722
    :cond_7
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpHistoryHelper;->persistPendingHistory()V

    .line 723
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper;->persistPendingHistory()V

    return-void
.end method

.method public resetHistoryParameters()V
    .registers 2

    const/4 v0, 0x1

    .line 741
    iput v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    return-void
.end method

.method public final setHistoricalRegistryMode(Landroid/content/ContentResolver;)V
    .registers 11

    .line 279
    const-string v0, "appop_history_parameters"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_67

    .line 285
    :cond_9
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 286
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_13
    const-string v4, "HistoricalRegistry"

    if-ge v3, v0, :cond_51

    aget-object v5, p1, v3

    .line 287
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 288
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4e

    .line 289
    aget-object v7, v6, v1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 290
    const-string/jumbo v8, "mode"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    const/4 v2, 0x1

    .line 291
    aget-object v2, v6, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_4e

    .line 293
    :cond_3a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown or Deprecated parameter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_51
    if-eqz v2, :cond_67

    .line 302
    iget p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 303
    invoke-static {v2}, Landroid/app/AppOpsManager;->parseHistoricalMode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    if-eq p1, v0, :cond_67

    if-nez v0, :cond_67

    .line 305
    const-string p1, "Historical registry mode is disabled, clearing history."

    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearAllHistory()V

    :cond_67
    :goto_67
    return-void
.end method

.method public setHistoryParameters(IJJ)V
    .registers 6

    .line 730
    iget p2, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    if-ne p1, p2, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_a

    .line 734
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearAllHistory()V

    .line 736
    :cond_a
    iput p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    return-void
.end method

.method public final setHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V
    .registers 7

    .line 313
    invoke-static {p1}, Lcom/android/server/appop/HistoricalRegistry;->getAppOpsHistoryRetentionMillis(Landroid/provider/DeviceConfig$Properties;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mHistoryRetentionMillis:J

    .line 315
    invoke-static {p1}, Lcom/android/server/appop/HistoricalRegistry;->getShortIntervalQuantizationMillis(Landroid/provider/DeviceConfig$Properties;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalQuantizationMillis:J

    .line 317
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "appops_long_interval_quantization_millis"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 318
    sget-wide v2, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_LONG_INTERVAL_QUANTIZATION:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalQuantizationMillis:J

    .line 321
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v4, :cond_2a

    .line 322
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalQuantizationMillis:J

    .line 332
    :cond_2a
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "discrete_history_op_flags"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/16 v0, 0xb

    .line 333
    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalAppOpFlags:I

    .line 337
    :cond_3e
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "discrete_history_ops_cslist"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_56

    .line 343
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->getShortIntervalAppOpsList()[I

    move-result-object p1

    goto :goto_5a

    :cond_56
    invoke-virtual {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->parseOpsList(Ljava/lang/String;)[I

    move-result-object p1

    :goto_5a
    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalAppOpsArray:[I

    goto :goto_63

    .line 345
    :cond_5d
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->getShortIntervalAppOpsList()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalAppOpsArray:[I

    .line 347
    :goto_63
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalAppOpsArray:[I

    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 382
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->isNotReadyOrDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 385
    :cond_7
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpHistoryHelper;->shutdown()V

    .line 386
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper;->shutdown()V

    return-void
.end method

.method public systemReady(Landroid/content/ContentResolver;)V
    .registers 11

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->setHistoricalRegistryMode(Landroid/content/ContentResolver;)V

    const/4 v0, 0x0

    .line 233
    new-array v1, v0, [Ljava/lang/String;

    const-string/jumbo v2, "privacy"

    invoke-static {v2, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V

    .line 234
    iget v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    const-string v3, "HistoricalRegistry"

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1d

    .line 235
    const-string p0, "App op access events are not recorded, the config isn\'t active."

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 238
    :cond_1d
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalQuantizationMillis:J

    iget-wide v7, p0, Lcom/android/server/appop/HistoricalRegistry;->mHistoryRetentionMillis:J

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/android/server/appop/AppOpHistoryHelper;->systemReady(JJ)V

    .line 240
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mLongIntervalQuantizationMillis:J

    iget-wide v7, p0, Lcom/android/server/appop/HistoricalRegistry;->mHistoryRetentionMillis:J

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/android/server/appop/AppOpHistoryHelper;->systemReady(JJ)V

    .line 243
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->getDiscreteOpsDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 244
    const-string/jumbo v1, "migrate discrete ops from xml to unified sqlite."

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    invoke-direct {v3, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;-><init>(Ljava/lang/Object;)V

    .line 248
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {v3, v1}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->migrateFromXmlToUnifiedSchemaSqlite(Lcom/android/server/appop/DiscreteOpsXmlRegistry;Lcom/android/server/appop/AppOpHistoryHelper;)V

    goto :goto_6b

    .line 250
    :cond_4f
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 251
    const-string/jumbo v1, "migrate discrete ops from sqlite to unified sqlite."

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;-><init>(Landroid/content/Context;)V

    .line 253
    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {v1, v3}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->migrateFromSqliteToUnifiedSchemaSqlite(Lcom/android/server/appop/DiscreteOpsSqlRegistry;Lcom/android/server/appop/AppOpHistoryHelper;)V

    .line 257
    :cond_6b
    :goto_6b
    invoke-static {}, Lcom/android/server/appop/LegacyHistoricalRegistry;->historicalOpsDirExist()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 258
    invoke-static {}, Lcom/android/server/appop/LegacyHistoricalRegistry;->deleteHistoricalOpsDir()V

    .line 261
    :cond_74
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mShortIntervalHistoryHelper:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpHistoryHelper;->getLargestAttributionChainId()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mChainIdOffset:J

    .line 264
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/appop/HistoricalRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/appop/HistoricalRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/HistoricalRegistry;)V

    invoke-static {v2, v1, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 267
    const-string v1, "appop_history_parameters"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 268
    new-instance v2, Lcom/android/server/appop/HistoricalRegistry$1;

    .line 269
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/android/server/appop/HistoricalRegistry$1;-><init>(Lcom/android/server/appop/HistoricalRegistry;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 268
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 275
    iput-boolean v4, p0, Lcom/android/server/appop/HistoricalRegistry;->mIsReady:Z

    return-void
.end method

.method public writeAndClearDiscreteHistory()V
    .registers 1

    .line 0
    return-void
.end method
