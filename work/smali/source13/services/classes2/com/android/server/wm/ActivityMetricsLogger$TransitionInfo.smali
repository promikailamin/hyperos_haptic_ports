.class final Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransitionInfo"
.end annotation


# instance fields
.field mBindApplicationDelayMs:I

.field mCurrentTransitionDelayMs:I

.field mIsDrawn:Z

.field mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

.field mLaunchTraceName:Ljava/lang/String;

.field final mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

.field mLoggedStartingWindowDrawn:Z

.field mLoggedTransitionStarting:Z

.field mPendingFullyDrawn:Ljava/lang/Runnable;

.field final mProcessRunning:Z

.field final mProcessSwitch:Z

.field mReason:I

.field mRelaunched:Z

.field mSourceEventDelayMs:I

.field mSourceType:I

.field mStartingWindowDelayMs:I

.field final mTransitionDeviceUptimeMs:J

.field final mTransitionStartTimeNs:J

.field final mTransitionType:I

.field mWindowsDrawnDelayMs:I


# direct methods
.method private constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Landroid/app/ActivityOptions;IZZ)V
    .registers 12
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchingState"    # Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "transitionType"    # I
    .param p5, "processRunning"    # Z
    .param p6, "processSwitch"    # Z

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceEventDelayMs:I

    .line 296
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mStartingWindowDelayMs:I

    .line 298
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mBindApplicationDelayMs:I

    .line 302
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mReason:I

    .line 342
    iput-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 343
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fgetmCurrentTransitionStartTimeNs(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    .line 344
    iput p4, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    .line 345
    iput-boolean p5, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    .line 346
    iput-boolean p6, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    .line 347
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fgetmCurrentUpTimeMs(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionDeviceUptimeMs:J

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->setLatestLaunchedActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 351
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fgetmAssociatedTransitionInfo(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 352
    invoke-static {p2, p0}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fputmAssociatedTransitionInfo(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 354
    :cond_2d
    if-eqz p3, :cond_43

    .line 355
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;

    move-result-object v0

    .line 356
    .local v0, "sourceInfo":Landroid/app/ActivityOptions$SourceInfo;
    if-eqz v0, :cond_43

    .line 357
    iget v1, v0, Landroid/app/ActivityOptions$SourceInfo;->type:I

    iput v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceType:I

    .line 358
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fgetmCurrentUpTimeMs(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)J

    move-result-wide v1

    iget-wide v3, v0, Landroid/app/ActivityOptions$SourceInfo;->eventTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceEventDelayMs:I

    .line 362
    .end local v0    # "sourceInfo":Landroid/app/ActivityOptions$SourceInfo;
    :cond_43
    return-void
.end method

.method static create(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Landroid/app/ActivityOptions;ZZZI)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .registers 16
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "launchingState"    # Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "processRunning"    # Z
    .param p4, "processSwitch"    # Z
    .param p5, "newActivityCreated"    # Z
    .param p6, "startResult"    # I

    .line 321
    if-eqz p6, :cond_7

    const/4 v0, 0x2

    if-eq p6, v0, :cond_7

    .line 322
    const/4 v0, 0x0

    return-object v0

    .line 325
    :cond_7
    if-eqz p3, :cond_18

    .line 326
    if-nez p5, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 327
    const/16 v0, 0x9

    goto :goto_16

    .line 328
    :cond_14
    const/16 v0, 0x8

    :goto_16
    nop

    .local v0, "transitionType":I
    goto :goto_19

    .line 332
    .end local v0    # "transitionType":I
    :cond_18
    const/4 v0, 0x7

    .line 334
    .restart local v0    # "transitionType":I
    :goto_19
    new-instance v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, v0

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Landroid/app/ActivityOptions;IZZ)V

    return-object v8
.end method


# virtual methods
.method calculateCurrentDelay()I
    .registers 3

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateDelay(J)I

    move-result v0

    return v0
.end method

.method calculateDelay(J)I
    .registers 6
    .param p1, "timestampNs"    # J

    .line 410
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method canCoalesce(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 388
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 387
    :goto_17
    return v0
.end method

.method contains(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 393
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isInterestingToLoggerAndObserver()Z
    .registers 2

    .line 401
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    return v0
.end method

.method setLatestLaunchedActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 370
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_5

    .line 371
    return-void

    .line 373
    :cond_5
    if-eqz v0, :cond_1a

    .line 376
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    iput-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 378
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    iput-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 379
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 381
    :cond_1a
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 382
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isReportedDrawn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    .line 383
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransitionInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
