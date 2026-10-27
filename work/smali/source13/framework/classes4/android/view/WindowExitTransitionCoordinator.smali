.class public Landroid/view/WindowExitTransitionCoordinator;
.super Landroid/view/WindowTransitionCoordinator;
.source "WindowExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowExitTransitionCoordinator$WindowExitTransitionCallbacks;,
        Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;
    }
.end annotation


# static fields
.field static blacklist sMaxWaitMillis:J


# instance fields
.field private blacklist mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private blacklist mExitCallbacks:Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;

.field private blacklist mExitNotified:Z

.field private blacklist mExitSharedElementBundle:Landroid/os/Bundle;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsBackgroundReady:Z

.field private blacklist mIsCanceled:Z

.field private blacklist mIsExitStarted:Z

.field private blacklist mIsHidden:Z

.field private blacklist mSharedElementBundle:Landroid/os/Bundle;

.field private blacklist mSharedElementNotified:Z

.field private blacklist mSharedElementsHidden:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$PB1qvlUi9fmWiBwBdsYmpku-HhU(Landroid/view/WindowExitTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->startExitTransition()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uoMu8a20BiqKOteLQwYBP53cJ0U(Landroid/view/WindowExitTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->beginTransitions()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsCanceled(Landroid/view/WindowExitTransitionCoordinator;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsCanceled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsHidden(Landroid/view/WindowExitTransitionCoordinator;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsHidden:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSharedElementBundle(Landroid/view/WindowExitTransitionCoordinator;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBackgroundAnimator(Landroid/view/WindowExitTransitionCoordinator;Landroid/animation/ObjectAnimator;)V
    .registers 2

    iput-object p1, p0, Landroid/view/WindowExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBackgroundReady(Landroid/view/WindowExitTransitionCoordinator;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsBackgroundReady:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsCanceled(Landroid/view/WindowExitTransitionCoordinator;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsCanceled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdelayCancel(Landroid/view/WindowExitTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->delayCancel()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinish(Landroid/view/WindowExitTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->finish()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyExitComplete(Landroid/view/WindowExitTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->notifyExitComplete()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartSharedElementExit(Landroid/view/WindowExitTransitionCoordinator;Landroid/view/ViewGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/WindowExitTransitionCoordinator;->startSharedElementExit(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 33
    const-wide/16 v0, 0x3e8

    sput-wide v0, Landroid/view/WindowExitTransitionCoordinator;->sMaxWaitMillis:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/view/ViewRootImpl;Landroid/view/WindowSharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 9
    .param p1, "exitCallbacks"    # Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;
    .param p2, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p3, "listener"    # Landroid/view/WindowSharedElementCallback;
    .param p7, "isReturning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;",
            "Landroid/view/ViewRootImpl;",
            "Landroid/view/WindowSharedElementCallback;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 51
    .local p4, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "mapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, p2, p4, p3, p7}, Landroid/view/WindowTransitionCoordinator;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;Landroid/view/WindowSharedElementCallback;Z)V

    .line 52
    invoke-virtual {p0, p5, p6}, Landroid/view/WindowExitTransitionCoordinator;->mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/WindowExitTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    .line 53
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->stripOffscreenViews()V

    .line 54
    xor-int/lit8 v0, p7, 0x1

    iput-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsBackgroundReady:Z

    .line 55
    iput-object p1, p0, Landroid/view/WindowExitTransitionCoordinator;->mExitCallbacks:Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;

    .line 56
    return-void
.end method

.method private blacklist beginTransitions()V
    .registers 7

    .line 330
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 331
    .local v0, "sharedElementTransition":Landroid/transition/Transition;
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->getExitTransition()Landroid/transition/Transition;

    move-result-object v1

    .line 333
    .local v1, "viewsTransition":Landroid/transition/Transition;
    invoke-static {v0, v1}, Landroid/view/WindowExitTransitionCoordinator;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v2

    .line 334
    .local v2, "transition":Landroid/transition/Transition;
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v3

    .line 335
    .local v3, "decorView":Landroid/view/ViewGroup;
    if-eqz v2, :cond_33

    if-eqz v3, :cond_33

    .line 336
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/view/WindowExitTransitionCoordinator;->setGhostVisibility(I)V

    .line 337
    invoke-virtual {p0, v4}, Landroid/view/WindowExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 338
    const/4 v5, 0x0

    if-eqz v1, :cond_21

    .line 339
    invoke-virtual {p0, v5, v5}, Landroid/view/WindowExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 341
    :cond_21
    invoke-static {v3, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 342
    invoke-virtual {p0, v5}, Landroid/view/WindowExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 343
    invoke-virtual {p0, v5}, Landroid/view/WindowExitTransitionCoordinator;->setGhostVisibility(I)V

    .line 344
    if-eqz v1, :cond_2f

    .line 345
    invoke-virtual {p0, v4, v5}, Landroid/view/WindowExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 347
    :cond_2f
    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_36

    .line 349
    :cond_33
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->transitionStarted()V

    .line 351
    :goto_36
    return-void
.end method

.method private blacklist captureExitSharedElementsState()Landroid/os/Bundle;
    .registers 12

    .line 365
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 366
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 367
    .local v6, "bounds":Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 368
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_11
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_41

    .line 369
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 370
    .local v8, "name":Ljava/lang/String;
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 371
    .local v9, "sharedElementState":Landroid/os/Bundle;
    if-eqz v9, :cond_2e

    .line 372
    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3e

    .line 374
    :cond_2e
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/view/View;

    .line 375
    .local v10, "view":Landroid/view/View;
    move-object v1, p0

    move-object v2, v10

    move-object v3, v8

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/view/WindowExitTransitionCoordinator;->captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 368
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "sharedElementState":Landroid/os/Bundle;
    .end local v10    # "view":Landroid/view/View;
    :goto_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 378
    .end local v7    # "i":I
    :cond_41
    return-object v0
.end method

.method private blacklist delayCancel()V
    .registers 5

    .line 99
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 100
    const/16 v1, 0x6a

    sget-wide v2, Landroid/view/WindowExitTransitionCoordinator;->sMaxWaitMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 102
    :cond_b
    return-void
.end method

.method private blacklist fadeOutBackground()V
    .registers 6

    .line 249
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_3f

    .line 250
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 252
    .local v0, "decor":Landroid/view/ViewGroup;
    const/4 v1, 0x1

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    .local v3, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_3a

    .line 253
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 254
    .end local v3    # "background":Landroid/graphics/drawable/Drawable;
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v3, v1, v3

    const-string v3, "alpha"

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 255
    new-instance v3, Landroid/view/WindowExitTransitionCoordinator$4;

    invoke-direct {v3, p0}, Landroid/view/WindowExitTransitionCoordinator$4;-><init>(Landroid/view/WindowExitTransitionCoordinator;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 266
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->getFadeDuration()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 267
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3f

    .line 269
    .end local v2    # "background":Landroid/graphics/drawable/Drawable;
    :cond_3a
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->backgroundAnimatorComplete()V

    .line 270
    iput-boolean v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsBackgroundReady:Z

    .line 273
    .end local v0    # "decor":Landroid/view/ViewGroup;
    :cond_3f
    :goto_3f
    return-void
.end method

.method private blacklist finish()V
    .registers 2

    .line 438
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->stopCancel()V

    .line 439
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mExitCallbacks:Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;

    if-eqz v0, :cond_d

    .line 440
    invoke-interface {v0}, Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;->onFinish()V

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mExitCallbacks:Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;

    .line 444
    :cond_d
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->clearState()V

    .line 445
    return-void
.end method

.method private blacklist finishIfNecessary()V
    .registers 2

    .line 431
    iget-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mExitNotified:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mExitCallbacks:Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElementsHidden:Z

    if-eqz v0, :cond_1b

    .line 433
    :cond_18
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->finish()V

    .line 435
    :cond_1b
    return-void
.end method

.method private blacklist getExitTransition()Landroid/transition/Transition;
    .registers 4

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "viewsTransition":Landroid/transition/Transition;
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    .line 278
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/view/WindowExitTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v0

    .line 279
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/view/WindowExitTransitionCoordinator;->removeExcludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 280
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 281
    const/4 v0, 0x0

    .line 284
    :cond_24
    if-nez v0, :cond_2a

    .line 285
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->viewsTransitionComplete()V

    goto :goto_34

    .line 287
    :cond_2a
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    .line 288
    .local v1, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Landroid/view/WindowExitTransitionCoordinator$5;

    invoke-direct {v2, p0, v1}, Landroid/view/WindowExitTransitionCoordinator$5;-><init>(Landroid/view/WindowExitTransitionCoordinator;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 303
    .end local v1    # "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_34
    return-object v0
.end method

.method private blacklist getSharedElementExitTransition()Landroid/transition/Transition;
    .registers 4

    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "sharedElementTransition":Landroid/transition/Transition;
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 309
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/view/WindowExitTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v0

    .line 311
    :cond_12
    if-nez v0, :cond_18

    .line 312
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->sharedElementTransitionComplete()V

    goto :goto_2b

    .line 314
    :cond_18
    new-instance v1, Landroid/view/WindowExitTransitionCoordinator$6;

    invoke-direct {v1, p0}, Landroid/view/WindowExitTransitionCoordinator$6;-><init>(Landroid/view/WindowExitTransitionCoordinator;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 324
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 326
    :goto_2b
    return-object v0
.end method

.method private blacklist getTransition(Landroid/transition/Transition;I)Landroid/transition/Transition;
    .registers 8
    .param p1, "defaultValue"    # Landroid/transition/Transition;
    .param p2, "id"    # I

    .line 483
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_4d

    .line 486
    :cond_11
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 487
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 488
    .local v2, "transitionId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 489
    move-object v3, p1

    .line 490
    .local v3, "transition":Landroid/transition/Transition;
    if-eq v2, v1, :cond_4c

    const/high16 v1, 0x10f0000

    if-eq v2, v1, :cond_4c

    .line 491
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v1

    .line 492
    .local v1, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v1, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v3

    .line 493
    instance-of v4, v3, Landroid/transition/TransitionSet;

    if-eqz v4, :cond_4c

    move-object v4, v3

    check-cast v4, Landroid/transition/TransitionSet;

    .line 494
    invoke-virtual {v4}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v4

    if-nez v4, :cond_4c

    .line 495
    const/4 v3, 0x0

    .line 498
    .end local v1    # "inflater":Landroid/transition/TransitionInflater;
    :cond_4c
    return-object v3

    .line 484
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local v2    # "transitionId":I
    .end local v3    # "transition":Landroid/transition/Transition;
    :cond_4d
    :goto_4d
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist hideSharedElements()V
    .registers 2

    .line 171
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 172
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mExitCallbacks:Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;

    if-eqz v0, :cond_a

    .line 173
    invoke-interface {v0}, Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;->hideSharedElements()V

    .line 175
    :cond_a
    iget-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsHidden:Z

    if-nez v0, :cond_13

    .line 176
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/view/WindowExitTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    .line 178
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElementsHidden:Z

    .line 179
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->finishIfNecessary()V

    .line 180
    return-void
.end method

.method private blacklist notifyExitComplete()V
    .registers 4

    .line 418
    iget-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mExitNotified:Z

    if-nez v0, :cond_28

    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->isViewsTransitionComplete()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mExitNotified:Z

    .line 420
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 421
    iput-object v2, p0, Landroid/view/WindowExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 422
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 423
    .local v0, "decorView":Landroid/view/ViewGroup;
    iget-boolean v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsReturning:Z

    if-nez v1, :cond_25

    if-eqz v0, :cond_25

    .line 424
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 426
    :cond_25
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->finishIfNecessary()V

    .line 428
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_28
    return-void
.end method

.method private blacklist sharedElementExitBack()V
    .registers 3

    .line 123
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 124
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_a

    .line 125
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 127
    :cond_a
    if-eqz v0, :cond_2d

    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_2d

    .line 128
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 130
    new-instance v1, Landroid/view/WindowExitTransitionCoordinator$1;

    invoke-direct {v1, p0, v0}, Landroid/view/WindowExitTransitionCoordinator$1;-><init>(Landroid/view/WindowExitTransitionCoordinator;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v1}, Landroid/view/WindowExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    goto :goto_30

    .line 136
    :cond_2d
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 138
    :goto_30
    return-void
.end method

.method private blacklist startExitTransition()V
    .registers 5

    .line 236
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 237
    .local v0, "transition":Landroid/transition/Transition;
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 238
    .local v1, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1f

    if-eqz v1, :cond_1f

    iget-object v2, p0, Landroid/view/WindowExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_1f

    .line 239
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Landroid/view/WindowExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 240
    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 241
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Landroid/view/WindowExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 242
    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_22

    .line 244
    :cond_1f
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->transitionStarted()V

    .line 246
    :goto_22
    return-void
.end method

.method private blacklist startSharedElementExit(Landroid/view/ViewGroup;)V
    .registers 7
    .param p1, "decorView"    # Landroid/view/ViewGroup;

    .line 141
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 142
    .local v0, "transition":Landroid/transition/Transition;
    if-eqz v0, :cond_e

    .line 143
    new-instance v1, Landroid/view/WindowExitTransitionCoordinator$2;

    invoke-direct {v1, p0}, Landroid/view/WindowExitTransitionCoordinator$2;-><init>(Landroid/view/WindowExitTransitionCoordinator;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 153
    :cond_e
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroid/view/WindowExitTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    .line 155
    .local v1, "sharedElementSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Landroid/view/WindowExitTransitionCoordinator$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Landroid/view/WindowExitTransitionCoordinator$$ExternalSyntheticLambda2;-><init>(Landroid/view/WindowExitTransitionCoordinator;Ljava/util/ArrayList;)V

    invoke-static {p1, v2}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 158
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/view/WindowExitTransitionCoordinator;->setGhostVisibility(I)V

    .line 159
    invoke-virtual {p0, v2}, Landroid/view/WindowExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 160
    iget-object v2, p0, Landroid/view/WindowExitTransitionCoordinator;->mListener:Landroid/view/WindowSharedElementCallback;

    if-eqz v2, :cond_32

    .line 161
    iget-object v2, p0, Landroid/view/WindowExitTransitionCoordinator;->mListener:Landroid/view/WindowSharedElementCallback;

    iget-object v3, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/WindowSharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 164
    :cond_32
    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 165
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/WindowExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 166
    invoke-virtual {p0, v2}, Landroid/view/WindowExitTransitionCoordinator;->setGhostVisibility(I)V

    .line 167
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 168
    return-void
.end method

.method private blacklist stopCancel()V
    .registers 3

    .line 93
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 94
    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    :cond_9
    return-void
.end method


# virtual methods
.method protected blacklist clearState()V
    .registers 3

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    .line 450
    iput-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    .line 451
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_e

    .line 452
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 453
    iput-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 455
    :cond_e
    iput-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mExitCallbacks:Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;

    .line 456
    iput-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    .line 457
    invoke-super {p0}, Landroid/view/WindowTransitionCoordinator;->clearState()V

    .line 458
    return-void
.end method

.method public bridge synthetic blacklist copyMappedViews()Ljava/util/ArrayList;
    .registers 2

    .line 32
    invoke-super {p0}, Landroid/view/WindowTransitionCoordinator;->copyMappedViews()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getAcceptedNames()Ljava/util/ArrayList;
    .registers 2

    .line 32
    invoke-super {p0}, Landroid/view/WindowTransitionCoordinator;->getAcceptedNames()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getMappedNames()Ljava/util/ArrayList;
    .registers 2

    .line 32
    invoke-super {p0}, Landroid/view/WindowTransitionCoordinator;->getMappedNames()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getSharedElementTransition()Landroid/transition/Transition;
    .registers 3

    .line 475
    iget-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsReturning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 476
    const/16 v0, 0x1d

    invoke-direct {p0, v1, v0}, Landroid/view/WindowExitTransitionCoordinator;->getTransition(Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 478
    :cond_c
    const/16 v0, 0x1e

    invoke-direct {p0, v1, v0}, Landroid/view/WindowExitTransitionCoordinator;->getTransition(Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getViewsTransition()Landroid/transition/Transition;
    .registers 3

    .line 467
    iget-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsReturning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 468
    const/16 v0, 0x1b

    invoke-direct {p0, v1, v0}, Landroid/view/WindowExitTransitionCoordinator;->getTransition(Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 470
    :cond_c
    const/16 v0, 0x1c

    invoke-direct {p0, v1, v0}, Landroid/view/WindowExitTransitionCoordinator;->getTransition(Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist isReadyToNotify()Z
    .registers 2

    .line 354
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsBackgroundReady:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public bridge synthetic blacklist isTransitionRunning()Z
    .registers 2

    .line 32
    invoke-super {p0}, Landroid/view/WindowTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$startSharedElementExit$0$android-view-WindowExitTransitionCoordinator(Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "sharedElementSnapshots"    # Ljava/util/ArrayList;

    .line 156
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, p1}, Landroid/view/WindowExitTransitionCoordinator;->setSharedElementState(Landroid/os/Bundle;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 157
    return-void
.end method

.method protected blacklist moveSharedElementWithParent()Z
    .registers 2

    .line 462
    iget-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsReturning:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected blacklist notifyComplete()V
    .registers 7

    .line 387
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->isReadyToNotify()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 388
    iget-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElementNotified:Z

    if-nez v0, :cond_46

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElementNotified:Z

    .line 390
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->delayCancel()V

    .line 391
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mExitCallbacks:Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;->isReturnTransitionAllowed()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 392
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v1, 0x6c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 395
    :cond_22
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mListener:Landroid/view/WindowSharedElementCallback;

    if-nez v0, :cond_33

    .line 396
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v1, 0x67

    iget-object v2, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 397
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->notifyExitComplete()V

    goto :goto_49

    .line 399
    :cond_33
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 400
    .local v0, "resultReceiver":Landroid/os/ResultReceiver;
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    .line 401
    .local v1, "sharedElementBundle":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/view/WindowExitTransitionCoordinator;->mListener:Landroid/view/WindowSharedElementCallback;

    iget-object v3, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    new-instance v5, Landroid/view/WindowExitTransitionCoordinator$7;

    invoke-direct {v5, p0, v0, v1}, Landroid/view/WindowExitTransitionCoordinator$7;-><init>(Landroid/view/WindowExitTransitionCoordinator;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/WindowSharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/view/WindowSharedElementCallback$OnSharedElementsReadyListener;)V

    .line 410
    .end local v0    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local v1    # "sharedElementBundle":Landroid/os/Bundle;
    goto :goto_49

    .line 412
    :cond_46
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->notifyExitComplete()V

    .line 415
    :cond_49
    :goto_49
    return-void
.end method

.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 60
    const/16 v0, 0x6a

    packed-switch p1, :pswitch_data_4c

    :pswitch_5
    goto :goto_4a

    .line 82
    :pswitch_6
    iput-object p2, p0, Landroid/view/WindowExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    .line 83
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->sharedElementExitBack()V

    .line 84
    goto :goto_4a

    .line 86
    :pswitch_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsCanceled:Z

    .line 87
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->finish()V

    goto :goto_4a

    .line 78
    :pswitch_13
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->startExit()V

    .line 80
    goto :goto_4a

    .line 72
    :pswitch_1c
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->stopCancel()V

    .line 73
    iget-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_4a

    .line 74
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->hideSharedElements()V

    goto :goto_4a

    .line 62
    :pswitch_27
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->stopCancel()V

    .line 63
    const-string v1, "android:remoteReceiver"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    iput-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 64
    iget-boolean v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsCanceled:Z

    if-eqz v1, :cond_46

    .line 65
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    goto :goto_4a

    .line 68
    :cond_46
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->notifyComplete()V

    .line 70
    nop

    .line 90
    :cond_4a
    :goto_4a
    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x64
        :pswitch_27
        :pswitch_1c
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_13
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method

.method protected blacklist onTransitionsComplete()V
    .registers 1

    .line 383
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->notifyComplete()V

    .line 384
    return-void
.end method

.method public blacklist resetViews()V
    .registers 5

    .line 105
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 106
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_9

    .line 107
    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 109
    :cond_9
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_17

    .line 110
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v3}, Landroid/view/WindowExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 111
    invoke-virtual {p0, v2, v3}, Landroid/view/WindowExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 113
    :cond_17
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v3}, Landroid/view/WindowExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 114
    iput-boolean v3, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsHidden:Z

    .line 115
    iget-boolean v1, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsReturning:Z

    if-nez v1, :cond_27

    if-eqz v0, :cond_27

    .line 116
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 118
    :cond_27
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 119
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->clearState()V

    .line 120
    return-void
.end method

.method protected blacklist sharedElementTransitionComplete()V
    .registers 2

    .line 359
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    if-nez v0, :cond_9

    .line 360
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->captureSharedElementState()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->captureExitSharedElementsState()Landroid/os/Bundle;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    .line 361
    invoke-super {p0}, Landroid/view/WindowTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 362
    return-void
.end method

.method public blacklist startExit()V
    .registers 3

    .line 183
    iget-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsExitStarted:Z

    if-nez v0, :cond_21

    .line 184
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->backgroundAnimatorComplete()V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsExitStarted:Z

    .line 186
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->pauseInput()V

    .line 187
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 188
    .local v1, "decorView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_16

    .line 189
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 191
    :cond_16
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->moveSharedElementsToOverlay()V

    .line 192
    new-instance v0, Landroid/view/WindowExitTransitionCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/view/WindowExitTransitionCoordinator$$ExternalSyntheticLambda1;-><init>(Landroid/view/WindowExitTransitionCoordinator;)V

    invoke-virtual {p0, v0}, Landroid/view/WindowExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    .line 194
    .end local v1    # "decorView":Landroid/view/ViewGroup;
    :cond_21
    return-void
.end method

.method public blacklist startExit(Landroid/view/ViewRootImpl;)V
    .registers 6
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 200
    iget-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsExitStarted:Z

    if-nez v0, :cond_55

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsExitStarted:Z

    .line 202
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->pauseInput()V

    .line 203
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 204
    .local v1, "decorView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_13

    .line 205
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 207
    :cond_13
    new-instance v2, Landroid/view/WindowExitTransitionCoordinator$3;

    invoke-direct {v2, p0}, Landroid/view/WindowExitTransitionCoordinator$3;-><init>(Landroid/view/WindowExitTransitionCoordinator;)V

    iput-object v2, p0, Landroid/view/WindowExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    .line 214
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->delayCancel()V

    .line 215
    invoke-virtual {p0}, Landroid/view/WindowExitTransitionCoordinator;->moveSharedElementsToOverlay()V

    .line 216
    if-eqz v1, :cond_33

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_31

    goto :goto_33

    :cond_31
    const/4 v0, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    nop

    .line 218
    .local v0, "targetsM":Z
    :goto_34
    if-eqz v0, :cond_39

    iget-object v2, p0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    goto :goto_3b

    .line 219
    :cond_39
    iget-object v2, p0, Landroid/view/WindowExitTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    :goto_3b
    nop

    .line 220
    .local v2, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p0, v2}, Landroid/view/WindowOptions;->makeSceneTransitionAnimation(Landroid/view/View;Landroid/view/WindowExitTransitionCoordinator;Ljava/util/ArrayList;)Landroid/view/WindowOptions;

    move-result-object v3

    iput-object v3, p1, Landroid/view/ViewRootImpl;->mWindowOptions:Landroid/view/WindowOptions;

    .line 222
    iget-boolean v3, p0, Landroid/view/WindowExitTransitionCoordinator;->mIsCanceled:Z

    if-nez v3, :cond_4d

    .line 223
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->fadeOutBackground()V

    .line 225
    :cond_4d
    new-instance v3, Landroid/view/WindowExitTransitionCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/view/WindowExitTransitionCoordinator$$ExternalSyntheticLambda0;-><init>(Landroid/view/WindowExitTransitionCoordinator;)V

    invoke-virtual {p0, v3}, Landroid/view/WindowExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    .line 227
    .end local v0    # "targetsM":Z
    .end local v1    # "decorView":Landroid/view/ViewGroup;
    .end local v2    # "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_55
    return-void
.end method

.method public blacklist stop()V
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator;->mExitCallbacks:Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;

    if-eqz v0, :cond_7

    .line 231
    invoke-direct {p0}, Landroid/view/WindowExitTransitionCoordinator;->finish()V

    .line 233
    :cond_7
    return-void
.end method
