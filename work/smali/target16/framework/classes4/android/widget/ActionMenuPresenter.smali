.class public Landroid/widget/ActionMenuPresenter;
.super Lcom/android/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroid/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;,
        Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;,
        Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/widget/ActionMenuPresenter$OverflowPopup;,
        Landroid/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTIONBAR_ANIMATIONS_ENABLED:Z = false

.field private static final greylist-max-o ITEM_ANIMATION_DURATION:I = 0x96


# instance fields
.field private final greylist-max-o mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private greylist-max-o mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private greylist-max-o mActionItemWidthLimit:I

.field private greylist-max-o mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private greylist-max-o mExpandedActionViewsExclusive:Z

.field private greylist-max-o mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private greylist-max-o mMaxItems:I

.field private greylist-max-o mMaxItemsSet:Z

.field private greylist-max-o mMinCellSize:I

.field greylist-max-o mOpenSubMenuId:I

.field private greylist-max-o mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

.field private greylist-max-o mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

.field private greylist-max-o mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mPendingOverflowIconSet:Z

.field private greylist-max-o mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final greylist-max-o mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

.field private greylist-max-o mPostLayoutItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private greylist-max-o mPreLayoutItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReserveOverflow:Z

.field private greylist-max-o mReserveOverflowSet:Z

.field private greylist-max-o mRunningItemAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStrictWidthLimit:Z

.field private greylist-max-o mWidthLimit:I

.field private greylist-max-o mWidthLimitSet:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActionButtonPopup(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .registers 1

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmItemAnimationPreDrawListener(Landroid/widget/ActionMenuPresenter;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowButton(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowMenuButton;
    .registers 1

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowPopup(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowPopup;
    .registers 1

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPostLayoutItems(Landroid/widget/ActionMenuPresenter;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPostedOpenRunnable(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreLayoutItems(Landroid/widget/ActionMenuPresenter;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunningItemAnimations(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActionButtonPopup(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOverflowPopup(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPostedOpenRunnable(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcomputeMenuItemAnimationInfo(Landroid/widget/ActionMenuPresenter;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ActionMenuPresenter;->computeMenuItemAnimationInfo(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrunItemAnimations(Landroid/widget/ActionMenuPresenter;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter;->runItemAnimations()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 4

    .line 129
    const v0, 0x1090024

    const v1, 0x1090023

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 84
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 92
    new-instance p1, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter-IA;)V

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 97
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    .line 98
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    .line 102
    new-instance p1, Landroid/widget/ActionMenuPresenter$1;

    invoke-direct {p1, p0}, Landroid/widget/ActionMenuPresenter$1;-><init>(Landroid/widget/ActionMenuPresenter;)V

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 112
    new-instance p1, Landroid/widget/ActionMenuPresenter$2;

    invoke-direct {p1, p0}, Landroid/widget/ActionMenuPresenter$2;-><init>(Landroid/widget/ActionMenuPresenter;)V

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 131
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .registers 1

    .line 63
    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object p0
.end method

.method static synthetic blacklist access$100(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .registers 1

    .line 63
    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object p0
.end method

.method static synthetic blacklist access$200(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .registers 1

    .line 63
    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object p0
.end method

.method static synthetic blacklist access$300(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 1

    .line 63
    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic blacklist access$400(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 1

    .line 63
    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic blacklist access$500(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .registers 1

    .line 63
    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object p0
.end method

.method static synthetic blacklist access$600(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 1

    .line 63
    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic blacklist access$700(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 1

    .line 63
    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic blacklist access$800(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .registers 1

    .line 63
    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object p0
.end method

.method private greylist-max-o computeMenuItemAnimationInfo(Z)V
    .registers 9

    .line 280
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 281
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 282
    if-eqz p1, :cond_d

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    goto :goto_f

    :cond_d
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 283
    :goto_f
    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_33

    .line 284
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 285
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 286
    if-lez v5, :cond_30

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    if-eqz v6, :cond_30

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    if-eqz v6, :cond_30

    .line 287
    new-instance v6, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    invoke-direct {v6, v4, p1}, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;-><init>(Landroid/view/View;Z)V

    .line 288
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 291
    :cond_33
    return-void
.end method

.method private greylist-max-o findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 8

    .line 532
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 533
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 535
    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 536
    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_24

    .line 537
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 538
    instance-of v5, v4, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v5, :cond_21

    move-object v5, v4

    check-cast v5, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 539
    invoke-interface {v5}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v5

    if-ne v5, p1, :cond_21

    .line 540
    return-object v4

    .line 536
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 543
    :cond_24
    return-object v1
.end method

.method private greylist-max-o runItemAnimations()V
    .registers 15

    .line 302
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x96

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v1, v2, :cond_12e

    .line 303
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 304
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 305
    iget-object v10, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    .line 306
    if-ltz v10, :cond_cd

    .line 308
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 309
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 310
    nop

    .line 311
    nop

    .line 312
    iget v10, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    iget v11, v3, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    const/4 v12, 0x0

    if-eq v10, v11, :cond_4b

    .line 313
    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    iget v11, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    iget v13, v3, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    sub-int/2addr v11, v13

    int-to-float v11, v11

    new-array v13, v7, [F

    aput v11, v13, v0

    aput v6, v13, v8

    invoke-static {v10, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    goto :goto_4c

    .line 312
    :cond_4b
    move-object v10, v12

    .line 316
    :goto_4c
    iget v11, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    iget v13, v3, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    if-eq v11, v13, :cond_64

    .line 317
    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v9, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    iget v12, v3, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    sub-int/2addr v9, v12

    int-to-float v9, v9

    new-array v12, v7, [F

    aput v9, v12, v0

    aput v6, v12, v8

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 320
    :cond_64
    if-nez v10, :cond_68

    if-eqz v12, :cond_c7

    .line 321
    :cond_68
    move v6, v0

    :goto_69
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_89

    .line 322
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 323
    iget v11, v9, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v11, v2, :cond_86

    iget v11, v9, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-nez v11, :cond_86

    .line 324
    iget-object v9, v9, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v9}, Landroid/animation/Animator;->cancel()V

    .line 321
    :cond_86
    add-int/lit8 v6, v6, 0x1

    goto :goto_69

    .line 328
    :cond_89
    if-eqz v10, :cond_a5

    .line 329
    if-eqz v12, :cond_9a

    .line 330
    iget-object v6, v3, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v10, v7, v0

    aput-object v12, v7, v8

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    goto :goto_af

    .line 333
    :cond_9a
    iget-object v6, v3, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    new-array v7, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v10, v7, v0

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    goto :goto_af

    .line 336
    :cond_a5
    iget-object v6, v3, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    new-array v7, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v7, v0

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 338
    :goto_af
    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 339
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 340
    new-instance v4, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    invoke-direct {v4, v2, v3, v6, v0}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 342
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v3, Landroid/widget/ActionMenuPresenter$3;

    invoke-direct {v3, p0}, Landroid/widget/ActionMenuPresenter$3;-><init>(Landroid/widget/ActionMenuPresenter;)V

    invoke-virtual {v6, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 355
    :cond_c7
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 356
    goto :goto_12a

    .line 358
    :cond_cd
    nop

    .line 359
    move v10, v0

    :goto_cf
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_f7

    .line 360
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 361
    iget v12, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v12, v2, :cond_f4

    iget v12, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-ne v12, v8, :cond_f4

    .line 362
    iget-object v3, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v3, v3, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    .line 363
    iget-object v11, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v11}, Landroid/animation/Animator;->cancel()V

    .line 359
    :cond_f4
    add-int/lit8 v10, v10, 0x1

    goto :goto_cf

    .line 366
    :cond_f7
    iget-object v10, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v7, [F

    aput v3, v12, v0

    aput v6, v12, v8

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 369
    iget-object v6, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    iget-object v8, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 370
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 371
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 372
    new-instance v4, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    invoke-direct {v4, v2, v9, v3, v7}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 373
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance v2, Landroid/widget/ActionMenuPresenter$4;

    invoke-direct {v2, p0, v9}, Landroid/widget/ActionMenuPresenter$4;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;)V

    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 302
    :goto_12a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 388
    :cond_12e
    move v1, v0

    :goto_12f
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a1

    .line 389
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 390
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    .line 391
    if-ltz v9, :cond_19e

    .line 393
    iget-object v10, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 394
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 395
    nop

    .line 396
    move v10, v0

    move v11, v6

    :goto_150
    iget-object v12, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_178

    .line 397
    iget-object v12, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 398
    iget v13, v12, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v13, v2, :cond_175

    iget v13, v12, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-ne v13, v7, :cond_175

    .line 399
    iget-object v11, v12, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v11, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v11

    .line 400
    iget-object v12, v12, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v12}, Landroid/animation/Animator;->cancel()V

    .line 396
    :cond_175
    add-int/lit8 v10, v10, 0x1

    goto :goto_150

    .line 403
    :cond_178
    iget-object v10, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v7, [F

    aput v11, v13, v0

    aput v3, v13, v8

    invoke-static {v10, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 405
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 406
    invoke-virtual {v10, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 407
    new-instance v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    invoke-direct {v11, v2, v9, v10, v8}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 408
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v2, Landroid/widget/ActionMenuPresenter$5;

    invoke-direct {v2, p0}, Landroid/widget/ActionMenuPresenter$5;-><init>(Landroid/widget/ActionMenuPresenter;)V

    invoke-virtual {v10, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 388
    :cond_19e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12f

    .line 422
    :cond_1a1
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 423
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 424
    return-void
.end method

.method private greylist-max-o setupItemAnimations()V
    .registers 3

    .line 431
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/ActionMenuPresenter;->computeMenuItemAnimationInfo(Z)V

    .line 432
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 433
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 434
    return-void
.end method


# virtual methods
.method public greylist-max-o bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
    .registers 4

    .line 254
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 256
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast p1, Landroid/widget/ActionMenuView;

    .line 257
    check-cast p2, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 258
    invoke-virtual {p2, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 260
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez p1, :cond_19

    .line 261
    new-instance p1, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter-IA;)V

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 263
    :cond_19
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {p2, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setPopupCallback(Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;)V

    .line 264
    return-void
.end method

.method public greylist-max-r dismissPopupMenus()Z
    .registers 3

    .line 593
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 594
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 595
    return v0
.end method

.method public greylist-max-o filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .registers 5

    .line 491
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    if-ne v0, v1, :cond_a

    const/4 p1, 0x0

    return p1

    .line 492
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o flagActionItems()Z
    .registers 21

    .line 633
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    .line 634
    iget-object v1, v0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 635
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_16

    .line 637
    :cond_13
    nop

    .line 638
    move-object v1, v2

    move v4, v3

    .line 641
    :goto_16
    iget v5, v0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 642
    iget v6, v0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 643
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 644
    iget-object v8, v0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v8, Landroid/view/ViewGroup;

    .line 646
    nop

    .line 647
    nop

    .line 648
    nop

    .line 649
    nop

    .line 650
    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_2a
    if-ge v9, v4, :cond_53

    .line 651
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 652
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v15

    if-eqz v15, :cond_3b

    .line 653
    add-int/lit8 v11, v11, 0x1

    goto :goto_45

    .line 654
    :cond_3b
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v15

    if-eqz v15, :cond_44

    .line 655
    add-int/lit8 v12, v12, 0x1

    goto :goto_45

    .line 657
    :cond_44
    const/4 v10, 0x1

    .line 659
    :goto_45
    iget-boolean v13, v0, Landroid/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    if-eqz v13, :cond_50

    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v13

    if-eqz v13, :cond_50

    .line 662
    move v5, v3

    .line 650
    :cond_50
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 667
    :cond_53
    iget-boolean v9, v0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v9, :cond_5e

    if-nez v10, :cond_5c

    add-int/2addr v12, v11

    if-le v12, v5, :cond_5e

    .line 669
    :cond_5c
    add-int/lit8 v5, v5, -0x1

    .line 671
    :cond_5e
    sub-int/2addr v5, v11

    .line 673
    iget-object v9, v0, Landroid/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 674
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->clear()V

    .line 676
    nop

    .line 677
    nop

    .line 678
    iget-boolean v10, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v10, :cond_77

    .line 679
    iget v10, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    div-int v10, v6, v10

    .line 680
    iget v11, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    rem-int v11, v6, v11

    .line 681
    iget v12, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    div-int/2addr v11, v10

    add-int/2addr v12, v11

    goto :goto_79

    .line 678
    :cond_77
    move v10, v3

    move v12, v10

    .line 685
    :goto_79
    move v11, v3

    move v14, v11

    :goto_7b
    if-ge v11, v4, :cond_15d

    .line 686
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 688
    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v16

    if-eqz v16, :cond_b6

    .line 689
    invoke-virtual {v0, v15, v2, v8}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 690
    iget-boolean v2, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v2, :cond_97

    .line 691
    invoke-static {v13, v12, v10, v7, v3}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v2

    sub-int/2addr v10, v2

    goto :goto_9a

    .line 694
    :cond_97
    invoke-virtual {v13, v7, v7}, Landroid/view/View;->measure(II)V

    .line 696
    :goto_9a
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 697
    sub-int/2addr v6, v2

    .line 698
    if-nez v14, :cond_a2

    .line 699
    move v14, v2

    .line 701
    :cond_a2
    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    .line 702
    if-eqz v2, :cond_ad

    .line 703
    const/4 v13, 0x1

    invoke-virtual {v9, v2, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_ae

    .line 702
    :cond_ad
    const/4 v13, 0x1

    .line 705
    :goto_ae
    invoke-virtual {v15, v13}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 706
    move v0, v3

    move/from16 v17, v4

    goto/16 :goto_153

    :cond_b6
    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v2

    if-eqz v2, :cond_14d

    .line 709
    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    .line 710
    invoke-virtual {v9, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    .line 711
    if-gtz v5, :cond_c8

    if-eqz v13, :cond_d2

    :cond_c8
    if-lez v6, :cond_d2

    iget-boolean v3, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v3, :cond_d0

    if-lez v10, :cond_d2

    :cond_d0
    const/4 v3, 0x1

    goto :goto_d3

    :cond_d2
    const/4 v3, 0x0

    .line 714
    :goto_d3
    if-eqz v3, :cond_111

    .line 715
    move/from16 v18, v3

    move/from16 v17, v4

    const/4 v3, 0x0

    invoke-virtual {v0, v15, v3, v8}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 716
    iget-boolean v3, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v3, :cond_f0

    .line 717
    const/4 v3, 0x0

    invoke-static {v4, v12, v10, v7, v3}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v19

    .line 719
    sub-int v10, v10, v19

    .line 720
    if-nez v19, :cond_ed

    .line 721
    const/16 v18, 0x0

    .line 723
    :cond_ed
    move/from16 v3, v18

    goto :goto_f5

    .line 724
    :cond_f0
    invoke-virtual {v4, v7, v7}, Landroid/view/View;->measure(II)V

    move/from16 v3, v18

    .line 726
    :goto_f5
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 727
    sub-int/2addr v6, v4

    .line 728
    if-nez v14, :cond_fd

    .line 729
    move v14, v4

    .line 732
    :cond_fd
    iget-boolean v4, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v4, :cond_108

    .line 733
    if-ltz v6, :cond_105

    const/4 v4, 0x1

    goto :goto_106

    :cond_105
    const/4 v4, 0x0

    :goto_106
    and-int/2addr v3, v4

    goto :goto_115

    .line 736
    :cond_108
    add-int v4, v6, v14

    if-lez v4, :cond_10e

    const/4 v4, 0x1

    goto :goto_10f

    :cond_10e
    const/4 v4, 0x0

    :goto_10f
    and-int/2addr v3, v4

    goto :goto_115

    .line 714
    :cond_111
    move/from16 v18, v3

    move/from16 v17, v4

    .line 740
    :goto_115
    if-eqz v3, :cond_11e

    if-eqz v2, :cond_11e

    .line 741
    const/4 v13, 0x1

    invoke-virtual {v9, v2, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_144

    .line 742
    :cond_11e
    if-eqz v13, :cond_144

    .line 744
    const/4 v4, 0x0

    invoke-virtual {v9, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 745
    const/4 v4, 0x0

    :goto_125
    if-ge v4, v11, :cond_144

    .line 746
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 747
    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v0

    if-ne v0, v2, :cond_13f

    .line 749
    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    if-eqz v0, :cond_13b

    add-int/lit8 v5, v5, 0x1

    .line 750
    :cond_13b
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 745
    :cond_13f
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_125

    .line 755
    :cond_144
    :goto_144
    if-eqz v3, :cond_148

    add-int/lit8 v5, v5, -0x1

    .line 757
    :cond_148
    invoke-virtual {v15, v3}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 758
    const/4 v0, 0x0

    goto :goto_153

    .line 760
    :cond_14d
    move/from16 v17, v4

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 685
    :goto_153
    add-int/lit8 v11, v11, 0x1

    move v3, v0

    move/from16 v4, v17

    const/4 v2, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_7b

    .line 763
    :cond_15d
    const/16 v16, 0x1

    return v16
.end method

.method public greylist-max-o getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 238
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 240
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 242
    :cond_10
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result p1

    if-eqz p1, :cond_19

    const/16 p1, 0x8

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    check-cast p3, Landroid/widget/ActionMenuView;

    .line 245
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 246
    invoke-virtual {p3, p1}, Landroid/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_30

    .line 247
    invoke-virtual {p3, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    :cond_30
    return-object v0
.end method

.method public greylist-max-o getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .registers 4

    .line 224
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 225
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object p1

    .line 226
    if-eq v0, p1, :cond_1f

    .line 227
    move-object v1, p1

    check-cast v1, Landroid/widget/ActionMenuView;

    invoke-virtual {v1, p0}, Landroid/widget/ActionMenuView;->setPresenter(Landroid/widget/ActionMenuPresenter;)V

    .line 228
    if-eqz v0, :cond_17

    .line 229
    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 231
    :cond_17
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 233
    :cond_1f
    return-object p1
.end method

.method public greylist-max-o getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 214
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_b

    .line 215
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 216
    :cond_b
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v0, :cond_12

    .line 217
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 219
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o hideOverflowMenu()Z
    .registers 4

    .line 573
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v0, :cond_16

    .line 574
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 576
    return v1

    .line 579
    :cond_16
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    .line 580
    if-eqz v0, :cond_1e

    .line 581
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 582
    return v1

    .line 584
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o hideSubMenus()Z
    .registers 2

    .line 604
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_b

    .line 605
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 606
    const/4 v0, 0x1

    return v0

    .line 608
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 7

    .line 135
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 139
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object p1

    .line 140
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v0, :cond_15

    .line 141
    invoke-virtual {p1}, Lcom/android/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 144
    :cond_15
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v0, :cond_1f

    .line 145
    invoke-virtual {p1}, Lcom/android/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v0

    iput v0, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 149
    :cond_1f
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_29

    .line 150
    invoke-virtual {p1}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result p1

    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 153
    :cond_29
    iget p1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 154
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    .line 155
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v0, :cond_56

    .line 156
    new-instance v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 157
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4d

    .line 158
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iput-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 160
    iput-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 162
    :cond_4d
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 163
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1, v0, v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->measure(II)V

    .line 165
    :cond_56
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_60

    .line 167
    :cond_5e
    iput-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 170
    :goto_60
    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 172
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42600000    # 56.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    .line 173
    return-void
.end method

.method public greylist-max-o isOverflowMenuShowPending()Z
    .registers 2

    .line 620
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public greylist-max-r isOverflowMenuShowing()Z
    .registers 2

    .line 616
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o isOverflowReserved()Z
    .registers 2

    .line 627
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public greylist-max-o onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 3

    .line 768
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 769
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 770
    return-void
.end method

.method public greylist-max-o onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 176
    iget-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez p1, :cond_10

    .line 177
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result p1

    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 179
    :cond_10
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_1a

    .line 180
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 182
    :cond_1a
    return-void
.end method

.method public greylist-max-r onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 783
    check-cast p1, Landroid/widget/ActionMenuPresenter$SavedState;

    .line 784
    iget v0, p1, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v0, :cond_19

    .line 785
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget p1, p1, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 786
    if-eqz p1, :cond_19

    .line 787
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 788
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 791
    :cond_19
    return-void
.end method

.method public greylist-max-r onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 775
    new-instance v0, Landroid/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroid/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 776
    iget v1, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 777
    return-object v0
.end method

.method public greylist-max-o onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .registers 9

    .line 496
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 498
    :cond_8
    move-object v0, p1

    .line 499
    :goto_9
    invoke-virtual {v0}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq v2, v3, :cond_18

    .line 500
    invoke-virtual {v0}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/SubMenuBuilder;

    goto :goto_9

    .line 502
    :cond_18
    invoke-virtual {v0}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 503
    if-nez v0, :cond_23

    .line 508
    return v1

    .line 511
    :cond_23
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 513
    nop

    .line 514
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v2

    .line 515
    move v3, v1

    :goto_33
    const/4 v4, 0x1

    if-ge v3, v2, :cond_4c

    .line 516
    invoke-virtual {p1, v3}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 517
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_49

    .line 518
    nop

    .line 519
    move v1, v4

    goto :goto_4c

    .line 515
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 523
    :cond_4c
    :goto_4c
    new-instance v2, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1, v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;Landroid/view/View;)V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 524
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 525
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 527
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 528
    return v4
.end method

.method public greylist-max-o onSubUiVisibilityChanged(Z)V
    .registers 3

    .line 795
    if-eqz p1, :cond_7

    .line 797
    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    goto :goto_11

    .line 798
    :cond_7
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_11

    .line 799
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 801
    :cond_11
    :goto_11
    return-void
.end method

.method public greylist-max-o setExpandedActionViewsExclusive(Z)V
    .registers 2

    .line 201
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 202
    return-void
.end method

.method public greylist-max-o setItemLimit(I)V
    .registers 2

    .line 196
    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 197
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 198
    return-void
.end method

.method public greylist-max-o setMenuView(Landroid/widget/ActionMenuView;)V
    .registers 4

    .line 804
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eq p1, v0, :cond_1d

    .line 805
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v0, :cond_11

    .line 806
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 808
    :cond_11
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 809
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 810
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 812
    :cond_1d
    return-void
.end method

.method public greylist-max-o setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 205
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_a

    .line 206
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    .line 208
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 209
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 211
    :goto_f
    return-void
.end method

.method public greylist-max-o setReserveOverflow(Z)V
    .registers 2

    .line 191
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 192
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 193
    return-void
.end method

.method public greylist-max-o setWidthLimit(IZ)V
    .registers 3

    .line 185
    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 186
    iput-boolean p2, p0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 187
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 188
    return-void
.end method

.method public greylist-max-o shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 268
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result p1

    return p1
.end method

.method public greylist-max-o showOverflowMenu()Z
    .registers 8

    .line 551
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_45

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 552
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    .line 553
    new-instance v1, Landroid/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    const/4 v6, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 554
    new-instance v0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v0, p0, v1}, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v0, v2, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 556
    iget-object v0, v2, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, v2, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 560
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 562
    const/4 v0, 0x1

    return v0

    .line 564
    :cond_45
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o updateMenuView(Z)V
    .registers 6

    .line 438
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 439
    nop

    .line 442
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 444
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 446
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_39

    .line 447
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object p1

    .line 448
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 449
    move v2, v0

    :goto_25
    if-ge v2, v1, :cond_39

    .line 450
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v3

    .line 451
    if-eqz v3, :cond_36

    .line 452
    invoke-virtual {v3, p0}, Landroid/view/ActionProvider;->setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V

    .line 449
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 457
    :cond_39
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_44

    .line 458
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_45

    :cond_44
    const/4 p1, 0x0

    .line 460
    :goto_45
    nop

    .line 461
    iget-boolean v1, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_63

    if-eqz p1, :cond_63

    .line 462
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 463
    const/4 v2, 0x1

    if-ne v1, v2, :cond_60

    .line 464
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    goto :goto_63

    .line 466
    :cond_60
    if-lez v1, :cond_63

    move v0, v2

    .line 470
    :cond_63
    :goto_63
    if-eqz v0, :cond_93

    .line 471
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez p1, :cond_72

    .line 472
    new-instance p1, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 474
    :cond_72
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {p1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 475
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eq p1, v0, :cond_ab

    .line 476
    if-eqz p1, :cond_85

    .line 477
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 479
    :cond_85
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast p1, Landroid/widget/ActionMenuView;

    .line 480
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {p1}, Landroid/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ab

    .line 482
    :cond_93
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz p1, :cond_ab

    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {p1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-ne p1, v0, :cond_ab

    .line 483
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_ac

    .line 482
    :cond_ab
    :goto_ab
    nop

    .line 486
    :goto_ac
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast p1, Landroid/widget/ActionMenuView;

    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 487
    return-void
.end method
