.class public Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;
.super Landroid/os/BatteryStats$LongCounterArray;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public mCounts:[J

.field public final mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;


# direct methods
.method public static bridge synthetic -$$Nest$mreadSummaryFromParcelLocked(Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;Landroid/os/Parcel;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteSummaryToParcelLocked(Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;Landroid/os/Parcel;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->writeSummaryToParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .registers 2

    .line 2595
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounterArray;-><init>()V

    .line 2596
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 2597
    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public static readSummaryFromParcelLocked(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;
    .registers 3

    .line 2700
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 2701
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 2703
    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-object v0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method private readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .registers 2

    .line 2668
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    return-void
.end method

.method public static writeSummaryToParcelLocked(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;)V
    .registers 3

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    .line 2691
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2692
    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->writeSummaryToParcelLocked(Landroid/os/Parcel;)V

    return-void

    :cond_a
    const/4 p1, 0x0

    .line 2694
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public addCountLocked([JZ)V
    .registers 8

    if-nez p1, :cond_3

    goto :goto_1e

    :cond_3
    if-eqz p2, :cond_1e

    .line 2631
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez p2, :cond_e

    .line 2632
    array-length p2, p1

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    :cond_e
    const/4 p2, 0x0

    .line 2634
    :goto_f
    array-length v0, p1

    if-ge p2, v0, :cond_1e

    .line 2635
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    aget-wide v1, v0, p2

    aget-wide v3, p1, p2

    add-long/2addr v1, v3

    aput-wide v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    :cond_1e
    :goto_1e
    return-void
.end method

.method public detach()V
    .registers 2

    .line 2660
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public getCountsLocked(I)[J
    .registers 2

    .line 2614
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .registers 1

    .line 2641
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    array-length p0, p0

    return p0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 4

    .line 2619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mCounts="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStarted(JJJ)V
    .registers 7

    .line 0
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .registers 7

    .line 0
    return-void
.end method

.method public reset(ZJ)Z
    .registers 6

    .line 2649
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-eqz p2, :cond_9

    const-wide/16 v0, 0x0

    .line 2650
    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    :cond_9
    if-eqz p1, :cond_e

    .line 2653
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->detach()V

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public final writeSummaryToParcelLocked(Landroid/os/Parcel;)V
    .registers 2

    .line 2664
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
