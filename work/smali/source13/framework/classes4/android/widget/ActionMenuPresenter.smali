.class public Landroid/widget/ActionMenuPresenter;
.super Lcom/android/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;,
        Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;,
        Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/widget/ActionMenuPresenter$OverflowPopup;,
        Landroid/widget/ActionMenuPresenter$OverflowMenuButton;,
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
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    const v0, 0x1090021

    const v1, 0x1090020

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 84
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 92
    new-instance v0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$PopupPresenterCallback-IA;)V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    .line 102
    new-instance v0, Landroid/widget/ActionMenuPresenter$1;

    invoke-direct {v0, p0}, Landroid/widget/ActionMenuPresenter$1;-><init>(Landroid/widget/ActionMenuPresenter;)V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 112
    new-instance v0, Landroid/widget/ActionMenuPresenter$2;

    invoke-direct {v0, p0}, Landroid/widget/ActionMenuPresenter$2;-><init>(Landroid/widget/ActionMenuPresenter;)V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 131
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 63
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic blacklist access$100(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 63
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic blacklist access$200(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 63
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic blacklist access$300(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 63
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic blacklist access$400(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 63
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic blacklist access$500(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 63
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic blacklist access$600(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 63
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic blacklist access$700(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 63
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic blacklist access$800(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 63
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method private greylist-max-o computeMenuItemAnimationInfo(Z)V
    .registers 9
    .param p1, "preLayout"    # Z

    .line 280
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 281
    .local v0, "menuView":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 282
    .local v1, "count":I
    if-eqz p1, :cond_d

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    goto :goto_f

    :cond_d
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 283
    .local v2, "items":Landroid/util/SparseArray;
    :goto_f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v1, :cond_33

    .line 284
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 285
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 286
    .local v5, "id":I
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
    .local v6, "info":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "id":I
    .end local v6    # "info":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 291
    .end local v3    # "i":I
    :cond_33
    return-void
.end method

.method private greylist-max-o findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 532
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 533
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 535
    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 536
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v2, :cond_24

    .line 537
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 538
    .local v4, "child":Landroid/view/View;
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
    .end local v4    # "child":Landroid/view/View;
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 543
    .end local v3    # "i":I
    :cond_24
    return-object v1
.end method

.method private greylist-max-o runItemAnimations()V
    .registers 17

    .line 302
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v2, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v1, v2, :cond_12f

    .line 303
    iget-object v2, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 304
    .local v2, "id":I
    iget-object v8, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 305
    .local v8, "menuItemLayoutInfoPre":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    iget-object v9, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    .line 306
    .local v9, "postLayoutIndex":I
    const/4 v10, 0x0

    if-ltz v9, :cond_ca

    .line 308
    iget-object v11, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 309
    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 310
    .local v11, "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    const/4 v12, 0x0

    .line 311
    .local v12, "pvhX":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x0

    .line 312
    .local v13, "pvhY":Landroid/animation/PropertyValuesHolder;
    iget v14, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    iget v15, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    if-eq v14, v15, :cond_47

    .line 313
    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v15, v5, [F

    iget v3, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    iget v4, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v15, v6

    aput v10, v15, v7

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 316
    :cond_47
    iget v3, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    iget v4, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    if-eq v3, v4, :cond_5f

    .line 317
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v5, [F

    iget v14, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    iget v15, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    aput v14, v4, v6

    aput v10, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 320
    :cond_5f
    if-nez v12, :cond_63

    if-eqz v13, :cond_c4

    .line 321
    :cond_63
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_64
    iget-object v4, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_84

    .line 322
    iget-object v4, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 323
    .local v4, "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v10, v4, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v10, v2, :cond_81

    iget v10, v4, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-nez v10, :cond_81

    .line 324
    iget-object v10, v4, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->cancel()V

    .line 321
    .end local v4    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 328
    .end local v3    # "j":I
    :cond_84
    if-eqz v12, :cond_a0

    .line 329
    if-eqz v13, :cond_95

    .line 330
    iget-object v3, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    new-array v4, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v4, v6

    aput-object v13, v4, v7

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, "anim":Landroid/animation/ObjectAnimator;
    goto :goto_aa

    .line 333
    .end local v3    # "anim":Landroid/animation/ObjectAnimator;
    :cond_95
    iget-object v3, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v4, v6

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .restart local v3    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_aa

    .line 336
    .end local v3    # "anim":Landroid/animation/ObjectAnimator;
    :cond_a0
    iget-object v3, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v13, v4, v6

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 338
    .restart local v3    # "anim":Landroid/animation/ObjectAnimator;
    :goto_aa
    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 339
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 340
    new-instance v4, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    invoke-direct {v4, v2, v11, v3, v6}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 342
    .local v4, "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget-object v5, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v5, Landroid/widget/ActionMenuPresenter$3;

    invoke-direct {v5, v0}, Landroid/widget/ActionMenuPresenter$3;-><init>(Landroid/widget/ActionMenuPresenter;)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 355
    .end local v3    # "anim":Landroid/animation/ObjectAnimator;
    .end local v4    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_c4
    iget-object v3, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 356
    .end local v11    # "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v12    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "pvhY":Landroid/animation/PropertyValuesHolder;
    goto :goto_12b

    .line 358
    :cond_ca
    const/high16 v3, 0x3f800000    # 1.0f

    .line 359
    .local v3, "oldAlpha":F
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_cd
    iget-object v11, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_f5

    .line 360
    iget-object v11, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 361
    .local v11, "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v12, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v12, v2, :cond_f2

    iget v12, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-ne v12, v7, :cond_f2

    .line 362
    iget-object v12, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v12, v12, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v3

    .line 363
    iget-object v12, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v12}, Landroid/animation/Animator;->cancel()V

    .line 359
    .end local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_f2
    add-int/lit8 v4, v4, 0x1

    goto :goto_cd

    .line 366
    .end local v4    # "j":I
    :cond_f5
    iget-object v4, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v5, [F

    aput v3, v12, v6

    aput v10, v12, v7

    invoke-static {v4, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 369
    .local v4, "anim":Landroid/animation/ObjectAnimator;
    iget-object v6, v0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    iget-object v7, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 370
    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 371
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 372
    new-instance v6, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    invoke-direct {v6, v2, v8, v4, v5}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    move-object v5, v6

    .line 373
    .local v5, "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget-object v6, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance v6, Landroid/widget/ActionMenuPresenter$4;

    invoke-direct {v6, v0, v8}, Landroid/widget/ActionMenuPresenter$4;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;)V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 302
    .end local v2    # "id":I
    .end local v3    # "oldAlpha":F
    .end local v4    # "anim":Landroid/animation/ObjectAnimator;
    .end local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    .end local v8    # "menuItemLayoutInfoPre":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v9    # "postLayoutIndex":I
    :goto_12b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 388
    .end local v1    # "i":I
    :cond_12f
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_130
    iget-object v2, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a8

    .line 389
    iget-object v2, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 390
    .restart local v2    # "id":I
    iget-object v3, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 391
    .local v3, "postLayoutIndex":I
    if-ltz v3, :cond_1a3

    .line 393
    iget-object v4, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 394
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 395
    .local v4, "menuItemLayoutInfo":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    const/4 v8, 0x0

    .line 396
    .local v8, "oldAlpha":F
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_150
    iget-object v10, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_178

    .line 397
    iget-object v10, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 398
    .local v10, "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v11, v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v11, v2, :cond_175

    iget v11, v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-ne v11, v5, :cond_175

    .line 399
    iget-object v11, v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v11, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v8

    .line 400
    iget-object v11, v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v11}, Landroid/animation/Animator;->cancel()V

    .line 396
    .end local v10    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_175
    add-int/lit8 v9, v9, 0x1

    goto :goto_150

    .line 403
    .end local v9    # "j":I
    :cond_178
    iget-object v9, v4, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v5, [F

    aput v8, v11, v6

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v11, v7

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 405
    .local v9, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->start()V

    .line 406
    const-wide/16 v10, 0x96

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 407
    new-instance v12, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    invoke-direct {v12, v2, v4, v9, v7}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 408
    .local v12, "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget-object v13, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v13, Landroid/widget/ActionMenuPresenter$5;

    invoke-direct {v13, v0}, Landroid/widget/ActionMenuPresenter$5;-><init>(Landroid/widget/ActionMenuPresenter;)V

    invoke-virtual {v9, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1a5

    .line 391
    .end local v4    # "menuItemLayoutInfo":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v8    # "oldAlpha":F
    .end local v9    # "anim":Landroid/animation/ObjectAnimator;
    .end local v12    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_1a3
    const-wide/16 v10, 0x96

    .line 388
    .end local v2    # "id":I
    .end local v3    # "postLayoutIndex":I
    :goto_1a5
    add-int/lit8 v1, v1, 0x1

    goto :goto_130

    .line 422
    .end local v1    # "i":I
    :cond_1a8
    iget-object v1, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 423
    iget-object v1, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

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
    .registers 7
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 254
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 256
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/widget/ActionMenuView;

    .line 257
    .local v0, "menuView":Landroid/widget/ActionMenuView;
    move-object v1, p2

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 258
    .local v1, "actionItemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 260
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v2, :cond_1a

    .line 261
    new-instance v2, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback-IA;)V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 263
    :cond_1a
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setPopupCallback(Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;)V

    .line 264
    return-void
.end method

.method public greylist-max-r dismissPopupMenus()Z
    .registers 3

    .line 593
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 594
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 595
    return v0
.end method

.method public greylist-max-o filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .line 491
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    return v0

    .line 492
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o flagActionItems()Z
    .registers 25

    .line 633
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_11

    .line 634
    iget-object v1, v0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 635
    .local v1, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "itemsSize":I
    goto :goto_13

    .line 637
    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v2    # "itemsSize":I
    :cond_11
    const/4 v1, 0x0

    .line 638
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    const/4 v2, 0x0

    .line 641
    .restart local v2    # "itemsSize":I
    :goto_13
    iget v3, v0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 642
    .local v3, "maxActions":I
    iget v4, v0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 643
    .local v4, "widthLimit":I
    const/4 v5, 0x0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 644
    .local v6, "querySpec":I
    iget-object v7, v0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    .line 646
    .local v7, "parent":Landroid/view/ViewGroup;
    const/4 v8, 0x0

    .line 647
    .local v8, "requiredItems":I
    const/4 v9, 0x0

    .line 648
    .local v9, "requestedItems":I
    const/4 v10, 0x0

    .line 649
    .local v10, "firstActionWidth":I
    const/4 v11, 0x0

    .line 650
    .local v11, "hasOverflow":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_25
    if-ge v12, v2, :cond_4e

    .line 651
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 652
    .local v13, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_36

    .line 653
    add-int/lit8 v8, v8, 0x1

    goto :goto_40

    .line 654
    :cond_36
    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_3f

    .line 655
    add-int/lit8 v9, v9, 0x1

    goto :goto_40

    .line 657
    :cond_3f
    const/4 v11, 0x1

    .line 659
    :goto_40
    iget-boolean v14, v0, Landroid/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    if-eqz v14, :cond_4b

    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v14

    if-eqz v14, :cond_4b

    .line 662
    const/4 v3, 0x0

    .line 650
    .end local v13    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_4b
    add-int/lit8 v12, v12, 0x1

    goto :goto_25

    .line 667
    .end local v12    # "i":I
    :cond_4e
    iget-boolean v12, v0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v12, :cond_5a

    if-nez v11, :cond_58

    add-int v12, v8, v9

    if-le v12, v3, :cond_5a

    .line 669
    :cond_58
    add-int/lit8 v3, v3, -0x1

    .line 671
    :cond_5a
    sub-int/2addr v3, v8

    .line 673
    iget-object v12, v0, Landroid/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 674
    .local v12, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clear()V

    .line 676
    const/4 v13, 0x0

    .line 677
    .local v13, "cellSize":I
    const/4 v14, 0x0

    .line 678
    .local v14, "cellsRemaining":I
    iget-boolean v15, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v15, :cond_70

    .line 679
    iget v15, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    div-int v14, v4, v15

    .line 680
    rem-int v16, v4, v15

    .line 681
    .local v16, "cellSizeRemaining":I
    div-int v17, v16, v14

    add-int v13, v15, v17

    .line 685
    .end local v16    # "cellSizeRemaining":I
    :cond_70
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_71
    if-ge v15, v2, :cond_180

    .line 686
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 688
    .local v5, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v17

    move/from16 v19, v2

    .end local v2    # "itemsSize":I
    .local v19, "itemsSize":I
    const/4 v2, 0x0

    if-eqz v17, :cond_bd

    .line 689
    invoke-virtual {v0, v5, v2, v7}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 690
    .local v2, "v":Landroid/view/View;
    move/from16 v17, v8

    .end local v8    # "requiredItems":I
    .local v17, "requiredItems":I
    iget-boolean v8, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v8, :cond_96

    .line 691
    const/4 v8, 0x0

    invoke-static {v2, v13, v14, v6, v8}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v20

    sub-int v14, v14, v20

    goto :goto_99

    .line 694
    :cond_96
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 696
    :goto_99
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 697
    .local v8, "measuredWidth":I
    sub-int/2addr v4, v8

    .line 698
    if-nez v10, :cond_a1

    .line 699
    move v10, v8

    .line 701
    :cond_a1
    move-object/from16 v20, v2

    .end local v2    # "v":Landroid/view/View;
    .local v20, "v":Landroid/view/View;
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    .line 702
    .local v2, "groupId":I
    if-eqz v2, :cond_b0

    .line 703
    move/from16 v21, v4

    const/4 v4, 0x1

    .end local v4    # "widthLimit":I
    .local v21, "widthLimit":I
    invoke-virtual {v12, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_b3

    .line 702
    .end local v21    # "widthLimit":I
    .restart local v4    # "widthLimit":I
    :cond_b0
    move/from16 v21, v4

    const/4 v4, 0x1

    .line 705
    .end local v4    # "widthLimit":I
    .restart local v21    # "widthLimit":I
    :goto_b3
    invoke-virtual {v5, v4}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 706
    .end local v2    # "groupId":I
    .end local v8    # "measuredWidth":I
    .end local v20    # "v":Landroid/view/View;
    move-object/from16 v22, v1

    move/from16 v4, v21

    const/4 v0, 0x0

    goto/16 :goto_173

    .end local v17    # "requiredItems":I
    .end local v21    # "widthLimit":I
    .restart local v4    # "widthLimit":I
    .local v8, "requiredItems":I
    :cond_bd
    move/from16 v17, v8

    .end local v8    # "requiredItems":I
    .restart local v17    # "requiredItems":I
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v8

    if-eqz v8, :cond_16b

    .line 709
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v8

    .line 710
    .local v8, "groupId":I
    invoke-virtual {v12, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    .line 711
    .local v20, "inGroup":Z
    if-gtz v3, :cond_d1

    if-eqz v20, :cond_db

    :cond_d1
    if-lez v4, :cond_db

    iget-boolean v2, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v2, :cond_d9

    if-lez v14, :cond_db

    :cond_d9
    const/4 v2, 0x1

    goto :goto_dc

    :cond_db
    const/4 v2, 0x0

    .line 714
    .local v2, "isAction":Z
    :goto_dc
    if-eqz v2, :cond_11e

    .line 715
    move/from16 v22, v2

    const/4 v2, 0x0

    .end local v2    # "isAction":Z
    .local v22, "isAction":Z
    invoke-virtual {v0, v5, v2, v7}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 716
    .local v2, "v":Landroid/view/View;
    move/from16 v21, v3

    .end local v3    # "maxActions":I
    .local v21, "maxActions":I
    iget-boolean v3, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v3, :cond_f9

    .line 717
    const/4 v3, 0x0

    invoke-static {v2, v13, v14, v6, v3}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v23

    .line 719
    .local v23, "cells":I
    sub-int v14, v14, v23

    .line 720
    if-nez v23, :cond_f6

    .line 721
    const/4 v3, 0x0

    .end local v22    # "isAction":Z
    .local v3, "isAction":Z
    goto :goto_f8

    .line 720
    .end local v3    # "isAction":Z
    .restart local v22    # "isAction":Z
    :cond_f6
    move/from16 v3, v22

    .line 723
    .end local v22    # "isAction":Z
    .end local v23    # "cells":I
    .restart local v3    # "isAction":Z
    :goto_f8
    goto :goto_fe

    .line 724
    .end local v3    # "isAction":Z
    .restart local v22    # "isAction":Z
    :cond_f9
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    move/from16 v3, v22

    .line 726
    .end local v22    # "isAction":Z
    .restart local v3    # "isAction":Z
    :goto_fe
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    .line 727
    .local v22, "measuredWidth":I
    sub-int v4, v4, v22

    .line 728
    if-nez v10, :cond_108

    .line 729
    move/from16 v10, v22

    .line 732
    :cond_108
    move-object/from16 v23, v2

    .end local v2    # "v":Landroid/view/View;
    .local v23, "v":Landroid/view/View;
    iget-boolean v2, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v2, :cond_115

    .line 733
    if-ltz v4, :cond_112

    const/4 v2, 0x1

    goto :goto_113

    :cond_112
    const/4 v2, 0x0

    :goto_113
    and-int/2addr v2, v3

    .end local v3    # "isAction":Z
    .local v2, "isAction":Z
    goto :goto_122

    .line 736
    .end local v2    # "isAction":Z
    .restart local v3    # "isAction":Z
    :cond_115
    add-int v2, v4, v10

    if-lez v2, :cond_11b

    const/4 v2, 0x1

    goto :goto_11c

    :cond_11b
    const/4 v2, 0x0

    :goto_11c
    and-int/2addr v2, v3

    .end local v3    # "isAction":Z
    .restart local v2    # "isAction":Z
    goto :goto_122

    .line 714
    .end local v21    # "maxActions":I
    .end local v22    # "measuredWidth":I
    .end local v23    # "v":Landroid/view/View;
    .local v3, "maxActions":I
    :cond_11e
    move/from16 v22, v2

    move/from16 v21, v3

    .line 740
    .end local v3    # "maxActions":I
    .restart local v21    # "maxActions":I
    :goto_122
    if-eqz v2, :cond_12d

    if-eqz v8, :cond_12d

    .line 741
    const/4 v3, 0x1

    invoke-virtual {v12, v8, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move-object/from16 v22, v1

    goto :goto_160

    .line 742
    :cond_12d
    if-eqz v20, :cond_15e

    .line 744
    const/4 v3, 0x0

    invoke-virtual {v12, v8, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 745
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_134
    if-ge v3, v15, :cond_159

    .line 746
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 747
    .local v0, "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    move-object/from16 v22, v1

    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .local v22, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    if-ne v1, v8, :cond_152

    .line 749
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v1

    if-eqz v1, :cond_14e

    add-int/lit8 v21, v21, 0x1

    .line 750
    :cond_14e
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 745
    .end local v0    # "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_152
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    goto :goto_134

    .end local v22    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_159
    move-object/from16 v22, v1

    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .restart local v22    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    move/from16 v3, v21

    goto :goto_162

    .line 742
    .end local v3    # "j":I
    .end local v22    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_15e
    move-object/from16 v22, v1

    .line 755
    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .restart local v22    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_160
    move/from16 v3, v21

    .end local v21    # "maxActions":I
    .local v3, "maxActions":I
    :goto_162
    if-eqz v2, :cond_166

    add-int/lit8 v3, v3, -0x1

    .line 757
    :cond_166
    invoke-virtual {v5, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 758
    .end local v2    # "isAction":Z
    .end local v8    # "groupId":I
    .end local v20    # "inGroup":Z
    const/4 v0, 0x0

    goto :goto_173

    .line 760
    .end local v22    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_16b
    move-object/from16 v22, v1

    move/from16 v21, v3

    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v3    # "maxActions":I
    .restart local v21    # "maxActions":I
    .restart local v22    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 685
    .end local v5    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v21    # "maxActions":I
    .restart local v3    # "maxActions":I
    :goto_173
    add-int/lit8 v15, v15, 0x1

    move v5, v0

    move/from16 v8, v17

    move/from16 v2, v19

    move-object/from16 v1, v22

    move-object/from16 v0, p0

    goto/16 :goto_71

    .line 763
    .end local v15    # "i":I
    .end local v17    # "requiredItems":I
    .end local v19    # "itemsSize":I
    .end local v22    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .local v2, "itemsSize":I
    .local v8, "requiredItems":I
    :cond_180
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 238
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, "actionView":Landroid/view/View;
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

    move-result v1

    if-eqz v1, :cond_19

    const/16 v1, 0x8

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    move-object v1, p3

    check-cast v1, Landroid/widget/ActionMenuView;

    .line 245
    .local v1, "menuParent":Landroid/widget/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 246
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 247
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    :cond_31
    return-object v0
.end method

.method public greylist-max-o getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .registers 6
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 224
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 225
    .local v0, "oldMenuView":Lcom/android/internal/view/menu/MenuView;
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    .line 226
    .local v1, "result":Lcom/android/internal/view/menu/MenuView;
    if-eq v0, v1, :cond_20

    .line 227
    move-object v2, v1

    check-cast v2, Landroid/widget/ActionMenuView;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuView;->setPresenter(Landroid/widget/ActionMenuPresenter;)V

    .line 228
    if-eqz v0, :cond_18

    .line 229
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 231
    :cond_18
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 233
    :cond_20
    return-object v1
.end method

.method public greylist-max-o getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 214
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_9

    .line 215
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 216
    :cond_9
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v0, :cond_10

    .line 217
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 219
    :cond_10
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
    .local v0, "popup":Lcom/android/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1e

    .line 581
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 582
    return v1

    .line 584
    :cond_1e
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o hideSubMenus()Z
    .registers 2

    .line 604
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_9

    .line 605
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 606
    const/4 v0, 0x1

    return v0

    .line 608
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 135
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 140
    .local v1, "abp":Lcom/android/internal/view/ActionBarPolicy;
    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v2, :cond_15

    .line 141
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 144
    :cond_15
    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v2, :cond_1f

    .line 145
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v2

    iput v2, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 149
    :cond_1f
    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v2, :cond_29

    .line 150
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v2

    iput v2, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 153
    :cond_29
    iget v2, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 154
    .local v2, "width":I
    iget-boolean v3, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5c

    .line 155
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v3, :cond_54

    .line 156
    new-instance v3, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v5}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 157
    iget-boolean v5, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_4b

    .line 158
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 160
    iput-boolean v6, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 162
    :cond_4b
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 163
    .local v3, "spec":I
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v4, v3, v3}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->measure(II)V

    .line 165
    .end local v3    # "spec":I
    :cond_54
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v3}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_5e

    .line 167
    :cond_5c
    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 170
    :goto_5e
    iput v2, p0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 172
    const/high16 v3, 0x42600000    # 56.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, p0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

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

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
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
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 768
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 769
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 770
    return-void
.end method

.method public greylist-max-o onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 176
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_10

    .line 177
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v0

    iput v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 179
    :cond_10
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1a

    .line 180
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 182
    :cond_1a
    return-void
.end method

.method public greylist-max-r onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 783
    move-object v0, p1

    check-cast v0, Landroid/widget/ActionMenuPresenter$SavedState;

    .line 784
    .local v0, "saved":Landroid/widget/ActionMenuPresenter$SavedState;
    iget v1, v0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v1, :cond_1a

    .line 785
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v2, v0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 786
    .local v1, "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_1a

    .line 787
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 788
    .local v2, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 791
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_1a
    return-void
.end method

.method public greylist-max-r onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 775
    new-instance v0, Landroid/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroid/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 776
    .local v0, "state":Landroid/widget/ActionMenuPresenter$SavedState;
    iget v1, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 777
    return-object v0
.end method

.method public greylist-max-o onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .registers 9
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

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
    .local v0, "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :goto_9
    invoke-virtual {v0}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq v2, v3, :cond_19

    .line 500
    invoke-virtual {v0}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/view/menu/SubMenuBuilder;

    goto :goto_9

    .line 502
    :cond_19
    invoke-virtual {v0}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    .line 503
    .local v2, "anchor":Landroid/view/View;
    if-nez v2, :cond_24

    .line 508
    return v1

    .line 511
    :cond_24
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 513
    const/4 v1, 0x0

    .line 514
    .local v1, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v3

    .line 515
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_34
    if-ge v4, v3, :cond_4b

    .line 516
    invoke-virtual {p1, v4}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 517
    .local v5, "childItem":Landroid/view/MenuItem;
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_48

    .line 518
    const/4 v1, 0x1

    .line 519
    goto :goto_4b

    .line 515
    .end local v5    # "childItem":Landroid/view/MenuItem;
    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 523
    .end local v4    # "i":I
    :cond_4b
    :goto_4b
    new-instance v4, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, p1, v2}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;Landroid/view/View;)V

    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 524
    invoke-virtual {v4, v1}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 525
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v4}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 527
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 528
    const/4 v4, 0x1

    return v4
.end method

.method public greylist-max-o onSubUiVisibilityChanged(Z)V
    .registers 4
    .param p1, "isVisible"    # Z

    .line 795
    if-eqz p1, :cond_7

    .line 797
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    goto :goto_11

    .line 798
    :cond_7
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_11

    .line 799
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 801
    :cond_11
    :goto_11
    return-void
.end method

.method public greylist-max-o setExpandedActionViewsExclusive(Z)V
    .registers 2
    .param p1, "isExclusive"    # Z

    .line 201
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 202
    return-void
.end method

.method public greylist-max-o setItemLimit(I)V
    .registers 3
    .param p1, "itemCount"    # I

    .line 196
    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 198
    return-void
.end method

.method public greylist-max-o setMenuView(Landroid/widget/ActionMenuView;)V
    .registers 4
    .param p1, "menuView"    # Landroid/widget/ActionMenuView;

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
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 205
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_8

    .line 206
    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    .line 208
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 209
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 211
    :goto_d
    return-void
.end method

.method public greylist-max-o setReserveOverflow(Z)V
    .registers 3
    .param p1, "reserveOverflow"    # Z

    .line 191
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 193
    return-void
.end method

.method public greylist-max-o setWidthLimit(IZ)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .line 185
    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 186
    iput-boolean p2, p0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 188
    return-void
.end method

.method public greylist-max-o shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 268
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o showOverflowMenu()Z
    .registers 8

    .line 551
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_46

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 552
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    .line 553
    new-instance v0, Landroid/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 554
    .local v0, "popup":Landroid/widget/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 556
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 560
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 562
    const/4 v1, 0x1

    return v1

    .line 564
    .end local v0    # "popup":Landroid/widget/ActionMenuPresenter$OverflowPopup;
    :cond_46
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o updateMenuView(Z)V
    .registers 9
    .param p1, "cleared"    # Z

    .line 438
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 439
    .local v0, "menuViewParent":Landroid/view/ViewGroup;
    nop

    .line 442
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 444
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 446
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_38

    .line 447
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 448
    .local v1, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 449
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    if-ge v3, v2, :cond_38

    .line 450
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v4

    .line 451
    .local v4, "provider":Landroid/view/ActionProvider;
    if-eqz v4, :cond_35

    .line 452
    invoke-virtual {v4, p0}, Landroid/view/ActionProvider;->setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V

    .line 449
    .end local v4    # "provider":Landroid/view/ActionProvider;
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 457
    .end local v1    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_38
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_43

    .line 458
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    .line 460
    .local v1, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_44
    const/4 v2, 0x0

    .line 461
    .local v2, "hasOverflow":Z
    iget-boolean v3, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v3, :cond_64

    if-eqz v1, :cond_64

    .line 462
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 463
    .local v3, "count":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_60

    .line 464
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v4

    xor-int/2addr v4, v5

    move v2, v4

    goto :goto_64

    .line 466
    :cond_60
    if-lez v3, :cond_63

    move v4, v5

    :cond_63
    move v2, v4

    .line 470
    .end local v3    # "count":I
    :cond_64
    :goto_64
    if-eqz v2, :cond_94

    .line 471
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v3, :cond_73

    .line 472
    new-instance v3, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 474
    :cond_73
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v3}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 475
    .local v3, "parent":Landroid/view/ViewGroup;
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eq v3, v4, :cond_aa

    .line 476
    if-eqz v3, :cond_86

    .line 477
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 479
    :cond_86
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v4, Landroid/widget/ActionMenuView;

    .line 480
    .local v4, "menuView":Landroid/widget/ActionMenuView;
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v4}, Landroid/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_aa

    .line 482
    .end local v3    # "parent":Landroid/view/ViewGroup;
    .end local v4    # "menuView":Landroid/widget/ActionMenuView;
    :cond_94
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v3, :cond_aa

    invoke-virtual {v3}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-ne v3, v4, :cond_aa

    .line 483
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_ab

    .line 482
    :cond_aa
    :goto_aa
    nop

    .line 486
    :goto_ab
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/widget/ActionMenuView;

    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v3, v4}, Landroid/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 487
    return-void
.end method
