.class Lcom/android/server/wm/SurfaceAnimationRunner;
.super Ljava/lang/Object;
.source "SurfaceAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;,
        Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;,
        Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    }
.end annotation


# instance fields
.field private final mAnimationHandler:Landroid/animation/AnimationHandler;

.field private mAnimationStartDeferred:Z

.field private final mAnimationThreadHandler:Landroid/os/Handler;

.field private final mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

.field private mApplyScheduled:Z

.field private final mApplyTransactionRunnable:Ljava/lang/Runnable;

.field private final mCancelLock:Ljava/lang/Object;

.field mChoreographer:Landroid/view/Choreographer;

.field private final mEdgeExtensionExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mEdgeExtensionLock:Ljava/lang/Object;

.field private final mEdgeExtensions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mLock:Ljava/lang/Object;

.field final mPendingAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field final mPreProcessingAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field final mRunningAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceAnimationHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$8BiFaxyZI4fLPiCLISxqvwS2SH0(Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransaction()V

    return-void
.end method

.method public static synthetic $r8$lambda$u1Jh9N5fY2HKNOPRKT57txOp8-s(Lcom/android/server/wm/SurfaceAnimationRunner;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimations(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAnimationHandler(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/animation/AnimationHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAnimationThreadHandler(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCancelLock(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameTransaction(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method constructor <init>(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;Landroid/view/SurfaceControl$Transaction;Landroid/os/PowerManagerInternal;)V
    .registers 9
    .param p1, "callbackProvider"    # Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .param p2, "animatorFactory"    # Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;
    .param p3, "frameTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p4, "powerManagerInternal"    # Landroid/os/PowerManagerInternal;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionLock:Ljava/lang/Object;

    .line 81
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationThreadHandler:Landroid/os/Handler;

    .line 82
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mSurfaceAnimationHandler:Landroid/os/Handler;

    .line 83
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyTransactionRunnable:Ljava/lang/Runnable;

    .line 94
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionExecutor:Ljava/util/concurrent/ExecutorService;

    .line 96
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    .line 100
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    .line 104
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 112
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    .line 130
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 132
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 133
    new-instance v0, Landroid/animation/AnimationHandler;

    invoke-direct {v0}, Landroid/animation/AnimationHandler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationHandler:Landroid/animation/AnimationHandler;

    .line 134
    if-eqz p1, :cond_65

    .line 135
    move-object v1, p1

    goto :goto_6c

    .line 136
    :cond_65
    new-instance v1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-direct {v1, v2}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>(Landroid/view/Choreographer;)V

    .line 134
    :goto_6c
    invoke-virtual {v0, v1}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    .line 137
    if-eqz p2, :cond_73

    .line 138
    move-object v0, p2

    goto :goto_78

    .line 139
    :cond_73
    new-instance v0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    :goto_78
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

    .line 140
    iput-object p4, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 141
    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;Landroid/os/PowerManagerInternal;)V
    .registers 5
    .param p2, "powerManagerInternal"    # Landroid/os/PowerManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Landroid/os/PowerManagerInternal;",
            ")V"
        }
    .end annotation

    .line 122
    .local p1, "transactionFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Transaction;>;"
    nop

    .line 123
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 122
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0, p2}, Lcom/android/server/wm/SurfaceAnimationRunner;-><init>(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;Landroid/view/SurfaceControl$Transaction;Landroid/os/PowerManagerInternal;)V

    .line 124
    return-void
.end method

.method private applyTransaction()V
    .registers 4

    .line 380
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 381
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    .line 384
    return-void
.end method

.method private applyTransformation(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/view/SurfaceControl$Transaction;J)V
    .registers 7
    .param p1, "a"    # Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "currentPlayTime"    # J

    .line 353
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    iget-object v1, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {v0, p2, v1, p3, p4}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V

    .line 354
    return-void
.end method

.method private createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .registers 11
    .param p1, "leash"    # Landroid/view/SurfaceControl;
    .param p2, "edgeBounds"    # Landroid/graphics/Rect;
    .param p3, "extensionRect"    # Landroid/graphics/Rect;
    .param p4, "xPos"    # I
    .param p5, "yPos"    # I
    .param p6, "layerName"    # Ljava/lang/String;
    .param p7, "startTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 447
    const-wide/16 v0, 0x20

    const-string v2, "createExtensionSurface"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 448
    invoke-direct/range {p0 .. p7}, Lcom/android/server/wm/SurfaceAnimationRunner;->doCreateExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V

    .line 450
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 451
    return-void
.end method

.method private doCreateExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .registers 24
    .param p1, "leash"    # Landroid/view/SurfaceControl;
    .param p2, "edgeBounds"    # Landroid/graphics/Rect;
    .param p3, "extensionRect"    # Landroid/graphics/Rect;
    .param p4, "xPos"    # I
    .param p5, "yPos"    # I
    .param p6, "layerName"    # Ljava/lang/String;
    .param p7, "startTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 456
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p7

    new-instance v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-direct {v0, v2}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 458
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 459
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 460
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 461
    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    move-result-object v0

    .line 462
    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 463
    invoke-virtual {v0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$LayerCaptureArgs;

    move-result-object v7

    .line 464
    .local v7, "captureArgs":Landroid/view/SurfaceControl$LayerCaptureArgs;
    nop

    .line 465
    invoke-static {v7}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v8

    .line 467
    .local v8, "edgeBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-nez v8, :cond_41

    .line 471
    const-string v0, "SurfaceAnimationRunner"

    const-string v6, "Failed to create edge extension - edge buffer is null"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void

    .line 476
    :cond_41
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 477
    move-object/from16 v9, p6

    invoke-virtual {v0, v9}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 478
    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v10, "DefaultTransitionHandler#startAnimation"

    .line 479
    invoke-virtual {v0, v10}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 480
    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v10

    .line 484
    .local v10, "edgeExtensionLayer":Landroid/view/SurfaceControl;
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, v10}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceControl;)V

    move-object v11, v0

    .line 485
    .local v11, "surface":Landroid/view/Surface;
    invoke-virtual {v8}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 486
    invoke-virtual {v8}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v12

    .line 485
    invoke-virtual {v11, v0, v12}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    .line 487
    invoke-virtual {v11}, Landroid/view/Surface;->release()V

    .line 489
    invoke-direct {v1, v3, v4}, Lcom/android/server/wm/SurfaceAnimationRunner;->getScaleXForExtensionSurface(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v12

    .line 490
    .local v12, "scaleX":F
    invoke-direct {v1, v3, v4}, Lcom/android/server/wm/SurfaceAnimationRunner;->getScaleYForExtensionSurface(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v13

    .line 492
    .local v13, "scaleY":F
    iget-object v14, v1, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionLock:Ljava/lang/Object;

    monitor-enter v14

    .line 493
    :try_start_89
    iget-object v0, v1, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    .line 496
    invoke-virtual {v5, v10}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 497
    monitor-exit v14

    return-void

    .line 500
    :cond_96
    invoke-virtual {v5, v10, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 501
    invoke-virtual {v5, v10, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 502
    const/high16 v0, -0x80000000

    invoke-virtual {v5, v10, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    :try_end_a1
    .catchall {:try_start_89 .. :try_end_a1} :catchall_bb

    .line 503
    move/from16 v15, p4

    int-to-float v0, v15

    move/from16 v6, p5

    int-to-float v3, v6

    :try_start_a7
    invoke-virtual {v5, v10, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 504
    const/4 v0, 0x1

    invoke-virtual {v5, v10, v0}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 506
    iget-object v0, v1, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    monitor-exit v14

    .line 508
    return-void

    .line 507
    :catchall_bb
    move-exception v0

    move/from16 v15, p4

    move/from16 v6, p5

    :goto_c0
    monitor-exit v14
    :try_end_c1
    .catchall {:try_start_a7 .. :try_end_c1} :catchall_c2

    throw v0

    :catchall_c2
    move-exception v0

    goto :goto_c0
.end method

.method private edgeExtendWindow(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)V
    .registers 28
    .param p1, "leash"    # Landroid/view/SurfaceControl;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "a"    # Landroid/view/animation/Animation;
    .param p4, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 388
    move-object/from16 v0, p3

    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    .line 389
    .local v1, "transformationAtStart":Landroid/view/animation/Transformation;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    .line 390
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    .line 391
    .local v2, "transformationAtEnd":Landroid/view/animation/Transformation;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v2}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    .line 395
    nop

    .line 396
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    move-result-object v4

    .line 395
    invoke-static {v3, v4}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v3

    .line 398
    .local v3, "maxExtensionInsets":Landroid/graphics/Insets;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 399
    .local v12, "targetSurfaceHeight":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 401
    .local v13, "targetSurfaceWidth":I
    iget v4, v3, Landroid/graphics/Insets;->left:I

    const/4 v5, 0x1

    const/4 v14, 0x0

    if-gez v4, :cond_53

    .line 402
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v14, v14, v5, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v17, v4

    .line 403
    .local v17, "edgeBounds":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Insets;->left:I

    neg-int v6, v6

    invoke-direct {v4, v14, v14, v6, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v18, v4

    .line 405
    .local v18, "extensionRect":Landroid/graphics/Rect;
    iget v4, v3, Landroid/graphics/Insets;->left:I

    .line 406
    .local v4, "xPos":I
    const/4 v6, 0x0

    .line 407
    .local v6, "yPos":I
    const/16 v20, 0x0

    const-string v21, "Left Edge Extension"

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v19, v4

    move-object/from16 v22, p4

    invoke-direct/range {v15 .. v22}, Lcom/android/server/wm/SurfaceAnimationRunner;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V

    .line 411
    .end local v4    # "xPos":I
    .end local v6    # "yPos":I
    .end local v17    # "edgeBounds":Landroid/graphics/Rect;
    .end local v18    # "extensionRect":Landroid/graphics/Rect;
    :cond_53
    iget v4, v3, Landroid/graphics/Insets;->top:I

    if-gez v4, :cond_7a

    .line 412
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v14, v14, v13, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v17, v4

    .line 413
    .restart local v17    # "edgeBounds":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Insets;->top:I

    neg-int v5, v5

    invoke-direct {v4, v14, v14, v13, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v18, v4

    .line 415
    .restart local v18    # "extensionRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 416
    .restart local v4    # "xPos":I
    iget v5, v3, Landroid/graphics/Insets;->top:I

    .line 417
    .local v5, "yPos":I
    const/16 v19, 0x0

    const-string v21, "Top Edge Extension"

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v20, v5

    move-object/from16 v22, p4

    invoke-direct/range {v15 .. v22}, Lcom/android/server/wm/SurfaceAnimationRunner;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V

    .line 421
    .end local v4    # "xPos":I
    .end local v5    # "yPos":I
    .end local v17    # "edgeBounds":Landroid/graphics/Rect;
    .end local v18    # "extensionRect":Landroid/graphics/Rect;
    :cond_7a
    iget v4, v3, Landroid/graphics/Insets;->right:I

    if-gez v4, :cond_9b

    .line 422
    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v4, v13, -0x1

    invoke-direct {v6, v4, v14, v13, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 424
    .local v6, "edgeBounds":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Insets;->right:I

    neg-int v4, v4

    invoke-direct {v7, v14, v14, v4, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 426
    .local v7, "extensionRect":Landroid/graphics/Rect;
    move v8, v13

    .line 427
    .local v8, "xPos":I
    const/4 v15, 0x0

    .line 428
    .local v15, "yPos":I
    const/4 v9, 0x0

    const-string v10, "Right Edge Extension"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v11, p4

    invoke-direct/range {v4 .. v11}, Lcom/android/server/wm/SurfaceAnimationRunner;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V

    .line 432
    .end local v6    # "edgeBounds":Landroid/graphics/Rect;
    .end local v7    # "extensionRect":Landroid/graphics/Rect;
    .end local v8    # "xPos":I
    .end local v15    # "yPos":I
    :cond_9b
    iget v4, v3, Landroid/graphics/Insets;->bottom:I

    if-gez v4, :cond_bd

    .line 433
    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v4, v12, -0x1

    invoke-direct {v6, v14, v4, v13, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 435
    .restart local v6    # "edgeBounds":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Insets;->bottom:I

    neg-int v4, v4

    invoke-direct {v7, v14, v14, v13, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 437
    .restart local v7    # "extensionRect":Landroid/graphics/Rect;
    iget v14, v3, Landroid/graphics/Insets;->left:I

    .line 438
    .local v14, "xPos":I
    move v9, v12

    .line 439
    .local v9, "yPos":I
    const-string v10, "Bottom Edge Extension"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v8, v14

    move-object/from16 v11, p4

    invoke-direct/range {v4 .. v11}, Lcom/android/server/wm/SurfaceAnimationRunner;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V

    .line 442
    .end local v6    # "edgeBounds":Landroid/graphics/Rect;
    .end local v7    # "extensionRect":Landroid/graphics/Rect;
    .end local v9    # "yPos":I
    .end local v14    # "xPos":I
    :cond_bd
    return-void
.end method

.method private getScaleXForExtensionSurface(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .registers 5
    .param p1, "edgeBounds"    # Landroid/graphics/Rect;
    .param p2, "extensionRect"    # Landroid/graphics/Rect;

    .line 511
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 513
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 515
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 517
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 520
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected edgeBounds and extensionRect widths"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getScaleYForExtensionSurface(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .registers 5
    .param p1, "edgeBounds"    # Landroid/graphics/Rect;
    .param p2, "extensionRect"    # Landroid/graphics/Rect;

    .line 524
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 526
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 528
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 530
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 533
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected edgeBounds and extensionRect heights"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requiresEdgeExtension(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;)Z
    .registers 3
    .param p1, "a"    # Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 247
    invoke-interface {p1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->asWindowAnimationSpec()Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->asWindowAnimationSpec()Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimationSpec;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private scheduleApplyTransaction()V
    .registers 5

    .line 372
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    if-nez v0, :cond_10

    .line 373
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyTransactionRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    .line 377
    :cond_10
    return-void
.end method

.method private startAnimationLocked(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 7
    .param p1, "a"    # Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 291
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;->makeAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 294
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    .line 295
    iget-object v1, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 296
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 312
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/SurfaceAnimationRunner$1;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 338
    iput-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnim:Landroid/animation/ValueAnimator;

    .line 339
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 342
    iget-object v1, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->canSkipFirstFrame()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 344
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 349
    :cond_45
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    .line 350
    return-void
.end method

.method private startAnimations(J)V
    .registers 5
    .param p1, "frameTimeNanos"    # J

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 364
    monitor-exit v0

    return-void

    .line 366
    :cond_d
    invoke-direct {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->startPendingAnimationsLocked()V

    .line 367
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_18

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    .line 369
    return-void

    .line 367
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private startPendingAnimationsLocked()V
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 284
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-direct {p0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimationLocked(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    .line 283
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 286
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 287
    return-void
.end method


# virtual methods
.method continueStartingAnimations()V
    .registers 9

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    .line 163
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 165
    const-wide/16 v1, 0x0

    .line 166
    .local v1, "maxDuration":J
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_20
    if-ltz v3, :cond_38

    .line 167
    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object v4, v4, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v4}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getDuration()J

    move-result-wide v4

    .line 168
    .local v4, "animDuration":J
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-wide v1, v6

    .line 166
    .end local v4    # "animDuration":J
    add-int/lit8 v3, v3, -0x1

    goto :goto_20

    .line 170
    .end local v3    # "i":I
    :cond_38
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/android/server/am/SmartPowerServiceStub;->onAppTransitionStartLocked(J)V

    .line 172
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    new-instance v4, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    invoke-virtual {v3, v4}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 174
    .end local v1    # "maxDuration":J
    :cond_49
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method deferStartingAnimations()V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    .line 152
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method synthetic lambda$new$0$com-android-server-wm-SurfaceAnimationRunner()V
    .registers 2

    .line 130
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method synthetic lambda$new$1$com-android-server-wm-SurfaceAnimationRunner()Landroid/animation/ValueAnimator;
    .registers 2

    .line 139
    new-instance v0, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    return-object v0
.end method

.method synthetic lambda$onAnimationCancelled$3$com-android-server-wm-SurfaceAnimationRunner(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 4
    .param p1, "anim"    # Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 268
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    instance-of v0, v0, Lcom/android/server/wm/WindowAnimationSpec;

    if-eqz v0, :cond_19

    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    check-cast v0, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimationSpec;->mActivityThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    if-eqz v0, :cond_19

    .line 270
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    check-cast v0, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimationSpec;->mActivityThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 271
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowAnimatorHelper;->destoryMiuiActivityThumbnailLeash(Landroid/view/SurfaceControl$Transaction;)V

    .line 274
    :cond_19
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 275
    invoke-direct {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransaction()V

    .line 276
    return-void
.end method

.method synthetic lambda$startAnimation$2$com-android-server-wm-SurfaceAnimationRunner(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 10
    .param p1, "a"    # Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .param p2, "animationLeash"    # Landroid/view/SurfaceControl;
    .param p3, "runningAnim"    # Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 195
    invoke-interface {p1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->asWindowAnimationSpec()Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v0

    .line 197
    .local v0, "animationSpec":Lcom/android/server/wm/WindowAnimationSpec;
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 198
    .local v1, "edgeExtensionCreationTransaction":Landroid/view/SurfaceControl$Transaction;
    nop

    .line 199
    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimationSpec;->getRootTaskBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimationSpec;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    .line 198
    invoke-direct {p0, p2, v2, v3, v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->edgeExtendWindow(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)V

    .line 202
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 204
    :try_start_18
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p3, :cond_5e

    .line 209
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_60

    .line 210
    :try_start_23
    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 211
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 213
    :cond_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_5b

    .line 215
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-boolean v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    if-nez v3, :cond_5e

    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 219
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v3

    .line 220
    invoke-interface {p1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getDuration()J

    move-result-wide v4

    .line 219
    invoke-interface {v3, v4, v5, p2}, Lcom/android/server/am/SmartPowerServiceStub;->onWindowAnimationStartLocked(JLandroid/view/SurfaceControl;)V

    .line 222
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    new-instance v4, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    invoke-virtual {v3, v4}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_5a
    .catchall {:try_start_2f .. :try_end_5a} :catchall_60

    goto :goto_5e

    .line 213
    :catchall_5b
    move-exception v4

    :try_start_5c
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    .end local v0    # "animationSpec":Lcom/android/server/wm/WindowAnimationSpec;
    .end local v1    # "edgeExtensionCreationTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local p0    # "this":Lcom/android/server/wm/SurfaceAnimationRunner;
    .end local p1    # "a":Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .end local p2    # "animationLeash":Landroid/view/SurfaceControl;
    .end local p3    # "runningAnim":Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    :try_start_5d
    throw v4

    .line 225
    .restart local v0    # "animationSpec":Lcom/android/server/wm/WindowAnimationSpec;
    .restart local v1    # "edgeExtensionCreationTransaction":Landroid/view/SurfaceControl$Transaction;
    .restart local p0    # "this":Lcom/android/server/wm/SurfaceAnimationRunner;
    .restart local p1    # "a":Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .restart local p2    # "animationLeash":Landroid/view/SurfaceControl;
    .restart local p3    # "runningAnim":Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    :cond_5e
    :goto_5e
    monitor-exit v2

    .line 226
    return-void

    .line 225
    :catchall_60
    move-exception v3

    monitor-exit v2
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_60

    throw v3
.end method

.method synthetic lambda$startAnimationLocked$4$com-android-server-wm-SurfaceAnimationRunner(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 10
    .param p1, "a"    # Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    .param p2, "anim"    # Landroid/animation/ValueAnimator;
    .param p3, "animation"    # Landroid/animation/ValueAnimator;

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_3
    invoke-static {p1}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->-$$Nest$fgetmCancelled(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 299
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    .line 300
    .local v1, "duration":J
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v3

    .line 301
    .local v3, "currentPlayTime":J
    cmp-long v5, v3, v1

    if-lez v5, :cond_16

    .line 302
    move-wide v3, v1

    .line 304
    :cond_16
    iget-object v5, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, p1, v5, v3, v4}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransformation(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/view/SurfaceControl$Transaction;J)V

    .line 306
    .end local v1    # "duration":J
    .end local v3    # "currentPlayTime":J
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_20

    .line 309
    invoke-direct {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->scheduleApplyTransaction()V

    .line 310
    return-void

    .line 306
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 6
    .param p1, "leash"    # Landroid/view/SurfaceControl;

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 253
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    monitor-exit v0

    return-void

    .line 256
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 257
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    monitor-exit v0

    return-void

    .line 260
    :cond_21
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 261
    .local v1, "anim":Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    if-eqz v1, :cond_46

    .line 262
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_48

    .line 264
    const/4 v3, 0x1

    :try_start_34
    invoke-static {v1, v3}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->-$$Nest$fputmCancelled(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Z)V

    .line 265
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_43

    .line 266
    :try_start_38
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mSurfaceAnimationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_48

    goto :goto_46

    .line 265
    :catchall_43
    move-exception v3

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    .end local p0    # "this":Lcom/android/server/wm/SurfaceAnimationRunner;
    .end local p1    # "leash":Landroid/view/SurfaceControl;
    :try_start_45
    throw v3

    .line 278
    .end local v1    # "anim":Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    .restart local p0    # "this":Lcom/android/server/wm/SurfaceAnimationRunner;
    .restart local p1    # "leash":Landroid/view/SurfaceControl;
    :cond_46
    :goto_46
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method protected onAnimationLeashLost(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 556
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 558
    monitor-exit v0

    return-void

    .line 561
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 562
    .local v1, "edgeExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SurfaceControl;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 563
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    .line 564
    .local v3, "extension":Landroid/view/SurfaceControl;
    invoke-virtual {p2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 562
    nop

    .end local v3    # "extension":Landroid/view/SurfaceControl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 566
    .end local v2    # "i":I
    :cond_29
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    nop

    .end local v1    # "edgeExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SurfaceControl;>;"
    monitor-exit v0

    .line 568
    return-void

    .line 567
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method startAnimation(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .registers 11
    .param p1, "a"    # Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .param p2, "animationLeash"    # Landroid/view/SurfaceControl;
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p4, "finishCallback"    # Ljava/lang/Runnable;

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_3
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    .line 182
    .local v1, "runningAnim":Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    invoke-direct {p0, p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->requiresEdgeExtension(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;)Z

    move-result v2

    .line 184
    .local v2, "requiresEdgeExtension":Z
    if-eqz v2, :cond_2f

    .line 185
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v3, "extensionSurfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SurfaceControl;>;"
    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_5e

    .line 187
    :try_start_16
    iget-object v5, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_2c

    .line 190
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p1, p2, v1}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    invoke-virtual {p3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_5e

    goto :goto_2f

    .line 188
    :catchall_2c
    move-exception v5

    :try_start_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    .end local p0    # "this":Lcom/android/server/wm/SurfaceAnimationRunner;
    .end local p1    # "a":Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .end local p2    # "animationLeash":Landroid/view/SurfaceControl;
    .end local p3    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local p4    # "finishCallback":Ljava/lang/Runnable;
    :try_start_2e
    throw v5

    .line 229
    .end local v3    # "extensionSurfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SurfaceControl;>;"
    .restart local p0    # "this":Lcom/android/server/wm/SurfaceAnimationRunner;
    .restart local p1    # "a":Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .restart local p2    # "animationLeash":Landroid/view/SurfaceControl;
    .restart local p3    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local p4    # "finishCallback":Ljava/lang/Runnable;
    :cond_2f
    :goto_2f
    if-nez v2, :cond_5c

    .line 230
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-boolean v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    if-nez v3, :cond_57

    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 233
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v3

    .line 234
    invoke-interface {p1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getDuration()J

    move-result-wide v4

    .line 233
    invoke-interface {v3, v4, v5, p2}, Lcom/android/server/am/SmartPowerServiceStub;->onWindowAnimationStartLocked(JLandroid/view/SurfaceControl;)V

    .line 236
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    new-instance v4, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    invoke-virtual {v3, v4}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 241
    :cond_57
    const-wide/16 v3, 0x0

    invoke-direct {p0, v1, p3, v3, v4}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransformation(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/view/SurfaceControl$Transaction;J)V

    .line 243
    .end local v1    # "runningAnim":Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    .end local v2    # "requiresEdgeExtension":Z
    :cond_5c
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_2e .. :try_end_60} :catchall_5e

    throw v1
.end method
