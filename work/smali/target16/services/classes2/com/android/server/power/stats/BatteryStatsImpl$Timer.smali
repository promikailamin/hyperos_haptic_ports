.class public abstract Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
.super Landroid/os/BatteryStats$Timer;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public mCount:I

.field public final mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

.field public mTimeBeforeMarkUs:J

.field public mTotalTimeUs:J

.field public final mType:I


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;ILcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .registers 4

    .line 3021
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 3022
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mClock:Lcom/android/internal/os/Clock;

    .line 3023
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mType:I

    .line 3024
    iput-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 3025
    invoke-virtual {p3, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/Clock;ILcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .registers 5

    .line 3009
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 3010
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mClock:Lcom/android/internal/os/Clock;

    .line 3011
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mType:I

    .line 3012
    iput-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 3014
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 3015
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 3016
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    .line 3017
    invoke-virtual {p3, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method


# virtual methods
.method public abstract computeCurrentCountLocked()I
.end method

.method public abstract computeRunTimeLocked(JJ)J
.end method

.method public detach()V
    .registers 2

    .line 3066
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public getCountLocked(I)I
    .registers 2

    .line 3110
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result p0

    return p0
.end method

.method public getTimeSinceMarkLocked(J)J
    .registers 5

    .line 3115
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    move-result-wide p1

    .line 3117
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public getTotalTimeLocked(JI)J
    .registers 6

    .line 3104
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 6

    .line 3122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mTotalTime="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    .line 3080
    invoke-virtual {p0, p5, p6, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 3081
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .registers 4

    .line 3136
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 3137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 3139
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    return-void
.end method

.method public reset(ZJ)Z
    .registers 4

    const-wide/16 p2, 0x0

    .line 3056
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    const/4 p2, 0x0

    .line 3057
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    if-eqz p1, :cond_e

    .line 3059
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->detach()V

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .registers 6

    .line 3128
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    move-result-wide p2

    .line 3130
    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3131
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
