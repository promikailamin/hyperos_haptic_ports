.class Landroid/view/WindowEnterTransitionCoordinator;
.super Landroid/view/WindowTransitionCoordinator;
.source "WindowEnterTransitionCoordinator.java"


# static fields
.field private static final blacklist MIN_ANIMATION_FRAMES:I = 0x2


# instance fields
.field private blacklist mAreViewsReady:Z

.field private blacklist mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private blacklist mEnterViewsTransition:Landroid/transition/Transition;

.field private blacklist mIsCanceled:Z

.field private blacklist mIsExitTransitionComplete:Z

.field private blacklist mIsReadyForTransition:Z

.field private blacklist mIsViewsTransitionStarted:Z

.field private blacklist mOnTransitionComplete:Ljava/lang/Runnable;

.field private blacklist mPendingExitNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSharedElementTransitionStarted:Z

.field private blacklist mSharedElementsBundle:Landroid/os/Bundle;

.field private blacklist mViewsReadyListener:Lcom/android/internal/view/OneShotPreDrawListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsReadyForTransition(Landroid/view/WindowEnterTransitionCoordinator;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsReadyForTransition:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEnterViewsTransition(Landroid/view/WindowEnterTransitionCoordinator;Landroid/transition/Transition;)V
    .registers 2

    iput-object p1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mEnterViewsTransition:Landroid/transition/Transition;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbeginTransition(Landroid/view/WindowEnterTransitionCoordinator;Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/WindowEnterTransitionCoordinator;->beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msharedElementTransitionStarted(Landroid/view/WindowEnterTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/WindowEnterTransitionCoordinator;->sharedElementTransitionStarted()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartEnterTransition(Landroid/view/WindowEnterTransitionCoordinator;Landroid/transition/Transition;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/WindowEnterTransitionCoordinator;->startEnterTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartSharedElementTransition(Landroid/view/WindowEnterTransitionCoordinator;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/WindowEnterTransitionCoordinator;->startSharedElementTransition(Landroid/os/Bundle;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/os/ResultReceiver;Ljava/util/ArrayList;Z)V
    .registers 9
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "isReturning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewRootImpl;",
            "Landroid/os/ResultReceiver;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 46
    .local p3, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 47
    invoke-static {p1, p4}, Landroid/view/WindowEnterTransitionCoordinator;->getListener(Landroid/view/ViewRootImpl;Z)Landroid/view/WindowSharedElementCallback;

    move-result-object v0

    .line 46
    invoke-direct {p0, p1, p3, v0, p4}, Landroid/view/WindowTransitionCoordinator;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;Landroid/view/WindowSharedElementCallback;Z)V

    .line 48
    invoke-virtual {p0, p2}, Landroid/view/WindowEnterTransitionCoordinator;->setResultReceiver(Landroid/os/ResultReceiver;)V

    .line 49
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->prepareEnter()V

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "resultReceiverBundle":Landroid/os/Bundle;
    const-string v1, "android:remoteReceiver"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    iget-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 54
    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_31

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 56
    .local v2, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    new-instance v3, Landroid/view/WindowEnterTransitionCoordinator$1;

    invoke-direct {v3, p0, v2, v1}, Landroid/view/WindowEnterTransitionCoordinator$1;-><init>(Landroid/view/WindowEnterTransitionCoordinator;Landroid/view/ViewTreeObserver;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 71
    .end local v2    # "viewTreeObserver":Landroid/view/ViewTreeObserver;
    :cond_31
    return-void
.end method

.method private blacklist allowOverlappingTransitions()Z
    .registers 2

    .line 657
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;
    .registers 9
    .param p1, "decorView"    # Landroid/view/ViewGroup;
    .param p2, "startEnterTransition"    # Z
    .param p3, "startSharedElementTransition"    # Z

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "sharedElementTransition":Landroid/transition/Transition;
    const/4 v1, 0x0

    if-eqz p3, :cond_25

    .line 468
    iget-object v2, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 469
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/view/WindowEnterTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v0

    .line 471
    :cond_14
    if-nez v0, :cond_1d

    .line 472
    invoke-direct {p0}, Landroid/view/WindowEnterTransitionCoordinator;->sharedElementTransitionStarted()V

    .line 473
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->sharedElementTransitionComplete()V

    goto :goto_25

    .line 475
    :cond_1d
    new-instance v2, Landroid/view/WindowEnterTransitionCoordinator$4;

    invoke-direct {v2, p0}, Landroid/view/WindowEnterTransitionCoordinator$4;-><init>(Landroid/view/WindowEnterTransitionCoordinator;)V

    invoke-virtual {v0, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 489
    :cond_25
    :goto_25
    const/4 v2, 0x0

    .line 490
    .local v2, "viewsTransition":Landroid/transition/Transition;
    if-eqz p2, :cond_4f

    .line 491
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    .line 492
    iget-object v4, p0, Landroid/view/WindowEnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v4, :cond_3f

    iget-object v4, p0, Landroid/view/WindowEnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 493
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Landroid/view/WindowEnterTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v2

    .line 495
    :cond_3f
    if-nez v2, :cond_45

    .line 496
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->viewsTransitionComplete()V

    goto :goto_4f

    .line 498
    :cond_45
    iget-object v3, p0, Landroid/view/WindowEnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    .line 499
    .local v3, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v4, Landroid/view/WindowEnterTransitionCoordinator$5;

    invoke-direct {v4, p0, v3}, Landroid/view/WindowEnterTransitionCoordinator$5;-><init>(Landroid/view/WindowEnterTransitionCoordinator;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 520
    .end local v3    # "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4f
    :goto_4f
    invoke-static {v0, v2}, Landroid/view/WindowEnterTransitionCoordinator;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v3

    .line 521
    .local v3, "transition":Landroid/transition/Transition;
    if-eqz v3, :cond_6f

    .line 522
    new-instance v4, Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;

    invoke-direct {v4, p0}, Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/view/WindowTransitionCoordinator;)V

    invoke-virtual {v3, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 523
    if-eqz p2, :cond_63

    .line 524
    const/4 v4, 0x4

    invoke-virtual {p0, v4, v1}, Landroid/view/WindowEnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 526
    :cond_63
    invoke-static {p1, v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 527
    if-eqz p2, :cond_6b

    .line 528
    invoke-virtual {p0, v1, v1}, Landroid/view/WindowEnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 530
    :cond_6b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_72

    .line 532
    :cond_6f
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->transitionStarted()V

    .line 534
    :goto_72
    return-object v3
.end method

.method private blacklist cancel()V
    .registers 3

    .line 281
    iget-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_3c

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsCanceled:Z

    .line 283
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    if-eqz v1, :cond_12

    goto :goto_1e

    .line 285
    :cond_12
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_23

    .line 286
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_23

    .line 284
    :cond_1e
    :goto_1e
    iget-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Landroid/view/WindowEnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 288
    :cond_23
    :goto_23
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 289
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 290
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 291
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/WindowEnterTransitionCoordinator;->startSharedElementTransition(Landroid/os/Bundle;)V

    .line 293
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->onRemoteExitTransitionComplete()V

    .line 295
    :cond_3c
    return-void
.end method

.method private static blacklist getListener(Landroid/view/ViewRootImpl;Z)Landroid/view/WindowSharedElementCallback;
    .registers 3
    .param p0, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p1, "isReturning"    # Z

    .line 198
    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mExitTransitionListener:Landroid/view/WindowSharedElementCallback;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mEnterTransitionListener:Landroid/view/WindowSharedElementCallback;

    :goto_7
    return-object v0
.end method

.method private blacklist getTransition(Landroid/transition/Transition;I)Landroid/transition/Transition;
    .registers 8
    .param p1, "defaultValue"    # Landroid/transition/Transition;
    .param p2, "id"    # I

    .line 340
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_4d

    .line 343
    :cond_11
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 344
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 345
    .local v2, "transitionId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 346
    move-object v3, p1

    .line 347
    .local v3, "transition":Landroid/transition/Transition;
    if-eq v2, v1, :cond_4c

    const/high16 v1, 0x10f0000

    if-eq v2, v1, :cond_4c

    .line 348
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v1

    .line 349
    .local v1, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v1, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v3

    .line 350
    instance-of v4, v3, Landroid/transition/TransitionSet;

    if-eqz v4, :cond_4c

    move-object v4, v3

    check-cast v4, Landroid/transition/TransitionSet;

    .line 351
    invoke-virtual {v4}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v4

    if-nez v4, :cond_4c

    .line 352
    const/4 v3, 0x0

    .line 355
    .end local v1    # "inflater":Landroid/transition/TransitionInflater;
    :cond_4c
    return-object v3

    .line 341
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local v2    # "transitionId":I
    .end local v3    # "transition":Landroid/transition/Transition;
    :cond_4d
    :goto_4d
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist mapNamedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 141
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 142
    .local v0, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 143
    .local v1, "decorView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_e

    .line 144
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findNamedViews(Ljava/util/Map;)V

    .line 146
    :cond_e
    if-eqz p1, :cond_39

    .line 147
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 148
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 149
    .local v3, "localName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 150
    .local v4, "acceptedName":Ljava/lang/String;
    if-eqz v3, :cond_36

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 151
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 152
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_36

    .line 153
    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v3    # "localName":Ljava/lang/String;
    .end local v4    # "acceptedName":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 158
    .end local v2    # "i":I
    :cond_39
    return-object v0
.end method

.method private blacklist onTakeSharedElements()V
    .registers 6

    .line 431
    iget-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsReadyForTransition:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    if-nez v0, :cond_9

    goto :goto_25

    .line 434
    :cond_9
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    .line 435
    .local v0, "sharedElementState":Landroid/os/Bundle;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    .line 436
    new-instance v1, Landroid/view/WindowEnterTransitionCoordinator$3;

    invoke-direct {v1, p0, v0}, Landroid/view/WindowEnterTransitionCoordinator$3;-><init>(Landroid/view/WindowEnterTransitionCoordinator;Landroid/os/Bundle;)V

    .line 450
    .local v1, "listener":Landroid/view/WindowSharedElementCallback$OnSharedElementsReadyListener;
    iget-object v2, p0, Landroid/view/WindowEnterTransitionCoordinator;->mListener:Landroid/view/WindowSharedElementCallback;

    if-nez v2, :cond_1b

    .line 451
    invoke-interface {v1}, Landroid/view/WindowSharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    goto :goto_24

    .line 453
    :cond_1b
    iget-object v2, p0, Landroid/view/WindowEnterTransitionCoordinator;->mListener:Landroid/view/WindowSharedElementCallback;

    iget-object v3, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/WindowSharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/view/WindowSharedElementCallback$OnSharedElementsReadyListener;)V

    .line 455
    :goto_24
    return-void

    .line 432
    .end local v0    # "sharedElementState":Landroid/os/Bundle;
    .end local v1    # "listener":Landroid/view/WindowSharedElementCallback$OnSharedElementsReadyListener;
    :cond_25
    :goto_25
    return-void
.end method

.method private static blacklist removeNullViews(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 421
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_16

    .line 422
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_16

    .line 423
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    .line 424
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 422
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 428
    .end local v0    # "i":I
    :cond_16
    return-void
.end method

.method private blacklist requestLayoutForSharedElements()V
    .registers 4

    .line 458
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 459
    .local v0, "numSharedElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 460
    iget-object v2, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 462
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method private blacklist sendSharedElementDestination()V
    .registers 6

    .line 163
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 164
    .local v0, "decorView":Landroid/view/View;
    invoke-direct {p0}, Landroid/view/WindowEnterTransitionCoordinator;->allowOverlappingTransitions()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getEnterViewsTransition()Landroid/transition/Transition;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 165
    const/4 v1, 0x0

    .local v1, "allReady":Z
    goto :goto_3a

    .line 166
    .end local v1    # "allReady":Z
    :cond_12
    if-nez v0, :cond_16

    .line 167
    const/4 v1, 0x1

    .restart local v1    # "allReady":Z
    goto :goto_3a

    .line 169
    .end local v1    # "allReady":Z
    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 170
    .restart local v1    # "allReady":Z
    if-eqz v1, :cond_3a

    .line 171
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    iget-object v3, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 172
    iget-object v3, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 173
    const/4 v1, 0x0

    .line 174
    goto :goto_3a

    .line 171
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 179
    .end local v2    # "i":I
    :cond_3a
    :goto_3a
    if-eqz v1, :cond_4b

    .line 180
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->captureSharedElementState()Landroid/os/Bundle;

    move-result-object v2

    .line 181
    .local v2, "state":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->moveSharedElementsToOverlay()V

    .line 182
    iget-object v3, p0, Landroid/view/WindowEnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v4, 0x6b

    invoke-virtual {v3, v4, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .end local v2    # "state":Landroid/os/Bundle;
    goto :goto_56

    .line 183
    :cond_4b
    if-eqz v0, :cond_56

    .line 184
    new-instance v2, Landroid/view/WindowEnterTransitionCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/view/WindowEnterTransitionCoordinator$$ExternalSyntheticLambda1;-><init>(Landroid/view/WindowEnterTransitionCoordinator;)V

    invoke-static {v0, v2}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    goto :goto_57

    .line 183
    :cond_56
    :goto_56
    nop

    .line 192
    :goto_57
    invoke-direct {p0}, Landroid/view/WindowEnterTransitionCoordinator;->allowOverlappingTransitions()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 193
    invoke-direct {p0}, Landroid/view/WindowEnterTransitionCoordinator;->startEnterTransitionOnly()V

    .line 195
    :cond_60
    return-void
.end method

.method private blacklist sharedElementTransitionStarted()V
    .registers 3

    .line 565
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    .line 566
    iget-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsExitTransitionComplete:Z

    if-eqz v0, :cond_d

    .line 567
    const/16 v0, 0x68

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/WindowEnterTransitionCoordinator;->send(ILandroid/os/Bundle;)V

    .line 569
    :cond_d
    return-void
.end method

.method private blacklist startEnterTransition(Landroid/transition/Transition;)V
    .registers 7
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 572
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 573
    .local v0, "decorView":Landroid/view/ViewGroup;
    iget-boolean v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsReturning:Z

    if-nez v1, :cond_4d

    if-eqz v0, :cond_4d

    .line 574
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 575
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3b

    .line 576
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 577
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xff

    aput v4, v2, v3

    const-string v3, "alpha"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/view/WindowEnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 578
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getFadeDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 579
    iget-object v2, p0, Landroid/view/WindowEnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/WindowEnterTransitionCoordinator$6;

    invoke-direct {v3, p0}, Landroid/view/WindowEnterTransitionCoordinator$6;-><init>(Landroid/view/WindowEnterTransitionCoordinator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 585
    iget-object v2, p0, Landroid/view/WindowEnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_4c

    .line 586
    :cond_3b
    if-eqz p1, :cond_49

    .line 587
    new-instance v2, Landroid/view/WindowEnterTransitionCoordinator$7;

    invoke-direct {v2, p0}, Landroid/view/WindowEnterTransitionCoordinator$7;-><init>(Landroid/view/WindowEnterTransitionCoordinator;)V

    invoke-virtual {p1, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 593
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->backgroundAnimatorComplete()V

    goto :goto_4c

    .line 595
    :cond_49
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->backgroundAnimatorComplete()V

    .line 597
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :goto_4c
    goto :goto_50

    .line 598
    :cond_4d
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->backgroundAnimatorComplete()V

    .line 600
    :goto_50
    return-void
.end method

.method private blacklist startEnterTransitionOnly()V
    .registers 2

    .line 698
    new-instance v0, Landroid/view/WindowEnterTransitionCoordinator$9;

    invoke-direct {v0, p0}, Landroid/view/WindowEnterTransitionCoordinator$9;-><init>(Landroid/view/WindowEnterTransitionCoordinator;)V

    invoke-virtual {p0, v0}, Landroid/view/WindowEnterTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    .line 711
    return-void
.end method

.method private blacklist startRejectedAnimations(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 661
    .local p1, "rejectedSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_50

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_50

    .line 664
    :cond_9
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 665
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_4f

    .line 666
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    .line 667
    .local v1, "overlay":Landroid/view/ViewGroupOverlay;
    const/4 v2, 0x0

    .line 668
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 669
    .local v3, "numRejected":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v3, :cond_47

    .line 670
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 671
    .local v5, "snapshot":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 672
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_52

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 673
    iget-object v6, p0, Landroid/view/WindowEnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v6, :cond_3c

    iget-object v6, p0, Landroid/view/WindowEnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 674
    :cond_3c
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 676
    :cond_41
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 669
    .end local v5    # "snapshot":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 678
    .end local v4    # "i":I
    :cond_47
    new-instance v4, Landroid/view/WindowEnterTransitionCoordinator$8;

    invoke-direct {v4, p0, v0, p1}, Landroid/view/WindowEnterTransitionCoordinator$8;-><init>(Landroid/view/WindowEnterTransitionCoordinator;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 689
    .end local v1    # "overlay":Landroid/view/ViewGroupOverlay;
    .end local v2    # "animator":Landroid/animation/ObjectAnimator;
    .end local v3    # "numRejected":I
    :cond_4f
    return-void

    .line 662
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_50
    :goto_50
    return-void

    nop

    :array_52
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private blacklist startSharedElementTransition(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "sharedElementState"    # Landroid/os/Bundle;

    .line 359
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 360
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-nez v0, :cond_7

    .line 361
    return-void

    .line 364
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/WindowEnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 365
    .local v1, "rejectedNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 366
    invoke-virtual {p0, p1, v1}, Landroid/view/WindowEnterTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    .line 367
    .local v2, "rejectedSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v3, p0, Landroid/view/WindowEnterTransitionCoordinator;->mListener:Landroid/view/WindowSharedElementCallback;

    if-eqz v3, :cond_20

    .line 368
    iget-object v3, p0, Landroid/view/WindowEnterTransitionCoordinator;->mListener:Landroid/view/WindowSharedElementCallback;

    invoke-virtual {v3, v2}, Landroid/view/WindowSharedElementCallback;->onRejectSharedElements(Ljava/util/List;)V

    .line 370
    :cond_20
    invoke-static {v2}, Landroid/view/WindowEnterTransitionCoordinator;->removeNullViews(Ljava/util/ArrayList;)V

    .line 371
    invoke-direct {p0, v2}, Landroid/view/WindowEnterTransitionCoordinator;->startRejectedAnimations(Ljava/util/ArrayList;)V

    .line 374
    iget-object v3, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v3}, Landroid/view/WindowEnterTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    .line 376
    .local v3, "sharedElementSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v4, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/view/WindowEnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 377
    invoke-virtual {p0, v3}, Landroid/view/WindowEnterTransitionCoordinator;->scheduleSetSharedElementEnd(Ljava/util/ArrayList;)V

    .line 378
    nop

    .line 379
    invoke-virtual {p0, p1, v3}, Landroid/view/WindowEnterTransitionCoordinator;->setSharedElementState(Landroid/os/Bundle;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 380
    .local v4, "originalImageViewState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;>;"
    invoke-direct {p0}, Landroid/view/WindowEnterTransitionCoordinator;->requestLayoutForSharedElements()V

    .line 382
    invoke-direct {p0}, Landroid/view/WindowEnterTransitionCoordinator;->allowOverlappingTransitions()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_49

    iget-boolean v6, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsReturning:Z

    if-nez v6, :cond_49

    goto :goto_4a

    :cond_49
    move v5, v7

    .line 383
    .local v5, "startEnterTransition":Z
    :goto_4a
    const/4 v6, 0x1

    .line 384
    .local v6, "startSharedElementTransition":Z
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Landroid/view/WindowEnterTransitionCoordinator;->setGhostVisibility(I)V

    .line 385
    invoke-virtual {p0, v8}, Landroid/view/WindowEnterTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 386
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->pauseInput()V

    .line 387
    invoke-direct {p0, v0, v5, v6}, Landroid/view/WindowEnterTransitionCoordinator;->beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;

    move-result-object v8

    .line 389
    .local v8, "transition":Landroid/transition/Transition;
    invoke-virtual {p0, v7}, Landroid/view/WindowEnterTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 390
    invoke-virtual {p0, v7}, Landroid/view/WindowEnterTransitionCoordinator;->setGhostVisibility(I)V

    .line 392
    if-eqz v5, :cond_64

    .line 393
    invoke-direct {p0, v8}, Landroid/view/WindowEnterTransitionCoordinator;->startEnterTransition(Landroid/transition/Transition;)V

    .line 396
    :cond_64
    iget-object v7, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-static {v7, v4}, Landroid/view/WindowEnterTransitionCoordinator;->setOriginalSharedElementState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 398
    iget-object v7, p0, Landroid/view/WindowEnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v7, :cond_75

    .line 401
    new-instance v7, Landroid/view/WindowEnterTransitionCoordinator$2;

    invoke-direct {v7, p0}, Landroid/view/WindowEnterTransitionCoordinator$2;-><init>(Landroid/view/WindowEnterTransitionCoordinator;)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 418
    :cond_75
    return-void
.end method

.method private blacklist triggerViewsReady(Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mAreViewsReady:Z

    if-eqz v0, :cond_5

    .line 122
    return-void

    .line 124
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mAreViewsReady:Z

    .line 125
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 127
    .local v0, "decor":Landroid/view/ViewGroup;
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 128
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_37

    .line 131
    :cond_28
    new-instance v1, Landroid/view/WindowEnterTransitionCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/WindowEnterTransitionCoordinator$$ExternalSyntheticLambda0;-><init>(Landroid/view/WindowEnterTransitionCoordinator;Landroid/util/ArrayMap;)V

    invoke-static {v0, v1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mViewsReadyListener:Lcom/android/internal/view/OneShotPreDrawListener;

    .line 135
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_3a

    .line 129
    :cond_37
    :goto_37
    invoke-virtual {p0, p1}, Landroid/view/WindowEnterTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    .line 137
    :goto_3a
    return-void
.end method


# virtual methods
.method public blacklist cancelEnter()Z
    .registers 2

    .line 633
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/WindowEnterTransitionCoordinator;->setGhostVisibility(I)V

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsCanceled:Z

    .line 635
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->clearState()V

    .line 636
    invoke-super {p0}, Landroid/view/WindowTransitionCoordinator;->cancelPendingTransitions()Z

    move-result v0

    return v0
.end method

.method protected blacklist clearState()V
    .registers 3

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    .line 642
    iput-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mEnterViewsTransition:Landroid/transition/Transition;

    .line 643
    iput-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 644
    iget-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_10

    .line 645
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 646
    iput-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 648
    :cond_10
    iget-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mOnTransitionComplete:Ljava/lang/Runnable;

    if-eqz v1, :cond_19

    .line 649
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 650
    iput-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mOnTransitionComplete:Ljava/lang/Runnable;

    .line 652
    :cond_19
    invoke-super {p0}, Landroid/view/WindowTransitionCoordinator;->clearState()V

    .line 653
    return-void
.end method

.method public blacklist forceViewsToAppear()V
    .registers 6

    .line 238
    iget-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsReturning:Z

    if-nez v0, :cond_5

    .line 239
    return-void

    .line 241
    :cond_5
    iget-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsReadyForTransition:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3d

    .line 242
    iput-boolean v3, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsReadyForTransition:Z

    .line 243
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 244
    .local v0, "decor":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1d

    iget-object v4, p0, Landroid/view/WindowEnterTransitionCoordinator;->mViewsReadyListener:Lcom/android/internal/view/OneShotPreDrawListener;

    if-eqz v4, :cond_1d

    .line 245
    invoke-virtual {v4}, Lcom/android/internal/view/OneShotPreDrawListener;->removeListener()V

    .line 246
    iput-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mViewsReadyListener:Lcom/android/internal/view/OneShotPreDrawListener;

    .line 248
    :cond_1d
    iget-object v4, p0, Landroid/view/WindowEnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v3}, Landroid/view/WindowEnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 249
    invoke-virtual {p0, v2, v3}, Landroid/view/WindowEnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 250
    iget-object v2, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object v2, p0, Landroid/view/WindowEnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 252
    iget-object v2, p0, Landroid/view/WindowEnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 253
    iput-boolean v3, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsReadyForTransition:Z

    .line 254
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->viewsTransitionComplete()V

    .line 255
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 256
    .end local v0    # "decor":Landroid/view/ViewGroup;
    goto :goto_6c

    .line 257
    :cond_3d
    iget-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    if-nez v0, :cond_53

    .line 258
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 259
    iput-boolean v3, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    .line 260
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v3}, Landroid/view/WindowEnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 261
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 262
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 264
    :cond_53
    iget-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    if-nez v0, :cond_69

    .line 265
    iput-boolean v3, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    .line 266
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v3}, Landroid/view/WindowEnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 267
    invoke-virtual {p0, v2, v3}, Landroid/view/WindowEnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 268
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 269
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->viewsTransitionComplete()V

    .line 271
    :cond_69
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->cancelPendingTransitions()Z

    .line 273
    :goto_6c
    iput-boolean v3, p0, Landroid/view/WindowEnterTransitionCoordinator;->mAreViewsReady:Z

    .line 274
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_80

    .line 275
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v2, 0x6a

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 276
    iput-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 278
    :cond_80
    return-void
.end method

.method public blacklist getEnterViewsTransition()Landroid/transition/Transition;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mEnterViewsTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public blacklist getPendingExitSharedElementNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mPendingExitNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected blacklist getSharedElementTransition()Landroid/transition/Transition;
    .registers 3

    .line 329
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 330
    return-object v1

    .line 332
    :cond_8
    iget-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_13

    .line 333
    const/16 v0, 0x1e

    invoke-direct {p0, v1, v0}, Landroid/view/WindowEnterTransitionCoordinator;->getTransition(Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 335
    :cond_13
    const/16 v0, 0x1d

    invoke-direct {p0, v1, v0}, Landroid/view/WindowEnterTransitionCoordinator;->getTransition(Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getViewsTransition()Landroid/transition/Transition;
    .registers 3

    .line 318
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 319
    return-object v1

    .line 321
    :cond_8
    iget-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_13

    .line 322
    const/16 v0, 0x28

    invoke-direct {p0, v1, v0}, Landroid/view/WindowEnterTransitionCoordinator;->getTransition(Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 324
    :cond_13
    const/16 v0, 0x1b

    invoke-direct {p0, v1, v0}, Landroid/view/WindowEnterTransitionCoordinator;->getTransition(Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isReturning()Z
    .registers 2

    .line 298
    iget-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsReturning:Z

    return v0
.end method

.method public blacklist isWaitingForRemoteExit()Z
    .registers 2

    .line 230
    iget-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method synthetic blacklist lambda$sendSharedElementDestination$1$android-view-WindowEnterTransitionCoordinator()V
    .registers 4

    .line 185
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_12

    .line 186
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->captureSharedElementState()Landroid/os/Bundle;

    move-result-object v0

    .line 187
    .local v0, "state":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->moveSharedElementsToOverlay()V

    .line 188
    iget-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 190
    .end local v0    # "state":Landroid/os/Bundle;
    :cond_12
    return-void
.end method

.method synthetic blacklist lambda$triggerViewsReady$0$android-view-WindowEnterTransitionCoordinator(Landroid/util/ArrayMap;)V
    .registers 3
    .param p1, "sharedElements"    # Landroid/util/ArrayMap;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mViewsReadyListener:Lcom/android/internal/view/OneShotPreDrawListener;

    .line 133
    invoke-virtual {p0, p1}, Landroid/view/WindowEnterTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    .line 134
    return-void
.end method

.method public blacklist namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/view/WindowEnterTransitionCoordinator;->mapNamedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/WindowEnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V

    .line 93
    return-void
.end method

.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 203
    packed-switch p1, :pswitch_data_2a

    :pswitch_3
    goto :goto_29

    .line 222
    :pswitch_4
    iget-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_29

    .line 223
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mPendingExitNames:Ljava/util/ArrayList;

    goto :goto_29

    .line 219
    :pswitch_d
    invoke-direct {p0}, Landroid/view/WindowEnterTransitionCoordinator;->cancel()V

    .line 220
    goto :goto_29

    .line 211
    :pswitch_11
    iget-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_29

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsExitTransitionComplete:Z

    .line 213
    iget-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    if-eqz v0, :cond_29

    .line 214
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->onRemoteExitTransitionComplete()V

    goto :goto_29

    .line 205
    :pswitch_20
    iget-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_29

    .line 206
    iput-object p2, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    .line 207
    invoke-direct {p0}, Landroid/view/WindowEnterTransitionCoordinator;->onTakeSharedElements()V

    .line 227
    :cond_29
    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x67
        :pswitch_20
        :pswitch_11
        :pswitch_3
        :pswitch_d
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected blacklist onRemoteExitTransitionComplete()V
    .registers 2

    .line 692
    invoke-direct {p0}, Landroid/view/WindowEnterTransitionCoordinator;->allowOverlappingTransitions()Z

    move-result v0

    if-nez v0, :cond_9

    .line 693
    invoke-direct {p0}, Landroid/view/WindowEnterTransitionCoordinator;->startEnterTransitionOnly()V

    .line 695
    :cond_9
    return-void
.end method

.method protected blacklist onTransitionsComplete()V
    .registers 4

    .line 547
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    check-cast v0, Landroid/view/WindowExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/view/WindowExitTransitionCoordinator;->getViewRoot()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    check-cast v0, Landroid/view/WindowExitTransitionCoordinator;

    .line 548
    invoke-virtual {v0}, Landroid/view/WindowExitTransitionCoordinator;->getViewRoot()Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mNeedRemove:Z

    if-nez v0, :cond_2a

    .line 549
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    check-cast v0, Landroid/view/WindowExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/view/WindowExitTransitionCoordinator;->getViewRoot()Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowTransitionState:Landroid/view/WindowTransitionState;

    invoke-virtual {v0}, Landroid/view/WindowTransitionState;->onStop()V

    .line 550
    iput-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 553
    :cond_2a
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 554
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 555
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_38

    .line 556
    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 558
    :cond_38
    iget-object v2, p0, Landroid/view/WindowEnterTransitionCoordinator;->mOnTransitionComplete:Ljava/lang/Runnable;

    if-eqz v2, :cond_41

    .line 559
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 560
    iput-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mOnTransitionComplete:Ljava/lang/Runnable;

    .line 562
    :cond_41
    return-void
.end method

.method protected blacklist prepareEnter()V
    .registers 4

    .line 302
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 303
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-nez v0, :cond_7

    .line 304
    return-void

    .line 307
    :cond_7
    iget-boolean v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsReturning:Z

    if-nez v1, :cond_19

    .line 308
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 309
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_19

    .line 310
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 311
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 314
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_19
    return-void
.end method

.method public blacklist runAfterTransitionsComplete(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "onTransitionComplete"    # Ljava/lang/Runnable;

    .line 538
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-nez v0, :cond_a

    .line 539
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->onTransitionsComplete()V

    goto :goto_c

    .line 541
    :cond_a
    iput-object p1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mOnTransitionComplete:Ljava/lang/Runnable;

    .line 543
    :goto_c
    return-void
.end method

.method public blacklist stop()V
    .registers 5

    .line 604
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    .line 605
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 606
    iput-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_1b

    .line 608
    :cond_c
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 609
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1b

    .line 610
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 611
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1b

    .line 612
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 616
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1b
    :goto_1b
    iput-boolean v2, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsCanceled:Z

    .line 617
    iput-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 618
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 619
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2f

    .line 620
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, Landroid/view/WindowEnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 621
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/view/WindowEnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 623
    :cond_2f
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, Landroid/view/WindowEnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 624
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->clearState()V

    .line 625
    return-void
.end method

.method public blacklist viewInstancesReady(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "localViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 76
    .local v0, "remap":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 77
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 78
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 79
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_28

    .line 76
    .end local v2    # "view":Landroid/view/View;
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 80
    .restart local v2    # "view":Landroid/view/View;
    :cond_28
    :goto_28
    const/4 v0, 0x1

    .line 84
    .end local v1    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :cond_29
    if-eqz v0, :cond_33

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/view/WindowEnterTransitionCoordinator;->mapNamedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/WindowEnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V

    goto :goto_3a

    .line 87
    :cond_33
    invoke-virtual {p0, p1, p3}, Landroid/view/WindowEnterTransitionCoordinator;->mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/WindowEnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V

    .line 89
    :goto_3a
    return-void
.end method

.method protected blacklist viewsReady(Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/WindowTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsReadyForTransition:Z

    .line 103
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/view/WindowEnterTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    .line 104
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 105
    .local v0, "viewsTransition":Landroid/transition/Transition;
    if-eqz v0, :cond_22

    iget-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_22

    .line 106
    iget-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/view/WindowEnterTransitionCoordinator;->removeExcludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 107
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->stripOffscreenViews()V

    .line 108
    iget-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Landroid/view/WindowEnterTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    .line 110
    :cond_22
    iget-boolean v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v1, :cond_2a

    .line 111
    invoke-direct {p0}, Landroid/view/WindowEnterTransitionCoordinator;->sendSharedElementDestination()V

    goto :goto_2d

    .line 113
    :cond_2a
    invoke-virtual {p0}, Landroid/view/WindowEnterTransitionCoordinator;->moveSharedElementsToOverlay()V

    .line 115
    :goto_2d
    iget-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_34

    .line 116
    invoke-direct {p0}, Landroid/view/WindowEnterTransitionCoordinator;->onTakeSharedElements()V

    .line 118
    :cond_34
    return-void
.end method
