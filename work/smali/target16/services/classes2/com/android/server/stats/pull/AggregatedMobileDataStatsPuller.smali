.class public Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;
.super Ljava/lang/Object;
.source "AggregatedMobileDataStatsPuller.java"


# static fields
.field public static final NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLastMobileUidStats:Landroid/net/NetworkStats;

.field public mLastNetworkStatsPollTime:J

.field public final mLock:Ljava/lang/Object;

.field public final mMobileDataStatsHandler:Landroid/os/Handler;

.field public final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field public final mRateLimiter:Lcom/android/server/selinux/RateLimiter;

.field public final mStatsAccumulator:Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;

.field public final mUidPreviousState:Landroid/util/SparseIntArray;

.field public final mUidStats:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$TUrXXS0k7WcZnRrfjsngjNomQ8w(Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->lambda$noteUidProcessState$1(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$t4qGpDfNygeaR2N48fNhkmgoaeo(Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 63
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLastMobileUidStats:Landroid/net/NetworkStats;

    const-wide/16 v0, -0x3a98

    .line 173
    iput-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLastNetworkStatsPollTime:J

    const-wide/32 v0, 0x80000

    .line 176
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 178
    const-string v3, "AggregatedMobileDataStatsPuller-Init"

    invoke-static {v0, v1, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 181
    :cond_26
    iput-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mContext:Landroid/content/Context;

    .line 188
    new-instance v3, Lcom/android/server/selinux/RateLimiter;

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/selinux/RateLimiter;-><init>(Ljava/time/Duration;)V

    iput-object v3, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mRateLimiter:Lcom/android/server/selinux/RateLimiter;

    .line 191
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    .line 192
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidPreviousState:Landroid/util/SparseIntArray;

    .line 194
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 195
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "netstats_uid_bucket_duration"

    sget-wide v5, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

    .line 198
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 203
    const-class v3, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    iput-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v3, 0x0

    .line 215
    iput-object v3, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mStatsAccumulator:Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;

    .line 218
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "MobileDataStatsHandler"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 220
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mMobileDataStatsHandler:Landroid/os/Handler;

    if-eqz p1, :cond_87

    .line 223
    new-instance p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;)V

    invoke-virtual {v4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_87
    if-eqz v2, :cond_8c

    .line 229
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_8c
    return-void
.end method

.method public static isEmpty(Landroid/net/NetworkStats;)Z
    .registers 6

    .line 408
    invoke-virtual {p0}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$Entry;

    .line 409
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_22

    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_4

    :cond_22
    const/4 p0, 0x0

    return p0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final getMobileUidStats(Landroid/app/usage/NetworkStatsManager;)Landroid/net/NetworkStats;
    .registers 2

    .line 324
    invoke-virtual {p1}, Landroid/app/usage/NetworkStatsManager;->getMobileUidStats()Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final getUidStatsForPreviousStateLocked(I)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;
    .registers 5

    .line 255
    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidPreviousState:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 256
    new-instance v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;

    invoke-direct {v1, p1, v0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;-><init>(II)V

    .line 257
    iget-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 258
    iget-object p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    return-object p0

    .line 265
    :cond_1d
    iget-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/16 v0, 0xbb8

    const/4 v2, 0x0

    if-ge p1, v0, :cond_33

    .line 266
    new-instance p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    invoke-direct {p1, v2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;-><init>(Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller-IA;)V

    .line 267
    iget-object p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_33
    return-object v2
.end method

.method public final synthetic lambda$new$0()V
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p0, v0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->updateNetworkStats(Landroid/app/usage/NetworkStatsManager;)V

    return-void
.end method

.method public final synthetic lambda$noteUidProcessState$1(II)V
    .registers 3

    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->noteUidProcessStateImpl(II)V

    return-void
.end method

.method public noteUidProcessState(IIJJ)V
    .registers 7

    .line 235
    iget-object p3, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mRateLimiter:Lcom/android/server/selinux/RateLimiter;

    invoke-virtual {p3}, Lcom/android/server/selinux/RateLimiter;->tryAcquire()Z

    move-result p3

    if-eqz p3, :cond_13

    .line 236
    iget-object p3, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mMobileDataStatsHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;II)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 241
    :cond_13
    iget-object p3, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 242
    :try_start_16
    iget-object p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidPreviousState:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 243
    monitor-exit p3

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit p3
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final noteUidProcessStateImpl(II)V
    .registers 5

    .line 287
    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    if-eqz v0, :cond_8

    .line 288
    invoke-virtual {p0, v0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->updateNetworkStats(Landroid/app/usage/NetworkStatsManager;)V

    goto :goto_10

    .line 290
    :cond_8
    const-string v0, "AggregatedMobileDataStatsPuller"

    const-string/jumbo v1, "noteUidProcessStateLocked() can not get mNetworkStatsManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_10
    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_13
    iget-object p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidPreviousState:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 294
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public pullDataBytesTransfer(Ljava/util/List;)I
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->pullDataBytesTransferLocked(Ljava/util/List;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 250
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final pullDataBytesTransferLocked(Ljava/util/List;)I
    .registers 16

    .line 387
    iget-object p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 388
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    invoke-virtual {v1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 389
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    .line 392
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;

    invoke-virtual {v2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->getUid()I

    move-result v4

    .line 393
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;

    invoke-virtual {v0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->getState()I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    .line 394
    invoke-virtual {v1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->getRxBytes()J

    move-result-wide v6

    .line 395
    invoke-virtual {v1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->getRxPackets()J

    move-result-wide v8

    .line 396
    invoke-virtual {v1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->getTxBytes()J

    move-result-wide v10

    .line 397
    invoke-virtual {v1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->getTxPackets()J

    move-result-wide v12

    const/16 v3, 0x27dc

    .line 390
    invoke-static/range {v3 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_5a
    const/4 p0, 0x0

    return p0
.end method

.method public final updateNetworkStats(Landroid/app/usage/NetworkStatsManager;)V
    .registers 6

    const-wide/32 v0, 0x80000

    .line 329
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 331
    const-string v3, "AggregatedMobileDataStatsPuller-updateNetworkStats"

    invoke-static {v0, v1, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 334
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->getMobileUidStats(Landroid/app/usage/NetworkStatsManager;)Landroid/net/NetworkStats;

    move-result-object p1

    .line 335
    invoke-static {p1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->isEmpty(Landroid/net/NetworkStats;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_2f

    .line 346
    :cond_19
    iget-object v3, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLastMobileUidStats:Landroid/net/NetworkStats;

    invoke-virtual {p1, v3}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v3

    .line 347
    iput-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLastMobileUidStats:Landroid/net/NetworkStats;

    .line 349
    invoke-static {v3}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->isEmpty(Landroid/net/NetworkStats;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 350
    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->updateNetworkStatsDelta(Landroid/net/NetworkStats;)V

    :cond_2a
    if-eqz v2, :cond_2f

    .line 355
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public final updateNetworkStatsDelta(Landroid/net/NetworkStats;)V
    .registers 8

    .line 364
    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_3
    invoke-virtual {p1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStats$Entry;

    .line 366
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_28

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_51

    .line 370
    :cond_28
    :goto_28
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->getUidStatsForPreviousStateLocked(I)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 372
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->addTxBytes(J)V

    .line 373
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->addRxBytes(J)V

    .line 374
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->addTxPackets(J)V

    .line 375
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->addRxPackets(J)V

    goto :goto_7

    .line 379
    :cond_4f
    monitor-exit v0

    return-void

    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_26

    throw p0
.end method
