.class public Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# instance fields
.field public mAcquireTimeUs:J

.field public mInList:Z

.field public mNesting:I

.field public mTimeoutUs:J

.field public final mTimerPool:Ljava/util/ArrayList;

.field public final mUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

.field public mUpdateTimeUs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .registers 8

    .line 3742
    invoke-direct {p0, p1, p3, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    const-wide/16 v0, -0x1

    .line 3721
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    .line 3743
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 3744
    iput-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .registers 9

    .line 3734
    invoke-direct {p0, p1, p3, p5, p6}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    const-wide/16 v0, -0x1

    .line 3721
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    .line 3735
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 3736
    iput-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 3737
    invoke-virtual {p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    return-void
.end method

.method public static refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)J
    .registers 15

    .line 3851
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_9
    if-ltz v1, :cond_28

    .line 3853
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 3854
    iget-wide v7, v6, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    sub-long v7, p0, v7

    cmp-long v9, v7, v2

    if-lez v9, :cond_23

    int-to-long v9, v0

    .line 3856
    div-long/2addr v7, v9

    if-ne v6, p3, :cond_1e

    move-wide v4, v7

    .line 3860
    :cond_1e
    iget-wide v9, v6, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    add-long/2addr v9, v7

    iput-wide v9, v6, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 3862
    :cond_23
    iput-wide p0, v6, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_28
    return-wide v4
.end method


# virtual methods
.method public computeCurrentCountLocked()I
    .registers 1

    .line 3880
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    return p0
.end method

.method public computeRunTimeLocked(JJ)J
    .registers 11

    .line 3869
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimeoutUs:J

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_12

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    add-long v4, v2, p3

    cmp-long v4, p1, v4

    if-lez v4, :cond_12

    add-long p1, v2, p3

    .line 3872
    :cond_12
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v2, :cond_30

    .line 3874
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2c

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x1

    :goto_2d
    int-to-long v0, p0

    div-long v0, p1, v0

    :cond_30
    add-long/2addr p3, v0

    return-wide p3
.end method

.method public detach()V
    .registers 2

    .line 3897
    invoke-super {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->detach()V

    .line 3898
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 3899
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method

.method public isRunningLocked()Z
    .registers 1

    .line 3802
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 6

    .line 3770
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mNesting="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mUpdateTime="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " mAcquireTime="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStopped(JJJ)V
    .registers 8

    .line 3757
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_9

    .line 3761
    invoke-super/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    .line 3762
    iput-wide p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    :cond_9
    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .registers 2

    .line 3905
    invoke-super {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    const/4 p1, 0x0

    .line 3906
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    return-void
.end method

.method public reset(ZJ)Z
    .registers 7

    .line 3885
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    move v1, v2

    .line 3886
    :cond_e
    invoke-super {p0, v1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->reset(ZJ)Z

    .line 3887
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez p1, :cond_1d

    .line 3888
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    :cond_1d
    const-wide/16 p1, -0x1

    .line 3891
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    return v0
.end method

.method public setMark(J)V
    .registers 7

    .line 3916
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    .line 3917
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_20

    .line 3919
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 3920
    invoke-static {p1, p2, v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)J

    goto :goto_20

    .line 3922
    :cond_15
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 3923
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 3926
    :cond_20
    :goto_20
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    return-void
.end method

.method public setTimeout(J)V
    .registers 3

    .line 3748
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimeoutUs:J

    return-void
.end method

.method public startRunningLocked(J)V
    .registers 6

    .line 3776
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v0, :cond_37

    .line 3777
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    .line 3778
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 3779
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 3782
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)J

    .line 3784
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3786
    :cond_20
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 3788
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 3789
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    return-void

    :cond_33
    const-wide/16 p1, -0x1

    .line 3791
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    :cond_37
    return-void
.end method

.method public stopAllRunningLocked(J)V
    .registers 4

    .line 3840
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    .line 3841
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 3842
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_a
    return-void
.end method

.method public stopRunningLocked(J)V
    .registers 7

    .line 3807
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v0, :cond_5

    goto :goto_40

    :cond_5
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 3810
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v0, :cond_40

    .line 3811
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    .line 3812
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    const/4 p1, 0x0

    .line 3815
    invoke-static {v2, v3, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)J

    .line 3817
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 3819
    :cond_22
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 3820
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeRunTimeLocked(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    const/4 p1, 0x0

    .line 3822
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 3831
    :goto_2d
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_40

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    cmp-long p1, v2, p1

    if-nez p1, :cond_40

    .line 3834
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    :cond_40
    :goto_40
    return-void
.end method
