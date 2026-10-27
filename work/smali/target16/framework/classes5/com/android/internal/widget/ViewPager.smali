.class public Lcom/android/internal/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ViewPager$ItemInfo;,
        Lcom/android/internal/widget/ViewPager$PageTransformer;,
        Lcom/android/internal/widget/ViewPager$OnPageChangeListener;,
        Lcom/android/internal/widget/ViewPager$PagerObserver;,
        Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;,
        Lcom/android/internal/widget/ViewPager$LayoutParams;,
        Lcom/android/internal/widget/ViewPager$ViewPositionComparator;,
        Lcom/android/internal/widget/ViewPager$SavedState;,
        Lcom/android/internal/widget/ViewPager$Decor;,
        Lcom/android/internal/widget/ViewPager$SimpleOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final blacklist CLOSE_ENOUGH:I = 0x2

.field private static final blacklist COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final blacklist DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final blacklist DRAW_ORDER_DEFAULT:I = 0x0

.field private static final blacklist DRAW_ORDER_FORWARD:I = 0x1

.field private static final blacklist DRAW_ORDER_REVERSE:I = 0x2

.field private static final blacklist INVALID_POINTER:I = -0x1

.field private static final blacklist LAYOUT_ATTRS:[I

.field private static final blacklist MAX_SCROLL_X:I = 0x1000000

.field private static final blacklist MAX_SETTLE_DURATION:I = 0x258

.field private static final blacklist MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final blacklist MIN_FLING_VELOCITY:I = 0x190

.field public static final blacklist SCROLL_STATE_DRAGGING:I = 0x1

.field public static final blacklist SCROLL_STATE_IDLE:I = 0x0

.field public static final blacklist SCROLL_STATE_SETTLING:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "ViewPager"

.field private static final blacklist USE_CACHE:Z = false

.field private static final blacklist sInterpolator:Landroid/view/animation/Interpolator;

.field private static final blacklist sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;


# instance fields
.field private blacklist mActivePointerId:I

.field private blacklist mAdapter:Lcom/android/internal/widget/PagerAdapter;

.field private blacklist mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

.field private blacklist mBottomPageBounds:I

.field private blacklist mCalledSuper:Z

.field private blacklist mChildHeightMeasureSpec:I

.field private blacklist mChildWidthMeasureSpec:I

.field private final blacklist mCloseEnough:I

.field private blacklist mCurItem:I

.field private blacklist mDecorChildCount:I

.field private final blacklist mDefaultGutterSize:I

.field private blacklist mDrawingOrder:I

.field private blacklist mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEndScrollRunnable:Ljava/lang/Runnable;

.field private blacklist mExpectedAdapterCount:I

.field private blacklist mFirstLayout:Z

.field private blacklist mFirstOffset:F

.field private final blacklist mFlingDistance:I

.field private blacklist mGutterSize:I

.field private blacklist mInLayout:Z

.field private blacklist mInitialMotionX:F

.field private blacklist mInitialMotionY:F

.field private blacklist mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private blacklist mIsBeingDragged:Z

.field private blacklist mIsUnableToDrag:Z

.field private final blacklist mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastMotionX:F

.field private blacklist mLastMotionY:F

.field private blacklist mLastOffset:F

.field private final blacklist mLeftEdge:Landroid/widget/EdgeEffect;

.field private blacklist mLeftIncr:I

.field private blacklist mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mMaximumVelocity:I

.field private final blacklist mMinimumVelocity:I

.field private blacklist mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

.field private blacklist mOffscreenPageLimit:I

.field private blacklist mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private blacklist mPageMargin:I

.field private blacklist mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

.field private blacklist mPopulatePending:Z

.field private blacklist mRestoredAdapterState:Landroid/os/Parcelable;

.field private blacklist mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private blacklist mRestoredCurItem:I

.field private final blacklist mRightEdge:Landroid/widget/EdgeEffect;

.field private blacklist mScrollState:I

.field private final blacklist mScroller:Landroid/widget/Scroller;

.field private blacklist mScrollingCacheEnabled:Z

.field private final blacklist mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private blacklist mTopPageBounds:I

.field private final blacklist mTouchSlop:I

.field private blacklist mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetScrollState(Lcom/android/internal/widget/ViewPager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLAYOUT_ATTRS()[I
    .registers 1

    sget-object v0, Lcom/android/internal/widget/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 78
    const v0, 0x10100b3

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/ViewPager;->LAYOUT_ATTRS:[I

    .line 100
    new-instance v0, Lcom/android/internal/widget/ViewPager$1;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 107
    new-instance v0, Lcom/android/internal/widget/ViewPager$2;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$2;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 207
    new-instance v0, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ViewPager;->sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 332
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 336
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 340
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 343
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 115
    new-instance p3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    invoke-direct {p3}, Lcom/android/internal/widget/ViewPager$ItemInfo;-><init>()V

    iput-object p3, p0, Lcom/android/internal/widget/ViewPager;->mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 117
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 121
    const/4 p3, -0x1

    iput p3, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 122
    const/4 p4, 0x0

    iput-object p4, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 123
    iput-object p4, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 136
    iput p3, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    .line 141
    const p4, -0x800001

    iput p4, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 142
    const p4, 0x7f7fffff    # Float.MAX_VALUE

    iput p4, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 151
    const/4 p4, 0x1

    iput p4, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 169
    iput p3, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 193
    iput-boolean p4, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 225
    new-instance p3, Lcom/android/internal/widget/ViewPager$3;

    invoke-direct {p3, p0}, Lcom/android/internal/widget/ViewPager$3;-><init>(Lcom/android/internal/widget/ViewPager;)V

    iput-object p3, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 232
    const/4 p3, 0x0

    iput p3, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    .line 345
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->setWillNotDraw(Z)V

    .line 346
    const/high16 p3, 0x40000

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->setDescendantFocusability(I)V

    .line 347
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/ViewPager;->setFocusable(Z)V

    .line 349
    new-instance p3, Landroid/widget/Scroller;

    sget-object v0, Lcom/android/internal/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p3, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p3, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 350
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    .line 351
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 353
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    .line 354
    const/high16 v1, 0x43c80000    # 400.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mMinimumVelocity:I

    .line 355
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    iput p3, p0, Lcom/android/internal/widget/ViewPager;->mMaximumVelocity:I

    .line 356
    new-instance p3, Landroid/widget/EdgeEffect;

    invoke-direct {p3, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 357
    new-instance p3, Landroid/widget/EdgeEffect;

    invoke-direct {p3, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 359
    const/high16 p1, 0x41c80000    # 25.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mFlingDistance:I

    .line 360
    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mCloseEnough:I

    .line 361
    const/high16 p1, 0x41800000    # 16.0f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mDefaultGutterSize:I

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_9a

    .line 364
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/ViewPager;->setImportantForAccessibility(I)V

    .line 366
    :cond_9a
    return-void
.end method

.method private blacklist calculatePageOffsets(Lcom/android/internal/widget/ViewPager$ItemInfo;ILcom/android/internal/widget/ViewPager$ItemInfo;)V
    .registers 13

    .line 1114
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 1115
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v1

    .line 1116
    if-lez v1, :cond_12

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 1119
    :goto_13
    if-eqz p3, :cond_b2

    .line 1120
    iget v1, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 1123
    iget v3, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v1, v3, :cond_6a

    .line 1124
    nop

    .line 1125
    iget v3, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget p3, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, p3

    add-float/2addr v3, v2

    .line 1126
    add-int/lit8 v1, v1, 0x1

    const/4 p3, 0x0

    :goto_25
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-gt v1, v4, :cond_b1

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p3, v4, :cond_b1

    .line 1127
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1128
    :goto_39
    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v1, v5, :cond_52

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p3, v5, :cond_52

    .line 1129
    add-int/lit8 p3, p3, 0x1

    .line 1130
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_39

    .line 1133
    :cond_52
    :goto_52
    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v1, v5, :cond_61

    .line 1136
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    add-float/2addr v3, v5

    .line 1137
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 1140
    :cond_61
    iput v3, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1141
    iget v4, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    .line 1126
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1143
    :cond_6a
    iget v3, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v1, v3, :cond_b1

    .line 1144
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 1145
    iget p3, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1146
    add-int/lit8 v1, v1, -0x1

    :goto_7a
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-lt v1, v4, :cond_b2

    if-ltz v3, :cond_b2

    .line 1147
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1148
    :goto_88
    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v1, v5, :cond_99

    if-lez v3, :cond_99

    .line 1149
    add-int/lit8 v3, v3, -0x1

    .line 1150
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_88

    .line 1153
    :cond_99
    :goto_99
    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v1, v5, :cond_a8

    .line 1156
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr p3, v5

    .line 1157
    add-int/lit8 v1, v1, -0x1

    goto :goto_99

    .line 1160
    :cond_a8
    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v2

    sub-float/2addr p3, v5

    .line 1161
    iput p3, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1146
    add-int/lit8 v1, v1, -0x1

    goto :goto_7a

    .line 1143
    :cond_b1
    nop

    .line 1167
    :cond_b2
    iget-object p3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 1168
    iget v1, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1169
    iget v3, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v3, v3, -0x1

    .line 1170
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-nez v4, :cond_c5

    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    goto :goto_c8

    :cond_c5
    const v4, -0x800001

    :goto_c8
    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 1171
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v4, v0, :cond_d9

    .line 1172
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v6, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v6

    sub-float/2addr v4, v5

    goto :goto_dc

    :cond_d9
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    :goto_dc
    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 1175
    add-int/lit8 v4, p2, -0x1

    :goto_e0
    if-ltz v4, :cond_10b

    .line 1176
    iget-object v6, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1177
    :goto_ea
    iget v7, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v3, v7, :cond_fa

    .line 1178
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v3

    add-float/2addr v3, v2

    sub-float/2addr v1, v3

    move v3, v8

    goto :goto_ea

    .line 1180
    :cond_fa
    iget v7, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v2

    sub-float/2addr v1, v7

    .line 1181
    iput v1, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1182
    iget v6, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-nez v6, :cond_106

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 1175
    :cond_106
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_e0

    .line 1185
    :cond_10b
    iget v1, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v3, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v1, v3

    add-float/2addr v1, v2

    .line 1186
    iget p1, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 p1, p1, 0x1

    .line 1189
    add-int/lit8 p2, p2, 0x1

    :goto_117
    if-ge p2, p3, :cond_146

    .line 1190
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1191
    :goto_121
    iget v4, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge p1, v4, :cond_131

    .line 1192
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v1, p1

    move p1, v6

    goto :goto_121

    .line 1194
    :cond_131
    iget v4, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v4, v0, :cond_13b

    .line 1195
    iget v4, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v1

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 1197
    :cond_13b
    iput v1, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1198
    iget v3, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 1189
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_117

    .line 1200
    :cond_146
    return-void
.end method

.method private blacklist canScroll()Z
    .registers 3

    .line 2802
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private blacklist completeScroll(Z)V
    .registers 9

    .line 1763
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    move v0, v3

    .line 1764
    :goto_a
    if-eqz v0, :cond_2f

    .line 1766
    invoke-direct {p0, v3}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1767
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1768
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v1

    .line 1769
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v4

    .line 1770
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1771
    iget-object v6, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1772
    if-ne v1, v5, :cond_2c

    if-eq v4, v6, :cond_2f

    .line 1773
    :cond_2c
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1776
    :cond_2f
    iput-boolean v3, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 1777
    move v1, v3

    :goto_32
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4d

    .line 1778
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1779
    iget-boolean v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_4a

    .line 1780
    nop

    .line 1781
    iput-boolean v3, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    move v0, v2

    .line 1777
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 1784
    :cond_4d
    if-eqz v0, :cond_5c

    .line 1785
    if-eqz p1, :cond_57

    .line 1786
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_5c

    .line 1788
    :cond_57
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1791
    :cond_5c
    :goto_5c
    return-void
.end method

.method private blacklist determineTargetPage(IFII)I
    .registers 7

    .line 2273
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mFlingDistance:I

    const/4 v1, 0x0

    if-le p4, v0, :cond_2e

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mMinimumVelocity:I

    if-le p4, v0, :cond_2e

    iget-object p4, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 2274
    invoke-virtual {p4}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result p4

    const/4 v0, 0x0

    cmpl-float p4, p4, v0

    if-nez p4, :cond_2e

    iget-object p4, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 2275
    invoke-virtual {p4}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result p4

    cmpl-float p4, p4, v0

    if-nez p4, :cond_2e

    .line 2276
    if-gez p3, :cond_2b

    iget p2, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    goto :goto_2c

    :cond_2b
    move p2, v1

    :goto_2c
    sub-int/2addr p1, p2

    goto :goto_41

    .line 2278
    :cond_2e
    iget p3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-lt p1, p3, :cond_36

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_39

    :cond_36
    const p3, 0x3f19999a    # 0.6f

    .line 2279
    :goto_39
    int-to-float p1, p1

    iget p4, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    int-to-float p4, p4

    add-float/2addr p2, p3

    mul-float/2addr p4, p2

    sub-float/2addr p1, p4

    float-to-int p1, p1

    .line 2282
    :goto_41
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_69

    .line 2283
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2284
    iget-object p3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object p4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2287
    iget p2, p2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget p3, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    invoke-static {p1, p2, p3}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 2290
    :cond_69
    return p1
.end method

.method private blacklist enableLayers(Z)V
    .registers 8

    .line 1798
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 1799
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_18

    .line 1800
    if-eqz p1, :cond_c

    const/4 v3, 0x2

    goto :goto_d

    :cond_c
    move v3, v1

    .line 1801
    :goto_d
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1799
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1803
    :cond_18
    return-void
.end method

.method private blacklist endDrag()V
    .registers 2

    .line 2406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 2407
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 2409
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    .line 2410
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2413
    :cond_11
    return-void
.end method

.method private blacklist getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 5

    .line 2582
    if-nez p1, :cond_7

    .line 2583
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2585
    :cond_7
    if-nez p2, :cond_e

    .line 2586
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2587
    return-object p1

    .line 2589
    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2590
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2591
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2592
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2594
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 2595
    :goto_2a
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5b

    if-eq p2, p0, :cond_5b

    .line 2596
    check-cast p2, Landroid/view/ViewGroup;

    .line 2597
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2598
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2599
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2600
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2602
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 2603
    goto :goto_2a

    .line 2604
    :cond_5b
    return-object p1
.end method

.method private blacklist getLeftEdgeForItem(I)I
    .registers 6

    .line 570
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object p1

    .line 571
    if-nez p1, :cond_8

    .line 572
    const/4 p1, 0x0

    return p1

    .line 575
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v0

    .line 576
    int-to-float v0, v0

    iget v1, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 579
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 580
    iget p1, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 581
    const/high16 v0, 0x1000000

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    return v0

    .line 583
    :cond_2b
    return v1
.end method

.method private blacklist getPaddedWidth()I
    .registers 3

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private blacklist getScrollStart()I
    .registers 3

    .line 2257
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2258
    const/high16 v0, 0x1000000

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 2260
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    return v0
.end method

.method private blacklist infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;
    .registers 14

    .line 2210
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getScrollStart()I

    move-result v0

    .line 2211
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v1

    .line 2212
    const/4 v2, 0x0

    if-lez v1, :cond_f

    int-to-float v0, v0

    int-to-float v3, v1

    div-float/2addr v0, v3

    goto :goto_10

    :cond_f
    move v0, v2

    .line 2213
    :goto_10
    if-lez v1, :cond_18

    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    goto :goto_19

    :cond_18
    move v3, v2

    .line 2215
    :goto_19
    nop

    .line 2216
    nop

    .line 2217
    nop

    .line 2218
    nop

    .line 2219
    nop

    .line 2221
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2222
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v9, v4

    move v10, v6

    move-object v8, v7

    move v7, v5

    move v5, v2

    :goto_2d
    if-ge v9, v1, :cond_83

    .line 2223
    iget-object v11, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2226
    if-nez v10, :cond_54

    iget v12, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/2addr v7, v6

    if-eq v12, v7, :cond_54

    .line 2228
    iget-object v11, p0, Lcom/android/internal/widget/ViewPager;->mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2229
    add-float/2addr v2, v5

    add-float/2addr v2, v3

    iput v2, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2230
    iput v7, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2231
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v5, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v2

    iput v2, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2232
    add-int/lit8 v9, v9, -0x1

    move-object v7, v11

    goto :goto_55

    .line 2235
    :cond_54
    move-object v7, v11

    :goto_55
    iget v2, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2236
    nop

    .line 2237
    if-nez v10, :cond_60

    cmpl-float v5, v0, v2

    if-ltz v5, :cond_5f

    goto :goto_60

    .line 2243
    :cond_5f
    return-object v8

    .line 2238
    :cond_60
    :goto_60
    iget v5, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v2

    add-float/2addr v5, v3

    .line 2239
    cmpg-float v5, v0, v5

    if-ltz v5, :cond_82

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    if-ne v9, v5, :cond_72

    goto :goto_82

    .line 2242
    :cond_72
    nop

    .line 2246
    nop

    .line 2247
    iget v5, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2248
    nop

    .line 2249
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2250
    nop

    .line 2222
    add-int/lit8 v9, v9, 0x1

    move-object v10, v7

    move v7, v5

    move v5, v8

    move-object v8, v10

    move v10, v4

    goto :goto_2d

    .line 2240
    :cond_82
    :goto_82
    return-object v7

    .line 2253
    :cond_83
    return-object v8
.end method

.method private blacklist isGutterDrag(FF)Z
    .registers 6

    .line 1794
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_c

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1e

    cmpg-float p1, p2, v1

    if-gez p1, :cond_1e

    :cond_1c
    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method private blacklist onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .line 2391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2392
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2393
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_26

    .line 2396
    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 2397
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2398
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2399
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_26

    .line 2400
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 2403
    :cond_26
    return-void
.end method

.method private blacklist pageScrolled(I)Z
    .registers 9

    .line 1649
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string/jumbo v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_1d

    .line 1650
    iput-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 1651
    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1, v2}, Lcom/android/internal/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1652
    iget-boolean p1, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    if-eqz p1, :cond_17

    .line 1656
    return v2

    .line 1653
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1661
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1662
    const/high16 v0, 0x1000000

    sub-int p1, v0, p1

    goto :goto_29

    .line 1664
    :cond_28
    nop

    .line 1667
    :goto_29
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 1668
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v3

    .line 1669
    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    add-int/2addr v4, v3

    .line 1670
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v5, v5

    int-to-float v3, v3

    div-float/2addr v5, v3

    .line 1671
    iget v6, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 1672
    int-to-float p1, p1

    div-float/2addr p1, v3

    iget v3, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr p1, v3

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v5

    div-float/2addr p1, v0

    .line 1674
    int-to-float v0, v4

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1676
    iput-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 1677
    invoke-virtual {p0, v6, p1, v0}, Lcom/android/internal/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1678
    iget-boolean p1, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    if-eqz p1, :cond_52

    .line 1682
    const/4 p1, 0x1

    return p1

    .line 1679
    :cond_52
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist performDrag(FF)Z
    .registers 15

    .line 2118
    nop

    .line 2120
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 2121
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v1

    .line 2122
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2123
    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/ViewPager;->releaseHorizontalGlow(FF)F

    move-result p1

    .line 2124
    sub-float/2addr v0, p1

    .line 2125
    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 2126
    move p1, v2

    goto :goto_19

    .line 2125
    :cond_18
    move p1, v3

    .line 2128
    :goto_19
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x38d1b717    # 1.0E-4f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_25

    .line 2129
    return p1

    .line 2134
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 2135
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 2136
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    goto :goto_34

    .line 2138
    :cond_30
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 2139
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 2143
    :goto_34
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    .line 2145
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v0

    const/high16 v7, 0x4b800000    # 1.6777216E7f

    if-eqz v0, :cond_45

    .line 2146
    sub-float v6, v7, v6

    goto :goto_46

    .line 2148
    :cond_45
    nop

    .line 2152
    :goto_46
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2153
    iget v8, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-nez v8, :cond_54

    move v8, v2

    goto :goto_55

    :cond_54
    move v8, v3

    .line 2154
    :goto_55
    if-eqz v8, :cond_5c

    .line 2155
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v9, v1

    mul-float/2addr v0, v9

    goto :goto_60

    .line 2157
    :cond_5c
    int-to-float v0, v1

    iget v9, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr v0, v9

    .line 2161
    :goto_60
    iget-object v9, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2162
    iget v10, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget-object v11, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v11}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v11

    sub-int/2addr v11, v2

    if-ne v10, v11, :cond_7b

    move v3, v2

    .line 2163
    :cond_7b
    if-eqz v3, :cond_82

    .line 2164
    iget v9, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v10, v1

    mul-float/2addr v9, v10

    goto :goto_86

    .line 2166
    :cond_82
    int-to-float v9, v1

    iget v10, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    mul-float/2addr v9, v10

    .line 2170
    :goto_86
    cmpg-float v10, v6, v0

    if-gez v10, :cond_a1

    .line 2171
    if-eqz v8, :cond_9d

    .line 2172
    sub-float p1, v0, v6

    .line 2173
    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    invoke-virtual {v4, p1, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 2174
    goto :goto_9e

    .line 2171
    :cond_9d
    move v2, p1

    .line 2176
    :goto_9e
    move v6, v0

    move p1, v2

    goto :goto_b9

    .line 2177
    :cond_a1
    cmpl-float v0, v6, v9

    if-lez v0, :cond_b8

    .line 2178
    if-eqz v3, :cond_b4

    .line 2179
    sub-float/2addr v6, v9

    .line 2180
    int-to-float p1, v1

    div-float/2addr v6, p1

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-virtual {v5, v6, p2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 2181
    goto :goto_b5

    .line 2178
    :cond_b4
    move v2, p1

    .line 2183
    :goto_b5
    move p1, v2

    move v6, v9

    goto :goto_b9

    .line 2185
    :cond_b8
    nop

    .line 2190
    :goto_b9
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_c2

    .line 2191
    sub-float v6, v7, v6

    goto :goto_c3

    .line 2193
    :cond_c2
    nop

    .line 2197
    :goto_c3
    iget p2, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    float-to-int v0, v6

    int-to-float v1, v0

    sub-float/2addr v6, v1

    add-float/2addr p2, v6

    iput p2, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2199
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 2200
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    .line 2202
    return p1
.end method

.method private blacklist recomputeScrollPosition(IIII)V
    .registers 11

    .line 1472
    if-lez p2, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1473
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 1474
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    .line 1476
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result p3

    .line 1477
    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    .line 1478
    int-to-float p2, v0

    mul-float/2addr p3, p2

    float-to-int v1, p3

    .line 1480
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1481
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_5a

    .line 1483
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getDuration()I

    move-result p2

    iget-object p3, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->timePassed()I

    move-result p3

    sub-int v5, p2, p3

    .line 1484
    iget p2, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object p2

    .line 1485
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    iget p2, p2, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int v3, p2

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1488
    :cond_5a
    goto :goto_8c

    .line 1489
    :cond_5b
    iget p2, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object p2

    .line 1490
    if-eqz p2, :cond_6c

    iget p2, p2, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget p3, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_6d

    :cond_6c
    const/4 p2, 0x0

    .line 1491
    :goto_6d
    nop

    .line 1492
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 1493
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_8c

    .line 1494
    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 1495
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1498
    :cond_8c
    :goto_8c
    return-void
.end method

.method private blacklist releaseHorizontalGlow(FF)F
    .registers 5

    .line 2106
    nop

    .line 2107
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 2108
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 2109
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_24

    .line 2110
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    neg-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result p1

    neg-float v1, p1

    goto :goto_34

    .line 2111
    :cond_24
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_34

    .line 2112
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v1

    .line 2114
    :cond_34
    :goto_34
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    return v1
.end method

.method private blacklist removeNonDecorViews()V
    .registers 3

    .line 441
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 442
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 443
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 444
    iget-boolean v1, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_1a

    .line 445
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->removeViewAt(I)V

    .line 446
    add-int/lit8 v0, v0, -0x1

    .line 441
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 449
    :cond_1d
    return-void
.end method

.method private blacklist requestParentDisallowInterceptTouchEvent(Z)V
    .registers 3

    .line 2088
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2089
    if-eqz v0, :cond_9

    .line 2090
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2092
    :cond_9
    return-void
.end method

.method private blacklist scrollToItem(IZIZ)V
    .registers 7

    .line 544
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->getLeftEdgeForItem(I)I

    move-result v0

    .line 546
    const/4 v1, 0x0

    if-eqz p2, :cond_21

    .line 547
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/internal/widget/ViewPager;->smoothScrollTo(III)V

    .line 549
    if-eqz p4, :cond_15

    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_15

    .line 550
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p2, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 552
    :cond_15
    if-eqz p4, :cond_40

    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_40

    .line 553
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p2, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_40

    .line 556
    :cond_21
    if-eqz p4, :cond_2c

    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_2c

    .line 557
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p2, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 559
    :cond_2c
    if-eqz p4, :cond_37

    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_37

    .line 560
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p2, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 563
    :cond_37
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 564
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 565
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    .line 567
    :cond_40
    :goto_40
    return-void
.end method

.method private blacklist setScrollState(I)V
    .registers 3

    .line 375
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_5

    .line 376
    return-void

    .line 379
    :cond_5
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v0, :cond_13

    .line 382
    if-eqz p1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->enableLayers(Z)V

    .line 384
    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1c

    .line 385
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 387
    :cond_1c
    return-void
.end method

.method private blacklist setScrollingCacheEnabled(Z)V
    .registers 3

    .line 2416
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_6

    .line 2417
    iput-boolean p1, p0, Lcom/android/internal/widget/ViewPager;->mScrollingCacheEnabled:Z

    .line 2428
    :cond_6
    return-void
.end method

.method private blacklist sortChildDrawingOrder()V
    .registers 5

    .line 1098
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2f

    .line 1099
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_15

    .line 1102
    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1104
    :goto_15
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 1105
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_28

    .line 1106
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1107
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1109
    :cond_28
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/widget/ViewPager;->sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1111
    :cond_2f
    return-void
.end method


# virtual methods
.method public whitelist addFocusables(Ljava/util/ArrayList;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2631
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2633
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2635
    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2f

    .line 2636
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 2637
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2638
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 2639
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 2640
    if-eqz v4, :cond_2c

    iget v4, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_2c

    .line 2641
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2636
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2651
    :cond_2f
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_39

    .line 2654
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_56

    .line 2657
    :cond_39
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_40

    .line 2658
    return-void

    .line 2660
    :cond_40
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_51

    .line 2661
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_51

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_51

    .line 2662
    return-void

    .line 2664
    :cond_51
    if-eqz p1, :cond_56

    .line 2665
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2668
    :cond_56
    return-void
.end method

.method blacklist addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .registers 5

    .line 813
    new-instance v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ItemInfo;-><init>()V

    .line 814
    iput p1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 815
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/android/internal/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 816
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result p1

    iput p1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 817
    if-ltz p2, :cond_28

    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_22

    goto :goto_28

    .line 820
    :cond_22
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2d

    .line 818
    :cond_28
    :goto_28
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    :goto_2d
    return-object v0
.end method

.method public whitelist addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2678
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2679
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2680
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    .line 2681
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 2682
    if-eqz v2, :cond_20

    iget v2, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v2, v3, :cond_20

    .line 2683
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2678
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2687
    :cond_23
    return-void
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7

    .line 1291
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1292
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1294
    :cond_a
    move-object v0, p3

    check-cast v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1295
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/android/internal/widget/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 1296
    iget-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_2e

    .line 1297
    if-eqz v0, :cond_27

    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_1f

    goto :goto_27

    .line 1298
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1300
    :cond_27
    :goto_27
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1301
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_31

    .line 1303
    :cond_2e
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1313
    :goto_31
    return-void
.end method

.method public blacklist arrowScroll(I)Z
    .registers 9

    .line 2516
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2517
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_b

    .line 2518
    move-object v0, v3

    goto :goto_6e

    .line 2519
    :cond_b
    if-eqz v0, :cond_6e

    .line 2520
    nop

    .line 2521
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_12
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_20

    .line 2523
    if-ne v4, p0, :cond_1b

    .line 2524
    nop

    .line 2525
    move v4, v1

    goto :goto_21

    .line 2522
    :cond_1b
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_12

    .line 2521
    :cond_20
    move v4, v2

    .line 2528
    :goto_21
    if-nez v4, :cond_6e

    .line 2530
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2531
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2532
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_37
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_51

    .line 2534
    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Landroid/view/ViewParent;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2533
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_37

    .line 2536
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2537
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2536
    const-string v4, "ViewPager"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    move-object v0, v3

    .line 2542
    :cond_6e
    :goto_6e
    nop

    .line 2544
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2546
    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v3, :cond_c3

    if-eq v3, v0, :cond_c3

    .line 2547
    if-ne p1, v5, :cond_a1

    .line 2550
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2551
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2552
    if-eqz v0, :cond_9b

    if-lt v1, v2, :cond_9b

    .line 2553
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageLeft()Z

    move-result v0

    move v2, v0

    goto :goto_a0

    .line 2555
    :cond_9b
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    move v2, v0

    .line 2557
    :cond_a0
    :goto_a0
    goto :goto_d6

    :cond_a1
    if-ne p1, v4, :cond_a0

    .line 2560
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2561
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2562
    if-eqz v0, :cond_bd

    if-gt v1, v2, :cond_bd

    .line 2563
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageRight()Z

    move-result v0

    move v2, v0

    goto :goto_c2

    .line 2565
    :cond_bd
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    move v2, v0

    .line 2567
    :goto_c2
    goto :goto_d6

    .line 2568
    :cond_c3
    if-eq p1, v5, :cond_d2

    if-ne p1, v1, :cond_c8

    goto :goto_d2

    .line 2571
    :cond_c8
    if-eq p1, v4, :cond_cd

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d6

    .line 2573
    :cond_cd
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageRight()Z

    move-result v2

    goto :goto_d6

    .line 2570
    :cond_d2
    :goto_d2
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageLeft()Z

    move-result v2

    .line 2575
    :cond_d6
    :goto_d6
    if-eqz v2, :cond_df

    .line 2576
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->playSoundEffect(I)V

    .line 2578
    :cond_df
    return v2
.end method

.method protected blacklist canScroll(Landroid/view/View;ZIII)Z
    .registers 17

    .line 2458
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_50

    .line 2459
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 2460
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 2461
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 2462
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 2464
    sub-int/2addr v4, v1

    :goto_15
    if-ltz v4, :cond_50

    .line 2466
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2467
    add-int v5, p4, v2

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    if-lt v5, v7, :cond_4d

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ge v5, v7, :cond_4d

    add-int v7, p5, v3

    .line 2468
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_4d

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_4d

    .line 2469
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v9, v5, v8

    .line 2470
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v10, v7, v5

    .line 2469
    const/4 v7, 0x1

    move-object v5, p0

    move v8, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 2471
    return v1

    .line 2464
    :cond_4d
    add-int/lit8 v4, v4, -0x1

    goto :goto_15

    .line 2476
    :cond_50
    if-eqz p2, :cond_5a

    neg-int p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v1, 0x0

    :goto_5b
    return v1
.end method

.method public whitelist canScrollHorizontally(I)Z
    .registers 6

    .line 2431
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2432
    return v1

    .line 2435
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v0

    .line 2436
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 2437
    const/4 v3, 0x1

    if-gez p1, :cond_1a

    .line 2438
    int-to-float p1, v0

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_19

    move v1, v3

    :cond_19
    return v1

    .line 2439
    :cond_1a
    if-lez p1, :cond_25

    .line 2440
    int-to-float p1, v0

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_24

    move v1, v3

    :cond_24
    return v1

    .line 2442
    :cond_25
    return v1
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .line 2734
    instance-of v0, p1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public whitelist computeScroll()V
    .registers 5

    .line 1624
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1625
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    .line 1626
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v1

    .line 1627
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1628
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1630
    if-ne v0, v2, :cond_28

    if-eq v1, v3, :cond_3a

    .line 1631
    :cond_28
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1633
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1634
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1635
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1640
    :cond_3a
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 1641
    return-void

    .line 1645
    :cond_3e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 1646
    return-void
.end method

.method blacklist dataSetChanged()V
    .registers 11

    .line 828
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 829
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    .line 830
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_21

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 831
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_21

    move v1, v3

    goto :goto_22

    :cond_21
    move v1, v4

    .line 832
    :goto_22
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 834
    nop

    .line 835
    move v5, v4

    move v6, v5

    :goto_27
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_86

    .line 836
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 837
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    .line 839
    const/4 v9, -0x1

    if-ne v8, v9, :cond_43

    .line 840
    goto :goto_84

    .line 843
    :cond_43
    const/4 v9, -0x2

    if-ne v8, v9, :cond_76

    .line 844
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 845
    add-int/lit8 v5, v5, -0x1

    .line 847
    if-nez v6, :cond_55

    .line 848
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 849
    move v6, v3

    .line 852
    :cond_55
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget-object v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v1, p0, v8, v9}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 853
    nop

    .line 855
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v7, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v1, v7, :cond_74

    .line 857
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 858
    move v2, v1

    move v1, v3

    goto :goto_84

    .line 855
    :cond_74
    move v1, v3

    goto :goto_84

    .line 863
    :cond_76
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_84

    .line 864
    iget v1, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v9, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v1, v9, :cond_81

    .line 866
    move v2, v8

    .line 869
    :cond_81
    iput v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 870
    move v1, v3

    .line 835
    :cond_84
    :goto_84
    add-int/2addr v5, v3

    goto :goto_27

    .line 874
    :cond_86
    if-eqz v6, :cond_8d

    .line 875
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 878
    :cond_8d
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/internal/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 880
    if-eqz v1, :cond_b7

    .line 882
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 883
    move v1, v4

    :goto_9b
    if-ge v1, v0, :cond_b1

    .line 884
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 885
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 886
    iget-boolean v6, v5, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_ae

    .line 887
    const/4 v6, 0x0

    iput v6, v5, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 883
    :cond_ae
    add-int/lit8 v1, v1, 0x1

    goto :goto_9b

    .line 891
    :cond_b1
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 892
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    .line 894
    :cond_b7
    return-void
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 2482
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method blacklist distanceInfluenceForSnapDuration(F)F
    .registers 6

    .line 749
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 750
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 751
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 2295
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2296
    nop

    .line 2298
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getOverScrollMode()I

    move-result v0

    .line 2299
    const/4 v1, 0x0

    if-eqz v0, :cond_27

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1b

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 2301
    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_1b

    goto :goto_27

    .line 2325
    :cond_1b
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 2326
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_ab

    .line 2302
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_67

    .line 2303
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2304
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2305
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v3

    .line 2307
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2308
    neg-int v4, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2309
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2310
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2311
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2313
    :cond_67
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 2314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2315
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v2

    .line 2316
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2318
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2319
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2320
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2321
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2322
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2323
    nop

    .line 2329
    :cond_ab
    :goto_ab
    if-eqz v1, :cond_b0

    .line 2331
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 2333
    :cond_b0
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .registers 3

    .line 736
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 737
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 738
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 739
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 740
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 742
    :cond_1a
    return-void
.end method

.method public blacklist executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 2494
    nop

    .line 2495
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_35

    .line 2496
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_38

    goto :goto_35

    .line 2504
    :sswitch_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2505
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_36

    .line 2506
    :cond_1b
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 2507
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_36

    .line 2501
    :sswitch_27
    const/16 p1, 0x42

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result p1

    .line 2502
    goto :goto_36

    .line 2498
    :sswitch_2e
    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result p1

    .line 2499
    goto :goto_36

    .line 2512
    :cond_35
    :goto_35
    const/4 p1, 0x0

    :goto_36
    return p1

    nop

    :sswitch_data_38
    .sparse-switch
        0x15 -> :sswitch_2e
        0x16 -> :sswitch_27
        0x3d -> :sswitch_f
    .end sparse-switch
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 2724
    new-instance v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 2739
    new-instance v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 2729
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getAdapter()Lcom/android/internal/widget/PagerAdapter;
    .registers 2

    .line 457
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    return-object v0
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .registers 5

    .line 624
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    .line 625
    :cond_9
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    iget p1, p1, Lcom/android/internal/widget/ViewPager$LayoutParams;->childIndex:I

    .line 626
    return p1
.end method

.method public blacklist getCurrent()Ljava/lang/Object;
    .registers 2

    .line 1316
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 1317
    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_e

    :cond_c
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    :goto_e
    return-object v0
.end method

.method public greylist getCurrentItem()I
    .registers 2

    .line 493
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    return v0
.end method

.method public blacklist getOffscreenPageLimit()I
    .registers 2

    .line 649
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public blacklist getPageMargin()I
    .registers 2

    .line 705
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    return v0
.end method

.method blacklist infoForAnyChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .registers 3

    .line 1341
    nop

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_14

    .line 1342
    if-eqz v0, :cond_12

    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_e

    goto :goto_12

    .line 1345
    :cond_e
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_1

    .line 1343
    :cond_12
    :goto_12
    const/4 p1, 0x0

    return-object p1

    .line 1347
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object p1

    return-object p1
.end method

.method blacklist infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .registers 6

    .line 1330
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1331
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1332
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v3, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1333
    return-object v1

    .line 1330
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1336
    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method blacklist infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .registers 5

    .line 1351
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 1352
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1353
    iget v2, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_16

    .line 1354
    return-object v1

    .line 1351
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1357
    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 2

    .line 1362
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 1364
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 371
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 372
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    .line 2337
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2340
    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    if-lez v1, :cond_b2

    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b2

    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b2

    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v1, :cond_b2

    .line 2341
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v1

    .line 2342
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v2

    .line 2344
    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2345
    nop

    .line 2346
    iget-object v5, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2347
    iget v7, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2349
    iget-object v8, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2350
    iget v9, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2351
    iget-object v10, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ViewPager$ItemInfo;

    iget v10, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2352
    nop

    :goto_47
    if-ge v9, v10, :cond_b2

    .line 2353
    :goto_49
    iget v11, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v9, v11, :cond_5a

    if-ge v6, v8, :cond_5a

    .line 2354
    iget-object v5, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_49

    .line 2359
    :cond_5a
    iget v11, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v9, v11, :cond_63

    .line 2360
    iget v7, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2361
    iget v11, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    goto :goto_6a

    .line 2363
    :cond_63
    nop

    .line 2364
    iget-object v11, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v11, v9}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v11

    .line 2368
    :goto_6a
    mul-float v12, v7, v4

    .line 2369
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v13

    if-eqz v13, :cond_76

    .line 2370
    const/high16 v13, 0x4b800000    # 1.6777216E7f

    sub-float/2addr v13, v12

    goto :goto_79

    .line 2372
    :cond_76
    mul-float v13, v11, v4

    add-float/2addr v13, v12

    .line 2375
    :goto_79
    add-float/2addr v7, v11

    add-float/2addr v7, v3

    .line 2377
    iget v11, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v11, v11

    add-float/2addr v11, v13

    int-to-float v12, v1

    cmpl-float v11, v11, v12

    if-lez v11, :cond_a1

    .line 2378
    iget-object v11, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v12, v13

    iget v14, v0, Lcom/android/internal/widget/ViewPager;->mTopPageBounds:I

    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v13

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    move/from16 v16, v1

    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mBottomPageBounds:I

    invoke-virtual {v11, v12, v14, v15, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2380
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, p1

    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a5

    .line 2377
    :cond_a1
    move-object/from16 v11, p1

    move/from16 v16, v1

    .line 2383
    :goto_a5
    add-int v1, v16, v2

    int-to-float v1, v1

    cmpl-float v1, v13, v1

    if-lez v1, :cond_ad

    .line 2384
    goto :goto_b2

    .line 2352
    :cond_ad
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v16

    goto :goto_47

    .line 2388
    :cond_b2
    :goto_b2
    return-void
.end method

.method public whitelist onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 2745
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2747
    const-class v0, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2748
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->canScroll()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2750
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v0, :cond_32

    .line 2751
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2752
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2753
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2755
    :cond_32
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 2759
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2761
    const-class v0, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2762
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->canScroll()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2764
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2765
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2766
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2769
    :cond_24
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2770
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2771
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2773
    :cond_35
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    .line 1813
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 1816
    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v6, 0x0

    if-eq v1, v2, :cond_15a

    const/4 v7, 0x1

    if-ne v1, v7, :cond_10

    goto/16 :goto_15a

    .line 1831
    :cond_10
    if-eqz v1, :cond_1c

    .line 1832
    iget-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_17

    .line 1834
    return v7

    .line 1836
    :cond_17
    iget-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    if-eqz v2, :cond_1c

    .line 1838
    return v6

    .line 1842
    :cond_1c
    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_16e

    goto/16 :goto_148

    .line 1944
    :sswitch_22
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_148

    .line 1853
    :sswitch_27
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1854
    if-ne v1, v3, :cond_2d

    .line 1856
    goto/16 :goto_148

    .line 1859
    :cond_2d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1860
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 1861
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    sub-float v3, v8, v3

    .line 1862
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1863
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 1864
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    sub-float v1, v10, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1867
    cmpl-float v12, v3, v2

    if-eqz v12, :cond_68

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v1, v3}, Lcom/android/internal/widget/ViewPager;->isGutterDrag(FF)Z

    move-result v1

    if-nez v1, :cond_68

    float-to-int v3, v3

    float-to-int v4, v8

    float-to-int v5, v10

    .line 1868
    const/4 v2, 0x0

    move-object v1, p0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1870
    iput v8, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1871
    iput v10, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1872
    iput-boolean v7, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1873
    return v6

    .line 1875
    :cond_68
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v9, v1

    if-lez v1, :cond_95

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v9, v1

    cmpl-float v1, v9, v11

    if-lez v1, :cond_95

    .line 1877
    iput-boolean v7, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1878
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1879
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 1880
    if-lez v12, :cond_87

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_8d

    .line 1881
    :cond_87
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :goto_8d
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1882
    iput v10, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1883
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_9e

    .line 1884
    :cond_95
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v11, v1

    if-lez v1, :cond_9e

    .line 1890
    iput-boolean v7, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1892
    :cond_9e
    :goto_9e
    iget-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_148

    .line 1894
    invoke-direct {p0, v8, v10}, Lcom/android/internal/widget/ViewPager;->performDrag(FF)Z

    move-result v1

    if-eqz v1, :cond_148

    .line 1895
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    goto/16 :goto_148

    .line 1906
    :sswitch_ad
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1907
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1908
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1909
    iput-boolean v6, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1911
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1912
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_f7

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 1913
    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCloseEnough:I

    if-le v1, v3, :cond_f7

    .line 1915
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1916
    iput-boolean v6, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 1917
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 1918
    iput-boolean v7, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1919
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1920
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    goto :goto_148

    .line 1921
    :cond_f7
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_112

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 1922
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_10c

    goto :goto_112

    .line 1933
    :cond_10c
    invoke-direct {p0, v6}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 1934
    iput-boolean v6, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1940
    goto :goto_148

    .line 1924
    :cond_112
    :goto_112
    iput-boolean v7, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1925
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 1926
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_131

    .line 1927
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1929
    :cond_131
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_148

    .line 1930
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1948
    :cond_148
    :goto_148
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_152

    .line 1949
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1951
    :cond_152
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1957
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    return v0

    .line 1819
    :cond_15a
    :goto_15a
    iput-boolean v6, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1820
    iput-boolean v6, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1821
    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1822
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_16c

    .line 1823
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1824
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1826
    :cond_16c
    return v6

    nop

    :sswitch_data_16e
    .sparse-switch
        0x0 -> :sswitch_ad
        0x2 -> :sswitch_27
        0x6 -> :sswitch_22
    .end sparse-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 24

    .line 1502
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    .line 1503
    sub-int v2, p4, p2

    .line 1504
    sub-int v3, p5, p3

    .line 1505
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v4

    .line 1506
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v5

    .line 1507
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v6

    .line 1508
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v7

    .line 1509
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v8

    .line 1511
    nop

    .line 1515
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_21
    const/16 v12, 0x8

    if-ge v10, v1, :cond_bb

    .line 1516
    invoke-virtual {v0, v10}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1517
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_b7

    .line 1518
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1519
    nop

    .line 1520
    nop

    .line 1521
    iget-boolean v14, v12, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v14, :cond_b7

    .line 1522
    iget v14, v12, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x7

    .line 1523
    iget v12, v12, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v12, v12, 0x70

    .line 1524
    packed-switch v14, :pswitch_data_134

    .line 1526
    :pswitch_46
    nop

    .line 1527
    move v14, v4

    goto :goto_73

    .line 1537
    :pswitch_49
    sub-int v14, v2, v6

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1538
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    goto :goto_73

    .line 1529
    :pswitch_5b
    nop

    .line 1530
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    .line 1531
    goto :goto_73

    .line 1533
    :pswitch_62
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1535
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    .line 1541
    :goto_73
    sparse-switch v12, :sswitch_data_142

    .line 1543
    nop

    .line 1544
    move v12, v5

    goto :goto_a3

    .line 1554
    :sswitch_79
    sub-int v12, v3, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 1555
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    goto :goto_a3

    .line 1546
    :sswitch_8b
    nop

    .line 1547
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    .line 1548
    goto :goto_a3

    .line 1550
    :sswitch_92
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1552
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    .line 1558
    :goto_a3
    add-int/2addr v4, v8

    .line 1559
    nop

    .line 1560
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    .line 1561
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v5, v16

    .line 1559
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    .line 1562
    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    .line 1515
    :cond_b7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_21

    .line 1567
    :cond_bb
    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    .line 1569
    const/4 v8, 0x0

    :goto_be
    if-ge v8, v1, :cond_11d

    .line 1570
    invoke-virtual {v0, v8}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1571
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v12, :cond_cb

    .line 1572
    goto :goto_11a

    .line 1575
    :cond_cb
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1576
    iget-boolean v13, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v13, :cond_d6

    .line 1577
    goto :goto_11a

    .line 1580
    :cond_d6
    invoke-virtual {v0, v9}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v13

    .line 1581
    if-nez v13, :cond_dd

    .line 1582
    goto :goto_11a

    .line 1585
    :cond_dd
    iget-boolean v14, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v14, :cond_f9

    .line 1588
    const/4 v14, 0x0

    iput-boolean v14, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1589
    int-to-float v14, v2

    iget v10, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v14, v10

    float-to-int v10, v14

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1592
    sub-int v15, v3, v5

    sub-int/2addr v15, v7

    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1595
    invoke-virtual {v9, v10, v14}, Landroid/view/View;->measure(II)V

    .line 1598
    :cond_f9
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 1599
    int-to-float v14, v2

    iget v13, v13, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v14, v13

    float-to-int v13, v14

    .line 1601
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v14

    if-eqz v14, :cond_10e

    .line 1602
    const/high16 v14, 0x1000000

    sub-int/2addr v14, v6

    sub-int/2addr v14, v13

    sub-int/2addr v14, v10

    goto :goto_110

    .line 1604
    :cond_10e
    add-int v14, v4, v13

    .line 1607
    :goto_110
    nop

    .line 1608
    add-int/2addr v10, v14

    .line 1609
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    .line 1608
    invoke-virtual {v9, v14, v5, v10, v13}, Landroid/view/View;->layout(IIII)V

    .line 1569
    :goto_11a
    add-int/lit8 v8, v8, 0x1

    goto :goto_be

    .line 1612
    :cond_11d
    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mTopPageBounds:I

    .line 1613
    sub-int/2addr v3, v7

    iput v3, v0, Lcom/android/internal/widget/ViewPager;->mBottomPageBounds:I

    .line 1614
    iput v11, v0, Lcom/android/internal/widget/ViewPager;->mDecorChildCount:I

    .line 1616
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_12f

    .line 1617
    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    const/4 v14, 0x0

    invoke-direct {v0, v1, v14, v14, v14}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_130

    .line 1616
    :cond_12f
    const/4 v14, 0x0

    .line 1619
    :goto_130
    iput-boolean v14, v0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 1620
    return-void

    nop

    :pswitch_data_134
    .packed-switch 0x1
        :pswitch_62
        :pswitch_46
        :pswitch_5b
        :pswitch_46
        :pswitch_49
    .end packed-switch

    :sswitch_data_142
    .sparse-switch
        0x10 -> :sswitch_92
        0x30 -> :sswitch_8b
        0x50 -> :sswitch_79
    .end sparse-switch
.end method

.method protected whitelist onMeasure(II)V
    .registers 19

    .line 1373
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Lcom/android/internal/widget/ViewPager;->getDefaultSize(II)I

    move-result v2

    .line 1374
    move/from16 v3, p2

    invoke-static {v1, v3}, Lcom/android/internal/widget/ViewPager;->getDefaultSize(II)I

    move-result v3

    .line 1373
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/ViewPager;->setMeasuredDimension(II)V

    .line 1376
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result v2

    .line 1377
    div-int/lit8 v3, v2, 0xa

    .line 1378
    iget v4, v0, Lcom/android/internal/widget/ViewPager;->mDefaultGutterSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    .line 1381
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1382
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1389
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v4

    .line 1390
    move v5, v1

    :goto_3d
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-ge v5, v4, :cond_c9

    .line 1391
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1392
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v6, :cond_c4

    .line 1393
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1394
    if-eqz v6, :cond_c4

    iget-boolean v10, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v10, :cond_c4

    .line 1395
    iget v10, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v10, v10, 0x7

    .line 1396
    iget v11, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v11, v11, 0x70

    .line 1397
    nop

    .line 1398
    nop

    .line 1399
    const/16 v12, 0x30

    if-eq v11, v12, :cond_6f

    const/16 v12, 0x50

    if-ne v11, v12, :cond_6d

    goto :goto_6f

    :cond_6d
    move v11, v1

    goto :goto_70

    :cond_6f
    :goto_6f
    move v11, v7

    .line 1400
    :goto_70
    const/4 v12, 0x3

    if-eq v10, v12, :cond_78

    const/4 v12, 0x5

    if-ne v10, v12, :cond_77

    goto :goto_78

    :cond_77
    move v7, v1

    .line 1402
    :cond_78
    :goto_78
    const/high16 v10, -0x80000000

    if-eqz v11, :cond_7f

    .line 1403
    move v12, v10

    move v10, v8

    goto :goto_84

    .line 1404
    :cond_7f
    if-eqz v7, :cond_83

    .line 1405
    move v12, v8

    goto :goto_84

    .line 1404
    :cond_83
    move v12, v10

    .line 1408
    :goto_84
    nop

    .line 1409
    nop

    .line 1410
    iget v13, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    const/4 v14, -0x1

    const/4 v15, -0x2

    if-eq v13, v15, :cond_98

    .line 1411
    nop

    .line 1412
    iget v10, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    if-eq v10, v14, :cond_95

    .line 1413
    iget v10, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    move v13, v8

    goto :goto_9a

    .line 1412
    :cond_95
    move v10, v2

    move v13, v8

    goto :goto_9a

    .line 1410
    :cond_98
    move v13, v10

    move v10, v2

    .line 1416
    :goto_9a
    iget v1, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    if-eq v1, v15, :cond_a8

    .line 1417
    nop

    .line 1418
    iget v1, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    if-eq v1, v14, :cond_a6

    .line 1419
    iget v1, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    goto :goto_aa

    .line 1418
    :cond_a6
    move v1, v3

    goto :goto_aa

    .line 1416
    :cond_a8
    move v1, v3

    move v8, v12

    .line 1422
    :goto_aa
    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1423
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1424
    invoke-virtual {v9, v6, v1}, Landroid/view/View;->measure(II)V

    .line 1426
    if-eqz v11, :cond_bd

    .line 1427
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v3, v1

    goto :goto_c4

    .line 1428
    :cond_bd
    if-eqz v7, :cond_c4

    .line 1429
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v2, v1

    .line 1390
    :cond_c4
    :goto_c4
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x0

    goto/16 :goto_3d

    .line 1435
    :cond_c9
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/ViewPager;->mChildWidthMeasureSpec:I

    .line 1436
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/ViewPager;->mChildHeightMeasureSpec:I

    .line 1439
    iput-boolean v7, v0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    .line 1440
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 1441
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    .line 1444
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v3

    .line 1445
    nop

    :goto_e2
    if-ge v1, v3, :cond_10b

    .line 1446
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1447
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v6, :cond_108

    .line 1451
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1452
    if-eqz v5, :cond_fa

    iget-boolean v7, v5, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v7, :cond_108

    .line 1453
    :cond_fa
    int-to-float v7, v2

    iget v5, v5, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v7, v5

    float-to-int v5, v7

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1455
    iget v7, v0, Lcom/android/internal/widget/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v4, v5, v7}, Landroid/view/View;->measure(II)V

    .line 1445
    :cond_108
    add-int/lit8 v1, v1, 0x1

    goto :goto_e2

    .line 1459
    :cond_10b
    return-void
.end method

.method protected blacklist onPageScrolled(IFI)V
    .registers 15

    .line 1699
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mDecorChildCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_6b

    .line 1700
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    .line 1701
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v2

    .line 1702
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v3

    .line 1703
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v4

    .line 1704
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v5

    .line 1705
    move v6, v1

    :goto_1a
    if-ge v6, v5, :cond_6b

    .line 1706
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1707
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1708
    iget-boolean v9, v8, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_2b

    goto :goto_68

    .line 1710
    :cond_2b
    iget v8, v8, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v8, 0x7

    .line 1711
    nop

    .line 1712
    packed-switch v8, :pswitch_data_b4

    .line 1714
    :pswitch_33
    nop

    .line 1715
    move v8, v2

    goto :goto_5c

    .line 1725
    :pswitch_36
    sub-int v8, v4, v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    .line 1726
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    move v10, v8

    move v8, v2

    move v2, v10

    goto :goto_5c

    .line 1717
    :pswitch_46
    nop

    .line 1718
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    .line 1719
    goto :goto_5c

    .line 1721
    :pswitch_4d
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v4, v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1723
    move v10, v8

    move v8, v2

    move v2, v10

    .line 1729
    :goto_5c
    add-int/2addr v2, v0

    .line 1731
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v2, v9

    .line 1732
    if-eqz v2, :cond_67

    .line 1733
    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1705
    :cond_67
    move v2, v8

    :goto_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 1738
    :cond_6b
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_74

    .line 1739
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1741
    :cond_74
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7d

    .line 1742
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1745
    :cond_7d
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz p1, :cond_af

    .line 1746
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result p1

    .line 1747
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result p2

    .line 1748
    nop

    :goto_8a
    if-ge v1, p2, :cond_af

    .line 1749
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1750
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1752
    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v0, :cond_9b

    goto :goto_ac

    .line 1754
    :cond_9b
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 1755
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    invoke-interface {v2, p3, v0}, Lcom/android/internal/widget/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    .line 1748
    :goto_ac
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    .line 1759
    :cond_af
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 1760
    return-void

    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_33
        :pswitch_46
        :pswitch_33
        :pswitch_36
    .end packed-switch
.end method

.method protected whitelist onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11

    .line 2698
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 2699
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_10

    .line 2700
    nop

    .line 2701
    nop

    .line 2702
    move v1, v0

    move v0, v2

    move v4, v3

    goto :goto_15

    .line 2704
    :cond_10
    add-int/lit8 v0, v0, -0x1

    .line 2705
    nop

    .line 2706
    const/4 v1, -0x1

    move v4, v1

    .line 2708
    :goto_15
    nop

    :goto_16
    if-eq v0, v1, :cond_37

    .line 2709
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2710
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_35

    .line 2711
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v6

    .line 2712
    if-eqz v6, :cond_35

    iget v6, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v7, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v6, v7, :cond_35

    .line 2713
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 2714
    return v3

    .line 2708
    :cond_35
    add-int/2addr v0, v4

    goto :goto_16

    .line 2719
    :cond_37
    return v2
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    .line 1271
    instance-of v0, p1, Lcom/android/internal/widget/ViewPager$SavedState;

    if-nez v0, :cond_8

    .line 1272
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1273
    return-void

    .line 1276
    :cond_8
    check-cast p1, Lcom/android/internal/widget/ViewPager$SavedState;

    .line 1277
    invoke-virtual {p1}, Lcom/android/internal/widget/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1279
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v0, :cond_26

    .line 1280
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v1, p1, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/android/internal/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1281
    iget p1, p1, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    goto :goto_32

    .line 1283
    :cond_26
    iget v0, p1, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 1284
    iget-object v0, p1, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1285
    iget-object p1, p1, Lcom/android/internal/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 1287
    :goto_32
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 2

    .line 2617
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 2619
    if-nez p1, :cond_9

    .line 2620
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    goto :goto_c

    .line 2622
    :cond_9
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    .line 2624
    :goto_c
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1260
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1261
    new-instance v1, Lcom/android/internal/widget/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1262
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iput v0, v1, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    .line 1263
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v0, :cond_19

    .line 1264
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1266
    :cond_19
    return-object v1
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 5

    .line 1463
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1466
    if-eq p1, p3, :cond_c

    .line 1467
    iget p2, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    iget p4, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/android/internal/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1469
    :cond_c
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 1962
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_e

    .line 1965
    return v1

    .line 1968
    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v0, :cond_174

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_174

    .line 1973
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_26

    .line 1974
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1976
    :cond_26
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1978
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1979
    nop

    .line 1981
    and-int/lit16 v0, v0, 0xff

    const/4 v2, -0x1

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_176

    :pswitch_37
    goto/16 :goto_16e

    .line 2077
    :pswitch_39
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2078
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    goto/16 :goto_16e

    .line 2070
    :pswitch_4a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2071
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 2072
    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2073
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2074
    goto/16 :goto_16e

    .line 2060
    :pswitch_5c
    iget-boolean p1, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_16e

    .line 2061
    iget p1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-direct {p0, p1, v3, v1, v1}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 2062
    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2063
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->endDrag()V

    .line 2064
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2065
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2066
    move v1, v3

    goto/16 :goto_16e

    .line 1994
    :pswitch_77
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_d1

    .line 1995
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1996
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1997
    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1998
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1999
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2001
    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_d1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d1

    .line 2003
    iput-boolean v3, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 2004
    invoke-direct {p0, v3}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2005
    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    sub-float/2addr v2, v4

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_b8

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    goto :goto_be

    .line 2006
    :cond_b8
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    :goto_be
    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2007
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 2008
    invoke-direct {p0, v3}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 2009
    invoke-direct {p0, v3}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2012
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2013
    if-eqz v0, :cond_d1

    .line 2014
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2019
    :cond_d1
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_16e

    .line 2021
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2022
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 2023
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/ViewPager;->performDrag(FF)Z

    move-result p1

    or-int/2addr v1, p1

    .line 2024
    goto/16 :goto_16e

    .line 2027
    :pswitch_ea
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_16e

    .line 2028
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2029
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mMaximumVelocity:I

    int-to-float v1, v1

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2030
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 2032
    iput-boolean v3, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 2034
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getScrollStart()I

    move-result v1

    int-to-float v1, v1

    .line 2035
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 2036
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 2037
    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2039
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_11f

    .line 2040
    iget v6, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v6, v1

    iget v1, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v6, v1

    goto :goto_126

    .line 2042
    :cond_11f
    iget v6, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v1, v6

    iget v4, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    div-float v6, v1, v4

    .line 2045
    :goto_126
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2046
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2047
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 2048
    invoke-direct {p0, v5, v6, v0, p1}, Lcom/android/internal/widget/ViewPager;->determineTargetPage(IFII)I

    move-result p1

    .line 2050
    invoke-virtual {p0, p1, v3, v3, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZI)Z

    .line 2052
    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2053
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->endDrag()V

    .line 2054
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2055
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2056
    nop

    .line 2057
    move v1, v3

    goto :goto_16e

    .line 1983
    :pswitch_14d
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1984
    iput-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 1985
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 1988
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1989
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1990
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1991
    nop

    .line 2081
    :cond_16e
    :goto_16e
    if-eqz v1, :cond_173

    .line 2082
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 2084
    :cond_173
    return v3

    .line 1970
    :cond_174
    :goto_174
    return v1

    nop

    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_14d
        :pswitch_ea
        :pswitch_77
        :pswitch_5c
        :pswitch_37
        :pswitch_4a
        :pswitch_39
    .end packed-switch
.end method

.method blacklist pageLeft()Z
    .registers 4

    .line 2608
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method blacklist pageRight()Z
    .registers 4

    .line 2612
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method public whitelist performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 4

    .line 2777
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    .line 2778
    return v0

    .line 2781
    :cond_8
    const/4 p2, 0x0

    sparse-switch p1, :sswitch_data_2a

    .line 2798
    return p2

    .line 2791
    :sswitch_d
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 2792
    iget p1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 2793
    return v0

    .line 2795
    :cond_1b
    return p2

    .line 2784
    :sswitch_1c
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 2785
    iget p1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 2786
    return v0

    .line 2788
    :cond_29
    return p2

    :sswitch_data_2a
    .sparse-switch
        0x1000 -> :sswitch_1c
        0x2000 -> :sswitch_d
        0x1020039 -> :sswitch_d
        0x102003b -> :sswitch_1c
    .end sparse-switch
.end method

.method public blacklist populate()V
    .registers 2

    .line 897
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->populate(I)V

    .line 898
    return-void
.end method

.method blacklist populate(I)V
    .registers 19

    .line 901
    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 902
    nop

    .line 903
    iget v2, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eq v2, v0, :cond_1b

    .line 904
    iget v2, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ge v2, v0, :cond_10

    const/16 v2, 0x42

    goto :goto_12

    :cond_10
    const/16 v2, 0x11

    .line 905
    :goto_12
    iget v4, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 906
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    goto :goto_1d

    .line 903
    :cond_1b
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 909
    :goto_1d
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-nez v0, :cond_25

    .line 910
    invoke-direct {v1}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    .line 911
    return-void

    .line 918
    :cond_25
    iget-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    if-eqz v0, :cond_2d

    .line 920
    invoke-direct {v1}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    .line 921
    return-void

    .line 927
    :cond_2d
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_34

    .line 928
    return-void

    .line 931
    :cond_34
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 933
    iget v0, v1, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 934
    iget v5, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    sub-int/2addr v5, v0

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 935
    iget-object v7, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v7}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v7

    .line 936
    add-int/lit8 v8, v7, -0x1

    iget v9, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/2addr v9, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 938
    iget v8, v1, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    if-ne v7, v8, :cond_24e

    .line 954
    nop

    .line 955
    nop

    .line 956
    move v8, v6

    :goto_59
    iget-object v9, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_79

    .line 957
    iget-object v9, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 958
    iget v10, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v11, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-lt v10, v11, :cond_76

    .line 959
    iget v10, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v11, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v10, v11, :cond_79

    goto :goto_7a

    .line 956
    :cond_76
    add-int/lit8 v8, v8, 0x1

    goto :goto_59

    .line 964
    :cond_79
    const/4 v9, 0x0

    :goto_7a
    if-nez v9, :cond_84

    if-lez v7, :cond_84

    .line 965
    iget v9, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {v1, v9, v8}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v9

    .line 971
    :cond_84
    if-eqz v9, :cond_1b8

    .line 972
    nop

    .line 973
    add-int/lit8 v11, v8, -0x1

    .line 974
    if-ltz v11, :cond_94

    iget-object v12, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_95

    :cond_94
    const/4 v12, 0x0

    .line 975
    :goto_95
    invoke-direct {v1}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v13

    .line 976
    const/high16 v14, 0x40000000    # 2.0f

    if-gtz v13, :cond_9f

    const/4 v15, 0x0

    goto :goto_ab

    .line 977
    :cond_9f
    iget v15, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    sub-float v15, v14, v15

    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    int-to-float v6, v13

    div-float/2addr v3, v6

    add-float/2addr v15, v3

    .line 978
    :goto_ab
    iget v3, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/lit8 v3, v3, -0x1

    const/4 v6, 0x0

    :goto_b0
    if-ltz v3, :cond_11b

    .line 979
    cmpl-float v16, v6, v15

    if-ltz v16, :cond_e5

    if-ge v3, v5, :cond_e5

    .line 980
    if-nez v12, :cond_bd

    .line 981
    const/16 v16, 0x0

    goto :goto_11d

    .line 983
    :cond_bd
    const/16 v16, 0x0

    iget v10, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v3, v10, :cond_118

    iget-boolean v10, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v10, :cond_118

    .line 984
    iget-object v10, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 985
    iget-object v10, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v12, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, v1, v3, v12}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 990
    add-int/lit8 v11, v11, -0x1

    .line 991
    add-int/lit8 v8, v8, -0x1

    .line 992
    if-ltz v11, :cond_e2

    iget-object v10, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_e3

    :cond_e2
    const/4 v10, 0x0

    :goto_e3
    move-object v12, v10

    goto :goto_118

    .line 979
    :cond_e5
    const/16 v16, 0x0

    .line 994
    if-eqz v12, :cond_100

    iget v10, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v3, v10, :cond_100

    .line 995
    iget v10, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v10

    .line 996
    add-int/lit8 v11, v11, -0x1

    .line 997
    if-ltz v11, :cond_fd

    iget-object v10, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_fe

    :cond_fd
    const/4 v10, 0x0

    :goto_fe
    move-object v12, v10

    goto :goto_118

    .line 999
    :cond_100
    add-int/lit8 v10, v11, 0x1

    invoke-virtual {v1, v3, v10}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v10

    .line 1000
    iget v10, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v10

    .line 1001
    add-int/lit8 v8, v8, 0x1

    .line 1002
    if-ltz v11, :cond_116

    iget-object v10, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_117

    :cond_116
    const/4 v10, 0x0

    :goto_117
    move-object v12, v10

    .line 978
    :cond_118
    :goto_118
    add-int/lit8 v3, v3, -0x1

    goto :goto_b0

    :cond_11b
    const/16 v16, 0x0

    .line 1006
    :goto_11d
    iget v3, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 1007
    add-int/lit8 v5, v8, 0x1

    .line 1008
    cmpg-float v6, v3, v14

    if-gez v6, :cond_1b4

    .line 1009
    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_136

    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_137

    :cond_136
    const/4 v6, 0x0

    .line 1010
    :goto_137
    if-gtz v13, :cond_13c

    move/from16 v10, v16

    goto :goto_144

    .line 1011
    :cond_13c
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v13

    div-float/2addr v10, v11

    add-float/2addr v10, v14

    .line 1012
    :goto_144
    iget v11, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    :goto_146
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v7, :cond_1b4

    .line 1013
    cmpl-float v12, v3, v10

    if-ltz v12, :cond_17a

    if-le v11, v0, :cond_17a

    .line 1014
    if-nez v6, :cond_153

    .line 1015
    goto :goto_1b4

    .line 1017
    :cond_153
    iget v12, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_1b3

    iget-boolean v12, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v12, :cond_1b3

    .line 1018
    iget-object v12, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1019
    iget-object v12, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v6, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v1, v11, v6}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1024
    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_178

    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_1b3

    :cond_178
    const/4 v6, 0x0

    goto :goto_1b3

    .line 1026
    :cond_17a
    if-eqz v6, :cond_198

    iget v12, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_198

    .line 1027
    iget v6, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v6

    .line 1028
    add-int/lit8 v5, v5, 0x1

    .line 1029
    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_196

    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_1b3

    :cond_196
    const/4 v6, 0x0

    goto :goto_1b3

    .line 1031
    :cond_198
    invoke-virtual {v1, v11, v5}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v6

    .line 1032
    add-int/lit8 v5, v5, 0x1

    .line 1033
    iget v6, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v6

    .line 1034
    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1b2

    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_1b3

    :cond_1b2
    const/4 v6, 0x0

    .line 1012
    :cond_1b3
    :goto_1b3
    goto :goto_146

    .line 1039
    :cond_1b4
    :goto_1b4
    invoke-direct {v1, v9, v8, v4}, Lcom/android/internal/widget/ViewPager;->calculatePageOffsets(Lcom/android/internal/widget/ViewPager$ItemInfo;ILcom/android/internal/widget/ViewPager$ItemInfo;)V

    goto :goto_1ba

    .line 971
    :cond_1b8
    const/16 v16, 0x0

    .line 1049
    :goto_1ba
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v3, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eqz v9, :cond_1c3

    iget-object v4, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_1c4

    :cond_1c3
    const/4 v4, 0x0

    :goto_1c4
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1051
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1055
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 1056
    const/4 v3, 0x0

    :goto_1d1
    if-ge v3, v0, :cond_1fa

    .line 1057
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1058
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1059
    iput v3, v5, Lcom/android/internal/widget/ViewPager$LayoutParams;->childIndex:I

    .line 1060
    iget-boolean v6, v5, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_1f7

    iget v6, v5, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    cmpl-float v6, v6, v16

    if-nez v6, :cond_1f7

    .line 1062
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 1063
    if-eqz v4, :cond_1f7

    .line 1064
    iget v6, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    iput v6, v5, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 1065
    iget v4, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iput v4, v5, Lcom/android/internal/widget/ViewPager$LayoutParams;->position:I

    .line 1056
    :cond_1f7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d1

    .line 1069
    :cond_1fa
    invoke-direct {v1}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    .line 1071
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_24d

    .line 1072
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1073
    if-eqz v0, :cond_20e

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v3

    goto :goto_20f

    :cond_20e
    const/4 v3, 0x0

    .line 1074
    :goto_20f
    if-eqz v3, :cond_217

    iget v3, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v4, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eq v3, v4, :cond_24d

    .line 1075
    :cond_217
    const/4 v6, 0x0

    :goto_218
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v3

    if-ge v6, v3, :cond_24d

    .line 1076
    invoke-virtual {v1, v6}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1077
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 1078
    if-eqz v4, :cond_24a

    iget v4, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v5, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_24a

    .line 1080
    if-nez v0, :cond_232

    .line 1081
    const/4 v4, 0x0

    goto :goto_243

    .line 1083
    :cond_232
    iget-object v4, v1, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 1084
    iget-object v5, v1, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1085
    iget-object v5, v1, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v5}, Lcom/android/internal/widget/ViewPager;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1086
    iget-object v5, v1, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v5}, Lcom/android/internal/widget/ViewPager;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1088
    :goto_243
    invoke-virtual {v3, v2, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_24a

    .line 1089
    goto :goto_24d

    .line 1075
    :cond_24a
    add-int/lit8 v6, v6, 0x1

    goto :goto_218

    .line 1095
    :cond_24d
    :goto_24d
    return-void

    .line 941
    :cond_24e
    :try_start_24e
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_25a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_24e .. :try_end_25a} :catch_25b

    .line 944
    goto :goto_264

    .line 942
    :catch_25b
    move-exception v0

    .line 943
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 945
    :goto_264
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Pager class: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 949
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Problematic adapter: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 950
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .registers 3

    .line 1322
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_8

    .line 1323
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_b

    .line 1325
    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1327
    :goto_b
    return-void
.end method

.method public blacklist setAdapter(Lcom/android/internal/widget/PagerAdapter;)V
    .registers 9

    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 396
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 398
    move v0, v1

    :goto_12
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2e

    .line 399
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 400
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v4, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget-object v2, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v2}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 402
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 403
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 404
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->removeNonDecorViews()V

    .line 405
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 406
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 409
    :cond_40
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 410
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 411
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    .line 413
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v2, :cond_8f

    .line 414
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    const/4 v3, 0x0

    if-nez v2, :cond_56

    .line 415
    new-instance v2, Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/widget/ViewPager$PagerObserver;-><init>(Lcom/android/internal/widget/ViewPager;Lcom/android/internal/widget/ViewPager-IA;)V

    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    .line 417
    :cond_56
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 418
    iput-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 419
    iget-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 420
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 421
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v5}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    .line 422
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_86

    .line 423
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 424
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v2, v1, v4}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 425
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 426
    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 427
    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_8f

    .line 428
    :cond_86
    if-nez v2, :cond_8c

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    goto :goto_8f

    .line 431
    :cond_8c
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    .line 435
    :cond_8f
    :goto_8f
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    if-eqz v1, :cond_9a

    if-eq v0, p1, :cond_9a

    .line 436
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/android/internal/widget/PagerAdapter;Lcom/android/internal/widget/PagerAdapter;)V

    .line 438
    :cond_9a
    return-void
.end method

.method public blacklist setCurrentItem(I)V
    .registers 4

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 477
    iget-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 478
    return-void
.end method

.method public blacklist setCurrentItem(IZ)V
    .registers 4

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 488
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 489
    return-void
.end method

.method blacklist setCurrentItemInternal(IZZ)Z
    .registers 5

    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZI)Z

    move-result p1

    return p1
.end method

.method blacklist setCurrentItemInternal(IZZI)Z
    .registers 8

    .line 501
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_f

    goto/16 :goto_7b

    .line 506
    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 507
    if-nez p3, :cond_2d

    iget p3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne p3, p1, :cond_2d

    iget-object p3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_2d

    .line 508
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 509
    return v1

    .line 512
    :cond_2d
    iget p3, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 513
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/2addr v0, p3

    if-gt p1, v0, :cond_39

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    sub-int/2addr v0, p3

    if-ge p1, v0, :cond_4f

    .line 517
    :cond_39
    move p3, v1

    :goto_3a
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_4f

    .line 518
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    iput-boolean v2, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 517
    add-int/lit8 p3, p3, 0x1

    goto :goto_3a

    .line 522
    :cond_4f
    iget p3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eq p3, p1, :cond_54

    move v1, v2

    .line 523
    :cond_54
    iget-boolean p3, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    if-eqz p3, :cond_74

    .line 526
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 527
    if-eqz v1, :cond_65

    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_65

    .line 528
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p2, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 530
    :cond_65
    if-eqz v1, :cond_70

    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_70

    .line 531
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p2, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 533
    :cond_70
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    goto :goto_7a

    .line 535
    :cond_74
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->populate(I)V

    .line 536
    invoke-direct {p0, p1, p2, p4, v1}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 539
    :goto_7a
    return v2

    .line 502
    :cond_7b
    :goto_7b
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 503
    return v1
.end method

.method blacklist setInternalPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)Lcom/android/internal/widget/ViewPager$OnPageChangeListener;
    .registers 3

    .line 636
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 637
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 638
    return-object v0
.end method

.method public blacklist setOffscreenPageLimit(I)V
    .registers 5

    .line 670
    const/4 v0, 0x1

    if-ge p1, v0, :cond_26

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " too small; defaulting to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    move p1, v0

    .line 675
    :cond_26
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_2f

    .line 676
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 677
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 679
    :cond_2f
    return-void
.end method

.method blacklist setOnAdapterChangeListener(Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;)V
    .registers 2

    .line 461
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    .line 462
    return-void
.end method

.method public blacklist setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V
    .registers 2

    .line 594
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 595
    return-void
.end method

.method public blacklist setPageMargin(I)V
    .registers 4

    .line 690
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .line 691
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .line 693
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v1

    .line 694
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/android/internal/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 696
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    .line 697
    return-void
.end method

.method public blacklist setPageMarginDrawable(I)V
    .registers 3

    .line 726
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 727
    return-void
.end method

.method public blacklist setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 714
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 715
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->refreshDrawableState()V

    .line 716
    :cond_7
    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->setWillNotDraw(Z)V

    .line 717
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->invalidate()V

    .line 718
    return-void
.end method

.method public blacklist setPageTransformer(ZLcom/android/internal/widget/ViewPager$PageTransformer;)V
    .registers 7

    .line 610
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 611
    :goto_7
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v3, :cond_d

    move v3, v0

    goto :goto_e

    :cond_d
    move v3, v1

    :goto_e
    if-eq v2, v3, :cond_12

    move v3, v0

    goto :goto_13

    :cond_12
    move v3, v1

    .line 612
    :goto_13
    iput-object p2, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    .line 613
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->setChildrenDrawingOrderEnabled(Z)V

    .line 614
    if-eqz v2, :cond_20

    .line 615
    if-eqz p1, :cond_1d

    const/4 v0, 0x2

    :cond_1d
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    goto :goto_22

    .line 617
    :cond_20
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    .line 619
    :goto_22
    if-eqz v3, :cond_27

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 620
    :cond_27
    return-void
.end method

.method blacklist smoothScrollTo(II)V
    .registers 4

    .line 761
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;->smoothScrollTo(III)V

    .line 762
    return-void
.end method

.method blacklist smoothScrollTo(III)V
    .registers 12

    .line 772
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 774
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 775
    return-void

    .line 777
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v3

    .line 778
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v4

    .line 779
    sub-int v5, p1, v3

    .line 780
    sub-int v6, p2, v4

    .line 781
    if-nez v5, :cond_25

    if-nez v6, :cond_25

    .line 782
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 783
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 784
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 785
    return-void

    .line 788
    :cond_25
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 789
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 791
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result p1

    .line 792
    div-int/lit8 p2, p1, 0x2

    .line 793
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 794
    int-to-float p2, p2

    .line 795
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr p2, v0

    .line 797
    nop

    .line 798
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 799
    if-lez p3, :cond_5f

    .line 800
    int-to-float p1, p3

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_77

    .line 802
    :cond_5f
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget p3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result p2

    mul-float/2addr p1, p2

    .line 803
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    .line 804
    add-float/2addr p2, v1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 806
    :goto_77
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 808
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 809
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 810
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 731
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method
