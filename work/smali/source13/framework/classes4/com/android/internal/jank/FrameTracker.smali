.class public Lcom/android/internal/jank/FrameTracker;
.super Landroid/view/SurfaceControl$OnJankDataListener;
.source "FrameTracker.java"

# interfaces
.implements Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;,
        Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;,
        Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;,
        Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;,
        Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;,
        Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;,
        Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;,
        Lcom/android/internal/jank/FrameTracker$JankInfo;,
        Lcom/android/internal/jank/FrameTracker$Reasons;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist INVALID_ID:J = -0x1L

.field public static final blacklist NANOS_IN_MILLISECOND:I = 0xf4240

.field static final blacklist REASON_CANCEL_NORMAL:I = 0x10

.field static final blacklist REASON_CANCEL_NOT_BEGUN:I = 0x11

.field static final blacklist REASON_CANCEL_SAME_VSYNC:I = 0x12

.field static final blacklist REASON_CANCEL_TIMEOUT:I = 0x13

.field static final blacklist REASON_END_NORMAL:I = 0x0

.field static final blacklist REASON_END_SURFACE_DESTROYED:I = 0x1

.field static final blacklist REASON_END_UNKNOWN:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "FrameTracker"


# instance fields
.field private blacklist mBeginVsyncId:J

.field private blacklist mCancelled:Z

.field private final blacklist mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

.field private final blacklist mDeferMonitoring:Z

.field private blacklist mEndVsyncId:J

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mJankInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/jank/FrameTracker$JankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMetricsFinalized:Z

.field private final blacklist mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

.field private final blacklist mObserver:Landroid/graphics/HardwareRendererObserver;

.field private final blacklist mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

.field private final blacklist mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

.field private final blacklist mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

.field private final blacklist mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

.field private blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private final blacklist mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

.field public final blacklist mSurfaceOnly:Z

.field private final blacklist mTraceThresholdFrameTimeMillis:I

.field private final blacklist mTraceThresholdMissedFrames:I

.field private blacklist mTracingStarted:Z

.field private final blacklist mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

.field private blacklist mWaitForFinishTimedOut:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$yUh_IPnq4vh9-DHGeZ74lqvEy84(Lcom/android/internal/jank/FrameTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->beginInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBeginVsyncId(Lcom/android/internal/jank/FrameTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/jank/FrameTracker;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/jank/FrameTracker;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetricsFinalized(Lcom/android/internal/jank/FrameTracker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceControl(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceControlWrapper(Lcom/android/internal/jank/FrameTracker;)Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewRoot(Lcom/android/internal/jank/FrameTracker;)Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceControl(Lcom/android/internal/jank/FrameTracker;Landroid/view/SurfaceControl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinish(Lcom/android/internal/jank/FrameTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finish()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmarkEvent(Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/jank/InteractionJankMonitor$Session;Landroid/os/Handler;Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;IILcom/android/internal/jank/FrameTracker$FrameTrackerListener;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V
    .registers 25
    .param p1, "session"    # Lcom/android/internal/jank/InteractionJankMonitor$Session;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "renderer"    # Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;
    .param p4, "viewRootWrapper"    # Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;
    .param p5, "surfaceControlWrapper"    # Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;
    .param p6, "choreographer"    # Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;
    .param p7, "metrics"    # Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;
    .param p8, "statsLog"    # Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;
    .param p9, "traceThresholdMissedFrames"    # I
    .param p10, "traceThresholdFrameTimeMillis"    # I
    .param p11, "listener"    # Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;
    .param p12, "config"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 154
    move-object v0, p0

    move-object v1, p2

    invoke-direct {p0}, Landroid/view/SurfaceControl$OnJankDataListener;-><init>()V

    .line 94
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    .line 102
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/jank/InteractionJankMonitor;->getLock()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mLock:Ljava/lang/Object;

    .line 108
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    .line 109
    iput-wide v2, v0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    .line 111
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    .line 113
    iput-boolean v2, v0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    .line 155
    invoke-virtual/range {p12 .. p12}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->isSurfaceOnly()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    .line 156
    move-object v4, p1

    iput-object v4, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 157
    iput-object v1, v0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    .line 158
    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    .line 159
    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    .line 160
    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/internal/jank/FrameTracker;->mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    .line 161
    invoke-virtual/range {p12 .. p12}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->shouldDeferMonitor()Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    .line 164
    const/4 v8, 0x0

    if-eqz v3, :cond_43

    move-object v9, v8

    goto :goto_44

    :cond_43
    move-object v9, p3

    :goto_44
    iput-object v9, v0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    .line 165
    if-eqz v3, :cond_4a

    move-object v9, v8

    goto :goto_4c

    :cond_4a
    move-object/from16 v9, p7

    :goto_4c
    iput-object v9, v0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    .line 166
    if-eqz v3, :cond_52

    move-object v10, v8

    goto :goto_54

    :cond_52
    move-object/from16 v10, p4

    :goto_54
    iput-object v10, v0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    .line 167
    if-eqz v3, :cond_5a

    .line 168
    move-object v11, v8

    goto :goto_63

    .line 169
    :cond_5a
    new-instance v11, Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v9}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getTiming()[J

    move-result-object v9

    invoke-direct {v11, p0, v9, p2, v2}, Landroid/graphics/HardwareRendererObserver;-><init>(Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;[JLandroid/os/Handler;Z)V

    :goto_63
    iput-object v11, v0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    .line 172
    move/from16 v2, p9

    iput v2, v0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdMissedFrames:I

    .line 173
    move/from16 v9, p10

    iput v9, v0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdFrameTimeMillis:I

    .line 174
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    .line 176
    if-eqz v3, :cond_7c

    .line 177
    invoke-virtual/range {p12 .. p12}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 178
    iput-object v8, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    goto :goto_96

    .line 182
    :cond_7c
    invoke-virtual {v10}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 183
    invoke-virtual {v10}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 186
    :cond_8c
    new-instance v3, Lcom/android/internal/jank/FrameTracker$1;

    invoke-direct {v3, p0}, Lcom/android/internal/jank/FrameTracker$1;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    iput-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    .line 229
    invoke-virtual {v10, v3}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 231
    :goto_96
    return-void
.end method

.method private blacklist beginInternal()V
    .registers 6

    .line 276
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v1, :cond_26

    iget-wide v1, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_10

    goto :goto_26

    .line 280
    :cond_10
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    .line 281
    const-string v1, "FT#begin"

    invoke-direct {p0, v1}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v2, v2

    invoke-static {v1, v2}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 283
    monitor-exit v0

    .line 284
    return-void

    .line 278
    :cond_26
    :goto_26
    monitor-exit v0

    return-void

    .line 283
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private blacklist callbacksReceived(Lcom/android/internal/jank/FrameTracker$JankInfo;)Z
    .registers 3
    .param p1, "info"    # Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 465
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-eqz v0, :cond_7

    .line 466
    iget-boolean v0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    goto :goto_12

    .line 467
    :cond_7
    iget-boolean v0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 465
    :goto_12
    return v0
.end method

.method private blacklist findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .registers 5
    .param p1, "frameVsyncId"    # J

    .line 391
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/jank/FrameTracker$JankInfo;

    return-object v0
.end method

.method private blacklist finish()V
    .registers 29

    .line 471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 472
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    .line 473
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/jank/FrameTracker;->removeObservers()V

    .line 478
    const/4 v2, 0x0

    .line 479
    .local v2, "totalFramesCount":I
    const-wide/16 v3, 0x0

    .line 480
    .local v3, "maxFrameTimeNanos":J
    const/4 v5, 0x0

    .line 481
    .local v5, "missedFramesCount":I
    const/4 v6, 0x0

    .line 482
    .local v6, "missedAppFramesCount":I
    const/4 v7, 0x0

    .line 483
    .local v7, "missedSfFramesCount":I
    const/4 v8, 0x0

    .line 484
    .local v8, "maxSuccessiveMissedFramesCount":I
    const/4 v9, 0x0

    .line 486
    .local v9, "successiveMissedFramesCount":I
    const/4 v10, 0x0

    move-wide v14, v3

    move v12, v5

    move v13, v6

    move v11, v9

    move v3, v10

    move v10, v7

    .end local v5    # "missedFramesCount":I
    .end local v6    # "missedAppFramesCount":I
    .end local v7    # "missedSfFramesCount":I
    .end local v9    # "successiveMissedFramesCount":I
    .local v3, "i":I
    .local v10, "missedSfFramesCount":I
    .local v11, "successiveMissedFramesCount":I
    .local v12, "missedFramesCount":I
    .local v13, "missedAppFramesCount":I
    .local v14, "maxFrameTimeNanos":J
    :goto_21
    iget-object v4, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_11a

    .line 487
    iget-object v4, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 488
    .local v4, "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    iget-boolean v5, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v5, :cond_3b

    iget-boolean v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    if-eqz v5, :cond_3b

    move v5, v1

    goto :goto_3c

    :cond_3b
    const/4 v5, 0x0

    .line 489
    .local v5, "isFirstDrawn":Z
    :goto_3c
    if-eqz v5, :cond_40

    .line 490
    goto/16 :goto_115

    .line 492
    :cond_40
    iget-wide v6, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    move/from16 v18, v2

    .end local v2    # "totalFramesCount":I
    .local v18, "totalFramesCount":I
    iget-wide v1, v0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v1, v6, v1

    if-lez v1, :cond_4c

    .line 493
    goto/16 :goto_11c

    .line 495
    :cond_4c
    iget-boolean v1, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    const-string v2, "FrameTracker"

    if-eqz v1, :cond_e4

    .line 496
    add-int/lit8 v1, v18, 0x1

    .line 497
    .end local v18    # "totalFramesCount":I
    .local v1, "totalFramesCount":I
    const/4 v6, 0x0

    .line 498
    .local v6, "missedFrame":Z
    iget v7, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_76

    .line 499
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missed App frame:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    add-int/lit8 v13, v13, 0x1

    .line 501
    const/4 v6, 0x1

    .line 503
    :cond_76
    iget v7, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    const/4 v9, 0x1

    and-int/2addr v7, v9

    if-nez v7, :cond_94

    iget v7, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_94

    iget v7, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_94

    iget v7, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v7, v7, 0x20

    if-nez v7, :cond_94

    iget v7, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_af

    .line 508
    :cond_94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missed SF frame:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    add-int/lit8 v10, v10, 0x1

    .line 510
    const/4 v6, 0x1

    .line 512
    :cond_af
    if-eqz v6, :cond_b6

    .line 513
    add-int/lit8 v12, v12, 0x1

    .line 514
    add-int/lit8 v11, v11, 0x1

    goto :goto_bc

    .line 516
    :cond_b6
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 518
    const/4 v7, 0x0

    move v11, v7

    .line 522
    :goto_bc
    iget-boolean v7, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v7, :cond_e0

    iget-boolean v7, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-nez v7, :cond_e0

    .line 523
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing HWUI jank callback for vsyncId: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v9, v5

    move/from16 v17, v6

    .end local v5    # "isFirstDrawn":Z
    .end local v6    # "missedFrame":Z
    .local v9, "isFirstDrawn":Z
    .local v17, "missedFrame":Z
    iget-wide v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7

    .line 522
    .end local v9    # "isFirstDrawn":Z
    .end local v17    # "missedFrame":Z
    .restart local v5    # "isFirstDrawn":Z
    .restart local v6    # "missedFrame":Z
    :cond_e0
    move v9, v5

    move/from16 v17, v6

    .end local v5    # "isFirstDrawn":Z
    .end local v6    # "missedFrame":Z
    .restart local v9    # "isFirstDrawn":Z
    .restart local v17    # "missedFrame":Z
    goto :goto_e7

    .line 495
    .end local v1    # "totalFramesCount":I
    .end local v9    # "isFirstDrawn":Z
    .end local v17    # "missedFrame":Z
    .restart local v5    # "isFirstDrawn":Z
    .restart local v18    # "totalFramesCount":I
    :cond_e4
    move v9, v5

    .end local v5    # "isFirstDrawn":Z
    .restart local v9    # "isFirstDrawn":Z
    move/from16 v1, v18

    .line 526
    .end local v18    # "totalFramesCount":I
    .restart local v1    # "totalFramesCount":I
    :goto_e7
    iget-boolean v5, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v5, :cond_114

    iget-boolean v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-eqz v5, :cond_114

    .line 527
    iget-wide v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 528
    .end local v14    # "maxFrameTimeNanos":J
    .local v5, "maxFrameTimeNanos":J
    iget-boolean v7, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    if-nez v7, :cond_111

    .line 529
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Missing SF jank callback for vsyncId: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v14, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .end local v4    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    .end local v9    # "isFirstDrawn":Z
    :cond_111
    move v2, v1

    move-wide v14, v5

    goto :goto_115

    .end local v5    # "maxFrameTimeNanos":J
    .restart local v14    # "maxFrameTimeNanos":J
    :cond_114
    move v2, v1

    .end local v1    # "totalFramesCount":I
    .restart local v2    # "totalFramesCount":I
    :goto_115
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x1

    goto/16 :goto_21

    :cond_11a
    move/from16 v18, v2

    .line 533
    .end local v2    # "totalFramesCount":I
    .end local v3    # "i":I
    .restart local v18    # "totalFramesCount":I
    :goto_11c
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 537
    .end local v8    # "maxSuccessiveMissedFramesCount":I
    .local v1, "maxSuccessiveMissedFramesCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v3}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#missedFrames"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x1000

    invoke-static {v3, v4, v2, v12}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v5}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#missedAppFrames"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2, v13}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v5}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#missedSfFrames"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2, v10}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v5}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#totalFrames"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v8, v18

    .end local v18    # "totalFramesCount":I
    .local v8, "totalFramesCount":I
    invoke-static {v3, v4, v2, v8}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v5}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#maxFrameTimeMillis"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v5, 0xf4240

    div-long v5, v14, v5

    long-to-int v5, v5

    invoke-static {v3, v4, v2, v5}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v5}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#maxSuccessiveMissedFrames"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 551
    long-to-int v2, v14

    invoke-direct {v0, v12, v2}, Lcom/android/internal/jank/FrameTracker;->shouldTriggerPerfetto(II)Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/jank/FrameTracker;->triggerPerfetto()V

    .line 554
    :cond_1dc
    iget-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->logToStatsd()Z

    move-result v2

    if-eqz v2, :cond_216

    .line 555
    iget-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    iget-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 557
    invoke-virtual {v2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getStatsdInteractionType()I

    move-result v5

    int-to-long v6, v8

    move v9, v5

    int-to-long v4, v12

    move-wide/from16 v16, v4

    int-to-long v4, v10

    move-wide/from16 v18, v4

    int-to-long v4, v13

    move-wide/from16 v20, v4

    int-to-long v4, v1

    .line 555
    move-wide/from16 v22, v4

    const/16 v2, 0x131

    move v4, v2

    move v5, v9

    move v2, v8

    .end local v8    # "totalFramesCount":I
    .restart local v2    # "totalFramesCount":I
    move-wide/from16 v8, v16

    move/from16 v24, v10

    move/from16 v25, v11

    .end local v10    # "missedSfFramesCount":I
    .end local v11    # "successiveMissedFramesCount":I
    .local v24, "missedSfFramesCount":I
    .local v25, "successiveMissedFramesCount":I
    move-wide v10, v14

    move/from16 v26, v12

    move/from16 v27, v13

    .end local v12    # "missedFramesCount":I
    .end local v13    # "missedAppFramesCount":I
    .local v26, "missedFramesCount":I
    .local v27, "missedAppFramesCount":I
    move-wide/from16 v12, v18

    move-wide/from16 v18, v14

    .end local v14    # "maxFrameTimeNanos":J
    .local v18, "maxFrameTimeNanos":J
    move-wide/from16 v14, v20

    move-wide/from16 v16, v22

    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;->write(IIJJJJJJ)V

    goto :goto_221

    .line 554
    .end local v2    # "totalFramesCount":I
    .end local v18    # "maxFrameTimeNanos":J
    .end local v24    # "missedSfFramesCount":I
    .end local v25    # "successiveMissedFramesCount":I
    .end local v26    # "missedFramesCount":I
    .end local v27    # "missedAppFramesCount":I
    .restart local v8    # "totalFramesCount":I
    .restart local v10    # "missedSfFramesCount":I
    .restart local v11    # "successiveMissedFramesCount":I
    .restart local v12    # "missedFramesCount":I
    .restart local v13    # "missedAppFramesCount":I
    .restart local v14    # "maxFrameTimeNanos":J
    :cond_216
    move v2, v8

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move-wide/from16 v18, v14

    .line 575
    .end local v8    # "totalFramesCount":I
    .end local v10    # "missedSfFramesCount":I
    .end local v11    # "successiveMissedFramesCount":I
    .end local v12    # "missedFramesCount":I
    .end local v13    # "missedAppFramesCount":I
    .end local v14    # "maxFrameTimeNanos":J
    .restart local v2    # "totalFramesCount":I
    .restart local v18    # "maxFrameTimeNanos":J
    .restart local v24    # "missedSfFramesCount":I
    .restart local v25    # "successiveMissedFramesCount":I
    .restart local v26    # "missedFramesCount":I
    .restart local v27    # "missedAppFramesCount":I
    :goto_221
    return-void
.end method

.method private blacklist hasReceivedCallbacksAfterEnd()Z
    .registers 10

    .line 433
    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 434
    return v1

    .line 436
    :cond_a
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_22

    :cond_15
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 437
    .local v0, "last":Lcom/android/internal/jank/FrameTracker$JankInfo;
    :goto_22
    if-nez v0, :cond_25

    .line 438
    return v1

    .line 440
    :cond_25
    iget-wide v3, v0, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    iget-wide v5, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_2e

    .line 441
    return v1

    .line 443
    :cond_2e
    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_35
    if-ltz v3, :cond_51

    .line 444
    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 445
    .local v4, "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    iget-wide v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    iget-wide v7, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_4e

    .line 446
    invoke-direct {p0, v4}, Lcom/android/internal/jank/FrameTracker;->callbacksReceived(Lcom/android/internal/jank/FrameTracker$JankInfo;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 447
    return v2

    .line 443
    .end local v4    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    :cond_4e
    add-int/lit8 v3, v3, -0x1

    goto :goto_35

    .line 451
    .end local v3    # "i":I
    :cond_51
    return v1
.end method

.method private blacklist isInRange(J)Z
    .registers 5
    .param p1, "vsyncId"    # J

    .line 398
    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private blacklist markEvent(Ljava/lang/String;)V
    .registers 5
    .param p1, "desc"    # Ljava/lang/String;

    .line 356
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "%s#%s"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 357
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 358
    return-void
.end method

.method private blacklist notifyCujEvent(Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    if-nez v0, :cond_5

    return-void

    .line 362
    :cond_5
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;->onCujEvents(Lcom/android/internal/jank/InteractionJankMonitor$Session;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method private blacklist processJankInfos()V
    .registers 2

    .line 455
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-eqz v0, :cond_5

    .line 456
    return-void

    .line 458
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->hasReceivedCallbacksAfterEnd()Z

    move-result v0

    if-nez v0, :cond_c

    .line 459
    return-void

    .line 461
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finish()V

    .line 462
    return-void
.end method

.method private blacklist shouldTriggerPerfetto(II)Z
    .registers 8
    .param p1, "missedFramesCount"    # I
    .param p2, "maxFrameTimeNanos"    # I

    .line 578
    iget v0, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdMissedFrames:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_b

    if-lt p1, v0, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    move v0, v3

    .line 580
    .local v0, "overMissedFramesThreshold":Z
    :goto_c
    iget-boolean v4, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v4, :cond_1c

    iget v4, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdFrameTimeMillis:I

    if-eq v4, v1, :cond_1c

    const v1, 0xf4240

    mul-int/2addr v4, v1

    if-lt p2, v4, :cond_1c

    move v1, v2

    goto :goto_1d

    :cond_1c
    move v1, v3

    .line 582
    .local v1, "overFrameTimeThreshold":Z
    :goto_1d
    if-nez v0, :cond_23

    if-eqz v1, :cond_22

    goto :goto_23

    :cond_22
    move v2, v3

    :cond_23
    :goto_23
    return v2
.end method


# virtual methods
.method public blacklist begin()V
    .registers 7

    .line 237
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-virtual {v1}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->getVsyncId()J

    move-result-wide v1

    .line 242
    .local v1, "currentVsync":J
    iget-boolean v3, p0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    if-eqz v3, :cond_11

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    goto :goto_12

    :cond_11
    move-wide v4, v1

    :goto_12
    iput-wide v4, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    .line 247
    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_2d

    .line 248
    if-eqz v3, :cond_23

    .line 249
    const-string v3, "FT#deferMonitoring"

    invoke-direct {p0, v3}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/jank/FrameTracker;->postTraceStartMarker()V

    goto :goto_26

    .line 256
    :cond_23
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->beginInternal()V

    .line 258
    :goto_26
    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, p0, v4}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;->addJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;Landroid/view/SurfaceControl;)V

    .line 260
    :cond_2d
    iget-boolean v3, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v3, :cond_38

    .line 261
    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v3, v4}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->addObserver(Landroid/graphics/HardwareRendererObserver;)V

    .line 263
    .end local v1    # "currentVsync":J
    :cond_38
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public blacklist cancel(I)Z
    .registers 10
    .param p1, "reason"    # I

    .line 328
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_10

    const/16 v1, 0x12

    if-ne p1, v1, :cond_e

    goto :goto_10

    :cond_e
    move v1, v2

    goto :goto_11

    :cond_10
    :goto_10
    move v1, v3

    .line 331
    .local v1, "cancelFromEnd":Z
    :goto_11
    :try_start_11
    iget-boolean v4, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v4, :cond_57

    iget-wide v4, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_20

    if-nez v1, :cond_20

    goto :goto_57

    .line 332
    :cond_20
    iput-boolean v3, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FT#cancel#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;)V

    .line 335
    iget-boolean v2, p0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    if-eqz v2, :cond_48

    .line 336
    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v4, v4

    invoke-static {v2, v4}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 340
    :cond_48
    invoke-virtual {p0}, Lcom/android/internal/jank/FrameTracker;->removeObservers()V

    .line 347
    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v2, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->setReason(I)V

    .line 350
    sget-object v2, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_CANCEL:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/jank/FrameTracker;->notifyCujEvent(Ljava/lang/String;)V

    .line 351
    monitor-exit v0

    return v3

    .line 331
    :cond_57
    :goto_57
    monitor-exit v0

    return v2

    .line 352
    .end local v1    # "cancelFromEnd":Z
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_11 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public blacklist end(I)Z
    .registers 9
    .param p1, "reason"    # I

    .line 290
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v1, :cond_75

    iget-wide v1, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_10

    goto :goto_75

    .line 292
    :cond_10
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-virtual {v1}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->getVsyncId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    .line 296
    iget-wide v5, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_26

    .line 297
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 298
    :cond_26
    cmp-long v1, v1, v5

    if-gtz v1, :cond_32

    .line 299
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 305
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FT#end#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v2, v2

    invoke-static {v1, v2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 307
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v1, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->setReason(I)V

    .line 313
    new-instance v1, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    iput-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    .line 317
    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 318
    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_END:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/jank/FrameTracker;->notifyCujEvent(Ljava/lang/String;)V

    .line 319
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 291
    :cond_75
    :goto_75
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 321
    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_78

    throw v1
.end method

.method synthetic blacklist lambda$end$0$com-android-internal-jank-FrameTracker()V
    .registers 3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force finish cuj because of time out:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finish()V

    .line 316
    return-void
.end method

.method public blacklist onFrameMetricsAvailable(I)V
    .registers 12
    .param p1, "dropCountSinceLastInvocation"    # I

    .line 403
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-eqz v1, :cond_9

    .line 405
    monitor-exit v0

    return-void

    .line 411
    :cond_9
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getMetric(I)J

    move-result-wide v1

    .line 412
    .local v1, "totalDurationNanos":J
    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getMetric(I)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-nez v3, :cond_22

    move v3, v4

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    .line 413
    .local v3, "isFirstFrame":Z
    :goto_23
    iget-object v5, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    .line 414
    invoke-virtual {v5}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getTiming()[J

    move-result-object v5

    aget-wide v5, v5, v4

    .line 416
    .local v5, "frameVsyncId":J
    invoke-direct {p0, v5, v6}, Lcom/android/internal/jank/FrameTracker;->isInRange(J)Z

    move-result v7

    if-nez v7, :cond_33

    .line 417
    monitor-exit v0

    return-void

    .line 419
    :cond_33
    invoke-direct {p0, v5, v6}, Lcom/android/internal/jank/FrameTracker;->findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v7

    .line 420
    .local v7, "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    if-eqz v7, :cond_40

    .line 421
    iput-boolean v4, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    .line 422
    iput-wide v1, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    .line 423
    iput-boolean v3, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    goto :goto_4a

    .line 425
    :cond_40
    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    long-to-int v8, v5

    invoke-static {v5, v6, v1, v2, v3}, Lcom/android/internal/jank/FrameTracker$JankInfo;->createFromHwuiCallback(JJZ)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 428
    :goto_4a
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->processJankInfos()V

    .line 429
    .end local v1    # "totalDurationNanos":J
    .end local v3    # "isFirstFrame":Z
    .end local v5    # "frameVsyncId":J
    .end local v7    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    monitor-exit v0

    .line 430
    return-void

    .line 429
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public blacklist onJankDataAvailable([Landroid/view/SurfaceControl$JankData;)V
    .registers 12
    .param p1, "jankData"    # [Landroid/view/SurfaceControl$JankData;

    .line 367
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-eqz v1, :cond_9

    .line 369
    monitor-exit v0

    return-void

    .line 372
    :cond_9
    array-length v1, p1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_3b

    aget-object v3, p1, v2

    .line 373
    .local v3, "jankStat":Landroid/view/SurfaceControl$JankData;
    iget-wide v4, v3, Landroid/view/SurfaceControl$JankData;->frameVsyncId:J

    invoke-direct {p0, v4, v5}, Lcom/android/internal/jank/FrameTracker;->isInRange(J)Z

    move-result v4

    if-nez v4, :cond_18

    .line 374
    goto :goto_38

    .line 376
    :cond_18
    iget-wide v4, v3, Landroid/view/SurfaceControl$JankData;->frameVsyncId:J

    invoke-direct {p0, v4, v5}, Lcom/android/internal/jank/FrameTracker;->findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v4

    .line 377
    .local v4, "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    if-eqz v4, :cond_28

    .line 378
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    .line 379
    iget v5, v3, Landroid/view/SurfaceControl$JankData;->jankType:I

    iput v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    goto :goto_38

    .line 381
    :cond_28
    iget-object v5, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    iget-wide v6, v3, Landroid/view/SurfaceControl$JankData;->frameVsyncId:J

    long-to-int v6, v6

    iget-wide v7, v3, Landroid/view/SurfaceControl$JankData;->frameVsyncId:J

    iget v9, v3, Landroid/view/SurfaceControl$JankData;->jankType:I

    .line 382
    invoke-static {v7, v8, v9}, Lcom/android/internal/jank/FrameTracker$JankInfo;->createFromSurfaceControlCallback(JI)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v7

    .line 381
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 372
    .end local v3    # "jankStat":Landroid/view/SurfaceControl$JankData;
    .end local v4    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 386
    :cond_3b
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->processJankInfos()V

    .line 387
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public blacklist postTraceStartMarker()V
    .registers 5

    .line 271
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->-$$Nest$fgetmChoreographer(Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;)Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method public blacklist removeObservers()V
    .registers 3

    .line 590
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;->removeJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;)V

    .line 591
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v0, :cond_19

    .line 593
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->removeObserver(Landroid/graphics/HardwareRendererObserver;)V

    .line 594
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    if-eqz v0, :cond_19

    .line 595
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {v1, v0}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 598
    :cond_19
    return-void
.end method

.method public blacklist triggerPerfetto()V
    .registers 3

    .line 604
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->trigger(Lcom/android/internal/jank/InteractionJankMonitor$Session;)V

    .line 605
    return-void
.end method
