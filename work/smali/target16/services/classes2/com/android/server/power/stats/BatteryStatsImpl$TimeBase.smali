.class public Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# instance fields
.field public final mObservers:Ljava/util/Collection;

.field public mPastRealtimeUs:J

.field public mPastUptimeUs:J

.field public mRealtimeStartUs:J

.field public mRealtimeUs:J

.field public mRunning:Z

.field public mUnpluggedRealtimeUs:J

.field public mUnpluggedUptimeUs:J

.field public mUptimeStartUs:J

.field public mUptimeUs:J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 2356
    invoke-direct {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 2351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_b

    .line 2352
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto :goto_10

    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_10
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V
    .registers 2

    .line 2360
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public computeRealtime(JI)J
    .registers 6

    .line 2402
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public computeUptime(JI)J
    .registers 6

    .line 2398
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public getRealtime(J)J
    .registers 7

    .line 2414
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 2415
    iget-boolean v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v2, :cond_a

    .line 2416
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    :cond_a
    return-wide v0
.end method

.method public getUptime(J)J
    .registers 7

    .line 2406
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 2407
    iget-boolean v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v2, :cond_a

    .line 2408
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    :cond_a
    return-wide v0
.end method

.method public init(JJ)V
    .registers 7

    const-wide/16 v0, 0x0

    .line 2372
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    .line 2373
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    .line 2374
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 2375
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 2376
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 2377
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 2378
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    .line 2379
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    return-void
.end method

.method public isRunning()Z
    .registers 1

    .line 2430
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    return p0
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 2469
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    .line 2470
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    return-void
.end method

.method public remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V
    .registers 2

    .line 2364
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset(JJ)V
    .registers 6

    .line 2383
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-nez v0, :cond_b

    const-wide/16 p1, 0x0

    .line 2384
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 2385
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    return-void

    .line 2387
    :cond_b
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 2388
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 2391
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    .line 2393
    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    return-void
.end method

.method public setRunning(ZJJ)Z
    .registers 13

    .line 2434
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eq v0, p1, :cond_64

    .line 2435
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz p1, :cond_30

    .line 2437
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 2438
    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 2439
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    .line 2440
    invoke-virtual {p0, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    .line 2444
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2445
    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 2446
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;

    move-wide v1, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->onTimeStarted(JJJ)V

    goto :goto_1e

    .line 2450
    :cond_30
    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    iget-wide v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    sub-long v5, p2, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 2451
    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    iget-wide v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    sub-long v5, p4, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 2452
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v3

    .line 2453
    invoke-virtual {p0, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v5

    .line 2457
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2458
    :goto_50
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 2459
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;

    move-wide v1, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->onTimeStopped(JJJ)V

    goto :goto_50

    :cond_62
    const/4 p0, 0x1

    return p0

    :cond_64
    const/4 p0, 0x0

    return p0
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;JJ)V
    .registers 7

    const/4 v0, 0x0

    .line 2474
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2475
    invoke-virtual {p0, p4, p5, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
