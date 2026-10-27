.class abstract Landroid/app/ActivityTransitionCoordinator;
.super Landroid/os/ResultReceiver;
.source "ActivityTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;,
        Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;,
        Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;,
        Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;
    }
.end annotation


# static fields
.field protected static final greylist-max-o KEY_ELEVATION:Ljava/lang/String; = "shared_element:elevation"

.field protected static final greylist-max-o KEY_IMAGE_MATRIX:Ljava/lang/String; = "shared_element:imageMatrix"

.field static final greylist-max-o KEY_REMOTE_RECEIVER:Ljava/lang/String; = "android:remoteReceiver"

.field protected static final greylist-max-o KEY_SCALE_TYPE:Ljava/lang/String; = "shared_element:scaleType"

.field protected static final greylist-max-o KEY_SCREEN_BOTTOM:Ljava/lang/String; = "shared_element:screenBottom"

.field protected static final greylist-max-o KEY_SCREEN_LEFT:Ljava/lang/String; = "shared_element:screenLeft"

.field protected static final greylist-max-o KEY_SCREEN_RIGHT:Ljava/lang/String; = "shared_element:screenRight"

.field protected static final greylist-max-o KEY_SCREEN_TOP:Ljava/lang/String; = "shared_element:screenTop"

.field protected static final greylist-max-o KEY_SNAPSHOT:Ljava/lang/String; = "shared_element:bitmap"

.field protected static final greylist-max-o KEY_TRANSLATION_Z:Ljava/lang/String; = "shared_element:translationZ"

.field public static final blacklist MSG_ALLOW_RETURN_TRANSITION:I = 0x6c

.field public static final greylist-max-o MSG_CANCEL:I = 0x6a

.field public static final greylist-max-o MSG_EXIT_TRANSITION_COMPLETE:I = 0x68

.field public static final greylist-max-o MSG_HIDE_SHARED_ELEMENTS:I = 0x65

.field public static final greylist-max-o MSG_SET_REMOTE_RECEIVER:I = 0x64

.field public static final greylist-max-o MSG_SHARED_ELEMENT_DESTINATION:I = 0x6b

.field public static final greylist-max-o MSG_START_EXIT_TRANSITION:I = 0x69

.field public static final greylist-max-o MSG_TAKE_SHARED_ELEMENTS:I = 0x67

.field protected static final greylist-max-o SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ActivityTransitionCoordinator"


# instance fields
.field protected final greylist-max-o mAllSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBackgroundAnimatorComplete:Z

.field private final greylist-max-o mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

.field private greylist-max-o mGhostViewListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;",
            ">;"
        }
    .end annotation
.end field

.field protected final greylist-max-o mIsReturning:Z

.field private greylist-max-o mIsStartingTransition:Z

.field protected greylist-max-o mListener:Landroid/app/SharedElementCallback;

.field private greylist-max-o mOriginalAlphas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPendingTransition:Ljava/lang/Runnable;

.field protected greylist-max-o mResultReceiver:Landroid/os/ResultReceiver;

.field protected final greylist-max-o mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSharedElementParentMatrices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSharedElementTransitionComplete:Z

.field protected final greylist-max-o mSharedElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStrippedTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist-max-o mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mViewsTransitionComplete:Z

.field private greylist-max-o mWindow:Landroid/view/Window;


# direct methods
.method public static synthetic blacklist $r8$lambda$Bkj4ji3riZBahY8ocCBkRH37coc(Landroid/app/ActivityTransitionCoordinator;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->lambda$scheduleGhostVisibilityChange$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NWdZ0LLVkEaP8JD1AxLgB-ZV1JY(Landroid/app/ActivityTransitionCoordinator;Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->lambda$scheduleSetSharedElementEnd$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingTransition(Landroid/app/ActivityTransitionCoordinator;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsStartingTransition(Landroid/app/ActivityTransitionCoordinator;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingTransition(Landroid/app/ActivityTransitionCoordinator;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 139
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/Window;Ljava/util/ArrayList;Landroid/app/SharedElementCallback;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/SharedElementCallback;",
            "Z)V"
        }
    .end annotation

    .line 226
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;-><init>(Landroid/app/ActivityTransitionCoordinator-IA;)V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    .line 227
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    .line 228
    iput-object p3, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    .line 229
    iput-object p2, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    .line 230
    iput-boolean p4, p0, Landroid/app/ActivityTransitionCoordinator;->mIsReturning:Z

    .line 231
    return-void
.end method

.method private static greylist-max-o findIncludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/util/ArraySet;)V
    .registers 10
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

    .line 432
    instance-of v0, p0, Landroid/transition/TransitionSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 433
    move-object v0, p0

    check-cast v0, Landroid/transition/TransitionSet;

    .line 434
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 435
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 436
    move v4, v1

    :goto_12
    if-ge v4, v3, :cond_26

    .line 437
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 438
    invoke-virtual {p0, v5}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 439
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 442
    :cond_26
    invoke-virtual {v0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result p0

    .line 443
    nop

    :goto_2b
    if-ge v1, p0, :cond_37

    .line 444
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object p1

    invoke-static {p1, v2, p2}, Landroid/app/ActivityTransitionCoordinator;->findIncludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/util/ArraySet;)V

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 446
    :cond_37
    goto :goto_51

    .line 447
    :cond_38
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 448
    nop

    :goto_3d
    if-ge v1, v0, :cond_51

    .line 449
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 450
    invoke-virtual {p0, v2}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 451
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 455
    :cond_51
    :goto_51
    return-void
.end method

.method private static greylist-max-o getOldSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    .registers 5

    .line 648
    new-instance v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;

    invoke-direct {v0}, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;-><init>()V

    .line 649
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mLeft:I

    .line 650
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTop:I

    .line 651
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mRight:I

    .line 652
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mBottom:I

    .line 653
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredWidth:I

    .line 654
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredHeight:I

    .line 655
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    iput v1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTranslationZ:F

    .line 656
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v1

    iput v1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mElevation:F

    .line 657
    instance-of v1, p0, Landroid/widget/ImageView;

    if-nez v1, :cond_3a

    .line 658
    return-object v0

    .line 660
    :cond_3a
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 661
    if-nez p1, :cond_41

    .line 662
    return-object v0

    .line 664
    :cond_41
    const-string/jumbo p2, "shared_element:scaleType"

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 665
    if-gez p1, :cond_4c

    .line 666
    return-object v0

    .line 669
    :cond_4c
    check-cast p0, Landroid/widget/ImageView;

    .line 670
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    iput-object p1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 671
    iget-object p1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, p2, :cond_65

    .line 672
    new-instance p1, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object p1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMatrix:Landroid/graphics/Matrix;

    .line 674
    :cond_65
    return-object v0
.end method

.method private greylist-max-o getSharedElementParentMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 4

    .line 587
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_c

    .line 588
    :cond_6
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 589
    :goto_c
    if-gez v0, :cond_2c

    .line 590
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 591
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 592
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2b

    .line 594
    check-cast p1, Landroid/view/ViewGroup;

    .line 595
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 596
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 598
    :cond_2b
    goto :goto_37

    .line 601
    :cond_2c
    iget-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Matrix;

    .line 602
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 604
    :goto_37
    return-void
.end method

.method public static greylist-max-o isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z
    .registers 3

    .line 893
    if-eq p0, p1, :cond_1a

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    goto :goto_1a

    .line 896
    :cond_7
    check-cast p0, Landroid/view/ViewGroup;

    .line 897
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 898
    const/4 p0, 0x1

    return p0

    .line 900
    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z

    move-result p0

    return p0

    .line 894
    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist-max-o isNested(Landroid/view/View;Landroid/util/ArrayMap;)Z
    .registers 3
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

    .line 281
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 282
    nop

    .line 283
    :goto_5
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_19

    .line 284
    check-cast p0, Landroid/view/View;

    .line 285
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 286
    nop

    .line 287
    const/4 p0, 0x1

    goto :goto_1a

    .line 289
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 290
    goto :goto_5

    .line 283
    :cond_19
    const/4 p0, 0x0

    .line 291
    :goto_1a
    return p0
.end method

.method private synthetic blacklist lambda$scheduleGhostVisibilityChange$1(I)V
    .registers 2

    .line 940
    invoke-virtual {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->setGhostVisibility(I)V

    .line 941
    return-void
.end method

.method private synthetic blacklist lambda$scheduleSetSharedElementEnd$0(Ljava/util/ArrayList;)V
    .registers 2

    .line 640
    invoke-virtual {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->notifySharedElementEnd(Ljava/util/ArrayList;)V

    .line 641
    return-void
.end method

.method protected static greylist-max-o mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;
    .registers 3

    .line 458
    if-nez p0, :cond_3

    .line 459
    return-object p1

    .line 460
    :cond_3
    if-nez p1, :cond_6

    .line 461
    return-object p0

    .line 463
    :cond_6
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 464
    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 465
    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 466
    return-object v0
.end method

.method private static greylist-max-o noLayoutSuppressionForVisibilityTransitions(Landroid/transition/Transition;)V
    .registers 4

    .line 1031
    instance-of v0, p0, Landroid/transition/Visibility;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1032
    check-cast p0, Landroid/transition/Visibility;

    .line 1033
    invoke-virtual {p0, v1}, Landroid/transition/Visibility;->setSuppressLayout(Z)V

    goto :goto_22

    .line 1034
    :cond_b
    instance-of v0, p0, Landroid/transition/TransitionSet;

    if-eqz v0, :cond_22

    .line 1035
    check-cast p0, Landroid/transition/TransitionSet;

    .line 1036
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v0

    .line 1037
    nop

    :goto_16
    if-ge v1, v0, :cond_23

    .line 1038
    invoke-virtual {p0, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityTransitionCoordinator;->noLayoutSuppressionForVisibilityTransitions(Landroid/transition/Transition;)V

    .line 1037
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1034
    :cond_22
    :goto_22
    nop

    .line 1041
    :cond_23
    return-void
.end method

.method protected static greylist-max-o removeExcludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 414
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 415
    invoke-static {p0, p1, v0}, Landroid/app/ActivityTransitionCoordinator;->findIncludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/util/ArraySet;)V

    .line 416
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 417
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 418
    return-void
.end method

.method private static greylist-max-o scaleTypeToInt(Landroid/widget/ImageView$ScaleType;)I
    .registers 3

    .line 1003
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 1004
    sget-object v1, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    aget-object v1, v1, v0

    if-ne p0, v1, :cond_d

    .line 1005
    return v0

    .line 1003
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1008
    :cond_10
    const/4 p0, -0x1

    return p0
.end method

.method private greylist-max-o setEpicenter(Landroid/view/View;)V
    .registers 3

    .line 331
    if-nez p1, :cond_9

    .line 332
    iget-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->setEpicenter(Landroid/graphics/Rect;)V

    goto :goto_16

    .line 334
    :cond_9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 335
    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 336
    iget-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    invoke-virtual {p1, v0}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->setEpicenter(Landroid/graphics/Rect;)V

    .line 338
    :goto_16
    return-void
.end method

.method protected static greylist-max-o setOriginalSharedElementState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;",
            ">;)V"
        }
    .end annotation

    .line 710
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 711
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 712
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;

    .line 713
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_2e

    iget-object v3, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v3, :cond_2e

    .line 714
    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    .line 715
    iget-object v4, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 716
    iget-object v4, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v5, :cond_2e

    .line 717
    iget-object v4, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 720
    :cond_2e
    iget v3, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mElevation:F

    invoke-virtual {v1, v3}, Landroid/view/View;->setElevation(F)V

    .line 721
    iget v3, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTranslationZ:F

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 722
    iget v3, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredWidth:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 724
    iget v5, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredHeight:I

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 726
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 727
    iget v3, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mLeft:I

    iget v4, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTop:I

    iget v5, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mRight:I

    iget v2, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mBottom:I

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->layout(IIII)V

    .line 710
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 729
    :cond_57
    return-void
.end method

.method private greylist-max-o setSharedElementMatrices()V
    .registers 6

    .line 568
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 569
    if-lez v0, :cond_f

    .line 570
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    .line 572
    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_3f

    .line 573
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 576
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 577
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 578
    if-eqz v2, :cond_37

    .line 579
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 580
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 582
    :cond_37
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 584
    :cond_3f
    return-void
.end method

.method private greylist-max-o setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V
    .registers 11

    .line 494
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 495
    if-nez p2, :cond_7

    .line 496
    return-void

    .line 499
    :cond_7
    instance-of p3, p1, Landroid/widget/ImageView;

    if-eqz p3, :cond_30

    .line 500
    const-string/jumbo p3, "shared_element:scaleType"

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    .line 501
    if-ltz p3, :cond_30

    .line 502
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 503
    sget-object v1, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    aget-object p3, v1, p3

    .line 504
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 505
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p3, v1, :cond_30

    .line 506
    const-string/jumbo p3, "shared_element:imageMatrix"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object p3

    .line 507
    invoke-virtual {p4, p3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 508
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 513
    :cond_30
    const-string/jumbo p3, "shared_element:translationZ"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p3

    .line 514
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationZ(F)V

    .line 515
    const-string/jumbo p3, "shared_element:elevation"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p3

    .line 516
    invoke-virtual {p1, p3}, Landroid/view/View;->setElevation(F)V

    .line 518
    const-string/jumbo p3, "shared_element:screenLeft"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p3

    .line 519
    const-string/jumbo v0, "shared_element:screenTop"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 520
    const-string/jumbo v1, "shared_element:screenRight"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 521
    const-string/jumbo v2, "shared_element:screenBottom"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    .line 523
    const/4 v2, 0x0

    if-eqz p6, :cond_75

    .line 524
    aget p4, p6, v2

    int-to-float p4, p4

    sub-float/2addr p3, p4

    .line 525
    const/4 p4, 0x1

    aget p5, p6, p4

    int-to-float p5, p5

    sub-float/2addr v0, p5

    .line 526
    aget p5, p6, v2

    int-to-float p5, p5

    sub-float/2addr v1, p5

    .line 527
    aget p4, p6, p4

    int-to-float p4, p4

    sub-float/2addr p2, p4

    goto :goto_be

    .line 530
    :cond_75
    invoke-direct {p0, p1, p4}, Landroid/app/ActivityTransitionCoordinator;->getSharedElementParentMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 531
    invoke-virtual {p5, p3, v0, v1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 532
    invoke-virtual {p4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 534
    iget p2, p5, Landroid/graphics/RectF;->left:F

    .line 535
    iget p3, p5, Landroid/graphics/RectF;->top:F

    .line 538
    invoke-virtual {p1}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object p4

    invoke-virtual {p4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 539
    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result p4

    .line 540
    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result p6

    .line 543
    invoke-virtual {p1, v2}, Landroid/view/View;->setLeft(I)V

    .line 544
    invoke-virtual {p1, v2}, Landroid/view/View;->setTop(I)V

    .line 545
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRight(I)V

    .line 546
    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBottom(I)V

    .line 547
    const/4 v0, 0x0

    invoke-virtual {p5, v0, v0, p4, p6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 548
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 550
    iget v0, p5, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, v0

    .line 551
    iget p5, p5, Landroid/graphics/RectF;->top:F

    sub-float v0, p3, p5

    .line 552
    add-float v1, p2, p4

    .line 553
    add-float p3, v0, p6

    move v3, p3

    move p3, p2

    move p2, v3

    .line 556
    :goto_be
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 557
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p4

    .line 558
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p5

    sub-int/2addr p5, p3

    .line 559
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p2, p4

    .line 560
    const/high16 p6, 0x40000000    # 2.0f

    invoke-static {p5, p6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 561
    invoke-static {p2, p6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p6

    .line 562
    invoke-virtual {p1, v0, p6}, Landroid/view/View;->measure(II)V

    .line 564
    add-int/2addr p5, p3

    add-int/2addr p2, p4

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    .line 565
    return-void
.end method

.method private greylist-max-o setSharedElements(Landroid/util/ArrayMap;)V
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

    .line 259
    const/4 v0, 0x1

    move v1, v0

    .line 260
    :goto_2
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_44

    .line 261
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 262
    sub-int/2addr v2, v0

    :goto_d
    if-ltz v2, :cond_41

    .line 263
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 264
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 265
    if-eqz v1, :cond_2b

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_27

    if-nez v4, :cond_2b

    .line 266
    :cond_27
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_3e

    .line 267
    :cond_2b
    invoke-static {v3, p1}, Landroid/app/ActivityTransitionCoordinator;->isNested(Landroid/view/View;Landroid/util/ArrayMap;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 268
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v4, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 262
    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 273
    :cond_41
    nop

    .line 274
    const/4 v1, 0x0

    goto :goto_2

    .line 275
    :cond_44
    return-void
.end method

.method private greylist-max-o showView(Landroid/view/View;Z)V
    .registers 4

    .line 779
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 780
    if-eqz v0, :cond_11

    .line 781
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 783
    :cond_11
    if-eqz p2, :cond_18

    .line 784
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 786
    :cond_18
    return-void
.end method

.method private greylist-max-o startInputWhenTransitionsComplete()V
    .registers 3

    .line 963
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementTransitionComplete:Z

    if-eqz v0, :cond_1b

    .line 964
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 965
    if-eqz v0, :cond_18

    .line 966
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 967
    if-eqz v0, :cond_18

    .line 968
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setPausedForTransition(Z)V

    .line 971
    :cond_18
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->onTransitionsComplete()V

    .line 973
    :cond_1b
    return-void
.end method


# virtual methods
.method protected greylist-max-o backgroundAnimatorComplete()V
    .registers 2

    .line 955
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mBackgroundAnimatorComplete:Z

    .line 956
    return-void
.end method

.method protected greylist-max-o cancelPendingTransitions()Z
    .registers 2

    .line 855
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    .line 856
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    return v0
.end method

.method protected greylist-max-o captureSharedElementState()Landroid/os/Bundle;
    .registers 8

    .line 732
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 733
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 734
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 735
    const/4 v0, 0x0

    move v6, v0

    :goto_11
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_32

    .line 736
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 737
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 738
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityTransitionCoordinator;->captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 735
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 740
    :cond_32
    return-object v3
.end method

.method protected greylist-max-o captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .registers 10

    .line 800
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 801
    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    .line 802
    invoke-virtual {p1, p4}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 803
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p5, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 804
    invoke-virtual {p4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 806
    const-string/jumbo v1, "shared_element:screenLeft"

    iget v2, p5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 807
    const-string/jumbo v1, "shared_element:screenRight"

    iget v2, p5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 808
    const-string/jumbo v1, "shared_element:screenTop"

    iget v2, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 809
    const-string/jumbo v1, "shared_element:screenBottom"

    iget v2, p5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 810
    const-string/jumbo v1, "shared_element:translationZ"

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 811
    const-string/jumbo v1, "shared_element:elevation"

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 813
    nop

    .line 814
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v1, :cond_5c

    .line 815
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    invoke-virtual {v1, p1, p4, p5}, Landroid/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object p4

    goto :goto_5d

    .line 814
    :cond_5c
    const/4 p4, 0x0

    .line 818
    :goto_5d
    if-eqz p4, :cond_65

    .line 819
    const-string/jumbo p5, "shared_element:bitmap"

    invoke-virtual {v0, p5, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 822
    :cond_65
    instance-of p4, p1, Landroid/widget/ImageView;

    if-eqz p4, :cond_92

    .line 823
    check-cast p1, Landroid/widget/ImageView;

    .line 824
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p4

    invoke-static {p4}, Landroid/app/ActivityTransitionCoordinator;->scaleTypeToInt(Landroid/widget/ImageView$ScaleType;)I

    move-result p4

    .line 825
    const-string/jumbo p5, "shared_element:scaleType"

    invoke-virtual {v0, p5, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 826
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p4

    sget-object p5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p4, p5, :cond_92

    .line 827
    const/16 p4, 0x9

    new-array p4, p4, [F

    .line 828
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 829
    const-string/jumbo p1, "shared_element:imageMatrix"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 833
    :cond_92
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 834
    return-void
.end method

.method protected greylist-max-o clearState()V
    .registers 3

    .line 745
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    .line 746
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 747
    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    .line 748
    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    .line 749
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 750
    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 751
    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    .line 752
    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    .line 753
    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    .line 754
    return-void
.end method

.method protected greylist-max-o configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;
    .registers 4

    .line 394
    if-eqz p1, :cond_f

    .line 395
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p1

    .line 396
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 397
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityTransitionCoordinator;->setTargets(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object p1

    .line 399
    :cond_f
    invoke-static {p1}, Landroid/app/ActivityTransitionCoordinator;->noLayoutSuppressionForVisibilityTransitions(Landroid/transition/Transition;)V

    .line 400
    return-object p1
.end method

.method public greylist-max-o copyMappedViews()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected greylist-max-o createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;
    .registers 13
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

    .line 678
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 679
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 680
    if-nez v0, :cond_c

    .line 681
    return-object v1

    .line 683
    :cond_c
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 684
    const/4 v2, 0x2

    new-array v9, v2, [I

    .line 685
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v2

    .line 686
    if-eqz v2, :cond_20

    .line 687
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 689
    :cond_20
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 690
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_29
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 691
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 692
    nop

    .line 693
    const/4 v3, 0x0

    if-eqz v2, :cond_60

    .line 694
    const-string/jumbo v4, "shared_element:bitmap"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 695
    if-eqz v2, :cond_53

    iget-object v4, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v4, :cond_53

    .line 696
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    invoke-virtual {v3, v0, v2}, Landroid/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    goto :goto_54

    .line 698
    :cond_53
    move-object v4, v3

    :goto_54
    if-eqz v4, :cond_5d

    .line 699
    const/4 v8, 0x0

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Landroid/app/ActivityTransitionCoordinator;->setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V

    goto :goto_5e

    .line 698
    :cond_5d
    move-object v6, p1

    .line 703
    :goto_5e
    move-object v3, v4

    goto :goto_61

    .line 693
    :cond_60
    move-object v6, p1

    .line 703
    :goto_61
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    move-object p1, v6

    goto :goto_29

    .line 705
    :cond_66
    return-object v1
.end method

.method public greylist-max-o getAcceptedNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public greylist-max-o getDecor()Landroid/view/ViewGroup;
    .registers 2

    .line 313
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_e
    return-object v0
.end method

.method protected greylist-max-o getFadeDuration()J
    .registers 3

    .line 757
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getTransitionBackgroundFadeDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getMappedNames()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 346
    const/4 v1, 0x0

    :goto_c
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 347
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 349
    :cond_26
    return-object v0
.end method

.method protected abstract greylist-max-o getViewsTransition()Landroid/transition/Transition;
.end method

.method protected greylist-max-o getWindow()Landroid/view/Window;
    .registers 2

    .line 309
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method protected greylist-max-o hideViews(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 761
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 762
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_29

    .line 763
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 764
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 765
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    :cond_22
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 769
    :cond_29
    return-void
.end method

.method public greylist-max-o isTransitionRunning()Z
    .registers 2

    .line 1044
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementTransitionComplete:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mBackgroundAnimatorComplete:Z

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

.method protected greylist-max-o isViewsTransitionComplete()Z
    .registers 2

    .line 946
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    return v0
.end method

.method protected greylist-max-o mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;
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

    .line 472
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 473
    if-eqz p1, :cond_20

    .line 474
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 475
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 478
    :cond_20
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object p1

    .line 479
    if-eqz p1, :cond_29

    .line 480
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findNamedViews(Ljava/util/Map;)V

    .line 483
    :cond_29
    return-object v0
.end method

.method protected greylist-max-o moveSharedElementWithParent()Z
    .registers 2

    .line 889
    const/4 v0, 0x1

    return v0
.end method

.method protected greylist-max-o moveSharedElementsFromOverlay()V
    .registers 5

    .line 905
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 906
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_18

    .line 907
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;

    .line 908
    invoke-virtual {v3}, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->removeListener()V

    .line 906
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 910
    :cond_18
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 912
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementsUseOverlay()Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_4b

    .line 915
    :cond_2a
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 916
    if-eqz v0, :cond_4a

    .line 917
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 918
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 919
    nop

    :goto_3a
    if-ge v1, v0, :cond_4a

    .line 920
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 921
    invoke-static {v2}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    .line 919
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 924
    :cond_4a
    return-void

    .line 913
    :cond_4b
    :goto_4b
    return-void
.end method

.method protected greylist-max-o moveSharedElementsToOverlay()V
    .registers 9

    .line 860
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_70

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementsUseOverlay()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_70

    .line 863
    :cond_d
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->setSharedElementMatrices()V

    .line 864
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 865
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 866
    if-eqz v1, :cond_6f

    .line 867
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->moveSharedElementWithParent()Z

    move-result v2

    .line 868
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 869
    const/4 v4, 0x0

    :goto_26
    if-ge v4, v0, :cond_6f

    .line 870
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 871
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 872
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 873
    iget-object v6, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Matrix;

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 874
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 875
    invoke-static {v5, v1, v3}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;

    .line 876
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 877
    if-eqz v2, :cond_6c

    invoke-static {v6, v1}, Landroid/app/ActivityTransitionCoordinator;->isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z

    move-result v7

    if-nez v7, :cond_6c

    .line 878
    new-instance v7, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;

    invoke-direct {v7, v5, v6, v1}, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 879
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 880
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 881
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    :cond_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 886
    :cond_6f
    return-void

    .line 861
    :cond_70
    :goto_70
    return-void
.end method

.method protected greylist-max-o notifySharedElementEnd(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v0, :cond_d

    .line 632
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 634
    :cond_d
    return-void
.end method

.method protected greylist-max-o onTransitionsComplete()V
    .registers 1

    .line 983
    return-void
.end method

.method protected greylist-max-o pauseInput()V
    .registers 3

    .line 976
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 977
    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 978
    :goto_c
    if-eqz v0, :cond_12

    .line 979
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setPausedForTransition(Z)V

    .line 981
    :cond_12
    return-void
.end method

.method protected greylist-max-o scheduleGhostVisibilityChange(I)V
    .registers 4

    .line 937
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 938
    if-eqz v0, :cond_e

    .line 939
    new-instance v1, Landroid/app/ActivityTransitionCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/app/ActivityTransitionCoordinator$$ExternalSyntheticLambda1;-><init>(Landroid/app/ActivityTransitionCoordinator;I)V

    invoke-static {v0, v1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 943
    :cond_e
    return-void
.end method

.method protected greylist-max-o scheduleSetSharedElementEnd(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 637
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 638
    if-eqz v0, :cond_e

    .line 639
    new-instance v1, Landroid/app/ActivityTransitionCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/ActivityTransitionCoordinator$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityTransitionCoordinator;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 643
    :cond_e
    return-void
.end method

.method protected greylist-max-o setEpicenter()V
    .registers 4

    .line 320
    nop

    .line 321
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 322
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 323
    if-ltz v0, :cond_29

    .line 324
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_2a

    .line 327
    :cond_29
    const/4 v0, 0x0

    :goto_2a
    invoke-direct {p0, v0}, Landroid/app/ActivityTransitionCoordinator;->setEpicenter(Landroid/view/View;)V

    .line 328
    return-void
.end method

.method protected greylist-max-o setGhostVisibility(I)V
    .registers 5

    .line 927
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 928
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 929
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Landroid/view/GhostView;->getGhost(Landroid/view/View;)Landroid/view/GhostView;

    move-result-object v2

    .line 930
    if-eqz v2, :cond_1a

    .line 931
    invoke-virtual {v2, p1}, Landroid/view/GhostView;->setVisibility(I)V

    .line 928
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 934
    :cond_1d
    return-void
.end method

.method protected greylist-max-o setResultReceiver(Landroid/os/ResultReceiver;)V
    .registers 2

    .line 487
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 488
    return-void
.end method

.method protected greylist-max-o setSharedElementState(Landroid/os/Bundle;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;",
            ">;"
        }
    .end annotation

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 610
    if-eqz p1, :cond_3f

    .line 611
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 612
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 613
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 614
    const/4 v1, 0x0

    move v9, v1

    :goto_19
    if-ge v9, v8, :cond_3d

    .line 615
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 616
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 617
    invoke-static {v2, v3, p1}, Landroid/app/ActivityTransitionCoordinator;->getOldSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;

    move-result-object v1

    .line 619
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/app/ActivityTransitionCoordinator;->setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V

    .line 614
    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_3d
    move-object v1, p0

    goto :goto_40

    .line 610
    :cond_3f
    move-object v1, p0

    .line 624
    :goto_40
    iget-object p1, v1, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz p1, :cond_4d

    .line 625
    iget-object p1, v1, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v2, v1, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v1, v1, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v1, p2}, Landroid/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 627
    :cond_4d
    return-object v0
.end method

.method protected greylist-max-o setTargets(Landroid/transition/Transition;Z)Landroid/transition/Transition;
    .registers 7

    .line 357
    if-eqz p1, :cond_6e

    if-eqz p2, :cond_11

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    .line 358
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_6e

    .line 363
    :cond_11
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 364
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v1, :cond_38

    .line 365
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_22
    if-ltz v1, :cond_38

    .line 366
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 367
    if-eqz p2, :cond_32

    .line 368
    invoke-virtual {v0, v3}, Landroid/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    goto :goto_35

    .line 370
    :cond_32
    invoke-virtual {v0, v3, v2}, Landroid/transition/TransitionSet;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 365
    :goto_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    .line 374
    :cond_38
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_53

    .line 375
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_43
    if-ltz v1, :cond_53

    .line 376
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 377
    invoke-virtual {v0, v3, v2}, Landroid/transition/TransitionSet;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 375
    add-int/lit8 v1, v1, -0x1

    goto :goto_43

    .line 382
    :cond_53
    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 384
    if-nez p2, :cond_6d

    iget-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz p1, :cond_6d

    iget-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6d

    .line 386
    new-instance p1, Landroid/transition/TransitionSet;

    invoke-direct {p1}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v0

    .line 389
    :cond_6d
    return-object v0

    .line 359
    :cond_6e
    :goto_6e
    const/4 p1, 0x0

    return-object p1
.end method

.method protected greylist-max-o setTransitioningViewsVisiblity(IZ)V
    .registers 6

    .line 1012
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1013
    :goto_d
    nop

    :goto_e
    if-ge v1, v0, :cond_24

    .line 1014
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1015
    if-eqz p2, :cond_1e

    .line 1017
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21

    .line 1020
    :cond_1e
    invoke-virtual {v2, p1}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 1013
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1023
    :cond_24
    return-void
.end method

.method protected greylist-max-o sharedElementTransitionComplete()V
    .registers 2

    .line 959
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementTransitionComplete:Z

    .line 960
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->startInputWhenTransitionsComplete()V

    .line 961
    return-void
.end method

.method protected greylist-max-o showViews(Ljava/util/ArrayList;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 772
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 773
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    .line 774
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p2}, Landroid/app/ActivityTransitionCoordinator;->showView(Landroid/view/View;Z)V

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 776
    :cond_13
    return-void
.end method

.method protected greylist-max-o startTransition(Ljava/lang/Runnable;)V
    .registers 3

    .line 838
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    if-eqz v0, :cond_7

    .line 839
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    goto :goto_d

    .line 841
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    .line 842
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 844
    :goto_d
    return-void
.end method

.method protected greylist-max-o stripOffscreenViews()V
    .registers 5

    .line 295
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 296
    return-void

    .line 298
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 299
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_2f

    .line 300
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 301
    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 302
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 303
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 306
    :cond_2f
    return-void
.end method

.method protected greylist-max-o transitionStarted()V
    .registers 2

    .line 847
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    .line 848
    return-void
.end method

.method protected greylist-max-o viewsReady(Landroid/util/ArrayMap;)V
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

    .line 234
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 235
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v0, :cond_10

    .line 236
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 238
    :cond_10
    invoke-direct {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->setSharedElements(Landroid/util/ArrayMap;)V

    .line 239
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz p1, :cond_2f

    .line 240
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object p1

    .line 241
    if-eqz p1, :cond_28

    .line 242
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->captureTransitioningViews(Ljava/util/List;)V

    .line 244
    :cond_28
    iget-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 246
    :cond_2f
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->setEpicenter()V

    .line 247
    return-void
.end method

.method protected greylist-max-o viewsTransitionComplete()V
    .registers 2

    .line 950
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    .line 951
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->startInputWhenTransitionsComplete()V

    .line 952
    return-void
.end method
