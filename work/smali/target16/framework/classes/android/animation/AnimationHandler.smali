.class public Landroid/animation/AnimationHandler;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimationHandler$MyFrameCallbackProvider;,
        Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;,
        Landroid/animation/AnimationHandler$AnimationFrameCallback;
    }
.end annotation


# static fields
.field private static final blacklist LOCAL_LOGV:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "AnimationHandler"

.field public static final greylist-max-o sAnimatorHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sAnimatorPausingEnabled:Z

.field private static blacklist sOverrideAnimatorPausingSystemProperty:Z

.field private static blacklist sTestHandler:Landroid/animation/AnimationHandler;


# instance fields
.field private final greylist-max-o mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAnimatorRequestors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCommitCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDelayedCallbackStartTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/animation/AnimationHandler$AnimationFrameCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEndAnimationFrameVsyncId:J

.field private final greylist-max-o mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private blacklist mLastAnimationFrameVsyncId:J

.field private greylist-max-o mListDirty:Z

.field private final blacklist mPausedAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPauser:Landroid/view/Choreographer$FrameCallback;

.field private blacklist mPendingEndAnimationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;


# direct methods
.method public static synthetic blacklist $r8$lambda$cI3rukYIb_VjDv2y_olauD4FmZA(Landroid/animation/AnimationHandler;Landroid/view/Choreographer;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/animation/AnimationHandler;->lambda$postEndAnimationCallback$1(Landroid/view/Choreographer;J)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$k47JLfNZQiEaSxXBr3Jcoem_yBc(Landroid/animation/AnimationHandler;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/animation/AnimationHandler;->lambda$new$0(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAnimationCallbacks(Landroid/animation/AnimationHandler;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcommitAnimationFrame(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/animation/AnimationHandler;->commitAnimationFrame(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoAnimationFrame(Landroid/animation/AnimationHandler;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/animation/AnimationHandler;->doAnimationFrame(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetProvider(Landroid/animation/AnimationHandler;)Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .registers 1

    invoke-direct {p0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    invoke-static {}, Landroid/animation/AnimationHandler;->isPauseBgAnimationsEnabledInSystemProperties()Z

    move-result v0

    sput-boolean v0, Landroid/animation/AnimationHandler;->sAnimatorPausingEnabled:Z

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Landroid/animation/AnimationHandler;->sOverrideAnimatorPausingSystemProperty:Z

    .line 113
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    .line 114
    const/4 v0, 0x0

    sput-object v0, Landroid/animation/AnimationHandler;->sTestHandler:Landroid/animation/AnimationHandler;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mPausedAnimators:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Landroid/animation/AnimationHandler$1;

    invoke-direct {v0, p0}, Landroid/animation/AnimationHandler$1;-><init>(Landroid/animation/AnimationHandler;)V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimationHandler;->mListDirty:Z

    .line 272
    new-instance v0, Landroid/animation/AnimationHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/animation/AnimationHandler$$ExternalSyntheticLambda0;-><init>(Landroid/animation/AnimationHandler;)V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mPauser:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method private greylist-max-o cleanUpList()V
    .registers 3

    .line 479
    iget-boolean v0, p0, Landroid/animation/AnimationHandler;->mListDirty:Z

    if-eqz v0, :cond_21

    .line 480
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_1e

    .line 481
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 482
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 480
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 485
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimationHandler;->mListDirty:Z

    .line 487
    :cond_21
    return-void
.end method

.method private greylist-max-o commitAnimationFrame(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V
    .registers 5

    .line 419
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    .line 420
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 421
    invoke-interface {p1, p2, p3}, Landroid/animation/AnimationHandler$AnimationFrameCallback;->commitAnimationFrame(J)V

    .line 422
    iget-object p2, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 424
    :cond_18
    return-void
.end method

.method private greylist-max-o doAnimationFrame(J)V
    .registers 10

    .line 396
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 397
    iget-object v2, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 398
    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_38

    .line 399
    iget-object v4, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimationHandler$AnimationFrameCallback;

    .line 400
    if-nez v4, :cond_18

    .line 401
    goto :goto_35

    .line 403
    :cond_18
    invoke-direct {p0, v4, v0, v1}, Landroid/animation/AnimationHandler;->isCallbackDue(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 404
    invoke-interface {v4, p1, p2}, Landroid/animation/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    .line 405
    iget-object v5, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 406
    invoke-direct {p0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v5

    new-instance v6, Landroid/animation/AnimationHandler$2;

    invoke-direct {v6, p0, v4}, Landroid/animation/AnimationHandler$2;-><init>(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    invoke-interface {v5, v6}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->postCommitCallback(Ljava/lang/Runnable;)V

    .line 398
    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 415
    :cond_38
    invoke-direct {p0}, Landroid/animation/AnimationHandler;->cleanUpList()V

    .line 416
    return-void
.end method

.method public static greylist-max-o getAnimationCount()I
    .registers 1

    .line 448
    sget-object v0, Landroid/animation/AnimationHandler;->sTestHandler:Landroid/animation/AnimationHandler;

    .line 449
    if-nez v0, :cond_c

    .line 450
    sget-object v0, Landroid/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimationHandler;

    .line 452
    :cond_c
    if-nez v0, :cond_10

    .line 453
    const/4 v0, 0x0

    return v0

    .line 455
    :cond_10
    invoke-direct {v0}, Landroid/animation/AnimationHandler;->getCallbackSize()I

    move-result v0

    return v0
.end method

.method private greylist-max-o getCallbackSize()I
    .registers 4

    .line 490
    nop

    .line 491
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 492
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_a
    if-ltz v0, :cond_19

    .line 493
    iget-object v2, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 494
    add-int/lit8 v1, v1, 0x1

    .line 492
    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 497
    :cond_19
    return v1
.end method

.method public static greylist-max-o getFrameDelay()J
    .registers 2

    .line 463
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-direct {v0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist-max-o getInstance()Landroid/animation/AnimationHandler;
    .registers 2

    .line 118
    sget-object v0, Landroid/animation/AnimationHandler;->sTestHandler:Landroid/animation/AnimationHandler;

    if-eqz v0, :cond_7

    .line 119
    sget-object v0, Landroid/animation/AnimationHandler;->sTestHandler:Landroid/animation/AnimationHandler;

    return-object v0

    .line 121
    :cond_7
    sget-object v0, Landroid/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimationHandler;

    .line 122
    if-nez v0, :cond_1b

    .line 123
    new-instance v0, Landroid/animation/AnimationHandler;

    invoke-direct {v0}, Landroid/animation/AnimationHandler;-><init>()V

    .line 124
    sget-object v1, Landroid/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 126
    :cond_1b
    return-object v0
.end method

.method private greylist-max-o getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .registers 3

    .line 303
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    if-nez v0, :cond_c

    .line 304
    new-instance v0, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;-><init>(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler-IA;)V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 306
    :cond_c
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    return-object v0
.end method

.method private greylist-max-o isCallbackDue(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)Z
    .registers 8

    .line 433
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 434
    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 435
    return v1

    .line 437
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v2, p2

    if-gez p2, :cond_1a

    .line 438
    iget-object p2, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    return v1

    .line 441
    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method private static blacklist isPauseBgAnimationsEnabledInSystemProperties()Z
    .registers 2

    .line 147
    sget-boolean v0, Landroid/animation/AnimationHandler;->sOverrideAnimatorPausingSystemProperty:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Landroid/animation/AnimationHandler;->sAnimatorPausingEnabled:Z

    return v0

    .line 148
    :cond_7
    nop

    .line 149
    const-string v0, "framework.pause_bg_animations.enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 148
    return v0
.end method

.method private synthetic blacklist lambda$new$0(J)V
    .registers 7

    .line 273
    iget-object p1, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 275
    return-void

    .line 277
    :cond_9
    const/4 p1, 0x0

    :goto_a
    iget-object p2, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3b

    .line 278
    iget-object p2, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimationHandler$AnimationFrameCallback;

    .line 279
    instance-of v0, p2, Landroid/animation/Animator;

    if-eqz v0, :cond_38

    .line 280
    check-cast p2, Landroid/animation/Animator;

    .line 281
    invoke-virtual {p2}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_38

    .line 282
    invoke-virtual {p2}, Landroid/animation/Animator;->isPaused()Z

    move-result v0

    if-nez v0, :cond_38

    .line 283
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mPausedAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {p2}, Landroid/animation/Animator;->pause()V

    .line 277
    :cond_38
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 288
    :cond_3b
    return-void
.end method

.method private synthetic blacklist lambda$postEndAnimationCallback$1(Landroid/view/Choreographer;J)V
    .registers 4

    .line 378
    invoke-virtual {p1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/animation/AnimationHandler;->mEndAnimationFrameVsyncId:J

    .line 381
    :goto_6
    iget-object p1, p0, Landroid/animation/AnimationHandler;->mPendingEndAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1b

    .line 382
    iget-object p1, p0, Landroid/animation/AnimationHandler;->mPendingEndAnimationListeners:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    .line 384
    :cond_1b
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroid/animation/AnimationHandler;->mEndAnimationFrameVsyncId:J

    .line 385
    iput-wide p1, p0, Landroid/animation/AnimationHandler;->mLastAnimationFrameVsyncId:J

    .line 386
    return-void
.end method

.method public static blacklist removeRequestor(Ljava/lang/Object;)V
    .registers 3

    .line 181
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabledImpl(ZLjava/lang/Object;)V

    .line 185
    return-void
.end method

.method public static blacklist requestAnimatorsEnabled(ZLjava/lang/Object;)V
    .registers 3

    .line 197
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabledImpl(ZLjava/lang/Object;)V

    .line 198
    return-void
.end method

.method private blacklist requestAnimatorsEnabledImpl(ZLjava/lang/Object;)V
    .registers 8

    .line 201
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 202
    invoke-static {}, Landroid/animation/AnimationHandler;->isPauseBgAnimationsEnabledInSystemProperties()Z

    move-result v1

    invoke-static {v1}, Landroid/animation/AnimationHandler;->setAnimatorPausingEnabled(Z)V

    .line 203
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Ljava/util/ArrayList;

    monitor-enter v1

    .line 205
    if-eqz p1, :cond_45

    .line 207
    nop

    .line 208
    :try_start_13
    iget-object p1, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x0

    :goto_1c
    if-ltz p1, :cond_38

    .line 209
    iget-object v3, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 210
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 211
    if-ne v4, p2, :cond_2e

    .line 212
    move-object v2, v3

    goto :goto_35

    .line 213
    :cond_2e
    if-nez v4, :cond_35

    .line 215
    iget-object v3, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 208
    :cond_35
    :goto_35
    add-int/lit8 p1, p1, -0x1

    goto :goto_1c

    .line 218
    :cond_38
    if-nez v2, :cond_44

    .line 219
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 220
    iget-object p2, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_44
    goto :goto_67

    .line 223
    :cond_45
    iget-object p1, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_4d
    if-ltz p1, :cond_67

    .line 224
    iget-object v2, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 225
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 226
    if-eq v2, p2, :cond_5f

    if-nez v2, :cond_64

    .line 228
    :cond_5f
    iget-object v2, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 223
    :cond_64
    add-int/lit8 p1, p1, -0x1

    goto :goto_4d

    .line 233
    :cond_67
    :goto_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_13 .. :try_end_68} :catchall_8c

    .line 234
    sget-boolean p1, Landroid/animation/AnimationHandler;->sAnimatorPausingEnabled:Z

    if-nez p1, :cond_70

    .line 238
    invoke-direct {p0}, Landroid/animation/AnimationHandler;->resumeAnimators()V

    .line 239
    return-void

    .line 241
    :cond_70
    iget-object p1, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    .line 242
    if-eq v0, p1, :cond_8b

    .line 244
    if-nez p1, :cond_7e

    .line 246
    invoke-direct {p0}, Landroid/animation/AnimationHandler;->resumeAnimators()V

    goto :goto_8b

    .line 249
    :cond_7e
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object p2, p0, Landroid/animation/AnimationHandler;->mPauser:Landroid/view/Choreographer$FrameCallback;

    .line 250
    invoke-static {}, Landroid/animation/Animator;->getBackgroundPauseDelay()J

    move-result-wide v0

    .line 249
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 262
    :cond_8b
    :goto_8b
    return-void

    .line 233
    :catchall_8c
    move-exception p1

    :try_start_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw p1
.end method

.method private blacklist resumeAnimators()V
    .registers 3

    .line 265
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/AnimationHandler;->mPauser:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 266
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mPausedAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_11
    if-ltz v0, :cond_21

    .line 267
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mPausedAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->resume()V

    .line 266
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 269
    :cond_21
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mPausedAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 270
    return-void
.end method

.method public static blacklist setAnimatorPausingEnabled(Z)V
    .registers 1

    .line 159
    sput-boolean p0, Landroid/animation/AnimationHandler;->sAnimatorPausingEnabled:Z

    .line 160
    return-void
.end method

.method public static greylist-max-o setFrameDelay(J)V
    .registers 3

    .line 459
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-direct {v0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->setFrameDelay(J)V

    .line 460
    return-void
.end method

.method public static blacklist setOverrideAnimatorPausingSystemProperty(Z)V
    .registers 1

    .line 172
    sput-boolean p0, Landroid/animation/AnimationHandler;->sOverrideAnimatorPausingSystemProperty:Z

    .line 173
    return-void
.end method

.method public static blacklist setTestHandler(Landroid/animation/AnimationHandler;)Landroid/animation/AnimationHandler;
    .registers 2

    .line 135
    sget-object v0, Landroid/animation/AnimationHandler;->sTestHandler:Landroid/animation/AnimationHandler;

    .line 136
    sput-object p0, Landroid/animation/AnimationHandler;->sTestHandler:Landroid/animation/AnimationHandler;

    .line 137
    return-object v0
.end method


# virtual methods
.method public greylist-max-o addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V
    .registers 7

    .line 313
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11

    .line 314
    invoke-direct {p0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/AnimationHandler;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-interface {v0, v1}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 316
    :cond_11
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 317
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_1e
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_32

    .line 321
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_32
    return-void
.end method

.method public greylist-max-o addOneShotCommitCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V
    .registers 3

    .line 337
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 338
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_d
    return-void
.end method

.method greylist-max-o autoCancelBasedOn(Landroid/animation/ObjectAnimator;)V
    .registers 4

    .line 467
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_29

    .line 468
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimationHandler$AnimationFrameCallback;

    .line 469
    if-nez v1, :cond_15

    .line 470
    goto :goto_26

    .line 472
    :cond_15
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->shouldAutoCancel(Landroid/animation/AnimationHandler$AnimationFrameCallback;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 473
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 467
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 476
    :cond_29
    return-void
.end method

.method public blacklist getLastAnimationFrameVsyncId(J)J
    .registers 7

    .line 362
    iget-wide v0, p0, Landroid/animation/AnimationHandler;->mEndAnimationFrameVsyncId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_11

    iget-wide v0, p0, Landroid/animation/AnimationHandler;->mLastAnimationFrameVsyncId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 363
    iget-wide p1, p0, Landroid/animation/AnimationHandler;->mLastAnimationFrameVsyncId:J

    goto :goto_12

    :cond_11
    nop

    .line 362
    :goto_12
    return-wide p1
.end method

.method public blacklist postEndAnimationCallback(Ljava/lang/Runnable;)V
    .registers 4

    .line 368
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mPendingEndAnimationListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mPendingEndAnimationListeners:Ljava/util/ArrayList;

    .line 371
    :cond_b
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mPendingEndAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object p1, p0, Landroid/animation/AnimationHandler;->mPendingEndAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1a

    .line 373
    return-void

    .line 375
    :cond_1a
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    .line 376
    invoke-virtual {p1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/animation/AnimationHandler;->mLastAnimationFrameVsyncId:J

    .line 377
    invoke-direct {p0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimationHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/animation/AnimationHandler$$ExternalSyntheticLambda1;-><init>(Landroid/animation/AnimationHandler;Landroid/view/Choreographer;)V

    invoke-interface {v0, v1}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 387
    return-void
.end method

.method public greylist-max-o removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V
    .registers 4

    .line 347
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 350
    if-ltz p1, :cond_1b

    .line 351
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 352
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/animation/AnimationHandler;->mListDirty:Z

    .line 354
    :cond_1b
    return-void
.end method

.method blacklist removePendingEndAnimationCallback(Ljava/lang/Runnable;)V
    .registers 3

    .line 390
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mPendingEndAnimationListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 391
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mPendingEndAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 393
    :cond_9
    return-void
.end method

.method public greylist-max-o setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V
    .registers 3

    .line 295
    if-nez p1, :cond_b

    .line 296
    new-instance p1, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;-><init>(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler-IA;)V

    iput-object p1, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    goto :goto_d

    .line 298
    :cond_b
    iput-object p1, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 300
    :goto_d
    return-void
.end method
