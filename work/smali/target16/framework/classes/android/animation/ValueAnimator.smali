.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "ValueAnimator.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$DurationScaleChangeListener;,
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;,
        Landroid/animation/ValueAnimator$RepeatMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist INFINITE:I = -0x1

.field public static final whitelist RESTART:I = 0x1

.field public static final whitelist REVERSE:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ValueAnimator"

.field private static final blacklist TRACE_ANIMATION_FRACTION:Z

.field private static final greylist-max-o sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static greylist-max-p sDurationScale:F

.field private static final blacklist sDurationScaleChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/animation/ValueAnimator$DurationScaleChangeListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAnimationEndRequested:Z

.field private blacklist mAnimationHandler:Landroid/animation/AnimationHandler;

.field private greylist-max-o mCurrentFraction:F

.field private greylist mDuration:J

.field private greylist-max-o mDurationScale:F

.field private greylist-max-o mFirstFrameTime:J

.field greylist-max-o mInitialized:Z

.field private greylist-max-o mInterpolator:Landroid/animation/TimeInterpolator;

.field private greylist-max-o mLastFrameTime:J

.field private greylist-max-o mOverallFraction:F

.field private greylist-max-o mPauseTime:J

.field private greylist-max-o mRepeatCount:I

.field private greylist-max-o mRepeatMode:I

.field private greylist-max-o mResumed:Z

.field private greylist-max-o mReversing:Z

.field private greylist-max-o mRunning:Z

.field greylist-max-o mSeekFraction:F

.field private greylist-max-o mSelfPulse:Z

.field private greylist-max-o mStartDelay:J

.field greylist-max-o mStartTime:J

.field greylist-max-o mStartTimeCommitted:Z

.field private greylist-max-o mStarted:Z

.field private greylist-max-o mSuppressSelfPulseRequested:Z

.field greylist-max-o mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mValues:[Landroid/animation/PropertyValuesHolder;

.field greylist-max-o mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 83
    const-string/jumbo v0, "persist.debug.animator.trace_fraction"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/animation/ValueAnimator;->TRACE_ANIMATION_FRACTION:Z

    .line 96
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 6

    .line 419
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 115
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 135
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 148
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 166
    const/4 v4, 0x0

    iput v4, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 172
    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 177
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 183
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 193
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 199
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 205
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 210
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 217
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 223
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 227
    iput v3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 234
    const/4 v0, 0x1

    iput v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 240
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 246
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 253
    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 274
    iput v2, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    .line 420
    return-void
.end method

.method private greylist-max-o addAnimationCallback(J)V
    .registers 4

    .line 1626
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_5

    .line 1627
    return-void

    .line 1629
    :cond_5
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    .line 1630
    return-void
.end method

.method private greylist-max-o addOneShotCommitCallback()V
    .registers 2

    .line 1612
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_5

    .line 1613
    return-void

    .line 1615
    :cond_5
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->addOneShotCommitCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 1616
    return-void
.end method

.method public static whitelist areAnimatorsEnabled()Z
    .registers 2

    .line 411
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private greylist-max-o clampFraction(F)F
    .registers 4

    .line 811
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_7

    .line 812
    move p1, v0

    goto :goto_15

    .line 813
    :cond_7
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 814
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 816
    :cond_15
    :goto_15
    return p1
.end method

.method private greylist-max-o endAnimation()V
    .registers 2

    .line 1295
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->endAnimation(Z)V

    .line 1296
    return-void
.end method

.method private blacklist endAnimation(Z)V
    .registers 9

    .line 1303
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v0, :cond_5

    .line 1304
    return-void

    .line 1306
    :cond_5
    sget-boolean v0, Landroid/animation/ValueAnimator;->sPostNotifyEndListenerEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    if-eqz p1, :cond_1d

    .line 1307
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_1d

    move p1, v1

    goto :goto_1e

    :cond_1d
    move p1, v2

    .line 1308
    :goto_1e
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->removeAnimationCallback()V

    .line 1310
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1311
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1312
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v0, :cond_32

    :cond_2d
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    .line 1313
    :goto_33
    if-eqz v1, :cond_3e

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_3e

    .line 1315
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->notifyStartListeners(Z)V

    .line 1317
    :cond_3e
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1318
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 1319
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1322
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0, v0, p1}, Landroid/animation/ValueAnimator;->notifyEndListenersFromEndAnimation(ZZ)V

    .line 1323
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 1324
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object p1

    .line 1325
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 1324
    invoke-static {v0, v1, p1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1327
    :cond_5e
    return-void
.end method

.method public static greylist-max-o getCurrentAnimationsCount()I
    .registers 1

    .line 1738
    invoke-static {}, Landroid/animation/AnimationHandler;->getAnimationCount()I

    move-result v0

    return v0
.end method

.method private greylist-max-o getCurrentIteration(F)I
    .registers 6

    .line 780
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    .line 784
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 785
    cmpl-double v0, v0, v2

    if-nez v0, :cond_15

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_15

    .line 786
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    .line 788
    :cond_15
    double-to-int p1, v2

    return p1
.end method

.method private greylist-max-o getCurrentIterationFraction(FZ)F
    .registers 5

    .line 797
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    .line 798
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->getCurrentIteration(F)I

    move-result v0

    .line 799
    int-to-float v1, v0

    sub-float/2addr p1, v1

    .line 800
    invoke-direct {p0, v0, p2}, Landroid/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    move-result p2

    if-eqz p2, :cond_14

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    :cond_14
    return p1
.end method

.method public static whitelist getDurationScale()F
    .registers 1

    .line 339
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return v0
.end method

.method public static whitelist getFrameDelay()J
    .registers 2

    .line 907
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {}, Landroid/animation/AnimationHandler;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getScaledDuration()J
    .registers 3

    .line 700
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v0, v0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->resolveDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private greylist-max-o isPulsingInternal()Z
    .registers 5

    .line 1369
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static varargs whitelist ofArgb([I)Landroid/animation/ValueAnimator;
    .registers 2

    .line 451
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 452
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 453
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 454
    return-object v0
.end method

.method public static varargs whitelist ofFloat([F)Landroid/animation/ValueAnimator;
    .registers 2

    .line 469
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 470
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 471
    return-object v0
.end method

.method public static varargs whitelist ofInt([I)Landroid/animation/ValueAnimator;
    .registers 2

    .line 434
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 435
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 436
    return-object v0
.end method

.method public static varargs whitelist ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .registers 3

    .line 511
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 512
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 513
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 514
    return-object v0
.end method

.method public static varargs whitelist ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .registers 2

    .line 483
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 484
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 485
    return-object v0
.end method

.method public static whitelist registerDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z
    .registers 8

    .line 353
    nop

    .line 354
    sget-object v0, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 355
    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v2

    :goto_8
    :try_start_8
    sget-object v5, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2d

    .line 356
    sget-object v5, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    .line 357
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 358
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_22

    .line 359
    if-ne v4, v2, :cond_2a

    .line 360
    move v4, v3

    goto :goto_2a

    .line 362
    :cond_22
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_2a

    .line 363
    monitor-exit v0

    return v1

    .line 355
    :cond_2a
    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 366
    :cond_2d
    if-eq v4, v2, :cond_3c

    .line 367
    sget-object v1, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 368
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 370
    :cond_3c
    sget-object v1, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 372
    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_49

    throw p0
.end method

.method private greylist-max-o removeAnimationCallback()V
    .registers 2

    .line 1619
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_5

    .line 1620
    return-void

    .line 1622
    :cond_5
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 1623
    return-void
.end method

.method private greylist-max-o resolveDurationScale()F
    .registers 3

    .line 696
    iget v0, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    iget v0, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    goto :goto_c

    :cond_a
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    :goto_c
    return v0
.end method

.method public static greylist setDurationScale(F)V
    .registers 5

    .line 313
    sput p0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 316
    sget-object v0, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 317
    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 318
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_29

    .line 320
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 321
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_28

    .line 322
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    .line 323
    if-eqz v3, :cond_25

    .line 324
    invoke-interface {v3, p0}, Landroid/animation/ValueAnimator$DurationScaleChangeListener;->onChanged(F)V

    .line 321
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 327
    :cond_28
    return-void

    .line 318
    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public static whitelist setFrameDelay(J)V
    .registers 2

    .line 927
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {p0, p1}, Landroid/animation/AnimationHandler;->setFrameDelay(J)V

    .line 928
    return-void
.end method

.method private greylist-max-o shouldPlayBackward(IZ)Z
    .registers 7

    .line 825
    if-lez p1, :cond_21

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    if-lt p1, v0, :cond_12

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_21

    .line 829
    :cond_12
    const/4 v0, 0x0

    if-eqz p2, :cond_1b

    .line 830
    rem-int/2addr p1, v1

    if-nez p1, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v0

    :goto_1a
    return v2

    .line 832
    :cond_1b
    rem-int/2addr p1, v1

    if-eqz p1, :cond_1f

    goto :goto_20

    :cond_1f
    move v2, v0

    :goto_20
    return v2

    .line 835
    :cond_21
    return p2
.end method

.method private greylist-max-o start(Z)V
    .registers 9

    .line 1118
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 1121
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1122
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 1124
    const/4 v0, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz p1, :cond_3f

    iget p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_3f

    iget p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_3f

    .line 1125
    iget p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v3, -0x1

    if-ne p1, v3, :cond_36

    .line 1127
    iget p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-double v3, p1

    iget p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float p1, v3

    .line 1128
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    iput v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1129
    goto :goto_3f

    .line 1130
    :cond_36
    iget p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    sub-float/2addr p1, v3

    iput p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1133
    :cond_3f
    :goto_3f
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1134
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1135
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1136
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1140
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1141
    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 1142
    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1143
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Landroid/animation/ValueAnimator;->addAnimationCallback(J)V

    .line 1145
    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long p1, v5, v3

    if-eqz p1, :cond_65

    iget p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float p1, p1, v0

    if-gez p1, :cond_65

    iget-boolean p1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz p1, :cond_77

    .line 1149
    :cond_65
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 1150
    iget p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_72

    .line 1154
    invoke-virtual {p0, v3, v4}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_77

    .line 1156
    :cond_72
    iget p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 1159
    :cond_77
    :goto_77
    return-void

    .line 1119
    :cond_78
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animators may only be run on Looper threads"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o startAnimation()V
    .registers 5

    .line 1346
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1347
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v2

    .line 1348
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1347
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1351
    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1352
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1353
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1354
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_28

    .line 1355
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    iput v0, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    goto :goto_2a

    .line 1357
    :cond_28
    iput v1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1360
    :goto_2a
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->notifyStartListeners(Z)V

    .line 1361
    return-void
.end method

.method public static whitelist unregisterDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z
    .registers 5

    .line 384
    sget-object v0, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 385
    nop

    .line 387
    :try_start_4
    sget-object v1, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 388
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1e

    .line 389
    nop

    .line 390
    goto :goto_20

    .line 392
    :cond_1e
    goto :goto_a

    .line 387
    :cond_1f
    const/4 v2, 0x0

    .line 393
    :goto_20
    sget-object p0, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 394
    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw p0
.end method


# virtual methods
.method public whitelist addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 3

    .line 1020
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1021
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1023
    :cond_b
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    return-void
.end method

.method greylist-max-o animateBasedOnTime(J)Z
    .registers 9

    .line 1410
    nop

    .line 1411
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    .line 1412
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v2

    .line 1413
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_17

    .line 1414
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr p1, v4

    long-to-float p1, p1

    long-to-float p2, v2

    div-float/2addr p1, p2

    goto :goto_19

    :cond_17
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1415
    :goto_19
    iget p2, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1416
    float-to-int v2, p1

    float-to-int p2, p2

    const/4 v3, 0x1

    if-le v2, p2, :cond_22

    move p2, v3

    goto :goto_23

    :cond_22
    move p2, v1

    .line 1417
    :goto_23
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_32

    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_32

    move v2, v3

    goto :goto_33

    :cond_32
    move v2, v1

    .line 1419
    :goto_33
    if-nez v0, :cond_37

    .line 1421
    move v1, v3

    goto :goto_44

    .line 1422
    :cond_37
    if-eqz p2, :cond_41

    if-nez v2, :cond_41

    .line 1424
    sget-object p2, Landroid/animation/Animator$AnimatorCaller;->ON_REPEAT:Landroid/animation/Animator$AnimatorCaller;

    invoke-virtual {p0, p2, v1}, Landroid/animation/ValueAnimator;->notifyListeners(Landroid/animation/Animator$AnimatorCaller;Z)V

    goto :goto_44

    .line 1425
    :cond_41
    if-eqz v2, :cond_44

    .line 1426
    move v1, v3

    .line 1428
    :cond_44
    :goto_44
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    iput p1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1429
    iget p1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iget-boolean p2, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, p1, p2}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result p1

    .line 1431
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1433
    :cond_55
    return v1
.end method

.method blacklist animateSkipToEnds(JJ)V
    .registers 12

    .line 1492
    cmp-long v0, p1, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 1494
    :goto_9
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-gtz v5, :cond_14

    cmp-long v5, p3, v3

    if-lez v5, :cond_14

    .line 1495
    goto :goto_26

    .line 1497
    :cond_14
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getTotalDuration()J

    move-result-wide v5

    .line 1498
    cmp-long v3, v5, v3

    if-ltz v3, :cond_25

    cmp-long p1, p1, v5

    if-ltz p1, :cond_25

    cmp-long p1, p3, v5

    if-gez p1, :cond_25

    move v1, v2

    :cond_25
    move v2, v1

    .line 1500
    :goto_26
    if-eqz v2, :cond_31

    .line 1501
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->notifyStartListeners(Z)V

    .line 1502
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->skipToEndValue(Z)V

    .line 1503
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->notifyEndListeners(Z)V

    .line 1505
    :cond_31
    return-void
.end method

.method greylist animateValue(F)V
    .registers 6

    .line 1657
    sget-boolean v0, Landroid/animation/ValueAnimator;->TRACE_ANIMATION_FRACTION:Z

    if-eqz v0, :cond_26

    .line 1658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1661
    :cond_26
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-nez v0, :cond_2b

    .line 1662
    return-void

    .line 1664
    :cond_2b
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 1665
    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 1666
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    .line 1667
    const/4 v1, 0x0

    move v2, v1

    :goto_38
    if-ge v2, v0, :cond_44

    .line 1668
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    .line 1667
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 1670
    :cond_44
    iget p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-gez p1, :cond_4f

    iget-boolean p1, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    if-eqz p1, :cond_56

    .line 1671
    :cond_4f
    iget-object p1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    sget-object v0, Landroid/animation/Animator$AnimatorCaller;->ON_UPDATE:Landroid/animation/Animator$AnimatorCaller;

    invoke-virtual {p0, p1, v0, p0, v1}, Landroid/animation/ValueAnimator;->callOnList(Ljava/util/ArrayList;Landroid/animation/Animator$AnimatorCaller;Ljava/lang/Object;Z)V

    .line 1673
    :cond_56
    return-void
.end method

.method blacklist animateValuesInRange(JJ)V
    .registers 13

    .line 1447
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8f

    const-wide/16 v3, -0x1

    cmp-long v3, p3, v3

    if-ltz v3, :cond_8f

    .line 1451
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1452
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getTotalDuration()J

    move-result-wide v3

    .line 1453
    cmp-long v5, p3, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ltz v5, :cond_2c

    if-nez v5, :cond_1e

    if-lez v2, :cond_1e

    goto :goto_2c

    .line 1455
    :cond_1e
    cmp-long v2, p3, v3

    if-gtz v2, :cond_28

    if-nez v2, :cond_2f

    cmp-long v2, p1, v3

    if-gez v2, :cond_2f

    .line 1458
    :cond_28
    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->notifyStartListeners(Z)V

    goto :goto_2f

    .line 1454
    :cond_2c
    :goto_2c
    invoke-virtual {p0, v7}, Landroid/animation/ValueAnimator;->notifyStartListeners(Z)V

    .line 1460
    :cond_2f
    :goto_2f
    cmp-long v2, v3, v0

    if-ltz v2, :cond_37

    .line 1461
    invoke-static {v3, v4, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 1463
    :cond_37
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    sub-long/2addr p3, v2

    .line 1464
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    sub-long/2addr p1, v2

    .line 1467
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lez v2, :cond_65

    .line 1468
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    div-long v2, p1, v2

    long-to-int v2, v2

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1469
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mDuration:J

    div-long/2addr p3, v3

    long-to-int p3, p3

    invoke-static {v7, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1472
    iget p4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 1473
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1475
    if-eq p4, p3, :cond_65

    .line 1476
    sget-object p3, Landroid/animation/Animator$AnimatorCaller;->ON_REPEAT:Landroid/animation/Animator$AnimatorCaller;

    invoke-virtual {p0, p3, v7}, Landroid/animation/ValueAnimator;->notifyListeners(Landroid/animation/Animator$AnimatorCaller;Z)V

    .line 1480
    :cond_65
    iget p3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 p4, -0x1

    if-eq p3, p4, :cond_7e

    iget p3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/2addr p3, v6

    int-to-long p3, p3

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    mul-long/2addr p3, v2

    cmp-long p3, p1, p3

    if-gtz p3, :cond_76

    goto :goto_7e

    .line 1481
    :cond_76
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t animate a value outside of the duration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1484
    :cond_7e
    :goto_7e
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    long-to-float p1, p1

    iget-wide p2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float p2, p2

    div-float/2addr p1, p2

    .line 1485
    invoke-direct {p0, p1, v7}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result p1

    .line 1486
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1488
    return-void

    .line 1448
    :cond_8f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Error: Play time should never be negative."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o canReverse()Z
    .registers 2

    .line 1291
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist cancel()V
    .registers 3

    .line 1178
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 1184
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 1185
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->consumePendingEndListeners(Z)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1186
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v0, :cond_1a

    .line 1187
    sget-object v0, Landroid/animation/Animator$AnimatorCaller;->ON_CANCEL:Landroid/animation/Animator$AnimatorCaller;

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->notifyListeners(Landroid/animation/Animator$AnimatorCaller;Z)V

    .line 1189
    :cond_1a
    const-string/jumbo v0, "notifyAnimEndByCancel"

    invoke-virtual {p0, v1, v0}, Landroid/animation/ValueAnimator;->completeEndAnimation(ZLjava/lang/String;)V

    .line 1191
    :cond_20
    return-void

    .line 1197
    :cond_21
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    if-eqz v0, :cond_3f

    :cond_2d
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3f

    .line 1198
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_3a

    .line 1200
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->notifyStartListeners(Z)V

    .line 1202
    :cond_3a
    sget-object v0, Landroid/animation/Animator$AnimatorCaller;->ON_CANCEL:Landroid/animation/Animator$AnimatorCaller;

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->notifyListeners(Landroid/animation/Animator$AnimatorCaller;Z)V

    .line 1204
    :cond_3f
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 1205
    return-void

    .line 1179
    :cond_43
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist clone()Landroid/animation/Animator;
    .registers 2

    .line 79
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist clone()Landroid/animation/ValueAnimator;
    .registers 8

    .line 1677
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1678
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    .line 1679
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1681
    :cond_13
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1682
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1683
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 1684
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1685
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1686
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1687
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1688
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1689
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1690
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1691
    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1692
    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1693
    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 1694
    const/4 v2, 0x0

    iput v2, v0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1695
    iput v2, v0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 1696
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 1697
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 1699
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1700
    if-eqz v2, :cond_65

    .line 1701
    array-length v3, v2

    .line 1702
    new-array v4, v3, [Landroid/animation/PropertyValuesHolder;

    iput-object v4, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1703
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 1704
    nop

    :goto_4d
    if-ge v1, v3, :cond_65

    .line 1705
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 1706
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aput-object v4, v5, v1

    .line 1707
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 1710
    :cond_65
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o commitAnimationFrame(J)V
    .registers 5

    .line 1385
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    if-nez v0, :cond_15

    .line 1386
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1387
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    sub-long/2addr p1, v0

    .line 1388
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_15

    .line 1389
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1395
    :cond_15
    return-void
.end method

.method blacklist completeEndAnimation(ZLjava/lang/String;)V
    .registers 4

    .line 1334
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1335
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1336
    invoke-super {p0, p1, p2}, Landroid/animation/Animator;->completeEndAnimation(ZLjava/lang/String;)V

    .line 1338
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1339
    return-void
.end method

.method public final greylist-max-o doAnimationFrame(J)Z
    .registers 11

    .line 1538
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    .line 1541
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v0, :cond_e

    .line 1542
    move-wide v0, p1

    goto :goto_18

    .line 1543
    :cond_e
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    long-to-float v0, v0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->resolveDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    add-long/2addr v0, p1

    :goto_18
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1547
    :cond_1a
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 1548
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1549
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->removeAnimationCallback()V

    .line 1550
    return v1

    .line 1551
    :cond_25
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v0, :cond_3a

    .line 1552
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1553
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_3a

    .line 1555
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    sub-long v6, p1, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1559
    :cond_3a
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x1

    if-nez v0, :cond_53

    .line 1562
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    cmp-long v0, v6, p1

    if-lez v0, :cond_4e

    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4e

    .line 1566
    return v1

    .line 1570
    :cond_4e
    iput-boolean v5, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1571
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 1575
    :cond_53
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    cmp-long v0, v6, v2

    if-gez v0, :cond_71

    .line 1576
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6f

    .line 1577
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v2

    long-to-float v0, v2

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v0, v2

    float-to-long v2, v0

    .line 1578
    sub-long v2, p1, v2

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1579
    iput v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1581
    :cond_6f
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1583
    :cond_71
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1588
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 1589
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->animateBasedOnTime(J)Z

    move-result p1

    .line 1591
    if-eqz p1, :cond_82

    .line 1592
    invoke-direct {p0, v5}, Landroid/animation/ValueAnimator;->endAnimation(Z)V

    .line 1594
    :cond_82
    return p1
.end method

.method public whitelist end()V
    .registers 4

    .line 1209
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 1212
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 1214
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 1215
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    goto :goto_18

    .line 1216
    :cond_11
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_18

    .line 1217
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1219
    :cond_18
    :goto_18
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, v0, v2}, Landroid/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    goto :goto_26

    :cond_24
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_26
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1220
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v0, :cond_31

    .line 1221
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->consumePendingEndListeners(Z)Z

    .line 1222
    return-void

    .line 1224
    :cond_31
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 1225
    return-void

    .line 1210
    :cond_35
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAnimatedFraction()F
    .registers 2

    .line 1639
    iget v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public whitelist getAnimatedValue()Ljava/lang/Object;
    .registers 3

    .line 943
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_13

    .line 944
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 947
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 961
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/PropertyValuesHolder;

    .line 962
    if-eqz p1, :cond_f

    .line 963
    invoke-virtual {p1}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 966
    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o getAnimationHandler()Landroid/animation/AnimationHandler;
    .registers 2

    .line 1796
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mAnimationHandler:Landroid/animation/AnimationHandler;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mAnimationHandler:Landroid/animation/AnimationHandler;

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public whitelist getCurrentPlayTime()J
    .registers 6

    .line 849
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10

    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_10

    goto :goto_33

    .line 852
    :cond_10
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1e

    .line 853
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v0, v0

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0

    .line 855
    :cond_1e
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->resolveDurationScale()F

    move-result v0

    .line 856
    cmpl-float v1, v0, v1

    if-nez v1, :cond_28

    .line 857
    const/high16 v0, 0x3f800000    # 1.0f

    .line 859
    :cond_28
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v0, v1

    return-wide v0

    .line 850
    :cond_33
    :goto_33
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getDuration()J
    .registers 3

    .line 710
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public whitelist getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 1079
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method greylist-max-o getNameForTrace()Ljava/lang/String;
    .registers 2

    .line 1376
    const-string v0, "animator"

    return-object v0
.end method

.method public whitelist getRepeatCount()I
    .registers 2

    .line 988
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public whitelist getRepeatMode()I
    .registers 2

    .line 1009
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public whitelist getStartDelay()J
    .registers 3

    .line 870
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public whitelist getTotalDuration()J
    .registers 7

    .line 715
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 716
    const-wide/16 v0, -0x1

    return-wide v0

    .line 718
    :cond_8
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getValues()[Landroid/animation/PropertyValuesHolder;
    .registers 2

    .line 639
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method greylist-max-o initAnimation()V
    .registers 4

    .line 654
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_1b

    .line 655
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_18

    .line 656
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    .line 657
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_18

    .line 658
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    .line 657
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 661
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 663
    :cond_1b
    return-void
.end method

.method greylist-max-o isInitialized()Z
    .registers 2

    .line 1527
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return v0
.end method

.method public whitelist isRunning()Z
    .registers 2

    .line 1254
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    return v0
.end method

.method public whitelist isStarted()Z
    .registers 2

    .line 1259
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public greylist-max-o overrideDurationScale(F)V
    .registers 2

    .line 692
    iput p1, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    .line 693
    return-void
.end method

.method public whitelist pause()V
    .registers 3

    .line 1244
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1245
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    .line 1246
    if-nez v0, :cond_12

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v0, :cond_12

    .line 1247
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1248
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1250
    :cond_12
    return-void
.end method

.method greylist-max-o pulseAnimationFrame(J)Z
    .registers 4

    .line 1599
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-eqz v0, :cond_6

    .line 1606
    const/4 p1, 0x0

    return p1

    .line 1608
    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    move-result p1

    return p1
.end method

.method public whitelist removeAllUpdateListeners()V
    .registers 2

    .line 1030
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1031
    return-void

    .line 1033
    :cond_5
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1034
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1035
    return-void
.end method

.method public whitelist removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 3

    .line 1044
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1045
    return-void

    .line 1047
    :cond_5
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1048
    iget-object p1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_15

    .line 1049
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1051
    :cond_15
    return-void
.end method

.method public whitelist resume()V
    .registers 5

    .line 1229
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1233
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-nez v0, :cond_1c

    .line 1234
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1235
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 1236
    invoke-direct {p0, v2, v3}, Landroid/animation/ValueAnimator;->addAnimationCallback(J)V

    .line 1239
    :cond_1c
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    .line 1240
    return-void

    .line 1230
    :cond_20
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be resumed from the same thread that the animator was started on"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist reverse()V
    .registers 9

    .line 1271
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    .line 1272
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 1273
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v4, v2, v4

    .line 1274
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 1275
    sub-long/2addr v2, v6

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1276
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1277
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1278
    goto :goto_2f

    :cond_1f
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-eqz v0, :cond_2c

    .line 1279
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1280
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_2f

    .line 1282
    :cond_2c
    invoke-direct {p0, v1}, Landroid/animation/ValueAnimator;->start(Z)V

    .line 1284
    :goto_2f
    return-void
.end method

.method public greylist-max-o setAllowRunningAsynchronously(Z)V
    .registers 2

    .line 1789
    return-void
.end method

.method public blacklist setAnimationHandler(Landroid/animation/AnimationHandler;)V
    .registers 2

    .line 1805
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mAnimationHandler:Landroid/animation/AnimationHandler;

    .line 1806
    return-void
.end method

.method public whitelist setCurrentFraction(F)V
    .registers 6

    .line 755
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 756
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    .line 757
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 758
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 759
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    .line 760
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 763
    sub-long/2addr v2, v0

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 764
    goto :goto_21

    .line 767
    :cond_1f
    iput p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 769
    :goto_21
    iput p1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 770
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, p1, v0}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result p1

    .line 771
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 772
    return-void
.end method

.method public whitelist setCurrentPlayTime(J)V
    .registers 7

    .line 733
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    long-to-float p1, p1

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float p2, v0

    div-float/2addr p1, p2

    goto :goto_10

    :cond_e
    const/high16 p1, 0x3f800000    # 1.0f

    .line 734
    :goto_10
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 735
    return-void
.end method

.method public bridge synthetic whitelist setDuration(J)Landroid/animation/Animator;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setDuration(J)Landroid/animation/ValueAnimator;
    .registers 6

    .line 676
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 680
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 681
    return-object p0

    .line 677
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setEvaluator(Landroid/animation/TypeEvaluator;)V
    .registers 4

    .line 1099
    if-eqz p1, :cond_13

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_13

    .line 1100
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1102
    :cond_13
    return-void
.end method

.method public varargs whitelist setFloatValues([F)V
    .registers 5

    .line 560
    if-eqz p1, :cond_2a

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_2a

    .line 563
    :cond_6
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 566
    :cond_11
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    .line 567
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_27

    .line 564
    :cond_19
    :goto_19
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 570
    :goto_27
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 571
    return-void

    .line 561
    :cond_2a
    :goto_2a
    return-void
.end method

.method public varargs whitelist setIntValues([I)V
    .registers 5

    .line 532
    if-eqz p1, :cond_2a

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_2a

    .line 535
    :cond_6
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 538
    :cond_11
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    .line 539
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_27

    .line 536
    :cond_19
    :goto_19
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 542
    :goto_27
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 543
    return-void

    .line 533
    :cond_2a
    :goto_2a
    return-void
.end method

.method public whitelist setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2

    .line 1065
    if-eqz p1, :cond_5

    .line 1066
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_c

    .line 1068
    :cond_5
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 1070
    :goto_c
    return-void
.end method

.method public varargs whitelist setObjectValues([Ljava/lang/Object;)V
    .registers 6

    .line 597
    if-eqz p1, :cond_2b

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_2b

    .line 600
    :cond_6
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 603
    :cond_11
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    .line 604
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_28

    .line 601
    :cond_19
    :goto_19
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 607
    :goto_28
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 608
    return-void

    .line 598
    :cond_2b
    :goto_2b
    return-void
.end method

.method public whitelist setRepeatCount(I)V
    .registers 2

    .line 979
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 980
    return-void
.end method

.method public whitelist setRepeatMode(I)V
    .registers 2

    .line 999
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 1000
    return-void
.end method

.method public whitelist setStartDelay(J)V
    .registers 6

    .line 883
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_e

    .line 884
    const-string p1, "ValueAnimator"

    const-string p2, "Start delay should always be non-negative"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    move-wide p1, v0

    .line 887
    :cond_e
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 888
    return-void
.end method

.method public varargs whitelist setValues([Landroid/animation/PropertyValuesHolder;)V
    .registers 8

    .line 619
    array-length v0, p1

    .line 620
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 621
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 622
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_1c

    .line 623
    aget-object v3, p1, v2

    .line 624
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 627
    :cond_1c
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 628
    return-void
.end method

.method greylist-max-o skipToEndValue(Z)V
    .registers 6

    .line 1516
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1517
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    move p1, v0

    goto :goto_a

    :cond_8
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1518
    :goto_a
    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_16

    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    if-ne v1, v2, :cond_16

    .line 1520
    goto :goto_17

    .line 1522
    :cond_16
    move v0, p1

    :goto_17
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1523
    return-void
.end method

.method public whitelist start()V
    .registers 2

    .line 1173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    .line 1174
    return-void
.end method

.method greylist-max-o startWithoutPulsing(Z)V
    .registers 3

    .line 1162
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 1163
    if-eqz p1, :cond_9

    .line 1164
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_c

    .line 1166
    :cond_9
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 1168
    :goto_c
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 1169
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1744
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_47

    .line 1745
    const/4 v1, 0x0

    :goto_20
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_47

    .line 1746
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1745
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 1749
    :cond_47
    return-object v0
.end method
