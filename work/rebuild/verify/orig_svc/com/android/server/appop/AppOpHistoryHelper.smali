.class public Lcom/android/server/appop/AppOpHistoryHelper;
.super Ljava/lang/Object;
.source "AppOpHistoryHelper.java"


# static fields
.field public static final DB_WRITE_INTERVAL_PERIODIC_MILLIS:J

.field public static final EXPIRED_ENTRY_DELETION_INTERVAL_MILLIS:J

.field public static final PERIODIC_JOB_MAX_VARIATION_MILLIS:J


# instance fields
.field public final mCache:Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

.field public final mContext:Landroid/content/Context;

.field public final mDatabaseFile:Ljava/io/File;

.field public final mDbHelper:Lcom/android/server/appop/AppOpHistoryDbHelper;

.field public mHistoryRetentionMillis:J

.field public final mMetricHandler:Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;

.field public mQuantizationMillis:J

.field public final mRandom:Ljava/util/Random;

.field public final mSqliteWriteHandler:Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCache(Lcom/android/server/appop/AppOpHistoryHelper;)Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mCache:Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDatabaseFile(Lcom/android/server/appop/AppOpHistoryHelper;)Ljava/io/File;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mDatabaseFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDbHelper(Lcom/android/server/appop/AppOpHistoryHelper;)Lcom/android/server/appop/AppOpHistoryDbHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mDbHelper:Lcom/android/server/appop/AppOpHistoryDbHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHistoryRetentionMillis(Lcom/android/server/appop/AppOpHistoryHelper;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mHistoryRetentionMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmQuantizationMillis(Lcom/android/server/appop/AppOpHistoryHelper;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mQuantizationMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/AppOpHistoryHelper;)Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mSqliteWriteHandler:Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mensurePeriodicJobsAreScheduled(Lcom/android/server/appop/AppOpHistoryHelper;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper;->ensurePeriodicJobsAreScheduled()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minsertAppOpHistory(Lcom/android/server/appop/AppOpHistoryHelper;Ljava/util/List;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpHistoryHelper;->insertAppOpHistory(Ljava/util/List;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    .line 87
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/AppOpHistoryHelper;->PERIODIC_JOB_MAX_VARIATION_MILLIS:J

    const-wide/16 v0, 0xa

    .line 89
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/AppOpHistoryHelper;->DB_WRITE_INTERVAL_PERIODIC_MILLIS:J

    const-wide/16 v0, 0x6

    .line 91
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/AppOpHistoryHelper;->EXPIRED_ENTRY_DELETION_INTERVAL_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;I)V
    .registers 7

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mRandom:Ljava/util/Random;

    .line 107
    new-instance v0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    const/16 v1, 0x400

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;-><init>(Lcom/android/server/appop/AppOpHistoryHelper;I)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mCache:Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    .line 111
    iput-object p1, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mDatabaseFile:Ljava/io/File;

    .line 113
    new-instance v0, Lcom/android/server/appop/AppOpHistoryDbHelper;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpHistoryDbHelper;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;I)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mDbHelper:Lcom/android/server/appop/AppOpHistoryDbHelper;

    .line 115
    new-instance p1, Lcom/android/server/ServiceThread;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const-string p4, "AppOpHistoryHelper"

    invoke-direct {p1, p4, p2, p3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 117
    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    .line 118
    new-instance p2, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;-><init>(Lcom/android/server/appop/AppOpHistoryHelper;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mSqliteWriteHandler:Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;

    .line 119
    new-instance p2, Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mMetricHandler:Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;

    return-void
.end method


# virtual methods
.method public final addAppOpAccessEventToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;Lcom/android/server/appop/AggregatedAppOpAccessEvent;)V
    .registers 21

    .line 227
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opCode()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uid()I

    move-result v2

    .line 228
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->packageName()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uidState()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opFlags()I

    move-result v6

    .line 230
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalAccessCount()I

    move-result v0

    int-to-long v7, v0

    move-object/from16 v0, p1

    .line 227
    invoke-virtual/range {v0 .. v8}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opCode()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uid()I

    move-result v11

    .line 232
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->packageName()Ljava/lang/String;

    move-result-object v12

    .line 233
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uidState()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opFlags()I

    move-result v15

    .line 234
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalRejectCount()I

    move-result v0

    int-to-long v0, v0

    move-object/from16 v9, p1

    move-wide/from16 v16, v0

    .line 231
    invoke-virtual/range {v9 .. v17}, Landroid/app/AppOpsManager$HistoricalOps;->increaseRejectCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opCode()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uid()I

    move-result v11

    .line 236
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->packageName()Ljava/lang/String;

    move-result-object v12

    .line 237
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uidState()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opFlags()I

    move-result v15

    .line 238
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalDurationMillis()J

    move-result-wide v16

    .line 235
    invoke-virtual/range {v9 .. v17}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method public addLongIntervalOpsToHistoricalOpsResult(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    .line 217
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/AppOpHistoryHelper;->getAppOpHistory(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    .line 220
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_18

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    .line 221
    invoke-virtual {p0, p1, p3}, Lcom/android/server/appop/AppOpHistoryHelper;->addAppOpAccessEventToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;Lcom/android/server/appop/AggregatedAppOpAccessEvent;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public addShortIntervalOpsToHistoricalOpsResult(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;I)V
    .registers 40

    move-object/from16 v0, p0

    move-object/from16 v1, p12

    .line 172
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/AppOpHistoryHelper;->getAppOpHistory(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    and-int/lit8 v3, p13, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_10

    move v3, v5

    goto :goto_11

    :cond_10
    move v3, v4

    :goto_11
    if-eqz v1, :cond_17

    if-eqz v3, :cond_17

    move v6, v5

    goto :goto_18

    :cond_17
    move v6, v4

    :goto_18
    const/4 v7, 0x0

    if-eqz v6, :cond_20

    .line 179
    invoke-virtual {v0, v2, v1}, Lcom/android/server/appop/AppOpHistoryHelper;->createAttributionChains(Ljava/util/List;Ljava/util/Set;)Landroid/util/LongSparseArray;

    move-result-object v1

    goto :goto_21

    :cond_20
    move-object v1, v7

    .line 182
    :goto_21
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    :goto_25
    if-ge v4, v8, :cond_b7

    .line 184
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    if-eqz v6, :cond_69

    .line 186
    invoke-virtual {v9}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionChainId()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_69

    .line 187
    invoke-virtual {v9}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionChainId()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;

    if-eqz v10, :cond_69

    .line 188
    invoke-virtual {v10}, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->isComplete()Z

    move-result v11

    if-eqz v11, :cond_69

    .line 189
    invoke-static {v10, v9}, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->-$$Nest$misStart(Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;Lcom/android/server/appop/AggregatedAppOpAccessEvent;)Z

    move-result v11

    if-eqz v11, :cond_69

    iget-object v10, v10, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    if-eqz v10, :cond_69

    .line 192
    new-instance v11, Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-virtual {v10}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uid()I

    move-result v12

    .line 193
    invoke-virtual {v10}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->packageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionTag()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v12, v13, v10}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v25, v11

    goto :goto_6b

    :cond_69
    move-object/from16 v25, v7

    :goto_6b
    if-eqz v3, :cond_aa

    .line 198
    invoke-virtual {v9}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalAccessCount()I

    move-result v10

    if-gtz v10, :cond_7d

    invoke-virtual {v9}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalDurationMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_aa

    .line 199
    :cond_7d
    invoke-virtual {v9}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opCode()I

    move-result v15

    invoke-virtual {v9}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uid()I

    move-result v16

    invoke-virtual {v9}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->packageName()Ljava/lang/String;

    move-result-object v17

    .line 200
    invoke-virtual {v9}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionTag()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v9}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uidState()I

    move-result v19

    invoke-virtual {v9}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opFlags()I

    move-result v20

    .line 201
    invoke-virtual {v9}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->accessTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/android/server/appop/AppOpHistoryHelper;->discretizeTimestamp(J)J

    move-result-wide v21

    .line 202
    invoke-virtual {v9}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->durationMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/android/server/appop/AppOpHistoryHelper;->discretizeDuration(J)J

    move-result-wide v23

    move-object/from16 v14, p1

    .line 199
    invoke-virtual/range {v14 .. v25}, Landroid/app/AppOpsManager$HistoricalOps;->addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    :cond_aa
    and-int/lit8 v10, p13, 0x1

    move-object/from16 v14, p1

    if-eqz v10, :cond_b3

    .line 206
    invoke-virtual {v0, v14, v9}, Lcom/android/server/appop/AppOpHistoryHelper;->addAppOpAccessEventToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;Lcom/android/server/appop/AggregatedAppOpAccessEvent;)V

    :cond_b3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_25

    :cond_b7
    return-void
.end method

.method public clearHistory()V
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mCache:Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    invoke-static {v0}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->-$$Nest$mclear(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;)V

    .line 299
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mDbHelper:Lcom/android/server/appop/AppOpHistoryDbHelper;

    const-string v0, "DELETE FROM app_op_accesses"

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpHistoryDbHelper;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public clearHistory(ILjava/lang/String;)V
    .registers 4

    .line 303
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mCache:Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    invoke-static {v0, p1, p2}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->-$$Nest$mclear(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;ILjava/lang/String;)V

    .line 304
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mDbHelper:Lcom/android/server/appop/AppOpHistoryDbHelper;

    .line 305
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 304
    const-string p2, "DELETE FROM app_op_accesses WHERE uid = ? AND package_name = ?"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/appop/AppOpHistoryDbHelper;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final createAttributionChains(Ljava/util/List;Ljava/util/Set;)Landroid/util/LongSparseArray;
    .registers 10

    .line 370
    new-instance p0, Landroid/util/LongSparseArray;

    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    .line 371
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_43

    .line 374
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    .line 375
    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionChainId()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_40

    .line 376
    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_25

    goto :goto_40

    .line 379
    :cond_25
    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionChainId()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;

    if-nez v3, :cond_3d

    .line 381
    new-instance v3, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;

    invoke-direct {v3, p2}, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;-><init>(Ljava/util/Set;)V

    .line 382
    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionChainId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 384
    :cond_3d
    invoke-virtual {v3, v2}, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->addEvent(Lcom/android/server/appop/AggregatedAppOpAccessEvent;)V

    :cond_40
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_43
    return-object p0
.end method

.method public discretizeDuration(J)J
    .registers 7

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-wide v0

    .line 314
    :cond_7
    iget-wide v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mQuantizationMillis:J

    add-long/2addr p1, v0

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    div-long/2addr p1, v0

    mul-long/2addr p1, v0

    return-wide p1
.end method

.method public discretizeTimestamp(J)J
    .registers 5

    .line 309
    iget-wide v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mQuantizationMillis:J

    div-long/2addr p1, v0

    mul-long/2addr p1, v0

    return-wide p1
.end method

.method public dump(JJLjava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;ILjava/text/SimpleDateFormat;Ljava/util/Date;I)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 394
    iget-object v2, v0, Lcom/android/server/appop/AppOpHistoryHelper;->mCache:Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    invoke-static {v2}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->-$$Nest$mevictAll(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/android/server/appop/AppOpHistoryHelper;->insertAppOpHistory(Ljava/util/List;I)V

    .line 396
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/appop/AppOpHistoryHelper;->discretizeTimestamp(J)J

    move-result-wide v6

    .line 398
    iget-object v4, v0, Lcom/android/server/appop/AppOpHistoryHelper;->mDbHelper:Lcom/android/server/appop/AppOpHistoryDbHelper;

    const-string v16, "access_time"

    const/16 v17, 0x0

    const/16 v14, 0x1f

    move-wide/from16 v8, p3

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v5, p10

    move/from16 v15, p13

    invoke-virtual/range {v4 .. v17}, Lcom/android/server/appop/AppOpHistoryDbHelper;->getAppOpHistory(IJJILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;IILjava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 403
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 404
    const-string v2, "UID|PACKAGE_NAME|DEVICE_ID|OP_NAME|ATTRIBUTION_TAG|ACCESS_TIME|ACCESS_COUNTS|REJECT_COUNTS|DURATION|UID_STATE|OP_FLAGS|ATTRIBUTION_CHAIN_ID|ATTRIBUTION_FLAGS"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    .line 408
    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->accessTimeMillis()J

    move-result-wide v3

    move-object/from16 v5, p12

    invoke-virtual {v5, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->packageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->deviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opCode()I

    move-result v6

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual/range {p11 .. p12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalAccessCount()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalRejectCount()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalDurationMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uidState()I

    move-result v6

    invoke-static {v6}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opFlags()I

    move-result v6

    invoke-static {v6}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionChainId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionFlags()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 423
    :cond_e9
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final ensurePeriodicJobsAreScheduled()V
    .registers 10

    .line 427
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mSqliteWriteHandler:Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1b

    .line 428
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mSqliteWriteHandler:Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;

    sget-wide v4, Lcom/android/server/appop/AppOpHistoryHelper;->DB_WRITE_INTERVAL_PERIODIC_MILLIS:J

    iget-object v6, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mRandom:Ljava/util/Random;

    sget-wide v7, Lcom/android/server/appop/AppOpHistoryHelper;->PERIODIC_JOB_MAX_VARIATION_MILLIS:J

    .line 429
    invoke-virtual {v6, v2, v3, v7, v8}, Ljava/util/Random;->nextLong(JJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 428
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 432
    :cond_1b
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mSqliteWriteHandler:Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 433
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mSqliteWriteHandler:Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;

    sget-wide v4, Lcom/android/server/appop/AppOpHistoryHelper;->EXPIRED_ENTRY_DELETION_INTERVAL_MILLIS:J

    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mRandom:Ljava/util/Random;

    sget-wide v6, Lcom/android/server/appop/AppOpHistoryHelper;->PERIODIC_JOB_MAX_VARIATION_MILLIS:J

    .line 435
    invoke-virtual {p0, v2, v3, v6, v7}, Ljava/util/Random;->nextLong(JJ)J

    move-result-wide v2

    add-long/2addr v4, v2

    .line 433
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_34
    return-void
.end method

.method public getAppOpHistory()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/appop/AggregatedAppOpAccessEvent;",
            ">;"
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    iget-object v1, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mCache:Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    monitor-enter v1

    .line 338
    :try_start_8
    iget-object v2, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mCache:Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    invoke-static {v2}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->-$$Nest$msnapshot(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mDbHelper:Lcom/android/server/appop/AppOpHistoryDbHelper;

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryDbHelper;->getAppOpHistory()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 340
    monitor-exit v1

    return-object v0

    :catchall_1c
    move-exception p0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public getAppOpHistory(JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJII",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/appop/AggregatedAppOpAccessEvent;",
            ">;"
        }
    .end annotation

    move/from16 v1, p5

    move-object/from16 v0, p8

    .line 350
    invoke-static {v1, v0}, Lcom/android/server/appop/AppOpHistoryQueryHelper;->getAppOpCodes(I[Ljava/lang/String;)Landroid/util/IntArray;

    move-result-object v9

    const/4 v0, 0x4

    if-eqz v9, :cond_15

    .line 353
    iget-object v2, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mCache:Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    invoke-static {v2, v9}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->-$$Nest$mevict(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;Landroid/util/IntArray;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/appop/AppOpHistoryHelper;->insertAppOpHistory(Ljava/util/List;I)V

    goto :goto_1e

    .line 356
    :cond_15
    iget-object v2, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mCache:Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    invoke-static {v2}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->-$$Nest$mevictAll(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/appop/AppOpHistoryHelper;->insertAppOpHistory(Ljava/util/List;I)V

    .line 360
    :goto_1e
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/appop/AppOpHistoryHelper;->discretizeTimestamp(J)J

    move-result-wide v2

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mHistoryRetentionMillis:J

    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/server/appop/AppOpHistoryHelper;->discretizeTimestamp(J)J

    move-result-wide v4

    .line 360
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 362
    iget-wide v4, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mQuantizationMillis:J

    add-long v4, p3, v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/appop/AppOpHistoryHelper;->discretizeTimestamp(J)J

    move-result-wide v4

    .line 363
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mDbHelper:Lcom/android/server/appop/AppOpHistoryDbHelper;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, -0x1

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/appop/AppOpHistoryDbHelper;->getAppOpHistory(IJJILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;IILjava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getAppOpHistory(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 26

    move/from16 v1, p6

    move-object/from16 v0, p9

    .line 253
    invoke-static {v1, v0}, Lcom/android/server/appop/AppOpHistoryQueryHelper;->getAppOpCodes(I[Ljava/lang/String;)Landroid/util/IntArray;

    move-result-object v9

    const/4 v0, 0x4

    if-eqz v9, :cond_17

    .line 256
    iget-object v2, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mCache:Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    invoke-static {v2, v9}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->-$$Nest$mevict(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;Landroid/util/IntArray;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/appop/AppOpHistoryHelper;->insertAppOpHistory(Ljava/util/List;I)V

    :goto_14
    move-wide/from16 v2, p2

    goto :goto_21

    .line 259
    :cond_17
    iget-object v2, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mCache:Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    invoke-static {v2}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->-$$Nest$mevictAll(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/appop/AppOpHistoryHelper;->insertAppOpHistory(Ljava/util/List;I)V

    goto :goto_14

    .line 263
    :goto_21
    invoke-virtual {p0, v2, v3}, Lcom/android/server/appop/AppOpHistoryHelper;->discretizeTimestamp(J)J

    move-result-wide v2

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mHistoryRetentionMillis:J

    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/server/appop/AppOpHistoryHelper;->discretizeTimestamp(J)J

    move-result-wide v4

    .line 263
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 265
    iget-wide v4, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mQuantizationMillis:J

    add-long v4, p4, v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/appop/AppOpHistoryHelper;->discretizeTimestamp(J)J

    move-result-wide v4

    .line 266
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 268
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mDbHelper:Lcom/android/server/appop/AppOpHistoryDbHelper;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, -0x1

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p10

    move/from16 v10, p11

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/appop/AppOpHistoryDbHelper;->getAppOpHistory(IJJILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;IILjava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLargestAttributionChainId()J
    .registers 3

    .line 279
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mDbHelper:Lcom/android/server/appop/AppOpHistoryDbHelper;

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryDbHelper;->getLargestAttributionChainId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecentlyUsedPackageNames([Ljava/lang/String;IJJI)Landroid/util/ArraySet;
    .registers 8

    .line 330
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mDbHelper:Lcom/android/server/appop/AppOpHistoryDbHelper;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/appop/AppOpHistoryDbHelper;->getRecentlyUsedPackageNames([Ljava/lang/String;IJJI)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getTotalRecordsCount()J
    .registers 3

    .line 323
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mDbHelper:Lcom/android/server/appop/AppOpHistoryDbHelper;

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryDbHelper;->getTotalRecordsCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIJIZ)V
    .registers 37

    move-object/from16 v0, p0

    if-eqz p14, :cond_7

    const-wide/16 v1, 0x0

    goto :goto_9

    :cond_7
    const-wide/16 v1, -0x1

    .line 135
    :goto_9
    new-instance v3, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;

    move-wide/from16 v14, p8

    .line 137
    invoke-virtual {v0, v14, v15}, Lcom/android/server/appop/AppOpHistoryHelper;->discretizeTimestamp(J)J

    move-result-wide v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/AppOpHistoryHelper;->discretizeDuration(J)J

    move-result-wide v20

    move/from16 v6, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p6

    move/from16 v9, p7

    move/from16 v11, p10

    move-wide/from16 v12, p11

    move-wide/from16 v18, v1

    invoke-direct/range {v3 .. v21}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIJJJJJ)V

    .line 139
    iget-object v0, v0, Lcom/android/server/appop/AppOpHistoryHelper;->mCache:Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move/from16 p2, p13

    move-object/from16 p0, v0

    move/from16 p3, v1

    move-object/from16 p1, v3

    move-wide/from16 p4, v4

    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->-$$Nest$minsertOrUpdate(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;IIJ)V

    return-void
.end method

.method public incrementOpRejectedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIJI)V
    .registers 34

    move-object/from16 v0, p0

    .line 146
    new-instance v1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;

    move-wide/from16 v12, p8

    .line 148
    invoke-virtual {v0, v12, v13}, Lcom/android/server/appop/AppOpHistoryHelper;->discretizeTimestamp(J)J

    move-result-wide v14

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/appop/AppOpHistoryHelper;->discretizeDuration(J)J

    move-result-wide v18

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p6

    move/from16 v7, p7

    move/from16 v9, p10

    move-wide/from16 v10, p11

    move-wide/from16 v16, v2

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v19}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIJJJJJ)V

    .line 149
    iget-object v0, v0, Lcom/android/server/appop/AppOpHistoryHelper;->mCache:Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move/from16 p3, p13

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move/from16 p2, v2

    move-wide/from16 p4, v3

    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->-$$Nest$minsertOrUpdate(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;IIJ)V

    return-void
.end method

.method public final insertAppOpHistory(Ljava/util/List;I)V
    .registers 4

    .line 243
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mDbHelper:Lcom/android/server/appop/AppOpHistoryDbHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/AppOpHistoryDbHelper;->insertAppOpHistory(Ljava/util/List;I)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpHistoryHelper;->sendToMetricsHandler(Ljava/util/List;)V

    return-void
.end method

.method public migrateDiscreteAppOpHistory(Ljava/util/List;)V
    .registers 3

    .line 318
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mDbHelper:Lcom/android/server/appop/AppOpHistoryDbHelper;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpHistoryDbHelper;->insertAppOpHistory(Ljava/util/List;I)V

    return-void
.end method

.method public persistPendingHistory()V
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mSqliteWriteHandler:Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->removeAllPendingMessages()V

    .line 293
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mCache:Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    invoke-static {v0}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->-$$Nest$mevictAll(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/appop/AppOpHistoryHelper;->insertAppOpHistory(Ljava/util/List;I)V

    return-void
.end method

.method public recordOpAccessDuration(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIJJ)V
    .registers 35

    move-object/from16 v0, p0

    .line 157
    new-instance v1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;

    move-wide/from16 v12, p8

    .line 159
    invoke-virtual {v0, v12, v13}, Lcom/android/server/appop/AppOpHistoryHelper;->discretizeTimestamp(J)J

    move-result-wide v14

    move-wide/from16 v2, p13

    .line 160
    invoke-virtual {v0, v2, v3}, Lcom/android/server/appop/AppOpHistoryHelper;->discretizeDuration(J)J

    move-result-wide v18

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p6

    move/from16 v7, p7

    move/from16 v9, p10

    move-wide/from16 v10, p11

    move-wide/from16 v16, v2

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v19}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIJJJJJ)V

    .line 162
    iget-object v0, v0, Lcom/android/server/appop/AppOpHistoryHelper;->mCache:Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-wide/from16 p4, p13

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move/from16 p2, v2

    move/from16 p3, v3

    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->-$$Nest$minsertOrUpdate(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;IIJ)V

    return-void
.end method

.method public sendToMetricsHandler(Ljava/util/List;)V
    .registers 4

    .line 509
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mMetricHandler:Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 510
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mMetricHandler:Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public shutdown()V
    .registers 3

    .line 283
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper;->persistPendingHistory()V

    .line 285
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mMetricHandler:Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mMetricHandler:Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 287
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mSqliteWriteHandler:Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public systemReady(JJ)V
    .registers 5

    .line 124
    iput-wide p1, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mQuantizationMillis:J

    .line 125
    iput-wide p3, p0, Lcom/android/server/appop/AppOpHistoryHelper;->mHistoryRetentionMillis:J

    .line 127
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper;->ensurePeriodicJobsAreScheduled()V

    return-void
.end method
