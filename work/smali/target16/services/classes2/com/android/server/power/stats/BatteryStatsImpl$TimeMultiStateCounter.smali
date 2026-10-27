.class public Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
.super Landroid/os/BatteryStats$LongCounter;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public final mCounter:Lcom/android/internal/os/LongMultiStateCounter;

.field public final mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;


# direct methods
.method public static bridge synthetic -$$Nest$mincrement(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;JJ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->increment(JJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->setState(IJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdate(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;JJ)J
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->update(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$mwriteToParcel(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;Landroid/os/Parcel;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->readFromParcel(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)V
    .registers 6

    .line 2716
    new-instance v0, Lcom/android/internal/os/LongMultiStateCounter;

    invoke-direct {v0, p2}, Lcom/android/internal/os/LongMultiStateCounter;-><init>(I)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongMultiStateCounter;J)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJLcom/android/server/power/stats/BatteryStatsImpl-IA;)V
    .registers 6

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongMultiStateCounter;J)V
    .registers 6

    .line 2720
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    .line 2721
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 2722
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 2723
    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    invoke-virtual {p2, v0, p3, p4}, Lcom/android/internal/os/LongMultiStateCounter;->setEnabled(ZJ)V

    .line 2724
    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 6

    .line 2730
    sget-object v0, Lcom/android/internal/os/LongMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/os/LongMultiStateCounter;

    .line 2731
    invoke-virtual {p0}, Lcom/android/internal/os/LongMultiStateCounter;->getStateCount()I

    move-result v0

    if-eq v0, p2, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 2734
    :cond_10
    new-instance p2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-direct {p2, p1, p0, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongMultiStateCounter;J)V

    return-object p2
.end method

.method private setState(IJ)V
    .registers 4

    .line 2757
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    return-void
.end method

.method private writeToParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 2738
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public detach()V
    .registers 2

    .line 2803
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public getCountForProcessState(I)J
    .registers 2

    .line 2772
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getCountLocked(I)J
    .registers 2

    .line 2781
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->getTotalCountLocked()J

    move-result-wide p0

    return-wide p0
.end method

.method public getStateCount()I
    .registers 1

    .line 2752
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {p0}, Lcom/android/internal/os/LongMultiStateCounter;->getStateCount()I

    move-result p0

    return p0
.end method

.method public getTotalCountLocked()J
    .registers 3

    .line 2776
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {p0}, Lcom/android/internal/os/LongMultiStateCounter;->getTotalCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public final increment(JJ)V
    .registers 5

    .line 2765
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/LongMultiStateCounter;->incrementValue(JJ)V

    return-void
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 4

    .line 2786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mCounter="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStarted(JJJ)V
    .registers 7

    .line 2743
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    const/4 p3, 0x1

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/internal/os/LongMultiStateCounter;->setEnabled(ZJ)V

    return-void
.end method

.method public onTimeStopped(JJJ)V
    .registers 7

    .line 2748
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/internal/os/LongMultiStateCounter;->setEnabled(ZJ)V

    return-void
.end method

.method public reset(ZJ)Z
    .registers 4

    .line 2794
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {p2}, Lcom/android/internal/os/LongMultiStateCounter;->reset()V

    if-eqz p1, :cond_a

    .line 2796
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->detach()V

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public final update(JJ)J
    .registers 5

    .line 2761
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    move-result-wide p0

    return-wide p0
.end method
