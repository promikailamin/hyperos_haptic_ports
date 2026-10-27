.class public Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# instance fields
.field public mActive:Z

.field public mFrequencyRange:I

.field public mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mSignalStrength:I

.field public final perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;


# direct methods
.method public static bridge synthetic -$$Nest$mgetRxDurationCounter(Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;IZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getRxDurationCounter(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTxDurationCounter(Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;IIZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getTxDurationCounter(IIZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(ILcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .registers 15

    .line 1362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1337
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    .line 1341
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    .line 1346
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    const/4 v1, 0x0

    .line 1354
    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 1359
    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x2

    .line 1363
    new-array v1, v1, [I

    const/4 v2, 0x1

    const/4 v3, 0x5

    aput v3, v1, v2

    aput p1, v1, v0

    const-class v2, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move v1, v0

    :goto_23
    if-ge v1, p1, :cond_40

    move v2, v0

    :goto_26
    if-ge v2, v3, :cond_3b

    .line 1367
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v1

    new-instance v5, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v6, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_3b
    move-object v6, p2

    move-object v10, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_40
    return-void
.end method


# virtual methods
.method public getFrequencyRangeCount()I
    .registers 1

    .line 1445
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    array-length p0, p0

    return p0
.end method

.method public final getRxDurationCounter(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .registers 8

    .line 1597
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    if-nez v0, :cond_27

    if-nez p2, :cond_8

    return-object v1

    .line 1600
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result p2

    .line 1601
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 1602
    new-array v3, p2, [Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iput-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    :goto_19
    if-ge v2, p2, :cond_27

    .line 1604
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-instance v4, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v4, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_27
    if-ltz p1, :cond_35

    .line 1607
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result p2

    if-lt p1, p2, :cond_30

    goto :goto_35

    .line 1612
    :cond_30
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object p0, p0, p1

    return-object p0

    .line 1608
    :cond_35
    :goto_35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected frequency range ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") requested in getRxDurationCounter"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryStatsImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getTimeSinceMark(IIJ)J
    .registers 5

    .line 1425
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object p0, p0, p1

    aget-object p0, p0, p2

    const-wide/16 p1, 0x3e8

    mul-long/2addr p3, p1

    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTimeSinceMarkLocked(J)J

    move-result-wide p3

    div-long/2addr p3, p1

    return-wide p3
.end method

.method public final getTxDurationCounter(IIZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .registers 12

    .line 1569
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_3f

    if-nez p3, :cond_9

    return-object v1

    .line 1572
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result p3

    .line 1573
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, v2

    array-length v3, v0

    .line 1574
    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x2

    .line 1575
    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput p3, v4, v2

    const-class v5, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iput-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move v4, v2

    :goto_29
    if-ge v4, p3, :cond_3f

    move v5, v2

    :goto_2c
    if-ge v5, v3, :cond_3c

    .line 1578
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object v6, v6, v4

    new-instance v7, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v7, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 1582
    :cond_3f
    const-string p3, ") requested in getTxDurationCounter"

    const-string v0, "BatteryStatsImpl"

    if-ltz p1, :cond_75

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result v3

    if-lt p1, v3, :cond_4c

    goto :goto_75

    :cond_4c
    if-ltz p2, :cond_5d

    .line 1587
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v3, v2

    array-length v2, v2

    if-lt p2, v2, :cond_56

    goto :goto_5d

    .line 1592
    :cond_56
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object p0, p0, p1

    aget-object p0, p0, p2

    return-object p0

    .line 1588
    :cond_5d
    :goto_5d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected signal strength ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1583
    :cond_75
    :goto_75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected frequency range ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public incrementRxDuration(IJ)V
    .registers 5

    const/4 v0, 0x1

    .line 1461
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getRxDurationCounter(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    return-void
.end method

.method public incrementTxDuration(IIJ)V
    .registers 6

    const/4 v0, 0x1

    .line 1453
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getTxDurationCounter(IIZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    return-void
.end method

.method public noteActive(ZJ)V
    .registers 5

    .line 1376
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1377
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-eqz p1, :cond_17

    .line 1379
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object p1, p1, v0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object p0, p1, p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void

    .line 1382
    :cond_17
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object p1, p1, v0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object p0, p1, p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    return-void
.end method

.method public noteFrequencyRange(IJ)V
    .registers 6

    .line 1392
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1394
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-nez v1, :cond_c

    .line 1396
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    return-void

    .line 1399
    :cond_c
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v1, v0

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 1400
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 1401
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    return-void
.end method

.method public noteSignalStrength(IJ)V
    .registers 7

    .line 1408
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1410
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-nez v1, :cond_c

    .line 1412
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    return-void

    .line 1415
    :cond_c
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 1416
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v0, v0, v1

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 1417
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    return-void
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 16

    .line 1518
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1519
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1520
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    const/4 v5, 0x5

    if-ge v4, v0, :cond_39

    move v6, v3

    :goto_11
    if-ge v6, v1, :cond_36

    if-ge v4, v2, :cond_22

    if-lt v6, v5, :cond_18

    goto :goto_22

    .line 1532
    :cond_18
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v7, v7, v4

    aget-object v7, v7, v6

    invoke-virtual {v7, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    goto :goto_33

    .line 1527
    :cond_22
    :goto_22
    new-instance v8, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v13, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v13}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 1530
    invoke-virtual {v8, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :goto_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1537
    :cond_39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_68

    move v4, v3

    :goto_41
    if-ge v4, v0, :cond_68

    move v7, v3

    :goto_44
    if-ge v7, v1, :cond_65

    if-ge v4, v2, :cond_4a

    if-lt v7, v5, :cond_5b

    .line 1542
    :cond_4a
    new-instance v8, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v13, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v13}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 1545
    invoke-virtual {v8, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1547
    :cond_5b
    invoke-virtual {p0, v4, v7, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getTxDurationCounter(IIZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    :cond_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 1552
    :cond_68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v6, :cond_8e

    :goto_6e
    if-ge v3, v0, :cond_8e

    if-lt v3, v2, :cond_84

    .line 1557
    new-instance v7, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v12, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v12}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 1559
    invoke-virtual {v7, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    goto :goto_8b

    .line 1562
    :cond_84
    invoke-virtual {p0, v3, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getRxDurationCounter(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :goto_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    :cond_8e
    return-void
.end method

.method public reset(J)V
    .registers 8

    .line 1468
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_30

    move v3, v1

    :goto_8
    const/4 v4, 0x5

    if-ge v3, v4, :cond_23

    .line 1471
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    invoke-virtual {v4, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    .line 1472
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-nez v4, :cond_19

    goto :goto_20

    .line 1473
    :cond_19
    aget-object v4, v4, v2

    aget-object v4, v4, v3

    invoke-virtual {v4, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1475
    :cond_23
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-nez v3, :cond_28

    goto :goto_2d

    .line 1476
    :cond_28
    aget-object v3, v3, v2

    invoke-virtual {v3, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_30
    return-void
.end method

.method public setMark(J)V
    .registers 8

    .line 1433
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_1a

    move v3, v1

    :goto_8
    const/4 v4, 0x5

    if-ge v3, v4, :cond_17

    .line 1436
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1a
    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;J)V
    .registers 10

    .line 1484
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    .line 1485
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x5

    .line 1486
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v0, :cond_20

    move v4, v2

    :goto_f
    if-ge v4, v1, :cond_1d

    .line 1489
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v5, v5, v3

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1493
    :cond_20
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const/4 p3, 0x1

    if-nez p2, :cond_29

    .line 1494
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_41

    .line 1496
    :cond_29
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move p2, v2

    :goto_2d
    if-ge p2, v0, :cond_41

    move v3, v2

    :goto_30
    if-ge v3, v1, :cond_3e

    .line 1499
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, p2

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_3e
    add-int/lit8 p2, p2, 0x1

    goto :goto_2d

    .line 1504
    :cond_41
    :goto_41
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-nez p2, :cond_49

    .line 1505
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1507
    :cond_49
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4c
    if-ge v2, v0, :cond_58

    .line 1509
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object p2, p2, v2

    invoke-virtual {p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_58
    return-void
.end method
