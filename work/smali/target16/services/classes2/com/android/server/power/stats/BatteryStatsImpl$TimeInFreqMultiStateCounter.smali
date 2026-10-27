.class public Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public final mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

.field public final mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;


# direct methods
.method public static bridge synthetic -$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;IJ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->setState(IJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteToParcel(Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;Landroid/os/Parcel;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IIJ)Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->readFromParcel(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IIJ)Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IIJ)V
    .registers 7

    .line 2813
    new-instance v0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;-><init>(II)V

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongArrayMultiStateCounter;J)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IIJLcom/android/server/power/stats/BatteryStatsImpl-IA;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IIJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongArrayMultiStateCounter;J)V
    .registers 6

    .line 2817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2818
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 2819
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 2820
    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    invoke-virtual {p2, v0, p3, p4}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setEnabled(ZJ)V

    .line 2821
    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IIJ)Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .registers 7

    .line 2832
    sget-object v0, Lcom/android/internal/os/LongArrayMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2833
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 2834
    invoke-virtual {p0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getStateCount()I

    move-result v0

    if-ne v0, p2, :cond_1b

    .line 2835
    invoke-virtual {p0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result p2

    if-eq p2, p3, :cond_15

    goto :goto_1b

    .line 2838
    :cond_15
    new-instance p2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-direct {p2, p1, p0, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongArrayMultiStateCounter;J)V

    return-object p2

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private writeToParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 2825
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public detach()V
    .registers 2

    .line 2892
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public getCounter()Lcom/android/internal/os/LongArrayMultiStateCounter;
    .registers 1

    .line 2852
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    return-object p0
.end method

.method public getCountsLocked([JI)Z
    .registers 5

    .line 2871
    array-length v0, p1

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v1

    if-eq v0, v1, :cond_b

    const/4 p0, 0x0

    return p0

    .line 2875
    :cond_b
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)Z

    move-result p0

    return p0
.end method

.method public getStateCount()I
    .registers 1

    .line 2856
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {p0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getStateCount()I

    move-result p0

    return p0
.end method

.method public onTimeStarted(JJJ)V
    .registers 7

    .line 2843
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    const/4 p3, 0x1

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setEnabled(ZJ)V

    return-void
.end method

.method public onTimeStopped(JJJ)V
    .registers 7

    .line 2848
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setEnabled(ZJ)V

    return-void
.end method

.method public reset(ZJ)Z
    .registers 4

    .line 2883
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->reset()V

    if-eqz p1, :cond_a

    .line 2885
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->detach()V

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public final setState(IJ)V
    .registers 4

    .line 2864
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setState(IJ)V

    return-void
.end method
