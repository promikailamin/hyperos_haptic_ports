.class public final Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;
.super Ljava/lang/Object;
.source "RemoteFloatingToolbarPopup.java"

# interfaces
.implements Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$SelectionToolbarCallbackImpl;,
        Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z


# instance fields
.field private final blacklist mContentRect:Landroid/graphics/Rect;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mCoordsOnScreen:[I

.field private final blacklist mCoordsOnWindow:[I

.field private final blacklist mIsLightTheme:Z

.field private blacklist mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private blacklist mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNextSequenceNumber:I

.field private final blacklist mParent:Landroid/view/View;

.field private final blacklist mPendingMenuItemClickListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingMenuItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mPendingShowInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/selectiontoolbar/ShowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPopupWindow:Landroid/widget/PopupWindow;

.field private final blacklist mScreenViewPort:Landroid/graphics/Rect;

.field private final blacklist mSelectionToolbarCallback:Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$SelectionToolbarCallbackImpl;

.field private final blacklist mSelectionToolbarManager:Landroid/view/selectiontoolbar/SelectionToolbarManager;

.field private blacklist mState:I

.field private blacklist mSuggestedWidth:I

.field private blacklist mWidthChanged:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$2cH-AdiNegEnn4ocOtaypDz56Q8(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->lambda$onError$3(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WV98kIBzGmypQoMD-9xcCBkfEZc(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;Landroid/view/selectiontoolbar/WidgetInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->lambda$onWidgetUpdated$1(Landroid/view/selectiontoolbar/WidgetInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lDTNaq2osTFYpHaneZAH-gI1tEE(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->lambda$onMenuItemClicked$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m0hy0KeMx72xTgia_vSNWUulmqU(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;Landroid/view/selectiontoolbar/WidgetInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->lambda$onShow$0(Landroid/view/selectiontoolbar/WidgetInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monError(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->onError(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monMenuItemClicked(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->onMenuItemClicked(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monShow(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;Landroid/view/selectiontoolbar/WidgetInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->onShow(Landroid/view/selectiontoolbar/WidgetInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monWidgetUpdated(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;Landroid/view/selectiontoolbar/WidgetInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->onWidgetUpdated(Landroid/view/selectiontoolbar/WidgetInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 73
    nop

    .line 74
    const-string v0, "floating_toolbar"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->DEBUG:Z

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 5

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mState:I

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingMenuItemClickListeners:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingMenuItems:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingShowInfos:Landroid/util/SparseArray;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mContentRect:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mScreenViewPort:Landroid/graphics/Rect;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mWidthChanged:Z

    .line 109
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mCoordsOnScreen:[I

    .line 110
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mCoordsOnWindow:[I

    .line 113
    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iput-object p2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mParent:Landroid/view/View;

    .line 115
    invoke-static {p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->createPopupWindow(Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 116
    const-class p2, Landroid/view/selectiontoolbar/SelectionToolbarManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/selectiontoolbar/SelectionToolbarManager;

    iput-object p2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mSelectionToolbarManager:Landroid/view/selectiontoolbar/SelectionToolbarManager;

    .line 117
    new-instance p2, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$SelectionToolbarCallbackImpl;

    invoke-direct {p2, p0}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$SelectionToolbarCallbackImpl;-><init>(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;)V

    iput-object p2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mSelectionToolbarCallback:Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$SelectionToolbarCallbackImpl;

    .line 118
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->isLightTheme(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mIsLightTheme:Z

    .line 119
    return-void
.end method

.method private static blacklist convertDrawableToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Icon;
    .registers 6

    .line 333
    if-nez p0, :cond_4

    .line 334
    const/4 p0, 0x0

    return-object p0

    .line 336
    :cond_4
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1a

    .line 337
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 338
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 339
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    .line 342
    :cond_1a
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 343
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 342
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 344
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 345
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 346
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 347
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist createPopupWindow(Landroid/content/Context;)Landroid/widget/PopupWindow;
    .registers 3

    .line 363
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 364
    new-instance p0, Landroid/widget/PopupWindow;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 365
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 366
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 368
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 369
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    return-object p0
.end method

.method private blacklist getCoordinatesInWindow(II)Landroid/graphics/Point;
    .registers 8

    .line 306
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mCoordsOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 307
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mCoordsOnWindow:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mCoordsOnScreen:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mCoordsOnWindow:[I

    aget v2, v2, v1

    sub-int/2addr v0, v2

    .line 309
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mCoordsOnScreen:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mCoordsOnWindow:[I

    aget v3, v4, v3

    sub-int/2addr v2, v3

    .line 310
    new-instance v3, Landroid/graphics/Point;

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p2, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method private static blacklist getPriorityFromMenuItem(Landroid/view/MenuItem;)I
    .registers 2

    .line 354
    invoke-interface {p0}, Landroid/view/MenuItem;->requiresActionButton()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 355
    const/4 p0, 0x1

    return p0

    .line 356
    :cond_8
    invoke-interface {p0}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 357
    const/4 p0, 0x2

    return p0

    .line 359
    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist getToolbarMenuItems(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/selectiontoolbar/ToolbarMenuItem;",
            ">;"
        }
    .end annotation

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 315
    const/4 v1, 0x0

    :goto_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_51

    .line 316
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    .line 317
    new-instance v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    invoke-direct {v3}, Landroid/view/selectiontoolbar/ToolbarMenuItem;-><init>()V

    .line 318
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemId:I

    .line 319
    iput v1, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemIndex:I

    .line 320
    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->title:Ljava/lang/CharSequence;

    .line 321
    invoke-interface {v2}, Landroid/view/MenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->contentDescription:Ljava/lang/CharSequence;

    .line 322
    invoke-interface {v2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    iput v4, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->groupId:I

    .line 323
    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->convertDrawableToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    iput-object v4, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->icon:Landroid/graphics/drawable/Icon;

    .line 324
    invoke-interface {v2}, Landroid/view/MenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->tooltipText:Ljava/lang/CharSequence;

    .line 325
    invoke-static {v2}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->getPriorityFromMenuItem(Landroid/view/MenuItem;)I

    move-result v2

    iput v2, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->priority:I

    .line 327
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 329
    :cond_51
    return-object v0
.end method

.method private blacklist isLatestPendingOrCurrent(Ljava/util/List;Landroid/graphics/Rect;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingMenuItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1e

    .line 196
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mMenuItems:Ljava/util/List;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mContentRect:Landroid/graphics/Rect;

    .line 197
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    move v1, v2

    goto :goto_1d

    :cond_1c
    nop

    .line 196
    :goto_1d
    return v1

    .line 199
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingMenuItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .line 200
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingMenuItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingShowInfos:Landroid/util/SparseArray;

    .line 202
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/selectiontoolbar/ShowInfo;

    iget-object p1, p1, Landroid/view/selectiontoolbar/ShowInfo;->contentRect:Landroid/graphics/Rect;

    .line 201
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    move v1, v2

    goto :goto_44

    :cond_43
    nop

    .line 200
    :goto_44
    return v1
.end method

.method private blacklist isLightTheme(Landroid/content/Context;)Z
    .registers 4

    .line 122
    const v0, 0x1010590

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 123
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 124
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    return v0
.end method

.method private synthetic blacklist lambda$onError$3(II)V
    .registers 5

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occurred on show toolbar, code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "floating_toolbar"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingMenuItemClickListeners:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 472
    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingMenuItems:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 473
    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingShowInfos:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 474
    return-void
.end method

.method private synthetic blacklist lambda$onMenuItemClicked$2(I)V
    .registers 6

    .line 448
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mMenuItems:Ljava/util/List;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-nez v0, :cond_9

    goto :goto_47

    .line 451
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 452
    sget-boolean v1, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->DEBUG:Z

    const-string v2, "floating_toolbar"

    if-eqz v1, :cond_38

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMenuItemClicked callback: itemIndex="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " item="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_38
    if-eqz v0, :cond_40

    .line 459
    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {p1, v0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    goto :goto_46

    .line 461
    :cond_40
    const-string/jumbo p1, "onMenuItemClicked callback: cannot find menu item."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_46
    return-void

    .line 449
    :cond_47
    :goto_47
    return-void
.end method

.method private synthetic blacklist lambda$onShow$0(Landroid/view/selectiontoolbar/WidgetInfo;)V
    .registers 6

    .line 397
    iget v0, p1, Landroid/view/selectiontoolbar/WidgetInfo;->sequenceNumber:I

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->isShowing()Z

    move-result v1

    const-string v2, "floating_toolbar"

    if-nez v1, :cond_20

    .line 399
    const-string/jumbo p1, "onShow callback: The widget isn\'t showing."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingMenuItemClickListeners:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 402
    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingMenuItems:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 403
    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingShowInfos:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 404
    return-void

    .line 406
    :cond_20
    sget-boolean v1, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->DEBUG:Z

    if-eqz v1, :cond_2a

    .line 407
    const-string/jumbo v1, "onShow callback: Showing toolbar."

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_2a
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingMenuItemClickListeners:Landroid/util/SparseArray;

    .line 411
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 410
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 412
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingMenuItems:Landroid/util/SparseArray;

    .line 413
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 412
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mMenuItems:Ljava/util/List;

    .line 414
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingShowInfos:Landroid/util/SparseArray;

    .line 415
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/selectiontoolbar/ShowInfo;

    .line 414
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/selectiontoolbar/ShowInfo;

    .line 416
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mContentRect:Landroid/graphics/Rect;

    iget-object v0, v0, Landroid/view/selectiontoolbar/ShowInfo;->contentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 417
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->updatePopupWindowContent(Landroid/view/selectiontoolbar/WidgetInfo;)V

    .line 418
    iget-object p1, p1, Landroid/view/selectiontoolbar/WidgetInfo;->contentRect:Landroid/graphics/Rect;

    .line 419
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 420
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 421
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->getCoordinatesInWindow(II)Landroid/graphics/Point;

    move-result-object p1

    .line 422
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mParent:Landroid/view/View;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 423
    return-void
.end method

.method private synthetic blacklist lambda$onWidgetUpdated$1(Landroid/view/selectiontoolbar/WidgetInfo;)V
    .registers 6

    .line 428
    invoke-virtual {p0}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->isShowing()Z

    move-result v0

    const-string v1, "floating_toolbar"

    if-nez v0, :cond_f

    .line 429
    const-string/jumbo p1, "onWidgetUpdated callback: The widget isn\'t showing."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void

    .line 433
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->updatePopupWindowContent(Landroid/view/selectiontoolbar/WidgetInfo;)V

    .line 434
    iget-object p1, p1, Landroid/view/selectiontoolbar/WidgetInfo;->contentRect:Landroid/graphics/Rect;

    .line 435
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->getCoordinatesInWindow(II)Landroid/graphics/Point;

    move-result-object v0

    .line 436
    sget-boolean v2, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->DEBUG:Z

    if-eqz v2, :cond_61

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWidgetUpdated callback: PopupWindow x= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 439
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 440
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_61
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 443
    return-void
.end method

.method private blacklist onError(II)V
    .registers 4

    .line 468
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;II)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 475
    return-void
.end method

.method private blacklist onMenuItemClicked(I)V
    .registers 3

    .line 447
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;I)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 465
    return-void
.end method

.method private blacklist onShow(Landroid/view/selectiontoolbar/WidgetInfo;)V
    .registers 3

    .line 396
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;Landroid/view/selectiontoolbar/WidgetInfo;)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 424
    return-void
.end method

.method private blacklist onWidgetUpdated(Landroid/view/selectiontoolbar/WidgetInfo;)V
    .registers 3

    .line 427
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;Landroid/view/selectiontoolbar/WidgetInfo;)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 444
    return-void
.end method

.method private blacklist resetCoords()V
    .registers 4

    .line 385
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mCoordsOnScreen:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 386
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mCoordsOnScreen:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 387
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mCoordsOnWindow:[I

    aput v1, v0, v1

    .line 388
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mCoordsOnWindow:[I

    aput v1, v0, v2

    .line 389
    return-void
.end method

.method private blacklist resetStateAndDismissPopupWindow()V
    .registers 2

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mMenuItems:Ljava/util/List;

    .line 375
    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 376
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mSuggestedWidth:I

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mWidthChanged:Z

    .line 378
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->resetCoords()V

    .line 379
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mScreenViewPort:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 381
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 382
    return-void
.end method

.method private blacklist runOnUiThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 392
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 393
    return-void
.end method

.method private blacklist updatePopupWindowContent(Landroid/view/selectiontoolbar/WidgetInfo;)V
    .registers 6

    .line 289
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 290
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 291
    new-instance v1, Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 292
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 293
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, -0x2

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 294
    iget-object p1, p1, Landroid/view/selectiontoolbar/WidgetInfo;->surfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceView;->setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 295
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 296
    return-void
.end method


# virtual methods
.method public blacklist dismiss()V
    .registers 4

    .line 208
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mState:I

    const-string v1, "floating_toolbar"

    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    .line 209
    const-string v0, "The floating toolbar already dismissed."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 213
    :cond_d
    sget-boolean v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->DEBUG:Z

    if-eqz v0, :cond_16

    .line 214
    const-string v0, "RemoteFloatingToolbarPopup.dismiss()."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_16
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mSelectionToolbarManager:Landroid/view/selectiontoolbar/SelectionToolbarManager;

    invoke-virtual {v0}, Landroid/view/selectiontoolbar/SelectionToolbarManager;->dismissToolbar()V

    .line 218
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->resetStateAndDismissPopupWindow()V

    .line 219
    iput v2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mState:I

    .line 220
    return-void
.end method

.method public blacklist hide()V
    .registers 5

    .line 225
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mState:I

    const-string v1, "floating_toolbar"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_23

    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mState:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_d

    goto :goto_23

    .line 232
    :cond_d
    sget-boolean v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->DEBUG:Z

    if-eqz v0, :cond_16

    .line 233
    const-string v0, "RemoteFloatingToolbarPopup.hide()."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_16
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mSelectionToolbarManager:Landroid/view/selectiontoolbar/SelectionToolbarManager;

    invoke-virtual {v0}, Landroid/view/selectiontoolbar/SelectionToolbarManager;->hideToolbar()V

    .line 237
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 238
    iput v2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mState:I

    .line 239
    return-void

    .line 226
    :cond_23
    :goto_23
    sget-boolean v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 227
    const-string v0, "The floating toolbar already dismissed/hidden."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2c
    return-void
.end method

.method public blacklist isHidden()Z
    .registers 3

    .line 261
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isShowing()Z
    .registers 3

    .line 267
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public blacklist setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)Z
    .registers 6

    .line 274
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    .line 275
    return v2

    .line 277
    :cond_7
    nop

    .line 278
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isOutsideTouchable()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_23

    .line 279
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 281
    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V

    .line 282
    nop

    .line 284
    :cond_23
    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 285
    return v2
.end method

.method public blacklist setSuggestedWidth(I)V
    .registers 8

    .line 244
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mSuggestedWidth:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 245
    int-to-double v0, v0

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mSuggestedWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mWidthChanged:Z

    .line 246
    sget-boolean v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->DEBUG:Z

    if-eqz v0, :cond_3a

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSuggestedWidth: mWidthChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mWidthChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "floating_toolbar"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_3a
    iput p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mSuggestedWidth:I

    .line 251
    return-void
.end method

.method public blacklist setWidthChanged(Z)V
    .registers 2

    .line 255
    iput-boolean p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mWidthChanged:Z

    .line 256
    return-void
.end method

.method public blacklist show(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/graphics/Rect;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 132
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 136
    const-string v1, "floating_toolbar"

    if-nez v0, :cond_16

    .line 137
    const-string p1, "RemoteFloatingToolbarPopup.show(): viewRootImpl is null."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 142
    :cond_16
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->isLatestPendingOrCurrent(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v2

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3e

    if-eqz v2, :cond_3e

    .line 145
    sget-boolean p1, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->DEBUG:Z

    if-eqz p1, :cond_2b

    .line 146
    const-string p1, "RemoteFloatingToolbarPopup.show(): Ignore duplicate request."

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_2b
    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingMenuItemClickListeners:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_3b

    .line 150
    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingMenuItemClickListeners:Landroid/util/SparseArray;

    iget p3, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mNextSequenceNumber:I

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3d

    .line 152
    :cond_3b
    iput-object p2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 154
    :goto_3d
    return-void

    .line 156
    :cond_3e
    const/4 v3, 0x1

    if-eqz v2, :cond_48

    iget-boolean v4, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mWidthChanged:Z

    if-eqz v4, :cond_46

    goto :goto_48

    :cond_46
    const/4 v4, 0x0

    goto :goto_49

    :cond_48
    :goto_48
    move v4, v3

    .line 157
    :goto_49
    sget-boolean v5, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->DEBUG:Z

    if-eqz v5, :cond_6f

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteFloatingToolbarPopup.show(): isDuplicateRequest "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", mWidthChanged "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mWidthChanged:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_6f
    if-eqz v4, :cond_7e

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mState:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_7e

    .line 163
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mSelectionToolbarManager:Landroid/view/selectiontoolbar/SelectionToolbarManager;

    invoke-virtual {v2}, Landroid/view/selectiontoolbar/SelectionToolbarManager;->dismissToolbar()V

    .line 164
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->resetStateAndDismissPopupWindow()V

    .line 167
    :cond_7e
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mScreenViewPort:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 168
    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mSuggestedWidth:I

    if-lez v2, :cond_8c

    .line 169
    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mSuggestedWidth:I

    goto :goto_99

    .line 170
    :cond_8c
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10501a9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 172
    :goto_99
    iget v5, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mNextSequenceNumber:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mNextSequenceNumber:I

    .line 173
    new-instance v6, Landroid/view/selectiontoolbar/ShowInfo;

    invoke-direct {v6}, Landroid/view/selectiontoolbar/ShowInfo;-><init>()V

    .line 174
    iput v5, v6, Landroid/view/selectiontoolbar/ShowInfo;->sequenceNumber:I

    .line 175
    iput-boolean v4, v6, Landroid/view/selectiontoolbar/ShowInfo;->layoutRequired:Z

    .line 176
    invoke-static {p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->getToolbarMenuItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v6, Landroid/view/selectiontoolbar/ShowInfo;->menuItems:Ljava/util/List;

    .line 177
    iput-object p3, v6, Landroid/view/selectiontoolbar/ShowInfo;->contentRect:Landroid/graphics/Rect;

    .line 178
    iput v2, v6, Landroid/view/selectiontoolbar/ShowInfo;->suggestedWidth:I

    .line 179
    iget-object p3, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mScreenViewPort:Landroid/graphics/Rect;

    iput-object p3, v6, Landroid/view/selectiontoolbar/ShowInfo;->viewPortOnScreen:Landroid/graphics/Rect;

    .line 180
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object p3

    iput-object p3, v6, Landroid/view/selectiontoolbar/ShowInfo;->hostInputToken:Landroid/os/IBinder;

    .line 181
    iget-boolean p3, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mIsLightTheme:Z

    iput-boolean p3, v6, Landroid/view/selectiontoolbar/ShowInfo;->isLightTheme:Z

    .line 182
    iget-object p3, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iput-object p3, v6, Landroid/view/selectiontoolbar/ShowInfo;->configuration:Landroid/content/res/Configuration;

    .line 183
    iget-object p3, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingMenuItemClickListeners:Landroid/util/SparseArray;

    invoke-virtual {p3, v5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    iget-object p2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingMenuItems:Landroid/util/SparseArray;

    invoke-virtual {p2, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mPendingShowInfos:Landroid/util/SparseArray;

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mSelectionToolbarManager:Landroid/view/selectiontoolbar/SelectionToolbarManager;

    iget-object p2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mSelectionToolbarCallback:Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$SelectionToolbarCallbackImpl;

    invoke-virtual {p1, v6, p2}, Landroid/view/selectiontoolbar/SelectionToolbarManager;->showToolbar(Landroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V

    .line 187
    iput v3, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->mState:I

    .line 188
    sget-boolean p1, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->DEBUG:Z

    if-eqz p1, :cond_ed

    .line 189
    const-string p1, "RemoteFloatingToolbarPopup.show() completed, and the state is SHOWN."

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_ed
    return-void
.end method
