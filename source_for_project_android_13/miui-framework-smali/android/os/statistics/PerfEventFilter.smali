.class public final Landroid/os/statistics/PerfEventFilter;
.super Ljava/lang/Object;
.source "PerfEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;,
        Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;,
        Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;,
        Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;
    }
.end annotation


# static fields
.field public static final blacklist APP_MAX_FILTER_INTERVAL_MILLIS:I

.field public static final blacklist APP_ONE_BATCH_MAX_EVENT_COUNT:I = 0xc8

.field public static final blacklist DAEMON_MAX_FILTER_INTERVAL_MILLIS:I

.field public static final blacklist DAEMON_ONE_BATCH_MAX_EVENT_COUNT:I = 0x7d0

.field public static final blacklist MAX_TIME_SPAN_MILLIS:I = 0x10000

.field public static final blacklist SYSTEM_SERVER_ONE_BATCH_MAX_EVENT_COUNT:I = 0x258


# instance fields
.field private blacklist effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

.field private blacklist effectivePerfEventsWaitingPeer:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

.field private final blacklist isAppSideFilter:Z

.field private blacklist latestBatchBeginUptimeMillis:J

.field private blacklist latestBatchEndUptimeMillis:J

.field private final blacklist maxFilterIntervalMillis:I

.field private final blacklist minWaitTimeMillis:I

.field private final blacklist suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

.field private final blacklist tempBatchTimestampMillis:[J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetCeilingOfPowerByTwo(I)I
    .registers 1

    invoke-static {p0}, Landroid/os/statistics/PerfEventFilter;->getCeilingOfPowerByTwo(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 18
    sget v0, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    shl-int/lit8 v0, v0, 0x5

    sget v1, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    shl-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, 0x7d0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Landroid/os/statistics/PerfEventFilter;->APP_MAX_FILTER_INTERVAL_MILLIS:I

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Landroid/os/statistics/PerfEventFilter;->DAEMON_MAX_FILTER_INTERVAL_MILLIS:I

    .line 22
    return-void
.end method

.method public constructor blacklist <init>(ZI)V
    .registers 14
    .param p1, "_isAppSideFilter"    # Z
    .param p2, "_maxFilterIntervalMillis"    # I

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter;->tempBatchTimestampMillis:[J

    .line 272
    iput-boolean p1, p0, Landroid/os/statistics/PerfEventFilter;->isAppSideFilter:Z

    .line 273
    iput p2, p0, Landroid/os/statistics/PerfEventFilter;->maxFilterIntervalMillis:I

    .line 274
    if-eqz p1, :cond_10

    const/4 v0, 0x0

    goto :goto_13

    :cond_10
    sget v0, Landroid/os/statistics/PerfEventFilter;->APP_MAX_FILTER_INTERVAL_MILLIS:I

    add-int/2addr v0, p2

    :goto_13
    iput v0, p0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    .line 275
    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v8

    .line 276
    .local v8, "curUptimeMillis":J
    new-instance v10, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    const/4 v2, 0x1

    const/16 v3, 0x100

    const/high16 v4, 0x10000

    move-object v1, v10

    move v5, v0

    move-wide v6, v8

    invoke-direct/range {v1 .. v7}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;-><init>(ZIIIJ)V

    iput-object v10, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    .line 277
    new-instance v10, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    move-object v1, v10

    invoke-direct/range {v1 .. v7}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;-><init>(ZIIIJ)V

    iput-object v10, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEventsWaitingPeer:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    .line 278
    new-instance v10, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    const/4 v2, 0x0

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    const/16 v4, 0x800

    move-object v1, v10

    invoke-direct/range {v1 .. v7}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;-><init>(ZIIIJ)V

    iput-object v10, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    .line 279
    iput-wide v8, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchBeginUptimeMillis:J

    .line 280
    iput-wide v8, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchEndUptimeMillis:J

    .line 281
    return-void
.end method

.method private blacklist checkBlockedEffectiveMicroEvent(Landroid/os/statistics/FilteringPerfEvent;)Z
    .registers 15
    .param p1, "checkingEffectiveEvent"    # Landroid/os/statistics/FilteringPerfEvent;

    .line 488
    iget v0, p1, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    .line 490
    .local v0, "eventFlags":I
    iget v1, p1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    .line 493
    .local v1, "durationMillis":I
    and-int/lit16 v2, v0, 0x4000

    if-nez v2, :cond_1c

    .line 494
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_f

    .line 495
    move v2, v1

    .line 496
    .local v2, "minPeerEventDurationMs":I
    move v3, v1

    .local v3, "maxPeerEventDurationMs":I
    goto :goto_20

    .line 497
    .end local v2    # "minPeerEventDurationMs":I
    .end local v3    # "maxPeerEventDurationMs":I
    :cond_f
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_18

    .line 498
    shr-int/lit8 v2, v1, 0x2

    .line 499
    .restart local v2    # "minPeerEventDurationMs":I
    shl-int/lit8 v3, v1, 0x5

    .restart local v3    # "maxPeerEventDurationMs":I
    goto :goto_20

    .line 501
    .end local v2    # "minPeerEventDurationMs":I
    .end local v3    # "maxPeerEventDurationMs":I
    :cond_18
    shr-int/lit8 v2, v1, 0x2

    .line 502
    .restart local v2    # "minPeerEventDurationMs":I
    move v3, v1

    .restart local v3    # "maxPeerEventDurationMs":I
    goto :goto_20

    .line 505
    .end local v2    # "minPeerEventDurationMs":I
    .end local v3    # "maxPeerEventDurationMs":I
    :cond_1c
    shr-int/lit8 v2, v1, 0x5

    .line 506
    .restart local v2    # "minPeerEventDurationMs":I
    shl-int/lit8 v3, v1, 0x5

    .line 509
    .restart local v3    # "maxPeerEventDurationMs":I
    :goto_20
    const/4 v4, 0x0

    .line 510
    .local v4, "completed":Z
    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_7f

    .line 511
    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillisPower:I

    shr-int v5, v2, v5

    .line 512
    .local v5, "beginCheckLevel":I
    iget-object v7, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v7, v7, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillisPower:I

    shr-int v7, v1, v7

    .line 513
    .local v7, "matchLevel":I
    iget-object v8, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v8, v8, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillisPower:I

    shr-int v8, v3, v8

    .line 514
    .local v8, "endCheckLevel":I
    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    if-lt v7, v9, :cond_46

    .line 515
    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    add-int/lit8 v7, v9, -0x1

    .line 517
    :cond_46
    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    if-lt v8, v9, :cond_52

    .line 518
    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    add-int/lit8 v8, v9, -0x1

    .line 520
    :cond_52
    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    .line 521
    .local v9, "perfEventsByLevel":[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    move v10, v7

    .local v10, "i":I
    :goto_57
    if-lt v10, v5, :cond_69

    .line 522
    aget-object v11, v9, v10

    .line 523
    .local v11, "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    iget v12, v11, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v12, :cond_66

    .line 524
    invoke-direct {p0, p1, v11}, Landroid/os/statistics/PerfEventFilter;->checkBlockedEffectiveMicroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)Z

    move-result v4

    .line 526
    if-eqz v4, :cond_66

    .line 527
    goto :goto_69

    .line 521
    .end local v11    # "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    :cond_66
    add-int/lit8 v10, v10, -0x1

    goto :goto_57

    .line 531
    .end local v10    # "i":I
    :cond_69
    :goto_69
    if-nez v4, :cond_7f

    .line 532
    add-int/lit8 v10, v7, 0x1

    .restart local v10    # "i":I
    :goto_6d
    if-gt v10, v8, :cond_7f

    .line 533
    aget-object v11, v9, v10

    .line 534
    .restart local v11    # "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    iget v12, v11, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v12, :cond_7c

    .line 535
    invoke-direct {p0, p1, v11}, Landroid/os/statistics/PerfEventFilter;->checkBlockedEffectiveMicroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)Z

    move-result v4

    .line 537
    if-eqz v4, :cond_7c

    .line 538
    goto :goto_7f

    .line 532
    .end local v11    # "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    :cond_7c
    add-int/lit8 v10, v10, 0x1

    goto :goto_6d

    .line 545
    .end local v5    # "beginCheckLevel":I
    .end local v7    # "matchLevel":I
    .end local v8    # "endCheckLevel":I
    .end local v9    # "perfEventsByLevel":[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    .end local v10    # "i":I
    :cond_7f
    :goto_7f
    if-nez v4, :cond_f3

    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    if-lt v3, v5, :cond_f3

    .line 546
    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    sub-int v5, v2, v5

    iget-object v7, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v7, v7, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillisPower:I

    shr-int/2addr v5, v7

    .line 547
    .restart local v5    # "beginCheckLevel":I
    iget-object v7, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v7, v7, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    sub-int v7, v1, v7

    iget-object v8, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v8, v8, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillisPower:I

    shr-int/2addr v7, v8

    .line 548
    .restart local v7    # "matchLevel":I
    iget-object v8, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v8, v8, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    sub-int v8, v3, v8

    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillisPower:I

    shr-int/2addr v8, v9

    .line 549
    .restart local v8    # "endCheckLevel":I
    if-gez v5, :cond_ab

    .line 550
    const/4 v5, 0x0

    .line 552
    :cond_ab
    if-gez v7, :cond_ae

    .line 553
    const/4 v7, 0x0

    .line 555
    :cond_ae
    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    if-le v7, v9, :cond_ba

    .line 556
    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    add-int/lit8 v7, v9, -0x1

    .line 558
    :cond_ba
    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    if-lt v8, v9, :cond_c6

    .line 559
    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    add-int/lit8 v8, v9, -0x1

    .line 561
    :cond_c6
    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    .line 562
    .restart local v9    # "perfEventsByLevel":[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    move v10, v7

    .restart local v10    # "i":I
    :goto_cb
    if-lt v10, v5, :cond_dd

    .line 563
    aget-object v11, v9, v10

    .line 564
    .restart local v11    # "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    iget v12, v11, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v12, :cond_da

    .line 565
    invoke-direct {p0, p1, v11}, Landroid/os/statistics/PerfEventFilter;->checkBlockedEffectiveMicroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)Z

    move-result v4

    .line 567
    if-eqz v4, :cond_da

    .line 568
    goto :goto_dd

    .line 562
    .end local v11    # "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    :cond_da
    add-int/lit8 v10, v10, -0x1

    goto :goto_cb

    .line 572
    .end local v10    # "i":I
    :cond_dd
    :goto_dd
    if-nez v4, :cond_f3

    .line 573
    add-int/lit8 v10, v7, 0x1

    .restart local v10    # "i":I
    :goto_e1
    if-gt v10, v8, :cond_f3

    .line 574
    aget-object v11, v9, v10

    .line 575
    .restart local v11    # "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    iget v12, v11, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v12, :cond_f0

    .line 576
    invoke-direct {p0, p1, v11}, Landroid/os/statistics/PerfEventFilter;->checkBlockedEffectiveMicroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)Z

    move-result v4

    .line 578
    if-eqz v4, :cond_f0

    .line 579
    goto :goto_f3

    .line 573
    .end local v11    # "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    :cond_f0
    add-int/lit8 v10, v10, 0x1

    goto :goto_e1

    .line 586
    .end local v5    # "beginCheckLevel":I
    .end local v7    # "matchLevel":I
    .end local v8    # "endCheckLevel":I
    .end local v9    # "perfEventsByLevel":[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    .end local v10    # "i":I
    :cond_f3
    :goto_f3
    const/4 v5, 0x0

    if-eqz v4, :cond_f7

    .line 587
    return v5

    .line 589
    :cond_f7
    iget v7, p0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    shl-int/lit8 v8, v1, 0x1

    add-int/2addr v7, v8

    .line 590
    .local v7, "maxWaitTimeInMillis":I
    const/high16 v8, 0x10000

    if-le v7, v8, :cond_102

    .line 591
    const/high16 v7, 0x10000

    .line 593
    :cond_102
    iget-wide v8, p1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    int-to-long v10, v7

    add-long/2addr v8, v10

    iget-wide v10, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchEndUptimeMillis:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_10d

    goto :goto_10e

    :cond_10d
    move v6, v5

    :goto_10e
    return v6
.end method

.method private blacklist checkBlockedEffectiveMicroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)Z
    .registers 15
    .param p1, "checkingEffectiveEvent"    # Landroid/os/statistics/FilteringPerfEvent;
    .param p2, "checkingSuspectedLevel"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    .line 600
    iget-wide v0, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceUptimeMillis:J

    .line 601
    .local v0, "firstSliceUptimeMillis":J
    iget v2, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceCount:I

    .line 602
    .local v2, "timesliceCount":I
    iget v3, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceIndex:I

    .line 603
    .local v3, "firstSliceIndex":I
    iget v4, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceMillisPower:I

    .line 604
    .local v4, "timesliceMillisPower":I
    iget-wide v5, p1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    sub-long/2addr v5, v0

    long-to-int v5, v5

    iget v6, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->exclusiveMaxPerfEventDurationMillis:I

    sub-int/2addr v5, v6

    shr-int/2addr v5, v4

    .line 605
    .local v5, "beginSliceNo":I
    iget-wide v6, p1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    sub-long/2addr v6, v0

    long-to-int v6, v6

    shr-int/2addr v6, v4

    .line 606
    .local v6, "endSliceNo":I
    if-gez v5, :cond_18

    .line 607
    const/4 v5, 0x0

    .line 609
    :cond_18
    if-lt v6, v2, :cond_1c

    .line 610
    add-int/lit8 v6, v2, -0x1

    .line 612
    :cond_1c
    const/4 v7, 0x1

    if-nez v5, :cond_2c

    .line 613
    iget-object v8, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    .line 614
    .local v8, "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    iget v9, v8, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v9, :cond_2c

    .line 615
    invoke-direct {p0, p1, p2, v8}, Landroid/os/statistics/PerfEventFilter;->checkBlockedEffectiveMicroEventWithSuspectedSlice(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 617
    return v7

    .line 621
    .end local v8    # "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    :cond_2c
    iget-object v8, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    .line 622
    .local v8, "timeslicedPerfEvents":[Landroid/os/statistics/FilteringPerfEventList;
    move v9, v5

    .local v9, "i":I
    :goto_2f
    if-gt v9, v6, :cond_44

    .line 623
    add-int v10, v3, v9

    rem-int/2addr v10, v2

    aget-object v10, v8, v10

    .line 624
    .local v10, "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    iget v11, v10, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v11, :cond_41

    .line 625
    invoke-direct {p0, p1, p2, v10}, Landroid/os/statistics/PerfEventFilter;->checkBlockedEffectiveMicroEventWithSuspectedSlice(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)Z

    move-result v11

    if-eqz v11, :cond_41

    .line 627
    return v7

    .line 622
    .end local v10    # "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    :cond_41
    add-int/lit8 v9, v9, 0x1

    goto :goto_2f

    .line 632
    .end local v9    # "i":I
    :cond_44
    const/4 v7, 0x0

    return v7
.end method

.method private blacklist checkBlockedEffectiveMicroEventWithSuspectedSlice(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)Z
    .registers 21
    .param p1, "checkingEffectiveEvent"    # Landroid/os/statistics/FilteringPerfEvent;
    .param p2, "checkingSuspectedLevel"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    .param p3, "checkingSuspectedSlice"    # Landroid/os/statistics/FilteringPerfEventList;

    .line 638
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    .line 639
    .local v2, "beginUptimeMillis":J
    iget-wide v4, v1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    .line 640
    .local v4, "endUptimeMillis":J
    iget v6, v1, Landroid/os/statistics/FilteringPerfEvent;->enoughPeerWaitDuration:I

    .line 642
    .local v6, "enoughPeerWaitDuration":I
    const/4 v7, 0x0

    .line 643
    .local v7, "completed":Z
    move-object/from16 v8, p3

    .line 644
    .local v8, "head":Landroid/os/statistics/FilteringPerfEventListNode;
    iget-object v9, v8, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 645
    .local v9, "pos":Landroid/os/statistics/FilteringPerfEventListNode;
    :goto_f
    if-eq v9, v8, :cond_a8

    .line 646
    iget-object v10, v9, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    .line 647
    .local v10, "checkingSuspectedEvent":Landroid/os/statistics/FilteringPerfEvent;
    iget-object v9, v9, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 649
    iget-wide v11, v10, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    cmp-long v11, v11, v4

    if-ltz v11, :cond_22

    .line 650
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-wide v15, v2

    goto/16 :goto_ad

    .line 653
    :cond_22
    iget v11, v10, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    const/high16 v12, 0x10000

    and-int/2addr v11, v12

    if-eqz v11, :cond_a0

    iget-wide v11, v10, Landroid/os/statistics/FilteringPerfEvent;->synchronizationId:J

    iget-wide v13, v1, Landroid/os/statistics/FilteringPerfEvent;->synchronizationId:J

    cmp-long v11, v11, v13

    if-nez v11, :cond_a0

    iget-wide v11, v10, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    cmp-long v11, v11, v2

    if-lez v11, :cond_a0

    iget-wide v11, v10, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iget-wide v13, v1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    cmp-long v11, v11, v13

    if-gtz v11, :cond_a0

    iget v11, v1, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    iget v12, v10, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    .line 657
    invoke-static {v11, v12}, Landroid/os/statistics/PerfEventConstants;->isBlockedBy(II)Z

    move-result v11

    if-nez v11, :cond_4f

    .line 658
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-wide v15, v2

    goto :goto_a5

    .line 661
    :cond_4f
    iget-wide v11, v10, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    .line 662
    iget-wide v13, v1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    move-wide v15, v2

    .end local v2    # "beginUptimeMillis":J
    .local v15, "beginUptimeMillis":J
    iget-wide v2, v10, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    cmp-long v2, v13, v2

    if-gez v2, :cond_5d

    .line 663
    iget-wide v2, v10, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    goto :goto_5f

    :cond_5d
    iget-wide v2, v1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    :goto_5f
    sub-long/2addr v11, v2

    long-to-int v2, v11

    .line 664
    .local v2, "overlappedDurationMillis":I
    iget v3, v10, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    if-eq v2, v3, :cond_79

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinOverlappedDurationMillis:I

    if-lt v2, v3, :cond_74

    shl-int/lit8 v3, v2, 0x5

    iget v11, v1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    if-ge v3, v11, :cond_79

    .line 667
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_a5

    .line 664
    :cond_74
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_a5

    .line 670
    :cond_79
    iget-object v3, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual {v3, v11, v12, v10}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->remove(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEvent;)V

    .line 671
    iget-object v3, v0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    invoke-virtual {v3, v10}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    .line 672
    iget v3, v1, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_93

    .line 673
    iget v3, v1, Landroid/os/statistics/FilteringPerfEvent;->matchedPeerWaitDuration:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/os/statistics/FilteringPerfEvent;->matchedPeerWaitDuration:I

    goto :goto_99

    .line 675
    :cond_93
    iget v3, v1, Landroid/os/statistics/FilteringPerfEvent;->matchedPeerWaitDuration:I

    if-ge v3, v2, :cond_99

    .line 676
    iput v2, v1, Landroid/os/statistics/FilteringPerfEvent;->matchedPeerWaitDuration:I

    .line 679
    :cond_99
    :goto_99
    iget v3, v1, Landroid/os/statistics/FilteringPerfEvent;->matchedPeerWaitDuration:I

    if-lt v3, v6, :cond_9f

    .line 680
    const/4 v7, 0x1

    .line 681
    goto :goto_ad

    .line 683
    .end local v2    # "overlappedDurationMillis":I
    .end local v10    # "checkingSuspectedEvent":Landroid/os/statistics/FilteringPerfEvent;
    :cond_9f
    goto :goto_a5

    .line 653
    .end local v15    # "beginUptimeMillis":J
    .local v2, "beginUptimeMillis":J
    .restart local v10    # "checkingSuspectedEvent":Landroid/os/statistics/FilteringPerfEvent;
    :cond_a0
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-wide v15, v2

    .line 645
    .end local v2    # "beginUptimeMillis":J
    .end local v10    # "checkingSuspectedEvent":Landroid/os/statistics/FilteringPerfEvent;
    .restart local v15    # "beginUptimeMillis":J
    :goto_a5
    move-wide v2, v15

    goto/16 :goto_f

    .end local v15    # "beginUptimeMillis":J
    .restart local v2    # "beginUptimeMillis":J
    :cond_a8
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-wide v15, v2

    .line 685
    .end local v2    # "beginUptimeMillis":J
    .restart local v15    # "beginUptimeMillis":J
    :goto_ad
    return v7
.end method

.method private blacklist checkEffectiveEvent(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V
    .registers 9
    .param p1, "checkingEffectiveEvent"    # Landroid/os/statistics/FilteringPerfEvent;
    .param p2, "completedEvents"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;

    .line 450
    iget v0, p1, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_b

    .line 451
    invoke-direct {p0, p1}, Landroid/os/statistics/PerfEventFilter;->checkBlockedEffectiveMicroEvent(Landroid/os/statistics/FilteringPerfEvent;)Z

    move-result v0

    .local v0, "needWaitForPeer":Z
    goto :goto_1a

    .line 452
    .end local v0    # "needWaitForPeer":Z
    :cond_b
    iget v0, p1, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_16

    .line 453
    invoke-direct {p0, p1}, Landroid/os/statistics/PerfEventFilter;->checkNonBlockedEffectiveMicroEvent(Landroid/os/statistics/FilteringPerfEvent;)Z

    move-result v0

    .restart local v0    # "needWaitForPeer":Z
    goto :goto_1a

    .line 455
    .end local v0    # "needWaitForPeer":Z
    :cond_16
    invoke-direct {p0, p1}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveMacroEvent(Landroid/os/statistics/FilteringPerfEvent;)Z

    move-result v0

    .line 457
    .restart local v0    # "needWaitForPeer":Z
    :goto_1a
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_66

    .line 458
    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEventsWaitingPeer:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    invoke-virtual {v3, p1}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    .line 459
    iget-object v3, p1, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    if-nez v3, :cond_2d

    iget-wide v3, p1, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_7c

    .line 460
    :cond_2d
    invoke-static {}, Landroid/os/statistics/FilteringPerfEventCache;->obtain()Landroid/os/statistics/FilteringPerfEvent;

    move-result-object v3

    .line 461
    .local v3, "completedEvent":Landroid/os/statistics/FilteringPerfEvent;
    iget v4, p1, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    iput v4, v3, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    .line 462
    iget v4, p1, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    iput v4, v3, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    .line 463
    iget-wide v4, p1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iput-wide v4, v3, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    .line 464
    iget-wide v4, p1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iput-wide v4, v3, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    .line 465
    iget-wide v4, p1, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    iput-wide v4, v3, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    .line 466
    iget-wide v4, p1, Landroid/os/statistics/FilteringPerfEvent;->synchronizationId:J

    iput-wide v4, v3, Landroid/os/statistics/FilteringPerfEvent;->synchronizationId:J

    .line 467
    iget-wide v4, p1, Landroid/os/statistics/FilteringPerfEvent;->eventSeq:J

    iput-wide v4, v3, Landroid/os/statistics/FilteringPerfEvent;->eventSeq:J

    .line 468
    iget-wide v4, p1, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    iput-wide v4, v3, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    .line 469
    iget-object v4, p1, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    iput-object v4, v3, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    .line 470
    iget v4, p1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    iput v4, v3, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    .line 471
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    .line 472
    iput-wide v1, p1, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    .line 473
    iget-wide v1, p1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iput-wide v1, v3, Landroid/os/statistics/FilteringPerfEvent;->sortingUptimeMillis:J

    .line 474
    invoke-virtual {p2, v3}, Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    .line 475
    .end local v3    # "completedEvent":Landroid/os/statistics/FilteringPerfEvent;
    goto :goto_7c

    .line 477
    :cond_66
    iget-object v3, p1, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    if-nez v3, :cond_75

    iget-wide v3, p1, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_71

    goto :goto_75

    .line 482
    :cond_71
    invoke-static {p1}, Landroid/os/statistics/FilteringPerfEventCache;->recycleUnchecked(Landroid/os/statistics/FilteringPerfEvent;)V

    goto :goto_7c

    .line 478
    :cond_75
    :goto_75
    iget-wide v1, p1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iput-wide v1, p1, Landroid/os/statistics/FilteringPerfEvent;->sortingUptimeMillis:J

    .line 479
    invoke-virtual {p2, p1}, Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    .line 485
    :cond_7c
    :goto_7c
    return-void
.end method

.method private blacklist checkEffectiveLevel(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V
    .registers 10
    .param p1, "checkingEffectiveLevel"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    .param p2, "completedEvents"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;

    .line 380
    iget-object v0, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    .line 381
    .local v0, "checkingEffectiveSlice":Landroid/os/statistics/FilteringPerfEventList;
    iget v1, v0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v1, :cond_c

    .line 382
    invoke-direct {p0, p1, v0, p2}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V

    .line 383
    invoke-direct {p0, p1, v0, p2}, Landroid/os/statistics/PerfEventFilter;->completeEffectiveSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V

    .line 385
    :cond_c
    iget v1, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceCount:I

    .line 386
    .local v1, "timesliceCount":I
    iget v2, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceIndex:I

    .line 387
    .local v2, "firstSliceIndex":I
    iget-object v3, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    .line 388
    .local v3, "timeslicedPerfEvents":[Landroid/os/statistics/FilteringPerfEventList;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-ge v4, v1, :cond_24

    .line 389
    add-int v5, v2, v4

    rem-int/2addr v5, v1

    .line 390
    .local v5, "sliceIndex":I
    aget-object v0, v3, v5

    .line 391
    iget v6, v0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v6, :cond_21

    .line 392
    invoke-direct {p0, p1, v0, p2}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V

    .line 388
    .end local v5    # "sliceIndex":I
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 395
    .end local v4    # "i":I
    :cond_24
    return-void
.end method

.method private blacklist checkEffectiveMacroEvent(Landroid/os/statistics/FilteringPerfEvent;)Z
    .registers 11
    .param p1, "checkingEffectiveEvent"    # Landroid/os/statistics/FilteringPerfEvent;

    .line 809
    iget v0, p1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    .line 810
    .local v0, "durationMillis":I
    shr-int/lit8 v1, v0, 0x5

    .line 812
    .local v1, "minPeerEventDurationMs":I
    iget-object v2, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v2, v2, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    if-ge v1, v2, :cond_27

    .line 813
    iget-object v2, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v2, v2, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillisPower:I

    shr-int v2, v1, v2

    .line 814
    .local v2, "beginCheckLevel":I
    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v3, v3, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    .line 815
    .local v3, "perfEventsByLevel":[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    move v4, v2

    .local v4, "i":I
    :goto_15
    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    if-ge v4, v5, :cond_27

    .line 816
    aget-object v5, v3, v4

    .line 817
    .local v5, "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    iget v6, v5, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v6, :cond_24

    .line 818
    invoke-direct {p0, p1, v5}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveMacroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)V

    .line 815
    .end local v5    # "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 824
    .end local v2    # "beginCheckLevel":I
    .end local v3    # "perfEventsByLevel":[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    .end local v4    # "i":I
    :cond_27
    iget-object v2, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v2, v2, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    sub-int v2, v1, v2

    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v3, v3, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillisPower:I

    shr-int/2addr v2, v3

    .line 825
    .restart local v2    # "beginCheckLevel":I
    if-gez v2, :cond_35

    .line 826
    const/4 v2, 0x0

    .line 828
    :cond_35
    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v3, v3, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    .line 829
    .restart local v3    # "perfEventsByLevel":[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    move v4, v2

    .restart local v4    # "i":I
    :goto_3a
    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    if-ge v4, v5, :cond_4c

    .line 830
    aget-object v5, v3, v4

    .line 831
    .restart local v5    # "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    iget v6, v5, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v6, :cond_49

    .line 832
    invoke-direct {p0, p1, v5}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveMacroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)V

    .line 829
    .end local v5    # "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 837
    .end local v4    # "i":I
    :cond_4c
    iget v4, p0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    shl-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    .line 838
    .local v4, "maxWaitTimeInMillis":I
    const/high16 v5, 0x10000

    if-le v4, v5, :cond_57

    .line 839
    const/high16 v4, 0x10000

    .line 841
    :cond_57
    iget-wide v5, p1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iget-wide v7, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchEndUptimeMillis:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_63

    const/4 v5, 0x1

    goto :goto_64

    :cond_63
    const/4 v5, 0x0

    :goto_64
    return v5
.end method

.method private blacklist checkEffectiveMacroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)V
    .registers 14
    .param p1, "checkingEffectiveEvent"    # Landroid/os/statistics/FilteringPerfEvent;
    .param p2, "checkingSuspectedLevel"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    .line 847
    iget-wide v0, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceUptimeMillis:J

    .line 848
    .local v0, "firstSliceUptimeMillis":J
    iget v2, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceCount:I

    .line 849
    .local v2, "timesliceCount":I
    iget v3, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceIndex:I

    .line 850
    .local v3, "firstSliceIndex":I
    iget v4, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceMillisPower:I

    .line 851
    .local v4, "timesliceMillisPower":I
    iget-wide v5, p1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    sub-long/2addr v5, v0

    long-to-int v5, v5

    iget v6, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->exclusiveMaxPerfEventDurationMillis:I

    sub-int/2addr v5, v6

    shr-int/2addr v5, v4

    .line 852
    .local v5, "beginSliceNo":I
    iget-wide v6, p1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    sub-long/2addr v6, v0

    long-to-int v6, v6

    shr-int/2addr v6, v4

    .line 853
    .local v6, "endSliceNo":I
    if-gez v5, :cond_18

    .line 854
    const/4 v5, 0x0

    .line 856
    :cond_18
    if-lt v6, v2, :cond_1c

    .line 857
    add-int/lit8 v6, v2, -0x1

    .line 859
    :cond_1c
    if-nez v5, :cond_27

    .line 860
    iget-object v7, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    .line 861
    .local v7, "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    iget v8, v7, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v8, :cond_27

    .line 862
    invoke-direct {p0, p1, p2, v7}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveMacroEventWithSuspectedSlice(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    .line 866
    .end local v7    # "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    :cond_27
    iget-object v7, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    .line 867
    .local v7, "timeslicedPerfEvents":[Landroid/os/statistics/FilteringPerfEventList;
    move v8, v5

    .local v8, "i":I
    :goto_2a
    if-gt v8, v6, :cond_3b

    .line 868
    add-int v9, v3, v8

    rem-int/2addr v9, v2

    aget-object v9, v7, v9

    .line 869
    .local v9, "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    iget v10, v9, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v10, :cond_38

    .line 870
    invoke-direct {p0, p1, p2, v9}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveMacroEventWithSuspectedSlice(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    .line 867
    .end local v9    # "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    :cond_38
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 874
    .end local v8    # "i":I
    :cond_3b
    return-void
.end method

.method private blacklist checkEffectiveMacroEventWithSuspectedSlice(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)V
    .registers 19
    .param p1, "checkingEffectiveEvent"    # Landroid/os/statistics/FilteringPerfEvent;
    .param p2, "checkingSuspectedLevel"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    .param p3, "checkingSuspectedSlice"    # Landroid/os/statistics/FilteringPerfEventList;

    .line 879
    move-object v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    .line 880
    .local v2, "beginUptimeMillis":J
    iget-wide v4, v1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    .line 882
    .local v4, "endUptimeMillis":J
    move-object/from16 v6, p3

    .line 883
    .local v6, "head":Landroid/os/statistics/FilteringPerfEventListNode;
    iget-object v7, v6, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 884
    .local v7, "pos":Landroid/os/statistics/FilteringPerfEventListNode;
    :goto_b
    if-eq v7, v6, :cond_7e

    .line 885
    iget-object v8, v7, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    .line 886
    .local v8, "checkingSuspectedEvent":Landroid/os/statistics/FilteringPerfEvent;
    iget-object v7, v7, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 888
    iget-wide v9, v8, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    cmp-long v9, v9, v4

    if-ltz v9, :cond_1d

    .line 889
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_82

    .line 892
    :cond_1d
    iget v9, v8, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_79

    iget-wide v9, v8, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    cmp-long v9, v9, v2

    if-lez v9, :cond_79

    iget v9, v8, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    const/high16 v10, 0x10000

    and-int/2addr v9, v10

    if-nez v9, :cond_79

    iget-wide v9, v1, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    iget-wide v11, v8, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    and-long/2addr v9, v11

    iget-wide v11, v1, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_40

    .line 896
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_b

    .line 899
    :cond_40
    iget-wide v9, v1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iget-wide v11, v8, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iget-wide v11, v1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iget-wide v13, v8, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    .line 900
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v9, v9

    .line 901
    .local v9, "overlappedDurationMillis":I
    iget v10, v8, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    if-eq v9, v10, :cond_6a

    sget v10, Landroid/os/statistics/PerfSupervisionSettings;->sMinOverlappedDurationMillis:I

    if-lt v9, v10, :cond_65

    shl-int/lit8 v10, v9, 0x5

    iget v11, v1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    if-ge v10, v11, :cond_6a

    .line 904
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_b

    .line 901
    :cond_65
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_b

    .line 907
    :cond_6a
    iget-object v10, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual {v10, v11, v12, v8}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->remove(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEvent;)V

    .line 908
    iget-object v10, v0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    invoke-virtual {v10, v8}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    .line 909
    .end local v8    # "checkingSuspectedEvent":Landroid/os/statistics/FilteringPerfEvent;
    .end local v9    # "overlappedDurationMillis":I
    goto :goto_b

    .line 892
    .restart local v8    # "checkingSuspectedEvent":Landroid/os/statistics/FilteringPerfEvent;
    :cond_79
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_b

    .line 884
    .end local v8    # "checkingSuspectedEvent":Landroid/os/statistics/FilteringPerfEvent;
    :cond_7e
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 910
    :goto_82
    return-void
.end method

.method private blacklist checkEffectivePerfEvents(Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V
    .registers 5
    .param p1, "completedEvents"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;

    .line 364
    iget-object v0, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v0, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_18

    .line 365
    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v1, v1, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    aget-object v1, v1, v0

    .line 366
    .local v1, "checkingEffectiveLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    iget v2, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v2, :cond_15

    .line 367
    invoke-direct {p0, v1, p1}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveLevel(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V

    .line 364
    .end local v1    # "checkingEffectiveLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 370
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v0, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1e
    if-ltz v0, :cond_30

    .line 371
    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v1, v1, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    aget-object v1, v1, v0

    .line 372
    .restart local v1    # "checkingEffectiveLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    iget v2, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v2, :cond_2d

    .line 373
    invoke-direct {p0, v1, p1}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveLevel(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V

    .line 370
    .end local v1    # "checkingEffectiveLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 376
    .end local v0    # "i":I
    :cond_30
    return-void
.end method

.method private blacklist checkEffectiveSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V
    .registers 11
    .param p1, "checkingEffectiveLevel"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    .param p2, "checkingEffectiveSlice"    # Landroid/os/statistics/FilteringPerfEventList;
    .param p3, "completedEvents"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;

    .line 422
    iget v0, p2, Landroid/os/statistics/FilteringPerfEventList;->size:I

    .line 423
    .local v0, "eventsSize":I
    iget-object v1, p2, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 425
    .local v1, "pos":Landroid/os/statistics/FilteringPerfEventListNode;
    invoke-virtual {p2}, Landroid/os/statistics/FilteringPerfEventList;->detachElements()V

    .line 426
    iget v2, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    sub-int/2addr v2, v0

    iput v2, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    .line 427
    iget-object v2, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v3, v2, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    .line 430
    :goto_13
    if-lez v0, :cond_3f

    .line 431
    iget-object v2, v1, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    .line 432
    .local v2, "checkingEffectiveEvent":Landroid/os/statistics/FilteringPerfEvent;
    iget-object v1, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 433
    add-int/lit8 v0, v0, -0x1

    .line 435
    iget v3, v2, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-nez v3, :cond_26

    .line 436
    invoke-direct {p0, v2, p3}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveEvent(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V

    goto :goto_13

    .line 438
    :cond_26
    iget-object v3, v2, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    if-nez v3, :cond_37

    iget-wide v3, v2, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_33

    goto :goto_37

    .line 442
    :cond_33
    invoke-static {v2}, Landroid/os/statistics/FilteringPerfEventCache;->recycleUnchecked(Landroid/os/statistics/FilteringPerfEvent;)V

    goto :goto_13

    .line 439
    :cond_37
    :goto_37
    iget-wide v3, v2, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iput-wide v3, v2, Landroid/os/statistics/FilteringPerfEvent;->sortingUptimeMillis:J

    .line 440
    invoke-virtual {p3, v2}, Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    goto :goto_13

    .line 446
    .end local v2    # "checkingEffectiveEvent":Landroid/os/statistics/FilteringPerfEvent;
    :cond_3f
    return-void
.end method

.method private blacklist checkLevelSuspectedPerfEvents(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;J)V
    .registers 25
    .param p1, "checkingSuspectedLevel"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    .param p2, "earliestExecutingRootEventBeginUptimeMillis"    # J

    .line 930
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    .line 931
    .local v4, "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    iget v5, v4, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v5, :cond_f

    .line 932
    invoke-direct {v0, v1, v4}, Landroid/os/statistics/PerfEventFilter;->recycleSuspectedSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    .line 935
    :cond_f
    iget v5, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceCount:I

    .line 936
    .local v5, "timesliceCount":I
    iget v6, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceIndex:I

    .line 937
    .local v6, "firstSliceIndex":I
    iget v7, v0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    iget v8, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->exclusiveMaxPerfEventDurationMillis:I

    shl-int/lit8 v8, v8, 0x5

    add-int/2addr v7, v8

    .line 939
    .local v7, "maxPeerWaitTimeMillis":I
    const/high16 v8, 0x10000

    if-le v7, v8, :cond_20

    .line 940
    const/high16 v7, 0x10000

    .line 942
    :cond_20
    iget v9, v0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    iget v10, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->inclusiveMinPerfEventDurationMillis:I

    shl-int/lit8 v10, v10, 0x5

    add-int/2addr v9, v10

    .line 944
    .local v9, "minPeerWaitTimeMillis":I
    if-le v9, v8, :cond_2b

    .line 945
    const/high16 v9, 0x10000

    .line 947
    :cond_2b
    iget-wide v10, v0, Landroid/os/statistics/PerfEventFilter;->latestBatchEndUptimeMillis:J

    int-to-long v12, v7

    sub-long/2addr v10, v12

    iget v8, v0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    int-to-long v12, v8

    sub-long v12, v2, v12

    .line 948
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iget v8, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->exclusiveMaxPerfEventDurationMillis:I

    int-to-long v12, v8

    sub-long/2addr v10, v12

    .line 950
    .local v10, "earliestMaybeUnexpiredBeginUptimeMillis":J
    iget-wide v12, v0, Landroid/os/statistics/PerfEventFilter;->latestBatchEndUptimeMillis:J

    int-to-long v14, v9

    sub-long/2addr v12, v14

    iget v8, v0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    int-to-long v14, v8

    sub-long v14, v2, v14

    .line 951
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iget v8, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->inclusiveMinPerfEventDurationMillis:I

    int-to-long v14, v8

    sub-long/2addr v12, v14

    .line 953
    .local v12, "latestMaybeExpiredBeginUptimeMillis":J
    iget-wide v14, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceUptimeMillis:J

    sub-long v14, v10, v14

    long-to-int v8, v14

    iget v14, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceMillisPower:I

    shr-int/2addr v8, v14

    .line 955
    .local v8, "firstMaybeUnexpiredSliceNo":I
    iget-wide v14, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceUptimeMillis:J

    sub-long v14, v12, v14

    long-to-int v14, v14

    iget v15, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceMillisPower:I

    shr-int/2addr v14, v15

    .line 957
    .local v14, "lastMaybeExpiredSliceNo":I
    if-gez v8, :cond_60

    .line 958
    const/4 v8, 0x0

    .line 960
    :cond_60
    if-lt v8, v5, :cond_64

    .line 961
    add-int/lit8 v8, v5, -0x1

    .line 963
    :cond_64
    if-gez v14, :cond_67

    .line 964
    const/4 v14, 0x0

    .line 966
    :cond_67
    if-lt v14, v5, :cond_6b

    .line 967
    add-int/lit8 v14, v5, -0x1

    .line 969
    :cond_6b
    iget-object v15, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    .line 970
    .local v15, "timeslicedPerfEvents":[Landroid/os/statistics/FilteringPerfEventList;
    const/16 v16, 0x0

    move/from16 v20, v16

    move-object/from16 v16, v4

    move/from16 v4, v20

    .local v4, "i":I
    .local v16, "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    :goto_75
    if-ge v4, v8, :cond_91

    .line 971
    add-int v17, v6, v4

    rem-int v17, v17, v5

    .line 972
    .local v17, "sliceIndex":I
    move/from16 v18, v7

    .end local v7    # "maxPeerWaitTimeMillis":I
    .local v18, "maxPeerWaitTimeMillis":I
    aget-object v7, v15, v17

    .line 973
    .end local v16    # "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    .local v7, "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    move/from16 v19, v9

    .end local v9    # "minPeerWaitTimeMillis":I
    .local v19, "minPeerWaitTimeMillis":I
    iget v9, v7, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v9, :cond_88

    .line 974
    invoke-direct {v0, v1, v7}, Landroid/os/statistics/PerfEventFilter;->recycleSuspectedSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    .line 970
    .end local v17    # "sliceIndex":I
    :cond_88
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v16, v7

    move/from16 v7, v18

    move/from16 v9, v19

    goto :goto_75

    .end local v18    # "maxPeerWaitTimeMillis":I
    .end local v19    # "minPeerWaitTimeMillis":I
    .local v7, "maxPeerWaitTimeMillis":I
    .restart local v9    # "minPeerWaitTimeMillis":I
    .restart local v16    # "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    :cond_91
    move/from16 v18, v7

    move/from16 v19, v9

    .line 977
    .end local v4    # "i":I
    .end local v7    # "maxPeerWaitTimeMillis":I
    .end local v9    # "minPeerWaitTimeMillis":I
    .restart local v18    # "maxPeerWaitTimeMillis":I
    .restart local v19    # "minPeerWaitTimeMillis":I
    move v4, v8

    .restart local v4    # "i":I
    :goto_96
    if-gt v4, v14, :cond_af

    .line 978
    add-int v7, v6, v4

    rem-int/2addr v7, v5

    .line 979
    .local v7, "sliceIndex":I
    aget-object v9, v15, v7

    .line 980
    .end local v16    # "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    .local v9, "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    move/from16 v17, v5

    .end local v5    # "timesliceCount":I
    .local v17, "timesliceCount":I
    iget v5, v9, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v5, :cond_a8

    .line 981
    aget-object v5, v15, v7

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/os/statistics/PerfEventFilter;->checkSuspectedSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;J)V

    .line 977
    .end local v7    # "sliceIndex":I
    :cond_a8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v16, v9

    move/from16 v5, v17

    goto :goto_96

    .line 984
    .end local v4    # "i":I
    .end local v9    # "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    .end local v17    # "timesliceCount":I
    .restart local v5    # "timesliceCount":I
    .restart local v16    # "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    :cond_af
    return-void
.end method

.method private blacklist checkNonBlockedEffectiveMicroEvent(Landroid/os/statistics/FilteringPerfEvent;)Z
    .registers 12
    .param p1, "checkingEffectiveEvent"    # Landroid/os/statistics/FilteringPerfEvent;

    .line 689
    iget v0, p1, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    .line 691
    .local v0, "eventFlags":I
    iget v1, p1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    .line 692
    .local v1, "durationMillis":I
    shr-int/lit8 v2, v1, 0x5

    .line 693
    .local v2, "minPeerEventDurationMs":I
    move v3, v1

    .line 694
    .local v3, "maxPeerEventDurationMs":I
    const v4, 0x10001

    and-int/2addr v4, v0

    const/high16 v5, 0x10000

    if-ne v4, v5, :cond_11

    .line 695
    shl-int/lit8 v3, v1, 0x3

    .line 698
    :cond_11
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v4, v4, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    if-ge v2, v4, :cond_42

    .line 699
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v4, v4, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillisPower:I

    shr-int v4, v2, v4

    .line 700
    .local v4, "beginCheckLevel":I
    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillisPower:I

    shr-int v5, v3, v5

    .line 701
    .local v5, "endCheckLevel":I
    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v6, v6, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    if-lt v5, v6, :cond_2f

    .line 702
    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v6, v6, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    add-int/lit8 v5, v6, -0x1

    .line 704
    :cond_2f
    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v6, v6, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    .line 705
    .local v6, "perfEventsByLevel":[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    move v7, v4

    .local v7, "i":I
    :goto_34
    if-gt v7, v5, :cond_42

    .line 706
    aget-object v8, v6, v7

    .line 707
    .local v8, "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    iget v9, v8, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v9, :cond_3f

    .line 708
    invoke-direct {p0, p1, v8}, Landroid/os/statistics/PerfEventFilter;->checkNonBlockedEffectiveMicroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)V

    .line 705
    .end local v8    # "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 714
    .end local v4    # "beginCheckLevel":I
    .end local v5    # "endCheckLevel":I
    .end local v6    # "perfEventsByLevel":[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    .end local v7    # "i":I
    :cond_42
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v4, v4, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    if-lt v3, v4, :cond_80

    .line 715
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v4, v4, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    sub-int v4, v2, v4

    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillisPower:I

    shr-int/2addr v4, v5

    .line 716
    .restart local v4    # "beginCheckLevel":I
    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    sub-int v5, v3, v5

    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v6, v6, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillisPower:I

    shr-int/2addr v5, v6

    .line 717
    .restart local v5    # "endCheckLevel":I
    if-gez v4, :cond_61

    .line 718
    const/4 v4, 0x0

    .line 720
    :cond_61
    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v6, v6, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    if-lt v5, v6, :cond_6d

    .line 721
    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v6, v6, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    add-int/lit8 v5, v6, -0x1

    .line 723
    :cond_6d
    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v6, v6, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    .line 724
    .restart local v6    # "perfEventsByLevel":[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    move v7, v4

    .restart local v7    # "i":I
    :goto_72
    if-gt v7, v5, :cond_80

    .line 725
    aget-object v8, v6, v7

    .line 726
    .restart local v8    # "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    iget v9, v8, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v9, :cond_7d

    .line 727
    invoke-direct {p0, p1, v8}, Landroid/os/statistics/PerfEventFilter;->checkNonBlockedEffectiveMicroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)V

    .line 724
    .end local v8    # "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    :cond_7d
    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    .line 733
    .end local v4    # "beginCheckLevel":I
    .end local v5    # "endCheckLevel":I
    .end local v6    # "perfEventsByLevel":[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    .end local v7    # "i":I
    :cond_80
    const/4 v4, 0x0

    return v4
.end method

.method private blacklist checkNonBlockedEffectiveMicroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)V
    .registers 14
    .param p1, "checkingEffectiveEvent"    # Landroid/os/statistics/FilteringPerfEvent;
    .param p2, "checkingSuspectedLevel"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    .line 739
    iget-wide v0, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceUptimeMillis:J

    .line 740
    .local v0, "firstSliceUptimeMillis":J
    iget v2, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceCount:I

    .line 741
    .local v2, "timesliceCount":I
    iget v3, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceIndex:I

    .line 742
    .local v3, "firstSliceIndex":I
    iget v4, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceMillisPower:I

    .line 743
    .local v4, "timesliceMillisPower":I
    iget-wide v5, p1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    sub-long/2addr v5, v0

    long-to-int v5, v5

    iget v6, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->exclusiveMaxPerfEventDurationMillis:I

    sub-int/2addr v5, v6

    shr-int/2addr v5, v4

    .line 744
    .local v5, "beginSliceNo":I
    iget-wide v6, p1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    sub-long/2addr v6, v0

    long-to-int v6, v6

    shr-int/2addr v6, v4

    .line 745
    .local v6, "endSliceNo":I
    if-gez v5, :cond_18

    .line 746
    const/4 v5, 0x0

    .line 748
    :cond_18
    if-lt v6, v2, :cond_1c

    .line 749
    add-int/lit8 v6, v2, -0x1

    .line 751
    :cond_1c
    if-nez v5, :cond_27

    .line 752
    iget-object v7, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    .line 753
    .local v7, "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    iget v8, v7, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v8, :cond_27

    .line 754
    invoke-direct {p0, p1, p2, v7}, Landroid/os/statistics/PerfEventFilter;->checkNonBlockedEffectiveMicroEventWithSuspectedSlice(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    .line 758
    .end local v7    # "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    :cond_27
    iget-object v7, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    .line 759
    .local v7, "timeslicedPerfEvents":[Landroid/os/statistics/FilteringPerfEventList;
    move v8, v5

    .local v8, "i":I
    :goto_2a
    if-gt v8, v6, :cond_3b

    .line 760
    add-int v9, v3, v8

    rem-int/2addr v9, v2

    aget-object v9, v7, v9

    .line 761
    .local v9, "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    iget v10, v9, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v10, :cond_38

    .line 762
    invoke-direct {p0, p1, p2, v9}, Landroid/os/statistics/PerfEventFilter;->checkNonBlockedEffectiveMicroEventWithSuspectedSlice(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    .line 759
    .end local v9    # "checkingSuspectedSlice":Landroid/os/statistics/FilteringPerfEventList;
    :cond_38
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 766
    .end local v8    # "i":I
    :cond_3b
    return-void
.end method

.method private blacklist checkNonBlockedEffectiveMicroEventWithSuspectedSlice(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)V
    .registers 21
    .param p1, "checkingEffectiveEvent"    # Landroid/os/statistics/FilteringPerfEvent;
    .param p2, "checkingSuspectedLevel"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    .param p3, "checkingSuspectedSlice"    # Landroid/os/statistics/FilteringPerfEventList;

    .line 771
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    .line 772
    .local v2, "beginUptimeMillis":J
    iget-wide v4, v1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    .line 774
    .local v4, "endUptimeMillis":J
    move-object/from16 v6, p3

    .line 775
    .local v6, "head":Landroid/os/statistics/FilteringPerfEventListNode;
    iget-object v7, v6, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 776
    .local v7, "pos":Landroid/os/statistics/FilteringPerfEventListNode;
    :goto_c
    if-eq v7, v6, :cond_98

    .line 777
    iget-object v8, v7, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    .line 778
    .local v8, "checkingSuspectedEvent":Landroid/os/statistics/FilteringPerfEvent;
    iget-object v7, v7, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 780
    iget-wide v9, v8, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    cmp-long v9, v9, v4

    if-ltz v9, :cond_1e

    .line 781
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_9c

    .line 784
    :cond_1e
    iget v9, v8, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    const/high16 v10, 0x10000

    and-int/2addr v9, v10

    if-nez v9, :cond_92

    iget-wide v11, v8, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    iget-wide v13, v1, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    cmp-long v9, v11, v13

    if-nez v9, :cond_92

    iget-wide v11, v8, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    cmp-long v9, v11, v2

    if-lez v9, :cond_92

    iget-wide v11, v8, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iget-wide v13, v1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    cmp-long v9, v11, v13

    if-gtz v9, :cond_92

    iget v9, v8, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    if-lt v9, v10, :cond_44

    .line 789
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_c

    .line 792
    :cond_44
    iget-wide v11, v8, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    .line 793
    iget-wide v13, v1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    move-wide v15, v11

    iget-wide v10, v8, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    cmp-long v10, v13, v10

    if-gez v10, :cond_52

    .line 794
    iget-wide v10, v8, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    goto :goto_54

    :cond_52
    iget-wide v10, v1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    :goto_54
    sub-long v11, v15, v10

    long-to-int v10, v11

    .line 795
    .local v10, "overlappedDurationMillis":I
    iget v11, v8, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    if-eq v10, v11, :cond_79

    iget v11, v1, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    const v12, 0x10001

    and-int/2addr v11, v12

    const/high16 v9, 0x10000

    if-ne v11, v9, :cond_74

    sget v9, Landroid/os/statistics/PerfSupervisionSettings;->sMinOverlappedDurationMillis:I

    if-lt v10, v9, :cond_74

    shl-int/lit8 v9, v10, 0x5

    iget v11, v1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    if-ge v9, v11, :cond_79

    .line 799
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_c

    .line 795
    :cond_74
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_c

    .line 802
    :cond_79
    iget-object v9, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual {v9, v11, v12, v8}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->remove(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEvent;)V

    .line 803
    iget-object v9, v0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    invoke-virtual {v9, v8}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    .line 804
    iget v9, v8, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    iget v13, v1, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    and-int/lit8 v13, v13, 0x4

    or-int/2addr v9, v13

    iput v9, v8, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    .line 805
    .end local v8    # "checkingSuspectedEvent":Landroid/os/statistics/FilteringPerfEvent;
    .end local v10    # "overlappedDurationMillis":I
    goto/16 :goto_c

    .line 784
    .restart local v8    # "checkingSuspectedEvent":Landroid/os/statistics/FilteringPerfEvent;
    :cond_92
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_c

    .line 776
    .end local v8    # "checkingSuspectedEvent":Landroid/os/statistics/FilteringPerfEvent;
    :cond_98
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 806
    :goto_9c
    return-void
.end method

.method private blacklist checkSuspectedPerfEvents(J)V
    .registers 6
    .param p1, "earliestExecutingRootEventBeginUptimeMillis"    # J

    .line 913
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v1, v1, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    if-ge v0, v1, :cond_17

    .line 914
    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v1, v1, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    aget-object v1, v1, v0

    .line 915
    .local v1, "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    iget v2, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v2, :cond_14

    .line 916
    invoke-direct {p0, v1, p1, p2}, Landroid/os/statistics/PerfEventFilter;->checkLevelSuspectedPerfEvents(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;J)V

    .line 913
    .end local v1    # "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 920
    .end local v0    # "i":I
    :cond_17
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_18
    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v1, v1, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    if-ge v0, v1, :cond_2e

    .line 921
    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v1, v1, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    aget-object v1, v1, v0

    .line 922
    .restart local v1    # "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    iget v2, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v2, :cond_2b

    .line 923
    invoke-direct {p0, v1, p1, p2}, Landroid/os/statistics/PerfEventFilter;->checkLevelSuspectedPerfEvents(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;J)V

    .line 920
    .end local v1    # "checkingSuspectedLevel":Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 926
    .end local v0    # "i":I
    :cond_2e
    return-void
.end method

.method private blacklist checkSuspectedSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;J)V
    .registers 15
    .param p1, "checkingSuspectedLevel"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    .param p2, "checkingSuspectedSlice"    # Landroid/os/statistics/FilteringPerfEventList;
    .param p3, "earliestExecutingRootEventBeginUptimeMillis"    # J

    .line 996
    move-object v0, p2

    .line 997
    .local v0, "head":Landroid/os/statistics/FilteringPerfEventListNode;
    iget-object v1, v0, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 998
    .local v1, "pos":Landroid/os/statistics/FilteringPerfEventListNode;
    :goto_3
    if-eq v1, v0, :cond_44

    .line 999
    iget-object v2, v1, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    .line 1000
    .local v2, "checkingSuspectedEvent":Landroid/os/statistics/FilteringPerfEvent;
    iget-object v1, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 1003
    iget-wide v3, v2, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iget v5, p0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    int-to-long v6, v5

    sub-long v6, p3, v6

    cmp-long v3, v3, v6

    const/4 v4, 0x1

    if-gez v3, :cond_17

    .line 1004
    const/4 v3, 0x1

    .local v3, "expired":Z
    goto :goto_2f

    .line 1006
    .end local v3    # "expired":Z
    :cond_17
    iget v3, v2, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    shl-int/lit8 v3, v3, 0x5

    add-int/2addr v5, v3

    .line 1008
    .local v5, "maxWaitTimeInMillis":I
    const/high16 v3, 0x10000

    if-le v5, v3, :cond_22

    .line 1009
    const/high16 v5, 0x10000

    .line 1011
    :cond_22
    iget-wide v6, v2, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iget-wide v8, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchEndUptimeMillis:J

    cmp-long v3, v6, v8

    if-gtz v3, :cond_2e

    move v3, v4

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    .line 1013
    .end local v5    # "maxWaitTimeInMillis":I
    .restart local v3    # "expired":Z
    :goto_2f
    if-eqz v3, :cond_43

    .line 1014
    invoke-virtual {p2, v2}, Landroid/os/statistics/FilteringPerfEventList;->remove(Landroid/os/statistics/FilteringPerfEvent;)V

    .line 1015
    iget v5, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    sub-int/2addr v5, v4

    iput v5, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    .line 1016
    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v6, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    sub-int/2addr v6, v4

    iput v6, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    .line 1017
    invoke-static {v2}, Landroid/os/statistics/FilteringPerfEventCache;->recycleUnchecked(Landroid/os/statistics/FilteringPerfEvent;)V

    .line 1019
    .end local v2    # "checkingSuspectedEvent":Landroid/os/statistics/FilteringPerfEvent;
    .end local v3    # "expired":Z
    :cond_43
    goto :goto_3

    .line 1020
    :cond_44
    return-void
.end method

.method private blacklist completeEffectiveSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V
    .registers 11
    .param p1, "checkingEffectiveLevel"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    .param p2, "checkingEffectiveSlice"    # Landroid/os/statistics/FilteringPerfEventList;
    .param p3, "completedEvents"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;

    .line 399
    iget v0, p2, Landroid/os/statistics/FilteringPerfEventList;->size:I

    .line 400
    .local v0, "eventsSize":I
    iget-object v1, p2, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 402
    .local v1, "pos":Landroid/os/statistics/FilteringPerfEventListNode;
    invoke-virtual {p2}, Landroid/os/statistics/FilteringPerfEventList;->detachElements()V

    .line 403
    iget v2, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    sub-int/2addr v2, v0

    iput v2, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    .line 404
    iget-object v2, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v3, v2, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    .line 407
    :goto_13
    if-lez v0, :cond_34

    .line 408
    iget-object v2, v1, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    .line 409
    .local v2, "checkingEffectiveEvent":Landroid/os/statistics/FilteringPerfEvent;
    iget-object v1, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 410
    add-int/lit8 v0, v0, -0x1

    .line 411
    iget-object v3, v2, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    if-nez v3, :cond_2c

    iget-wide v3, v2, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_28

    goto :goto_2c

    .line 415
    :cond_28
    invoke-static {v2}, Landroid/os/statistics/FilteringPerfEventCache;->recycleUnchecked(Landroid/os/statistics/FilteringPerfEvent;)V

    goto :goto_13

    .line 412
    :cond_2c
    :goto_2c
    iget-wide v3, v2, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iput-wide v3, v2, Landroid/os/statistics/FilteringPerfEvent;->sortingUptimeMillis:J

    .line 413
    invoke-virtual {p3, v2}, Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    goto :goto_13

    .line 418
    .end local v2    # "checkingEffectiveEvent":Landroid/os/statistics/FilteringPerfEvent;
    :cond_34
    return-void
.end method

.method private static blacklist getCeilingOfPowerByTwo(I)I
    .registers 4
    .param p0, "num"    # I

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "power":I
    const/4 v1, 0x1

    .line 27
    .local v1, "numByPower":I
    :goto_2
    if-ge v1, p0, :cond_a

    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    const/4 v2, 0x1

    shl-int v1, v2, v0

    goto :goto_2

    .line 31
    :cond_a
    return v0
.end method

.method private blacklist moveNewArrivedPerfEvents(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;)V
    .registers 13
    .param p1, "newEvents"    # Landroid/os/statistics/FilteringPerfEventList;
    .param p2, "targetEventLists"    # Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    .line 323
    const-wide/16 v0, 0x0

    .line 324
    .local v0, "earliest":J
    const-wide/16 v2, 0x0

    .line 325
    .local v2, "latest":J
    iget v4, p1, Landroid/os/statistics/FilteringPerfEventList;->size:I

    .line 326
    .local v4, "eventCount":I
    iget-object v5, p1, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 327
    .local v5, "pos":Landroid/os/statistics/FilteringPerfEventListNode;
    invoke-virtual {p1}, Landroid/os/statistics/FilteringPerfEventList;->detachElements()V

    .line 328
    :goto_b
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v4, :cond_45

    .line 329
    iget-object v8, v5, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    .line 330
    .local v8, "filteringPerfEvent":Landroid/os/statistics/FilteringPerfEvent;
    iget-object v5, v5, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 331
    add-int/lit8 v4, v4, -0x1

    .line 333
    iget v9, v8, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    shr-int/lit8 v6, v9, 0x1

    iget v9, v8, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    shr-int/lit8 v9, v9, 0x2

    add-int/2addr v6, v9

    iget v9, v8, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    shr-int/lit8 v9, v9, 0x3

    add-int/2addr v6, v9

    iput v6, v8, Landroid/os/statistics/FilteringPerfEvent;->enoughPeerWaitDuration:I

    .line 335
    iput v7, v8, Landroid/os/statistics/FilteringPerfEvent;->matchedPeerWaitDuration:I

    .line 336
    iget-wide v6, v8, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iput-wide v6, v8, Landroid/os/statistics/FilteringPerfEvent;->sortingUptimeMillis:J

    .line 337
    invoke-virtual {p2, v8}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    .line 339
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_3a

    iget-wide v6, v8, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_3c

    .line 340
    :cond_3a
    iget-wide v0, v8, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    .line 342
    :cond_3c
    iget-wide v6, v8, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_44

    .line 343
    iget-wide v2, v8, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    .line 345
    .end local v8    # "filteringPerfEvent":Landroid/os/statistics/FilteringPerfEvent;
    :cond_44
    goto :goto_b

    .line 346
    :cond_45
    iget-object v8, p0, Landroid/os/statistics/PerfEventFilter;->tempBatchTimestampMillis:[J

    aput-wide v0, v8, v7

    .line 347
    aput-wide v2, v8, v6

    .line 348
    return-void
.end method

.method private blacklist recycleSuspectedSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)V
    .registers 6
    .param p1, "checkingSuspectedLevel"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    .param p2, "checkingSuspectedSlice"    # Landroid/os/statistics/FilteringPerfEventList;

    .line 988
    iget v0, p2, Landroid/os/statistics/FilteringPerfEventList;->size:I

    .line 989
    .local v0, "eventsSize":I
    invoke-static {p2}, Landroid/os/statistics/FilteringPerfEventCache;->recycleAllUnchecked(Landroid/os/statistics/FilteringPerfEventList;)V

    .line 990
    iget v1, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    .line 991
    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v2, v1, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    .line 992
    return-void
.end method


# virtual methods
.method public blacklist filter(Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;J)V
    .registers 7
    .param p1, "completedEvents"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;
    .param p2, "earliestExecutingRootEventBeginUptimeMillis"    # J

    .line 351
    :goto_0
    iget-object v0, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v0, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    if-lez v0, :cond_a

    .line 352
    invoke-direct {p0, p1}, Landroid/os/statistics/PerfEventFilter;->checkEffectivePerfEvents(Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V

    goto :goto_0

    .line 354
    :cond_a
    iget-object v0, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    .line 355
    .local v0, "temp":Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;
    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEventsWaitingPeer:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iput-object v1, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    .line 356
    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEventsWaitingPeer:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    .line 358
    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v1, v1, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    if-lez v1, :cond_21

    .line 359
    iget-wide v1, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchBeginUptimeMillis:J

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/os/statistics/PerfEventFilter;->checkSuspectedPerfEvents(J)V

    .line 361
    :cond_21
    return-void
.end method

.method public blacklist hasPendingPerfEvents()Z
    .registers 2

    .line 284
    iget-object v0, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v0, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    if-gtz v0, :cond_f

    iget-object v0, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v0, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    if-lez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist send(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEventList;)V
    .registers 14
    .param p1, "newEffectiveEvents"    # Landroid/os/statistics/FilteringPerfEventList;
    .param p2, "newSuspectedEvents"    # Landroid/os/statistics/FilteringPerfEventList;

    .line 289
    const-wide/16 v0, 0x0

    .line 290
    .local v0, "batchBeginUptimeMillis":J
    const-wide/16 v2, 0x0

    .line 292
    .local v2, "batchEndUptimeMillis":J
    iget v4, p1, Landroid/os/statistics/FilteringPerfEventList;->size:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-lez v4, :cond_1d

    .line 293
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->tempBatchTimestampMillis:[J

    aput-wide v7, v4, v6

    .line 294
    aput-wide v7, v4, v5

    .line 295
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    invoke-direct {p0, p1, v4}, Landroid/os/statistics/PerfEventFilter;->moveNewArrivedPerfEvents(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;)V

    .line 296
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->tempBatchTimestampMillis:[J

    aget-wide v0, v4, v6

    .line 297
    aget-wide v2, v4, v5

    .line 300
    :cond_1d
    iget v4, p2, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v4, :cond_3e

    .line 301
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->tempBatchTimestampMillis:[J

    aput-wide v7, v4, v6

    .line 302
    aput-wide v7, v4, v5

    .line 303
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    invoke-direct {p0, p2, v4}, Landroid/os/statistics/PerfEventFilter;->moveNewArrivedPerfEvents(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;)V

    .line 304
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->tempBatchTimestampMillis:[J

    aget-wide v9, v4, v6

    cmp-long v9, v0, v9

    if-lez v9, :cond_36

    .line 305
    aget-wide v0, v4, v6

    .line 307
    :cond_36
    aget-wide v9, v4, v5

    cmp-long v6, v2, v9

    if-gez v6, :cond_3e

    .line 308
    aget-wide v2, v4, v5

    .line 312
    :cond_3e
    cmp-long v4, v0, v7

    if-nez v4, :cond_46

    .line 313
    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v0

    .line 315
    :cond_46
    cmp-long v4, v2, v7

    if-nez v4, :cond_4e

    .line 316
    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v2

    .line 318
    :cond_4e
    iget-wide v4, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchBeginUptimeMillis:J

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchBeginUptimeMillis:J

    .line 319
    iget-wide v4, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchEndUptimeMillis:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchEndUptimeMillis:J

    .line 320
    return-void
.end method
