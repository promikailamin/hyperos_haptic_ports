.class public abstract Landroid/os/statistics/LooperCheckPointDetector;
.super Ljava/lang/Object;
.source "LooperCheckPointDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;
    }
.end annotation


# static fields
.field private static final blacklist FIRST_TIME_DETECT_DELAY_TIME_MS:I = 0x1388

.field private static final blacklist LATER_DETECT_DELAY_TIME_MS:I = 0x7d0

.field private static final blacklist MESSAGE_DETECTING_CHECKPOINT:I

.field private static blacklist mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

.field private static blacklist mDetectingThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmDetectingHandler()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;
    .registers 1

    sget-object v0, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    return-object v0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public static blacklist beginLoopOnce(IJ)V
    .registers 4
    .param p0, "threadId"    # I
    .param p1, "beginUptimeMs"    # J

    .line 115
    sget-object v0, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    if-nez v0, :cond_5

    .line 116
    return-void

    .line 118
    :cond_5
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->beginLoopOnce(IJ)V

    .line 119
    return-void
.end method

.method public static blacklist endLooperOnce()V
    .registers 1

    .line 122
    sget-object v0, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    if-nez v0, :cond_5

    .line 123
    return-void

    .line 125
    :cond_5
    invoke-virtual {v0}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->endLooperOnce()V

    .line 126
    return-void
.end method

.method static blacklist start()V
    .registers 3

    .line 109
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Binder:looper-check-point-detect"

    const/16 v2, -0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingThread:Landroid/os/HandlerThread;

    .line 110
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    sget-object v1, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    .line 112
    return-void
.end method
