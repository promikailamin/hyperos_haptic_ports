.class public Lcom/android/server/wm/SurfaceAnimationRunner;
.super Ljava/lang/Object;
.source "SurfaceAnimationRunner.java"


# instance fields
.field public final mAnimationHandler:Landroid/animation/AnimationHandler;

.field public mAnimationStartDeferred:Z

.field public final mAnimationThreadHandler:Landroid/os/Handler;

.field public final mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

.field public mApplyScheduled:Z

.field public final mApplyTransactionRunnable:Ljava/lang/Runnable;

.field public final mCancelLock:Ljava/lang/Object;

.field mChoreographer:Landroid/view/Choreographer;

.field public final mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mLock:Ljava/lang/Object;

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

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

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

.field public final mSurfaceAnimationHandler:Landroid/os/Handler;

.field public mVsyncId:J


# direct methods
.method public static synthetic $r8$lambda$4HjTEi9rHvKb9dyTlqKhf-hMeCM(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->lambda$onAnimationCancelled$3(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5ISSe_qbqIA2h88rI58ynmvQnhk(Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$DKosM7UOfSJrICBJ81Kf3xA2TMY(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->lambda$new$2()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$J8qWK9viBOQD6AtnEBV_FDPC-NA(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/SurfaceAnimationRunner;->lambda$startAnimationLocked$4(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QD_09yET6vZc7CzZGcNRe0Z_2EU(Lcom/android/server/wm/SurfaceAnimationRunner;Landroid/view/Choreographer$FrameData;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimations(Landroid/view/Choreographer$FrameData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rSMLySCWRN8MY7ZdHCaQcDy2620(Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransaction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAnimationHandler(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/animation/AnimationHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAnimationThreadHandler(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCancelLock(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrameTransaction(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;Landroid/view/SurfaceControl$Transaction;Landroid/os/PowerManagerInternal;)V
    .registers 9

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    .line 62
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationThreadHandler:Landroid/os/Handler;

    .line 63
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mSurfaceAnimationHandler:Landroid/os/Handler;

    .line 64
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyTransactionRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, -0x1

    .line 70
    iput-wide v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mVsyncId:J

    .line 72
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    .line 76
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    .line 80
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 105
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 108
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 109
    new-instance p3, Landroid/animation/AnimationHandler;

    invoke-direct {p3}, Landroid/animation/AnimationHandler;-><init>()V

    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationHandler:Landroid/animation/AnimationHandler;

    if-eqz p1, :cond_53

    goto :goto_5a

    .line 114
    :cond_53
    new-instance p1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-direct {p1, v0}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>(Landroid/view/Choreographer;)V

    .line 117
    :goto_5a
    invoke-virtual {p3, p1}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    if-eqz p2, :cond_60

    goto :goto_65

    .line 120
    :cond_60
    new-instance p2, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    :goto_65
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

    .line 121
    iput-object p4, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;Landroid/os/PowerManagerInternal;)V
    .registers 4

    .line 94
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/server/wm/SurfaceAnimationRunner;-><init>(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;Landroid/view/SurfaceControl$Transaction;Landroid/os/PowerManagerInternal;)V

    return-void
.end method


# virtual methods
.method public final applyTransaction()V
    .registers 7

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 315
    iget-wide v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mVsyncId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mVsyncId:J

    .line 319
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-wide v4, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mVsyncId:J

    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 321
    iput-wide v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mVsyncId:J

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    return-void
.end method

.method public final applyTransformation(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/view/SurfaceControl$Transaction;J)V
    .registers 5

    .line 268
    iget-object p0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    iget-object p1, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {p0, p2, p1, p3, p4}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V

    return-void
.end method

.method public final synthetic lambda$new$1()V
    .registers 2

    .line 106
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public final synthetic lambda$new$2()Landroid/animation/ValueAnimator;
    .registers 2

    .line 120
    new-instance v0, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    return-object v0
.end method

.method public final synthetic lambda$onAnimationCancelled$3(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 2

    .line 189
    iget-object p1, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 190
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransaction()V

    return-void
.end method

.method public final synthetic lambda$startAnimationLocked$4(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator;)V
    .registers 10

    .line 212
    iget-object p5, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    monitor-enter p5

    .line 213
    :try_start_3
    invoke-static {p1}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->-$$Nest$fgetmCancelled(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 214
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    .line 215
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-lez p2, :cond_16

    goto :goto_17

    :cond_16
    move-wide v0, v2

    .line 219
    :goto_17
    iget-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransformation(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/view/SurfaceControl$Transaction;J)V

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_24

    .line 221
    :cond_1f
    :goto_1f
    monitor-exit p5
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1d

    .line 224
    invoke-virtual {p0, p3, p4}, Lcom/android/server/wm/SurfaceAnimationRunner;->scheduleApplyTransaction(J)V

    return-void

    .line 221
    :goto_24
    :try_start_24
    monitor-exit p5
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_1d

    throw p0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 5

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 175
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_4a

    .line 178
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 179
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    monitor-exit v0

    return-void

    .line 182
    :cond_23
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    if-eqz v1, :cond_48

    .line 184
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_12

    const/4 v2, 0x1

    .line 186
    :try_start_36
    invoke-static {v1, v2}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->-$$Nest$fputmCancelled(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Z)V

    .line 187
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_45

    .line 188
    :try_start_3a
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mSurfaceAnimationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_12

    goto :goto_48

    :catchall_45
    move-exception p0

    .line 187
    :try_start_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw p0

    .line 193
    :cond_48
    :goto_48
    monitor-exit v0

    return-void

    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_12

    throw p0
.end method

.method public final scheduleApplyTransaction(J)V
    .registers 7

    .line 303
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    if-nez v0, :cond_12

    .line 304
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyTransactionRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 306
    iput-wide p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mVsyncId:J

    const/4 p1, 0x1

    .line 307
    iput-boolean p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    :cond_12
    return-void
.end method

.method public startAnimation(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .registers 7

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    .line 161
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-boolean p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    if-nez p1, :cond_26

    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 163
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    new-instance p2, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postVsyncCallback(Landroid/view/Choreographer$VsyncCallback;)V

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_2d

    :cond_26
    :goto_26
    const-wide/16 p1, 0x0

    .line 168
    invoke-virtual {p0, v1, p3, p1, p2}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransformation(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/view/SurfaceControl$Transaction;J)V

    .line 169
    monitor-exit v0

    return-void

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_24

    throw p0
.end method

.method public final startAnimationLocked(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;J)V
    .registers 11

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;->makeAnimator()Landroid/animation/ValueAnimator;

    move-result-object v4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 209
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    .line 210
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getDuration()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 211
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;J)V

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 227
    new-instance p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/SurfaceAnimationRunner$1;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    invoke-virtual {v4, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    iput-object v4, v3, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnim:Landroid/animation/ValueAnimator;

    .line 254
    iget-object p0, v2, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    iget-object p1, v3, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 257
    iget-object p0, v3, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {p0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->canSkipFirstFrame()Z

    move-result p0

    if-eqz p0, :cond_48

    .line 259
    iget-object p0, v2, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide p0

    const-wide/32 p2, 0xf4240

    div-long/2addr p0, p2

    invoke-virtual {v4, p0, p1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 264
    :cond_48
    iget-object p0, v2, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide p0

    invoke-virtual {v4, p0, p1}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    return-void
.end method

.method public final startAnimations(Landroid/view/Choreographer$FrameData;)V
    .registers 5

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 294
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_22

    .line 296
    :cond_f
    invoke-virtual {p1}, Landroid/view/Choreographer$FrameData;->getPreferredFrameTimeline()Landroid/view/Choreographer$FrameTimeline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Choreographer$FrameTimeline;->getVsyncId()J

    move-result-wide v1

    .line 297
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/SurfaceAnimationRunner;->startPendingAnimationsLocked(J)V

    .line 298
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_d

    .line 299
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    return-void

    .line 298
    :goto_22
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_d

    throw p0
.end method

.method public final startPendingAnimationsLocked(J)V
    .registers 5

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 199
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimationLocked(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 201
    :cond_18
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method
