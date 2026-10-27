.class public Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# instance fields
.field public mBaseReportedCount:I

.field public mBaseReportedTotalTimeUs:J

.field public mCurrentReportedCount:I

.field public mCurrentReportedTotalTimeUs:J

.field public mTimeBaseRunning:Z

.field public mTrackingReportedValues:Z

.field public mUpdateVersion:I


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .registers 4

    const/4 v0, 0x0

    .line 3205
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 3206
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 3207
    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .registers 7

    const/4 v0, 0x0

    .line 3194
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 3195
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    .line 3196
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    .line 3197
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    .line 3198
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    .line 3199
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_24

    move v0, p3

    :cond_24
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 3200
    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    return-void
.end method


# virtual methods
.method public add(JIJ)V
    .registers 8

    .line 3291
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    add-long/2addr p1, v0

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    add-int/2addr p3, v0

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->update(JIJ)V

    return-void
.end method

.method public computeCurrentCountLocked()I
    .registers 3

    .line 3328
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz v1, :cond_10

    .line 3329
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    sub-int/2addr v1, p0

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    add-int/2addr v0, v1

    return v0
.end method

.method public computeRunTimeLocked(JJ)J
    .registers 7

    .line 3322
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iget-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    if-eqz p3, :cond_10

    iget-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz p3, :cond_10

    .line 3323
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    sub-long/2addr p3, v0

    goto :goto_12

    :cond_10
    const-wide/16 p3, 0x0

    :goto_12
    add-long/2addr p1, p3

    return-wide p1
.end method

.method public endSample(J)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 3222
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->computeRunTimeLocked(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 3223
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->computeCurrentCountLocked()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 3224
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    const/4 p1, 0x0

    .line 3225
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    .line 3226
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    return-void
.end method

.method public getUpdateVersion()I
    .registers 1

    .line 3234
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUpdateVersion:I

    return p0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 6

    .line 3313
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mCurrentReportedCount="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mBaseReportedCount="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mCurrentReportedTotalTime="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " mBaseReportedTotalTimeUs="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStarted(JJJ)V
    .registers 7

    .line 3297
    invoke-super/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->onTimeStarted(JJJ)V

    .line 3298
    iget-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz p1, :cond_f

    .line 3299
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    .line 3300
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    :cond_f
    const/4 p1, 0x1

    .line 3302
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    return-void
.end method

.method public onTimeStopped(JJJ)V
    .registers 7

    .line 3307
    invoke-super/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    const/4 p1, 0x0

    .line 3308
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    return-void
.end method

.method public reset(ZJ)Z
    .registers 4

    .line 3344
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->reset(ZJ)Z

    const/4 p1, 0x0

    .line 3345
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    const-wide/16 p2, 0x0

    .line 3346
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    .line 3347
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    const/4 p0, 0x1

    return p0
.end method

.method public setUpdateVersion(I)V
    .registers 2

    .line 3230
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUpdateVersion:I

    return-void
.end method

.method public update(JIJ)V
    .registers 14

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move-wide v6, p4

    .line 3250
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->update(JJIJ)V

    return-void
.end method

.method public update(JJIJ)V
    .registers 10

    .line 3260
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-nez v0, :cond_18

    sub-long v0, p1, p3

    .line 3263
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-nez p3, :cond_14

    move p3, p5

    goto :goto_16

    :cond_14
    add-int/lit8 p3, p5, -0x1

    .line 3264
    :goto_16
    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    :cond_18
    const/4 p3, 0x1

    .line 3267
    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 3269
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    cmp-long p3, p1, p3

    if-ltz p3, :cond_25

    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    if-ge p5, p3, :cond_28

    .line 3270
    :cond_25
    invoke-virtual {p0, p6, p7}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->endSample(J)V

    .line 3273
    :cond_28
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    .line 3274
    iput p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    return-void
.end method
