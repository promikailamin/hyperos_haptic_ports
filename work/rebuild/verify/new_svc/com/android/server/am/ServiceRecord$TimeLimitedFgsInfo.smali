.class public Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;
.super Ljava/lang/Object;
.source "ServiceRecord.java"


# instance fields
.field public mFirstFgsStartRealtime:J

.field public mFirstFgsStartUptime:J

.field public mLastFgsStartTime:J

.field public mNumParallelServices:I

.field public mTimeLimitExceededAt:J

.field public mTotalRuntime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 683
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTimeLimitExceededAt:J

    const-wide/16 v0, 0x0

    .line 685
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    const/4 v0, 0x0

    .line 687
    iput v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    return-void
.end method


# virtual methods
.method public decNumParallelServices()V
    .registers 3

    .line 714
    iget v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    if-lez v0, :cond_8

    add-int/lit8 v0, v0, -0x1

    .line 715
    iput v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    .line 717
    :cond_8
    iget v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    if-nez v0, :cond_10

    const-wide/16 v0, 0x0

    .line 718
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    :cond_10
    return-void
.end method

.method public getFirstFgsStartRealtime()J
    .registers 3

    .line 705
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartRealtime:J

    return-wide v0
.end method

.method public getFirstFgsStartUptime()J
    .registers 3

    .line 700
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartUptime:J

    return-wide v0
.end method

.method public getLastFgsStartTime()J
    .registers 3

    .line 710
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    return-wide v0
.end method

.method public getTimeLimitExceededAt()J
    .registers 3

    .line 738
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTimeLimitExceededAt:J

    return-wide v0
.end method

.method public getTotalRuntime()J
    .registers 3

    .line 729
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    return-wide v0
.end method

.method public noteFgsFgsStart(J)V
    .registers 5

    .line 690
    iget v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    if-ne v0, v1, :cond_10

    .line 692
    iput-wide p1, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartUptime:J

    .line 693
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartRealtime:J

    .line 695
    :cond_10
    iput-wide p1, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    return-void
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    .line 742
    iput v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    const-wide/16 v0, 0x0

    .line 743
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartUptime:J

    .line 744
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartRealtime:J

    .line 745
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    .line 746
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    const-wide/high16 v0, -0x8000000000000000L

    .line 747
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTimeLimitExceededAt:J

    return-void
.end method

.method public setTimeLimitExceededAt(J)V
    .registers 3

    .line 733
    iput-wide p1, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTimeLimitExceededAt:J

    return-void
.end method

.method public updateTotalRuntime(J)V
    .registers 7

    .line 723
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    iget-wide v2, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    .line 724
    iput-wide p1, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    return-void
.end method
