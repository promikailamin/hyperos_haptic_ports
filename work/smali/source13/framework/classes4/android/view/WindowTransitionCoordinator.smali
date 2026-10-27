.class abstract Landroid/view/WindowTransitionCoordinator;
.super Landroid/os/ResultReceiver;
.source "WindowTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;,
        Landroid/view/WindowTransitionCoordinator$GhostViewListeners;,
        Landroid/view/WindowTransitionCoordinator$FixedEpicenterCallback;,
        Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;
    }
.end annotation


# static fields
.field protected static final blacklist KEY_ELEVATION:Ljava/lang/String; = "shared_element:elevation"

.field protected static final blacklist KEY_IMAGE_MATRIX:Ljava/lang/String; = "shared_element:imageMatrix"

.field static final blacklist KEY_REMOTE_RECEIVER:Ljava/lang/String; = "android:remoteReceiver"

.field protected static final blacklist KEY_SCALE_TYPE:Ljava/lang/String; = "shared_element:scaleType"

.field protected static final blacklist KEY_SCREEN_BOTTOM:Ljava/lang/String; = "shared_element:screenBottom"

.field protected static final blacklist KEY_SCREEN_LEFT:Ljava/lang/String; = "shared_element:screenLeft"

.field protected static final blacklist KEY_SCREEN_RIGHT:Ljava/lang/String; = "shared_element:screenRight"

.field protected static final blacklist KEY_SCREEN_TOP:Ljava/lang/String; = "shared_element:screenTop"

.field protected static final blacklist KEY_SNAPSHOT:Ljava/lang/String; = "shared_element:bitmap"

.field protected static final blacklist KEY_TRANSLATION_Z:Ljava/lang/String; = "shared_element:translationZ"

.field public static final blacklist MSG_ALLOW_RETURN_TRANSITION:I = 0x6c

.field public static final blacklist MSG_CANCEL:I = 0x6a

.field public static final blacklist MSG_EXIT_TRANSITION_COMPLETE:I = 0x68

.field public static final blacklist MSG_HIDE_SHARED_ELEMENTS:I = 0x65

.field public static final blacklist MSG_SET_REMOTE_RECEIVER:I = 0x64

.field public static final blacklist MSG_SHARED_ELEMENT_DESTINATION:I = 0x6b

.field public static final blacklist MSG_START_EXIT_TRANSITION:I = 0x69

.field public static final blacklist MSG_TAKE_SHARED_ELEMENTS:I = 0x67

.field protected static final blacklist SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field protected blacklist mAllSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBackgroundAnimatorComplete:Z

.field private final blacklist mEpicenterCallback:Landroid/view/WindowTransitionCoordinator$FixedEpicenterCallback;

.field private blacklist mGhostViewListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowTransitionCoordinator$GhostViewListeners;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mIsReturning:Z

.field private blacklist mIsStartingTransition:Z

.field protected blacklist mListener:Landroid/view/WindowSharedElementCallback;

.field private blacklist mOriginalAlphas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingTransition:Ljava/lang/Runnable;

.field protected blacklist mResultReceiver:Landroid/os/ResultReceiver;

.field protected final blacklist mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSharedElementParentMatrices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSharedElementTransitionComplete:Z

.field protected final blacklist mSharedElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStrippedTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mViewRoot:Landroid/view/ViewRootImpl;

.field private blacklist mViewsTransitionComplete:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPendingTransition(Landroid/view/WindowTransitionCoordinator;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsStartingTransition(Landroid/view/WindowTransitionCoordinator;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/WindowTransitionCoordinator;->mIsStartingTransition:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingTransition(Landroid/view/WindowTransitionCoordinator;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Landroid/view/WindowTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sput-object v0, Landroid/view/WindowTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;Landroid/view/WindowSharedElementCallback;Z)V
    .registers 7
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p3, "listener"    # Landroid/view/WindowSharedElementCallback;
    .param p4, "isReturning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewRootImpl;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/WindowSharedElementCallback;",
            "Z)V"
        }
    .end annotation

    .line 131
    .local p2, "allSharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Landroid/view/WindowTransitionCoordinator$FixedEpicenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/WindowTransitionCoordinator$FixedEpicenterCallback;-><init>(Landroid/view/WindowTransitionCoordinator$FixedEpicenterCallback-IA;)V

    iput-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mEpicenterCallback:Landroid/view/WindowTransitionCoordinator$FixedEpicenterCallback;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    .line 132
    iput-object p1, p0, Landroid/view/WindowTransitionCoordinator;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 133
    iput-object p3, p0, Landroid/view/WindowTransitionCoordinator;->mListener:Landroid/view/WindowSharedElementCallback;

    .line 134
    iput-object p2, p0, Landroid/view/WindowTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    .line 135
    iput-boolean p4, p0, Landroid/view/WindowTransitionCoordinator;->mIsReturning:Z

    .line 136
    return-void
.end method

.method private static blacklist findIncludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/util/ArraySet;)V
    .registers 9
    .param p0, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArraySet<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 337
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p2, "included":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    instance-of v0, p0, Landroid/transition/TransitionSet;

    if-eqz v0, :cond_37

    .line 338
    move-object v0, p0

    check-cast v0, Landroid/transition/TransitionSet;

    .line 339
    .local v0, "set":Landroid/transition/TransitionSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v1, "includedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 341
    .local v2, "numViews":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v2, :cond_25

    .line 342
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 343
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0, v4}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 344
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v4    # "view":Landroid/view/View;
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 347
    .end local v3    # "i":I
    :cond_25
    invoke-virtual {v0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    .line 348
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2a
    if-ge v4, v3, :cond_36

    .line 349
    invoke-virtual {v0, v4}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v5

    invoke-static {v5, v1, p2}, Landroid/view/WindowTransitionCoordinator;->findIncludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/util/ArraySet;)V

    .line 348
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 351
    .end local v0    # "set":Landroid/transition/TransitionSet;
    .end local v1    # "includedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "numViews":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_36
    goto :goto_50

    .line 352
    :cond_37
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 353
    .local v0, "numViews":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    if-ge v1, v0, :cond_50

    .line 354
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 355
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 356
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 353
    .end local v2    # "view":Landroid/view/View;
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 360
    .end local v0    # "numViews":I
    .end local v1    # "i":I
    :cond_50
    :goto_50
    return-void
.end method

.method private static blacklist getOldSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transitionArgs"    # Landroid/os/Bundle;

    .line 551
    new-instance v0, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;

    invoke-direct {v0}, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;-><init>()V

    .line 552
    .local v0, "state":Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mLeft:I

    .line 553
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mTop:I

    .line 554
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mRight:I

    .line 555
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v0, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mBottom:I

    .line 556
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mMeasuredWidth:I

    .line 557
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mMeasuredHeight:I

    .line 558
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    iput v1, v0, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mTranslationZ:F

    .line 559
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v1

    iput v1, v0, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mElevation:F

    .line 560
    instance-of v1, p0, Landroid/widget/ImageView;

    if-nez v1, :cond_3a

    .line 561
    return-object v0

    .line 563
    :cond_3a
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 564
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_41

    .line 565
    return-object v0

    .line 567
    :cond_41
    const/4 v2, -0x1

    const-string/jumbo v3, "shared_element:scaleType"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 568
    .local v2, "scaleTypeInt":I
    if-gez v2, :cond_4c

    .line 569
    return-object v0

    .line 572
    :cond_4c
    move-object v3, p0

    check-cast v3, Landroid/widget/ImageView;

    .line 573
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    iput-object v4, v0, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 574
    iget-object v4, v0, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v5, :cond_66

    .line 575
    new-instance v4, Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v4, v0, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mMatrix:Landroid/graphics/Matrix;

    .line 577
    :cond_66
    return-object v0
.end method

.method private blacklist getSharedElementParentMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 492
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_c

    .line 493
    :cond_6
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_c
    nop

    .line 494
    .local v0, "index":I
    if-gez v0, :cond_2e

    .line 495
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 497
    .local v1, "viewParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2d

    .line 499
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 500
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 501
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 503
    .end local v1    # "viewParent":Landroid/view/ViewParent;
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_2d
    goto :goto_39

    .line 506
    :cond_2e
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 507
    .local v1, "parentMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 509
    .end local v1    # "parentMatrix":Landroid/graphics/Matrix;
    :goto_39
    return-void
.end method

.method public static blacklist isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z
    .registers 4
    .param p0, "viewParent"    # Landroid/view/ViewParent;
    .param p1, "decor"    # Landroid/view/ViewGroup;

    .line 797
    if-eq p0, p1, :cond_1b

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    goto :goto_1b

    .line 800
    :cond_7
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 801
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 802
    const/4 v1, 0x1

    return v1

    .line 804
    :cond_12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/view/WindowTransitionCoordinator;->isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z

    move-result v1

    return v1

    .line 798
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist isNested(Landroid/view/View;Landroid/util/ArrayMap;)Z
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 186
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 187
    .local v0, "parent":Landroid/view/ViewParent;
    const/4 v1, 0x0

    .line 188
    .local v1, "isNested":Z
    :goto_5
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_19

    .line 189
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 190
    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 191
    const/4 v1, 0x1

    .line 192
    goto :goto_19

    .line 194
    :cond_14
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 195
    .end local v2    # "parentView":Landroid/view/View;
    goto :goto_5

    .line 196
    :cond_19
    :goto_19
    return v1
.end method

.method protected static blacklist mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;
    .registers 3
    .param p0, "transition1"    # Landroid/transition/Transition;
    .param p1, "transition2"    # Landroid/transition/Transition;

    .line 363
    if-nez p0, :cond_3

    .line 364
    return-object p1

    .line 365
    :cond_3
    if-nez p1, :cond_6

    .line 366
    return-object p0

    .line 368
    :cond_6
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 369
    .local v0, "transitionSet":Landroid/transition/TransitionSet;
    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 370
    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 371
    return-object v0
.end method

.method private static blacklist noLayoutSuppressionForVisibilityTransitions(Landroid/transition/Transition;)V
    .registers 5
    .param p0, "transition"    # Landroid/transition/Transition;

    .line 936
    instance-of v0, p0, Landroid/transition/Visibility;

    if-eqz v0, :cond_c

    .line 937
    move-object v0, p0

    check-cast v0, Landroid/transition/Visibility;

    .line 938
    .local v0, "visibility":Landroid/transition/Visibility;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/transition/Visibility;->setSuppressLayout(Z)V

    .end local v0    # "visibility":Landroid/transition/Visibility;
    goto :goto_24

    .line 939
    :cond_c
    instance-of v0, p0, Landroid/transition/TransitionSet;

    if-eqz v0, :cond_24

    .line 940
    move-object v0, p0

    check-cast v0, Landroid/transition/TransitionSet;

    .line 941
    .local v0, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v1

    .line 942
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-ge v2, v1, :cond_25

    .line 943
    invoke-virtual {v0, v2}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v3

    invoke-static {v3}, Landroid/view/WindowTransitionCoordinator;->noLayoutSuppressionForVisibilityTransitions(Landroid/transition/Transition;)V

    .line 942
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 939
    .end local v0    # "set":Landroid/transition/TransitionSet;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_24
    :goto_24
    nop

    .line 946
    :cond_25
    return-void
.end method

.method protected static blacklist removeExcludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .registers 3
    .param p0, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 319
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 320
    .local v0, "included":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    invoke-static {p0, p1, v0}, Landroid/view/WindowTransitionCoordinator;->findIncludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/util/ArraySet;)V

    .line 321
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 322
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 323
    return-void
.end method

.method private static blacklist scaleTypeToInt(Landroid/widget/ImageView$ScaleType;)I
    .registers 4
    .param p0, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .line 908
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/view/WindowTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 909
    aget-object v1, v1, v0

    if-ne p0, v1, :cond_b

    .line 910
    return v0

    .line 908
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 913
    .end local v0    # "i":I
    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist setEpicenter(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 236
    if-nez p1, :cond_9

    .line 237
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mEpicenterCallback:Landroid/view/WindowTransitionCoordinator$FixedEpicenterCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowTransitionCoordinator$FixedEpicenterCallback;->setEpicenter(Landroid/graphics/Rect;)V

    goto :goto_16

    .line 239
    :cond_9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 240
    .local v0, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 241
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mEpicenterCallback:Landroid/view/WindowTransitionCoordinator$FixedEpicenterCallback;

    invoke-virtual {v1, v0}, Landroid/view/WindowTransitionCoordinator$FixedEpicenterCallback;->setEpicenter(Landroid/graphics/Rect;)V

    .line 243
    .end local v0    # "epicenter":Landroid/graphics/Rect;
    :goto_16
    return-void
.end method

.method protected static blacklist setOriginalSharedElementState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;",
            ">;)V"
        }
    .end annotation

    .line 613
    .local p0, "sharedElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p1, "originalState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 614
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 615
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;

    .line 616
    .local v2, "state":Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_2e

    iget-object v3, v2, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v3, :cond_2e

    .line 617
    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    .line 618
    .local v3, "imageView":Landroid/widget/ImageView;
    iget-object v4, v2, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 619
    iget-object v4, v2, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v5, :cond_2e

    .line 620
    iget-object v4, v2, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 623
    .end local v3    # "imageView":Landroid/widget/ImageView;
    :cond_2e
    iget v3, v2, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mElevation:F

    invoke-virtual {v1, v3}, Landroid/view/View;->setElevation(F)V

    .line 624
    iget v3, v2, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mTranslationZ:F

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 625
    iget v3, v2, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mMeasuredWidth:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 627
    .local v3, "widthSpec":I
    iget v5, v2, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mMeasuredHeight:I

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 629
    .local v4, "heightSpec":I
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 630
    iget v5, v2, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mLeft:I

    iget v6, v2, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mTop:I

    iget v7, v2, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mRight:I

    iget v8, v2, Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;->mBottom:I

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 613
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "state":Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;
    .end local v3    # "widthSpec":I
    .end local v4    # "heightSpec":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 632
    .end local v0    # "i":I
    :cond_57
    return-void
.end method

.method private blacklist setSharedElementMatrices()V
    .registers 8

    .line 473
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 474
    .local v0, "numSharedElements":I
    if-lez v0, :cond_f

    .line 475
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    .line 477
    :cond_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_3f

    .line 478
    iget-object v2, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 481
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 482
    .local v3, "parent":Landroid/view/ViewGroup;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 483
    .local v4, "matrix":Landroid/graphics/Matrix;
    if-eqz v3, :cond_37

    .line 484
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 485
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 487
    :cond_37
    iget-object v5, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "parent":Landroid/view/ViewGroup;
    .end local v4    # "matrix":Landroid/graphics/Matrix;
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 489
    .end local v1    # "i":I
    :cond_3f
    return-void
.end method

.method private blacklist setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V
    .registers 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "transitionArgs"    # Landroid/os/Bundle;
    .param p4, "tempMatrix"    # Landroid/graphics/Matrix;
    .param p5, "tempRect"    # Landroid/graphics/RectF;
    .param p6, "decorLoc"    # [I

    .line 399
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 400
    .local v5, "sharedElementBundle":Landroid/os/Bundle;
    if-nez v5, :cond_11

    .line 401
    return-void

    .line 404
    :cond_11
    instance-of v6, v0, Landroid/widget/ImageView;

    if-eqz v6, :cond_3a

    .line 405
    const/4 v6, -0x1

    const-string/jumbo v7, "shared_element:scaleType"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 406
    .local v6, "scaleTypeInt":I
    if-ltz v6, :cond_3a

    .line 407
    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    .line 408
    .local v7, "imageView":Landroid/widget/ImageView;
    sget-object v8, Landroid/view/WindowTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    aget-object v8, v8, v6

    .line 409
    .local v8, "scaleType":Landroid/widget/ImageView$ScaleType;
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 410
    sget-object v9, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_3a

    .line 411
    const-string/jumbo v9, "shared_element:imageMatrix"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v9

    .line 412
    .local v9, "matrixValues":[F
    invoke-virtual {v1, v9}, Landroid/graphics/Matrix;->setValues([F)V

    .line 413
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 418
    .end local v6    # "scaleTypeInt":I
    .end local v7    # "imageView":Landroid/widget/ImageView;
    .end local v8    # "scaleType":Landroid/widget/ImageView$ScaleType;
    .end local v9    # "matrixValues":[F
    :cond_3a
    const-string/jumbo v6, "shared_element:translationZ"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    .line 419
    .local v6, "z":F
    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationZ(F)V

    .line 420
    const-string/jumbo v7, "shared_element:elevation"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    .line 421
    .local v7, "elevation":F
    invoke-virtual {v0, v7}, Landroid/view/View;->setElevation(F)V

    .line 423
    const-string/jumbo v8, "shared_element:screenLeft"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    .line 424
    .local v8, "left":F
    const-string/jumbo v9, "shared_element:screenTop"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 425
    .local v9, "top":F
    const-string/jumbo v10, "shared_element:screenRight"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 426
    .local v10, "right":F
    const-string/jumbo v11, "shared_element:screenBottom"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    .line 428
    .local v11, "bottom":F
    const/4 v12, 0x0

    if-eqz p6, :cond_81

    .line 429
    aget v13, p6, v12

    int-to-float v13, v13

    sub-float/2addr v8, v13

    .line 430
    const/4 v13, 0x1

    aget v14, p6, v13

    int-to-float v14, v14

    sub-float/2addr v9, v14

    .line 431
    aget v12, p6, v12

    int-to-float v12, v12

    sub-float/2addr v10, v12

    .line 432
    aget v12, p6, v13

    int-to-float v12, v12

    sub-float/2addr v11, v12

    move-object/from16 v13, p0

    goto :goto_cb

    .line 435
    :cond_81
    move-object/from16 v13, p0

    invoke-direct {v13, v0, v1}, Landroid/view/WindowTransitionCoordinator;->getSharedElementParentMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 436
    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 437
    invoke-virtual/range {p4 .. p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 439
    iget v14, v2, Landroid/graphics/RectF;->left:F

    .line 440
    .local v14, "leftInParent":F
    iget v15, v2, Landroid/graphics/RectF;->top:F

    .line 443
    .local v15, "topInParent":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 444
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    move-result v12

    .line 445
    .local v12, "width":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 448
    .local v1, "height":F
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setLeft(I)V

    .line 449
    invoke-virtual {v0, v3}, Landroid/view/View;->setTop(I)V

    .line 450
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setRight(I)V

    .line 451
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBottom(I)V

    .line 452
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v12, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 453
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 455
    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float v8, v14, v3

    .line 456
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float v9, v15, v3

    .line 457
    add-float v10, v8, v12

    .line 458
    add-float v11, v9, v1

    .line 461
    .end local v1    # "height":F
    .end local v12    # "width":F
    .end local v14    # "leftInParent":F
    .end local v15    # "topInParent":F
    :goto_cb
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 462
    .local v1, "x":I
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 463
    .local v3, "y":I
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v12

    sub-int/2addr v12, v1

    .line 464
    .local v12, "width":I
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v14

    sub-int/2addr v14, v3

    .line 465
    .local v14, "height":I
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v12, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 466
    .local v2, "widthSpec":I
    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 467
    .local v15, "heightSpec":I
    invoke-virtual {v0, v2, v15}, Landroid/view/View;->measure(II)V

    .line 469
    move/from16 v16, v2

    .end local v2    # "widthSpec":I
    .local v16, "widthSpec":I
    add-int v2, v1, v12

    add-int v4, v3, v14

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 470
    return-void
.end method

.method private blacklist setSharedElements(Landroid/util/ArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v0, 0x1

    .line 165
    .local v0, "isFirstRun":Z
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    .line 166
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 167
    .local v1, "numSharedElements":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_d
    if-ltz v2, :cond_41

    .line 168
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 169
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 170
    .local v4, "name":Ljava/lang/String;
    if-eqz v0, :cond_2b

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_27

    if-nez v4, :cond_2b

    .line 171
    :cond_27
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_3e

    .line 172
    :cond_2b
    invoke-static {v3, p1}, Landroid/view/WindowTransitionCoordinator;->isNested(Landroid/view/View;Landroid/util/ArrayMap;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 173
    iget-object v5, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v5, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 167
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "name":Ljava/lang/String;
    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 178
    .end local v2    # "i":I
    :cond_41
    const/4 v0, 0x0

    .line 179
    .end local v1    # "numSharedElements":I
    goto :goto_1

    .line 180
    :cond_43
    return-void
.end method

.method private blacklist showView(Landroid/view/View;Z)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "setTransitionAlpha"    # Z

    .line 683
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 684
    .local v0, "alpha":Ljava/lang/Float;
    if-eqz v0, :cond_11

    .line 685
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 687
    :cond_11
    if-eqz p2, :cond_18

    .line 688
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 690
    :cond_18
    return-void
.end method

.method private blacklist startInputWhenTransitionsComplete()V
    .registers 4

    .line 868
    iget-boolean v0, p0, Landroid/view/WindowTransitionCoordinator;->mViewsTransitionComplete:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElementTransitionComplete:Z

    if-eqz v0, :cond_1b

    .line 869
    invoke-virtual {p0}, Landroid/view/WindowTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 870
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_18

    .line 871
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 872
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_18

    .line 873
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->setPausedForTransition(Z)V

    .line 876
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_18
    invoke-virtual {p0}, Landroid/view/WindowTransitionCoordinator;->onTransitionsComplete()V

    .line 878
    .end local v0    # "decor":Landroid/view/View;
    :cond_1b
    return-void
.end method


# virtual methods
.method protected blacklist backgroundAnimatorComplete()V
    .registers 2

    .line 860
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowTransitionCoordinator;->mBackgroundAnimatorComplete:Z

    .line 861
    return-void
.end method

.method protected blacklist cancelPendingTransitions()Z
    .registers 2

    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    .line 760
    iget-boolean v0, p0, Landroid/view/WindowTransitionCoordinator;->mIsStartingTransition:Z

    return v0
.end method

.method protected blacklist captureSharedElementState()Landroid/os/Bundle;
    .registers 11

    .line 635
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 636
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 637
    .local v6, "tempBounds":Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 638
    .local v5, "tempMatrix":Landroid/graphics/Matrix;
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_11
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_35

    .line 639
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/view/View;

    .line 640
    .local v8, "sharedElement":Landroid/view/View;
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 641
    .local v9, "name":Ljava/lang/String;
    move-object v1, p0

    move-object v2, v8

    move-object v3, v9

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/view/WindowTransitionCoordinator;->captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 638
    .end local v8    # "sharedElement":Landroid/view/View;
    .end local v9    # "name":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 643
    .end local v7    # "i":I
    :cond_35
    return-object v0
.end method

.method protected blacklist captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "transitionArgs"    # Landroid/os/Bundle;
    .param p4, "tempMatrix"    # Landroid/graphics/Matrix;
    .param p5, "tempBounds"    # Landroid/graphics/RectF;

    .line 704
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 705
    .local v0, "sharedElementBundle":Landroid/os/Bundle;
    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    .line 706
    invoke-virtual {p1, p4}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 707
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p5, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 708
    invoke-virtual {p4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 710
    iget v1, p5, Landroid/graphics/RectF;->left:F

    const-string/jumbo v2, "shared_element:screenLeft"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 711
    iget v1, p5, Landroid/graphics/RectF;->right:F

    const-string/jumbo v2, "shared_element:screenRight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 712
    iget v1, p5, Landroid/graphics/RectF;->top:F

    const-string/jumbo v2, "shared_element:screenTop"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 713
    iget v1, p5, Landroid/graphics/RectF;->bottom:F

    const-string/jumbo v2, "shared_element:screenBottom"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 714
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    const-string/jumbo v2, "shared_element:translationZ"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 715
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v1

    const-string/jumbo v2, "shared_element:elevation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 717
    const/4 v1, 0x0

    .line 718
    .local v1, "bitmap":Landroid/os/Parcelable;
    iget-object v2, p0, Landroid/view/WindowTransitionCoordinator;->mListener:Landroid/view/WindowSharedElementCallback;

    if-eqz v2, :cond_59

    .line 719
    invoke-virtual {v2, p1, p4, p5}, Landroid/view/WindowSharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v1

    .line 722
    :cond_59
    if-eqz v1, :cond_61

    .line 723
    const-string/jumbo v2, "shared_element:bitmap"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 726
    :cond_61
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_8f

    .line 727
    move-object v2, p1

    check-cast v2, Landroid/widget/ImageView;

    .line 728
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    invoke-static {v3}, Landroid/view/WindowTransitionCoordinator;->scaleTypeToInt(Landroid/widget/ImageView$ScaleType;)I

    move-result v3

    .line 729
    .local v3, "scaleTypeInt":I
    const-string/jumbo v4, "shared_element:scaleType"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 730
    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v5, :cond_8f

    .line 731
    const/16 v4, 0x9

    new-array v4, v4, [F

    .line 732
    .local v4, "matrix":[F
    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 733
    const-string/jumbo v5, "shared_element:imageMatrix"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 737
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "scaleTypeInt":I
    .end local v4    # "matrix":[F
    :cond_8f
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 738
    return-void
.end method

.method protected blacklist clearState()V
    .registers 3

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 649
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 650
    iput-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    .line 651
    iput-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    .line 652
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 653
    iput-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 654
    iput-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    .line 655
    iput-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mListener:Landroid/view/WindowSharedElementCallback;

    .line 656
    iput-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    .line 657
    return-void
.end method

.method protected blacklist configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "includeTransitioningViews"    # Z

    .line 299
    if-eqz p1, :cond_f

    .line 300
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p1

    .line 301
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mEpicenterCallback:Landroid/view/WindowTransitionCoordinator$FixedEpicenterCallback;

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 302
    invoke-virtual {p0, p1, p2}, Landroid/view/WindowTransitionCoordinator;->setTargets(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object p1

    .line 304
    :cond_f
    invoke-static {p1}, Landroid/view/WindowTransitionCoordinator;->noLayoutSuppressionForVisibilityTransitions(Landroid/transition/Transition;)V

    .line 305
    return-object p1
.end method

.method public blacklist copyMappedViews()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected blacklist createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;
    .registers 21
    .param p1, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 581
    .local p2, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 582
    .local v0, "numSharedElements":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 583
    .local v1, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_c

    .line 584
    return-object v1

    .line 586
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/WindowTransitionCoordinator;->getViewRoot()Landroid/view/ViewRootImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 587
    .local v2, "context":Landroid/content/Context;
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 588
    .local v3, "decorLoc":[I
    invoke-virtual/range {p0 .. p0}, Landroid/view/WindowTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v11

    .line 589
    .local v11, "decorView":Landroid/view/ViewGroup;
    if-eqz v11, :cond_1e

    .line 590
    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 592
    :cond_1e
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 593
    .local v8, "tempMatrix":Landroid/graphics/Matrix;
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_27
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    .line 594
    .local v13, "name":Ljava/lang/String;
    move-object/from16 v14, p1

    invoke-virtual {v14, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 595
    .local v15, "sharedElementBundle":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 596
    .local v4, "snapshot":Landroid/view/View;
    if-eqz v15, :cond_6f

    .line 597
    const-string/jumbo v5, "shared_element:bitmap"

    invoke-virtual {v15, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    .line 598
    .local v10, "parcelable":Landroid/os/Parcelable;
    if-eqz v10, :cond_53

    move-object/from16 v9, p0

    iget-object v5, v9, Landroid/view/WindowTransitionCoordinator;->mListener:Landroid/view/WindowSharedElementCallback;

    if-eqz v5, :cond_55

    .line 599
    invoke-virtual {v5, v2, v10}, Landroid/view/WindowSharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v4

    move-object/from16 v16, v4

    goto :goto_57

    .line 598
    :cond_53
    move-object/from16 v9, p0

    .line 601
    :cond_55
    move-object/from16 v16, v4

    .end local v4    # "snapshot":Landroid/view/View;
    .local v16, "snapshot":Landroid/view/View;
    :goto_57
    if-eqz v16, :cond_6b

    .line 602
    const/16 v17, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, v16

    move-object v6, v13

    move-object/from16 v7, p1

    move-object/from16 v9, v17

    move-object/from16 v17, v10

    .end local v10    # "parcelable":Landroid/os/Parcelable;
    .local v17, "parcelable":Landroid/os/Parcelable;
    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Landroid/view/WindowTransitionCoordinator;->setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V

    goto :goto_6d

    .line 601
    .end local v17    # "parcelable":Landroid/os/Parcelable;
    .restart local v10    # "parcelable":Landroid/os/Parcelable;
    :cond_6b
    move-object/from16 v17, v10

    .line 606
    .end local v10    # "parcelable":Landroid/os/Parcelable;
    :goto_6d
    move-object/from16 v4, v16

    .end local v16    # "snapshot":Landroid/view/View;
    .restart local v4    # "snapshot":Landroid/view/View;
    :cond_6f
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    .end local v4    # "snapshot":Landroid/view/View;
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "sharedElementBundle":Landroid/os/Bundle;
    goto :goto_27

    .line 608
    :cond_73
    move-object/from16 v14, p1

    return-object v1
.end method

.method public blacklist getAcceptedNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected blacklist getDecor()Landroid/view/ViewGroup;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mViewRoot:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_c
    return-object v0
.end method

.method protected blacklist getFadeDuration()J
    .registers 3

    .line 661
    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public blacklist getMappedNames()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 252
    iget-object v2, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 254
    .end local v1    # "i":I
    :cond_26
    return-object v0
.end method

.method protected blacklist getViewRoot()Landroid/view/ViewRootImpl;
    .registers 2

    .line 214
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object v0
.end method

.method protected abstract blacklist getViewsTransition()Landroid/transition/Transition;
.end method

.method protected blacklist hideViews(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 665
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 666
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_29

    .line 667
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 668
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Landroid/view/WindowTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 669
    iget-object v3, p0, Landroid/view/WindowTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    :cond_22
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 666
    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 673
    .end local v1    # "i":I
    :cond_29
    return-void
.end method

.method public blacklist isTransitionRunning()Z
    .registers 2

    .line 949
    iget-boolean v0, p0, Landroid/view/WindowTransitionCoordinator;->mViewsTransitionComplete:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElementTransitionComplete:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/view/WindowTransitionCoordinator;->mBackgroundAnimatorComplete:Z

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method protected blacklist isViewsTransitionComplete()Z
    .registers 2

    .line 851
    iget-boolean v0, p0, Landroid/view/WindowTransitionCoordinator;->mViewsTransitionComplete:Z

    return v0
.end method

.method synthetic blacklist lambda$scheduleGhostVisibilityChange$1$android-view-WindowTransitionCoordinator(I)V
    .registers 2
    .param p1, "visibility"    # I

    .line 845
    invoke-virtual {p0, p1}, Landroid/view/WindowTransitionCoordinator;->setGhostVisibility(I)V

    .line 846
    return-void
.end method

.method synthetic blacklist lambda$scheduleSetSharedElementEnd$0$android-view-WindowTransitionCoordinator(Ljava/util/ArrayList;)V
    .registers 2
    .param p1, "snapshots"    # Ljava/util/ArrayList;

    .line 544
    invoke-virtual {p0, p1}, Landroid/view/WindowTransitionCoordinator;->notifySharedElementEnd(Ljava/util/ArrayList;)V

    .line 545
    return-void
.end method

.method protected blacklist mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 377
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 378
    .local v0, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p1, :cond_21

    .line 379
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 380
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v1    # "i":I
    :cond_20
    goto :goto_2a

    .line 383
    :cond_21
    invoke-virtual {p0}, Landroid/view/WindowTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 384
    .local v1, "decorView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2a

    .line 385
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findNamedViews(Ljava/util/Map;)V

    .line 388
    .end local v1    # "decorView":Landroid/view/ViewGroup;
    :cond_2a
    :goto_2a
    return-object v0
.end method

.method protected blacklist moveSharedElementWithParent()Z
    .registers 2

    .line 793
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist moveSharedElementsFromOverlay()V
    .registers 7

    .line 809
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 810
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 811
    iget-object v2, p0, Landroid/view/WindowTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;

    .line 812
    .local v2, "listener":Landroid/view/WindowTransitionCoordinator$GhostViewListeners;
    invoke-virtual {v2}, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->removeListener()V

    .line 810
    .end local v2    # "listener":Landroid/view/WindowTransitionCoordinator$GhostViewListeners;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 814
    .end local v1    # "i":I
    :cond_17
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 816
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mViewRoot:Landroid/view/ViewRootImpl;

    if-nez v1, :cond_21

    .line 817
    return-void

    .line 820
    :cond_21
    invoke-virtual {p0}, Landroid/view/WindowTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 821
    .local v1, "decor":Landroid/view/ViewGroup;
    if-eqz v1, :cond_42

    .line 822
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    .line 823
    .local v2, "overlay":Landroid/view/ViewGroupOverlay;
    iget-object v3, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 824
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_32
    if-ge v4, v3, :cond_42

    .line 825
    iget-object v5, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 826
    .local v5, "sharedElement":Landroid/view/View;
    invoke-static {v5}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    .line 824
    .end local v5    # "sharedElement":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 829
    .end local v2    # "overlay":Landroid/view/ViewGroupOverlay;
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_42
    return-void
.end method

.method protected blacklist moveSharedElementsToOverlay()V
    .registers 10

    .line 764
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mViewRoot:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_5

    .line 765
    return-void

    .line 767
    :cond_5
    invoke-direct {p0}, Landroid/view/WindowTransitionCoordinator;->setSharedElementMatrices()V

    .line 768
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 769
    .local v0, "numSharedElements":I
    invoke-virtual {p0}, Landroid/view/WindowTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 770
    .local v1, "decor":Landroid/view/ViewGroup;
    if-eqz v1, :cond_67

    .line 771
    invoke-virtual {p0}, Landroid/view/WindowTransitionCoordinator;->moveSharedElementWithParent()Z

    move-result v2

    .line 772
    .local v2, "moveWithParent":Z
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 773
    .local v3, "tempMatrix":Landroid/graphics/Matrix;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-ge v4, v0, :cond_67

    .line 774
    iget-object v5, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 775
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v6

    if-eqz v6, :cond_64

    .line 776
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 777
    iget-object v6, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Matrix;

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 778
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 779
    invoke-static {v5, v1, v3}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;

    .line 780
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 781
    .local v6, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_64

    invoke-static {v6, v1}, Landroid/view/WindowTransitionCoordinator;->isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z

    move-result v7

    if-nez v7, :cond_64

    .line 782
    new-instance v7, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;

    invoke-direct {v7, v5, v6, v1}, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 783
    .local v7, "listener":Landroid/view/WindowTransitionCoordinator$GhostViewListeners;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 784
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 785
    iget-object v8, p0, Landroid/view/WindowTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/ViewGroup;
    .end local v7    # "listener":Landroid/view/WindowTransitionCoordinator$GhostViewListeners;
    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 790
    .end local v2    # "moveWithParent":Z
    .end local v3    # "tempMatrix":Landroid/graphics/Matrix;
    .end local v4    # "i":I
    :cond_67
    return-void
.end method

.method protected blacklist notifySharedElementEnd(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 535
    .local p1, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mListener:Landroid/view/WindowSharedElementCallback;

    if-eqz v0, :cond_b

    .line 536
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/WindowSharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 538
    :cond_b
    return-void
.end method

.method protected blacklist onTransitionsComplete()V
    .registers 1

    .line 888
    return-void
.end method

.method protected blacklist pauseInput()V
    .registers 4

    .line 881
    invoke-virtual {p0}, Landroid/view/WindowTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 882
    .local v0, "decor":Landroid/view/View;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 883
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    :goto_c
    if-eqz v1, :cond_12

    .line 884
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->setPausedForTransition(Z)V

    .line 886
    :cond_12
    return-void
.end method

.method protected blacklist scheduleGhostVisibilityChange(I)V
    .registers 4
    .param p1, "visibility"    # I

    .line 842
    invoke-virtual {p0}, Landroid/view/WindowTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 843
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_e

    .line 844
    new-instance v1, Landroid/view/WindowTransitionCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/WindowTransitionCoordinator$$ExternalSyntheticLambda0;-><init>(Landroid/view/WindowTransitionCoordinator;I)V

    invoke-static {v0, v1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 848
    :cond_e
    return-void
.end method

.method protected blacklist scheduleSetSharedElementEnd(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 541
    .local p1, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/WindowTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 542
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_e

    .line 543
    new-instance v1, Landroid/view/WindowTransitionCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/view/WindowTransitionCoordinator$$ExternalSyntheticLambda1;-><init>(Landroid/view/WindowTransitionCoordinator;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 547
    :cond_e
    return-void
.end method

.method protected blacklist setEpicenter()V
    .registers 5

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "epicenter":Landroid/view/View;
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 227
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/WindowTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 228
    .local v1, "index":I
    if-ltz v1, :cond_29

    .line 229
    iget-object v2, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    .line 232
    .end local v1    # "index":I
    :cond_29
    invoke-direct {p0, v0}, Landroid/view/WindowTransitionCoordinator;->setEpicenter(Landroid/view/View;)V

    .line 233
    return-void
.end method

.method protected blacklist setGhostVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .line 832
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 833
    .local v0, "numSharedElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 834
    iget-object v2, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Landroid/view/GhostView;->getGhost(Landroid/view/View;)Landroid/view/GhostView;

    move-result-object v2

    .line 835
    .local v2, "ghostView":Landroid/view/GhostView;
    if-eqz v2, :cond_1a

    .line 836
    invoke-virtual {v2, p1}, Landroid/view/GhostView;->setVisibility(I)V

    .line 833
    .end local v2    # "ghostView":Landroid/view/GhostView;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 839
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method protected blacklist setResultReceiver(Landroid/os/ResultReceiver;)V
    .registers 2
    .param p1, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 392
    iput-object p1, p0, Landroid/view/WindowTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 393
    return-void
.end method

.method protected blacklist setSharedElementState(Landroid/os/Bundle;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 16
    .param p1, "sharedElementState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;",
            ">;"
        }
    .end annotation

    .line 513
    .local p2, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v0, "originalImageState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;>;"
    if-eqz p1, :cond_3f

    .line 515
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 516
    .local v5, "tempMatrix":Landroid/graphics/Matrix;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 517
    .local v6, "tempRect":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 518
    .local v8, "numSharedElements":I
    const/4 v1, 0x0

    move v9, v1

    .local v9, "i":I
    :goto_19
    if-ge v9, v8, :cond_3f

    .line 519
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/view/View;

    .line 520
    .local v10, "sharedElement":Landroid/view/View;
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    .line 521
    .local v11, "name":Ljava/lang/String;
    invoke-static {v10, v11, p1}, Landroid/view/WindowTransitionCoordinator;->getOldSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;

    move-result-object v12

    .line 523
    .local v12, "originalState":Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v10

    move-object v3, v11

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/WindowTransitionCoordinator;->setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V

    .line 518
    .end local v10    # "sharedElement":Landroid/view/View;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "originalState":Landroid/view/WindowTransitionCoordinator$SharedElementOriginalState;
    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    .line 528
    .end local v5    # "tempMatrix":Landroid/graphics/Matrix;
    .end local v6    # "tempRect":Landroid/graphics/RectF;
    .end local v8    # "numSharedElements":I
    .end local v9    # "i":I
    :cond_3f
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mListener:Landroid/view/WindowSharedElementCallback;

    if-eqz v1, :cond_4a

    .line 529
    iget-object v2, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, p2}, Landroid/view/WindowSharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 531
    :cond_4a
    return-object v0
.end method

.method protected blacklist setTargets(Landroid/transition/Transition;Z)Landroid/transition/Transition;
    .registers 7
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "add"    # Z

    .line 262
    if-eqz p1, :cond_66

    if-eqz p2, :cond_f

    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_66

    .line 263
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_66

    .line 268
    :cond_f
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 269
    .local v0, "set":Landroid/transition/TransitionSet;
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v1, :cond_34

    .line 270
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_1e
    if-ltz v1, :cond_34

    .line 271
    iget-object v3, p0, Landroid/view/WindowTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 272
    .local v3, "view":Landroid/view/View;
    if-eqz p2, :cond_2e

    .line 273
    invoke-virtual {v0, v3}, Landroid/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    goto :goto_31

    .line 275
    :cond_2e
    invoke-virtual {v0, v3, v2}, Landroid/transition/TransitionSet;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 270
    .end local v3    # "view":Landroid/view/View;
    :goto_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    .line 279
    .end local v1    # "i":I
    :cond_34
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_4d

    .line 280
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_3d
    if-ltz v1, :cond_4d

    .line 281
    iget-object v3, p0, Landroid/view/WindowTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 282
    .restart local v3    # "view":Landroid/view/View;
    invoke-virtual {v0, v3, v2}, Landroid/transition/TransitionSet;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 280
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_3d

    .line 287
    .end local v1    # "i":I
    :cond_4d
    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 289
    if-nez p2, :cond_65

    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_65

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_65

    .line 291
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v0

    .line 294
    :cond_65
    return-object v0

    .line 264
    .end local v0    # "set":Landroid/transition/TransitionSet;
    :cond_66
    :goto_66
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist setTransitioningViewsVisiblity(IZ)V
    .registers 6
    .param p1, "visiblity"    # I
    .param p2, "invalidate"    # Z

    .line 917
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 918
    .local v0, "numElements":I
    :goto_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_21

    .line 919
    iget-object v2, p0, Landroid/view/WindowTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 920
    .local v2, "view":Landroid/view/View;
    if-eqz p2, :cond_1b

    .line 922
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1e

    .line 925
    :cond_1b
    invoke-virtual {v2, p1}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 918
    .end local v2    # "view":Landroid/view/View;
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 928
    .end local v1    # "i":I
    :cond_21
    return-void
.end method

.method protected blacklist sharedElementTransitionComplete()V
    .registers 2

    .line 864
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElementTransitionComplete:Z

    .line 865
    invoke-direct {p0}, Landroid/view/WindowTransitionCoordinator;->startInputWhenTransitionsComplete()V

    .line 866
    return-void
.end method

.method protected blacklist showViews(Ljava/util/ArrayList;Z)V
    .registers 6
    .param p2, "setTransitionAlpha"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 676
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 677
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 678
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p2}, Landroid/view/WindowTransitionCoordinator;->showView(Landroid/view/View;Z)V

    .line 677
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 680
    .end local v1    # "i":I
    :cond_13
    return-void
.end method

.method protected blacklist startTransition(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 742
    iget-boolean v0, p0, Landroid/view/WindowTransitionCoordinator;->mIsStartingTransition:Z

    if-eqz v0, :cond_7

    .line 743
    iput-object p1, p0, Landroid/view/WindowTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    goto :goto_d

    .line 745
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowTransitionCoordinator;->mIsStartingTransition:Z

    .line 746
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 748
    :goto_d
    return-void
.end method

.method protected blacklist stripOffscreenViews()V
    .registers 5

    .line 200
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 201
    return-void

    .line 203
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 204
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_2f

    .line 205
    iget-object v2, p0, Landroid/view/WindowTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 206
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 207
    iget-object v3, p0, Landroid/view/WindowTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 208
    iget-object v3, p0, Landroid/view/WindowTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v2    # "view":Landroid/view/View;
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 211
    .end local v1    # "i":I
    :cond_2f
    return-void
.end method

.method protected blacklist transitionStarted()V
    .registers 2

    .line 751
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowTransitionCoordinator;->mIsStartingTransition:Z

    .line 752
    return-void
.end method

.method protected blacklist viewsReady(Landroid/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 139
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mListener:Landroid/view/WindowSharedElementCallback;

    if-eqz v0, :cond_e

    .line 141
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/view/WindowSharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 143
    :cond_e
    invoke-direct {p0, p1}, Landroid/view/WindowTransitionCoordinator;->setSharedElements(Landroid/util/ArrayMap;)V

    .line 144
    invoke-virtual {p0}, Landroid/view/WindowTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2d

    .line 145
    invoke-virtual {p0}, Landroid/view/WindowTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 146
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_26

    .line 147
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->captureWindowTransitioningViews(Ljava/util/List;)V

    .line 149
    :cond_26
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/WindowTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 151
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_2d
    invoke-virtual {p0}, Landroid/view/WindowTransitionCoordinator;->setEpicenter()V

    .line 152
    return-void
.end method

.method protected blacklist viewsTransitionComplete()V
    .registers 2

    .line 855
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowTransitionCoordinator;->mViewsTransitionComplete:Z

    .line 856
    invoke-direct {p0}, Landroid/view/WindowTransitionCoordinator;->startInputWhenTransitionsComplete()V

    .line 857
    return-void
.end method
