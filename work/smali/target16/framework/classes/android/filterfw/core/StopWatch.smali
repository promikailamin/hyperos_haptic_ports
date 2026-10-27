.class Landroid/filterfw/core/StopWatch;
.super Ljava/lang/Object;
.source "StopWatchMap.java"


# instance fields
.field private greylist-max-o STOP_WATCH_LOGGING_PERIOD:I

.field private greylist-max-o TAG:Ljava/lang/String;

.field private greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mNumCalls:I

.field private greylist-max-o mStartTime:J

.field private greylist-max-o mTotalTime:J


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0xc8

    iput v0, p0, Landroid/filterfw/core/StopWatch;->STOP_WATCH_LOGGING_PERIOD:I

    .line 29
    const-string v0, "MFF"

    iput-object v0, p0, Landroid/filterfw/core/StopWatch;->TAG:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Landroid/filterfw/core/StopWatch;->mName:Ljava/lang/String;

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    .line 40
    const/4 p1, 0x0

    iput p1, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    .line 41
    return-void
.end method


# virtual methods
.method public greylist-max-o start()V
    .registers 5

    .line 44
    iget-wide v0, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    .line 49
    return-void

    .line 45
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Calling start with StopWatch already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o stop()V
    .registers 9

    .line 52
    iget-wide v0, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_67

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 57
    iget-wide v4, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    iget-wide v6, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    sub-long/2addr v0, v6

    add-long/2addr v4, v0

    iput-wide v4, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    .line 58
    iget v0, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    .line 59
    iput-wide v2, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    .line 60
    iget v0, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    iget v1, p0, Landroid/filterfw/core/StopWatch;->STOP_WATCH_LOGGING_PERIOD:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_66

    .line 61
    iget-object v0, p0, Landroid/filterfw/core/StopWatch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AVG ms/call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/core/StopWatch;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 62
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.1f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    .line 66
    :cond_66
    return-void

    .line 53
    :cond_67
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Calling stop with StopWatch already stopped"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
