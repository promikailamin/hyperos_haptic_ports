.class Landroid/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# static fields
.field private static greylist-max-o BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DURATION_CROSS_FADE:I = 0x32

.field private static final greylist-max-o DURATION_FADE_IN:I = 0x96

.field private static final greylist-max-o DURATION_FADE_OUT:I = 0x12c

.field private static final greylist-max-o DURATION_RESIZE:I = 0x64

.field private static final greylist-max-o FADE_TIMEOUT:J = 0x5dcL

.field private static greylist-max-o LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MIN_PAGES:I = 0x4

.field private static final greylist-max-o OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final greylist-max-o OVERLAY_AT_THUMB:I = 0x1

.field private static final greylist-max-o OVERLAY_FLOATING:I = 0x0

.field private static final greylist-max-o PREVIEW_LEFT:I = 0x0

.field private static final greylist-max-o PREVIEW_RIGHT:I = 0x1

.field private static greylist-max-o RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o STATE_DRAGGING:I = 0x2

.field private static final greylist-max-o STATE_NONE:I = 0x0

.field private static final greylist-max-o STATE_VISIBLE:I = 0x1

.field private static final greylist-max-o THUMB_POSITION_INSIDE:I = 0x1

.field private static final greylist-max-o THUMB_POSITION_MIDPOINT:I

.field private static greylist-max-o TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAlwaysShow:Z

.field private final greylist mContainerRect:Landroid/graphics/Rect;

.field private greylist-max-o mCurrentSection:I

.field private greylist-max-o mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final greylist-max-o mDeferHide:Ljava/lang/Runnable;

.field private greylist-max-o mEnabled:Z

.field private greylist-max-o mFirstVisibleItem:I

.field private greylist mHeaderCount:I

.field private greylist-max-o mInitialTouchY:F

.field private greylist-max-o mLayoutFromRight:Z

.field private final greylist-max-o mList:Landroid/widget/AbsListView;

.field private greylist-max-o mListAdapter:Landroid/widget/Adapter;

.field private greylist mLongList:Z

.field private greylist-max-o mMatchDragPosition:Z

.field private final greylist mMinimumTouchTarget:I

.field private greylist-max-o mOldChildCount:I

.field private greylist-max-o mOldItemCount:I

.field private final greylist-max-o mOverlay:Landroid/view/ViewGroupOverlay;

.field private greylist-max-o mOverlayPosition:I

.field private greylist-max-o mPendingDrag:J

.field private greylist-max-o mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final greylist-max-o mPreviewImage:Landroid/view/View;

.field private greylist-max-o mPreviewMinHeight:I

.field private greylist-max-o mPreviewMinWidth:I

.field private greylist-max-o mPreviewPadding:I

.field private final greylist-max-o mPreviewResId:[I

.field private final greylist-max-o mPrimaryText:Landroid/widget/TextView;

.field private final greylist-max-o mScaledTouchSlop:I

.field private greylist-max-o mScrollBarStyle:I

.field private greylist-max-o mScrollCompleted:Z

.field private greylist-max-o mScrollbarPosition:I

.field private final greylist-max-o mSecondaryText:Landroid/widget/TextView;

.field private greylist-max-o mSectionIndexer:Landroid/widget/SectionIndexer;

.field private greylist-max-o mSections:[Ljava/lang/Object;

.field private greylist-max-o mShowingPreview:Z

.field private greylist-max-o mShowingPrimary:Z

.field private greylist-max-o mState:I

.field private final greylist-max-o mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final blacklist mTapTimeoutMillis:I

.field private final greylist-max-o mTempBounds:Landroid/graphics/Rect;

.field private final greylist-max-o mTempMargins:Landroid/graphics/Rect;

.field private greylist-max-o mTextAppearance:I

.field private greylist-max-o mTextColor:Landroid/content/res/ColorStateList;

.field private greylist-max-o mTextSize:F

.field private greylist mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final greylist mThumbImage:Landroid/widget/ImageView;

.field private greylist-max-o mThumbMinHeight:I

.field private greylist-max-o mThumbMinWidth:I

.field private greylist-max-o mThumbOffset:F

.field private greylist-max-o mThumbPosition:I

.field private greylist-max-o mThumbRange:F

.field private greylist-max-r mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final greylist mTrackImage:Landroid/widget/ImageView;

.field private greylist-max-o mUpdatingLayout:Z

.field private greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmShowingPrimary(Landroid/widget/FastScroller;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShowingPrimary(Landroid/widget/FastScroller;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetState(Landroid/widget/FastScroller;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setState(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1628
    new-instance v0, Landroid/widget/FastScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    .line 1644
    new-instance v0, Landroid/widget/FastScroller$4;

    const-string v1, "top"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    .line 1660
    new-instance v0, Landroid/widget/FastScroller$5;

    const-string v1, "right"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    .line 1676
    new-instance v0, Landroid/widget/FastScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor greylist <init>(Landroid/widget/AbsListView;I)V
    .registers 7

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    .line 176
    iput v0, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    .line 229
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 239
    new-instance v0, Landroid/widget/FastScroller$1;

    invoke-direct {v0, p0}, Landroid/widget/FastScroller$1;-><init>(Landroid/widget/FastScroller;)V

    iput-object v0, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 249
    new-instance v0, Landroid/widget/FastScroller$2;

    invoke-direct {v0, p0}, Landroid/widget/FastScroller$2;-><init>(Landroid/widget/FastScroller;)V

    iput-object v0, p0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 258
    iput-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 259
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    .line 260
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    .line 262
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 263
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    .line 265
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 266
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getTapTimeoutMillis()I

    move-result v1

    goto :goto_5f

    :cond_5b
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    :goto_5f
    iput v1, p0, Landroid/widget/FastScroller;->mTapTimeoutMillis:I

    .line 267
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getScrollBarStyle()I

    move-result v1

    iput v1, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 269
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 270
    iput v1, p0, Landroid/widget/FastScroller;->mState:I

    .line 271
    nop

    .line 272
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_78

    goto :goto_79

    :cond_78
    const/4 v1, 0x0

    :goto_79
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    .line 274
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 275
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 276
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 277
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 278
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 279
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 281
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 282
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 284
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    .line 287
    invoke-virtual {p0, p2}, Landroid/widget/FastScroller;->setStyle(I)V

    .line 289
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p2

    .line 290
    iput-object p2, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 291
    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 292
    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 293
    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 294
    iget-object v0, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 295
    iget-object v0, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 297
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 298
    iget p2, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    iget v0, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    invoke-direct {p0, p2, v0}, Landroid/widget/FastScroller;->updateLongList(II)V

    .line 299
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 300
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 301
    return-void
.end method

.method private static greylist-max-o animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .registers 5

    .line 1621
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .registers 7

    .line 1692
    sget-object v0, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1693
    sget-object v1, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1694
    sget-object v2, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    iget v3, p1, Landroid/graphics/Rect;->right:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1695
    sget-object v3, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {v3, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 1696
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object p1, v3, v0

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .registers 5

    .line 1614
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7

    .line 616
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 617
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_16

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    :goto_17
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 618
    return-void
.end method

.method private greylist-max-o beginDrag()V
    .registers 3

    .line 1382
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 1384
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 1386
    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_13

    .line 1387
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 1390
    :cond_13
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_22

    .line 1391
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1392
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1395
    :cond_22
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    .line 1396
    return-void
.end method

.method private greylist-max-o cancelFling()V
    .registers 9

    .line 1358
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1360
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1361
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1362
    return-void
.end method

.method private greylist-max-o cancelPendingDrag()V
    .registers 3

    .line 1370
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 1371
    return-void
.end method

.method private greylist-max-o createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .registers 4

    .line 556
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 558
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 559
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 561
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 562
    const/16 p1, 0x11

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 563
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 566
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 568
    return-object v1
.end method

.method private greylist-max-o getPosFromItemCount(III)F
    .registers 12

    .line 1265
    iget-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1266
    if-eqz v0, :cond_8

    iget-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v1, :cond_b

    .line 1267
    :cond_8
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 1270
    :cond_b
    const/4 v1, 0x0

    if-eqz p2, :cond_d2

    if-nez p3, :cond_12

    goto/16 :goto_d2

    .line 1275
    :cond_12
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_21

    iget-object v4, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v4, :cond_21

    iget-object v4, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v4, v4

    if-lez v4, :cond_21

    move v4, v3

    goto :goto_22

    :cond_21
    move v4, v2

    .line 1277
    :goto_22
    if-eqz v4, :cond_ca

    iget-boolean v4, p0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    if-nez v4, :cond_2a

    goto/16 :goto_ca

    .line 1287
    :cond_2a
    iget v4, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    sub-int/2addr p1, v4

    .line 1288
    if-gez p1, :cond_30

    .line 1289
    return v1

    .line 1291
    :cond_30
    iget v4, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    sub-int/2addr p3, v4

    .line 1294
    iget-object v4, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1296
    if-eqz v2, :cond_55

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    if-nez v4, :cond_42

    goto :goto_55

    .line 1299
    :cond_42
    iget-object v4, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v4, v2

    goto :goto_56

    .line 1297
    :cond_55
    :goto_55
    move v4, v1

    .line 1303
    :goto_56
    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v2

    .line 1304
    invoke-interface {v0, v2}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v5

    .line 1305
    iget-object v6, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v6, v6

    .line 1307
    add-int/lit8 v7, v6, -0x1

    if-ge v2, v7, :cond_72

    .line 1309
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v6, :cond_6e

    .line 1310
    invoke-interface {v0, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_70

    .line 1312
    :cond_6e
    add-int/lit8 v0, p3, -0x1

    .line 1314
    :goto_70
    sub-int/2addr v0, v5

    .line 1315
    goto :goto_74

    .line 1316
    :cond_72
    sub-int v0, p3, v5

    .line 1321
    :goto_74
    if-nez v0, :cond_77

    .line 1322
    goto :goto_7d

    .line 1324
    :cond_77
    int-to-float v1, p1

    add-float/2addr v1, v4

    int-to-float v4, v5

    sub-float/2addr v1, v4

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 1328
    :goto_7d
    int-to-float v0, v2

    add-float/2addr v0, v1

    int-to-float v1, v6

    div-float/2addr v0, v1

    .line 1333
    if-lez p1, :cond_c9

    add-int/2addr p1, p2

    if-ne p1, p3, :cond_c9

    .line 1334
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    sub-int/2addr p2, v3

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1335
    iget-object p2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {p2}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result p2

    .line 1338
    iget-object p3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {p3}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result p3

    if-eqz p3, :cond_ac

    .line 1339
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    .line 1340
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v1, p1

    goto :goto_bd

    .line 1342
    :cond_ac
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int/2addr p3, p2

    .line 1343
    iget-object p2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {p2}, Landroid/widget/AbsListView;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int v1, p2, p1

    .line 1345
    :goto_bd
    if-lez v1, :cond_c9

    if-lez p3, :cond_c9

    .line 1346
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    int-to-float p2, v1

    int-to-float p3, p3

    div-float/2addr p2, p3

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    .line 1350
    :cond_c9
    return v0

    .line 1278
    :cond_ca
    :goto_ca
    if-ne p2, p3, :cond_cd

    .line 1280
    return v1

    .line 1282
    :cond_cd
    int-to-float p1, p1

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    return p1

    .line 1272
    :cond_d2
    :goto_d2
    return v1
.end method

.method private greylist-max-o getPosFromMotionEvent(F)F
    .registers 4

    .line 1248
    iget v0, p0, Landroid/widget/FastScroller;->mThumbRange:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_8

    .line 1249
    return v1

    .line 1252
    :cond_8
    iget v0, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    sub-float/2addr p1, v0

    iget v0, p0, Landroid/widget/FastScroller;->mThumbRange:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    return p1
.end method

.method private greylist-max-o getSectionsFromIndexer()V
    .registers 4

    .line 970
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 972
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 973
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_19

    .line 974
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    .line 975
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 978
    :cond_19
    instance-of v2, v1, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_37

    .line 979
    move-object v0, v1

    check-cast v0, Landroid/widget/ExpandableListConnector;

    .line 980
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 981
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_36

    .line 982
    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 983
    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 984
    iget-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 986
    :cond_36
    goto :goto_4e

    :cond_37
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_4a

    .line 987
    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 988
    check-cast v1, Landroid/widget/SectionIndexer;

    iput-object v1, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 989
    iget-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_4e

    .line 991
    :cond_4a
    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 992
    iput-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 994
    :goto_4e
    return-void
.end method

.method private static varargs blacklist groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 1595
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1596
    nop

    .line 1598
    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_a
    if-ltz v1, :cond_24

    .line 1599
    aget-object v4, p2, v1

    new-array v5, v2, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1600
    if-nez v3, :cond_1e

    .line 1601
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    goto :goto_21

    .line 1603
    :cond_1e
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1598
    :goto_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1607
    :cond_24
    return-object v0
.end method

.method private greylist-max-o isPointInside(FF)Z
    .registers 3

    .line 1552
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->isPointInsideX(F)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_10

    invoke-direct {p0, p2}, Landroid/widget/FastScroller;->isPointInsideY(F)Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_10
    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method private greylist-max-o isPointInsideX(F)Z
    .registers 6

    .line 1556
    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v0

    .line 1557
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 1558
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 1561
    iget v0, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    int-to-float v0, v0

    sub-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 1562
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    .line 1564
    :goto_22
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_37

    .line 1565
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_35

    goto :goto_36

    :cond_35
    move v2, v3

    :goto_36
    return v2

    .line 1567
    :cond_37
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_44

    goto :goto_45

    :cond_44
    move v2, v3

    :goto_45
    return v2
.end method

.method private greylist-max-o isPointInsideY(F)Z
    .registers 7

    .line 1572
    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v0

    .line 1573
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 1574
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 1577
    iget v0, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    int-to-float v0, v0

    sub-float v3, v2, v1

    sub-float/2addr v0, v3

    .line 1578
    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_25

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    .line 1580
    :cond_25
    sub-float/2addr v1, v3

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_31

    add-float/2addr v2, v3

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_31

    const/4 p1, 0x1

    goto :goto_32

    :cond_31
    const/4 p1, 0x0

    :goto_32
    return p1
.end method

.method private greylist-max-o layoutThumb()V
    .registers 4

    .line 774
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 775
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 776
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 777
    return-void
.end method

.method private greylist-max-o layoutTrack()V
    .registers 8

    .line 784
    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 785
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 786
    iget-object v2, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 787
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 788
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 789
    const/high16 v6, -0x80000000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 790
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v4

    .line 792
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 796
    iget v3, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2e

    .line 797
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 798
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_3b

    .line 800
    :cond_2e
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 801
    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v3

    .line 802
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    move v3, v4

    .line 805
    :goto_3b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 806
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    .line 807
    add-int/2addr v4, v5

    .line 808
    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 809
    return-void
.end method

.method private greylist-max-o measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 10

    .line 708
    const/4 v0, 0x0

    if-nez p2, :cond_9

    .line 709
    nop

    .line 710
    nop

    .line 711
    move p2, v0

    move v1, p2

    move v2, v1

    goto :goto_f

    .line 713
    :cond_9
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 714
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 715
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 718
    :goto_f
    iget-object v3, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 719
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 720
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 721
    sub-int v1, v4, v1

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 722
    const/high16 v1, -0x80000000

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 723
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 725
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 728
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 729
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 730
    div-int/lit8 p2, p2, 0xa

    add-int/2addr p2, v2

    iget v1, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    .line 731
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, p2

    .line 732
    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    iget v1, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    .line 733
    add-int/2addr v0, v4

    .line 734
    invoke-virtual {p3, v4, p2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 735
    return-void
.end method

.method private greylist-max-o measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5

    .line 630
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 631
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 632
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 633
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 634
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 636
    iget v1, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    if-nez v1, :cond_2a

    .line 637
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/FastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_2f

    .line 639
    :cond_2a
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 641
    :goto_2f
    return-void
.end method

.method private greylist-max-o measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12

    .line 658
    const/4 v0, 0x0

    if-nez p3, :cond_9

    .line 659
    nop

    .line 660
    nop

    .line 661
    move p3, v0

    move v1, p3

    move v2, v1

    goto :goto_f

    .line 663
    :cond_9
    iget v1, p3, Landroid/graphics/Rect;->left:I

    .line 664
    iget v2, p3, Landroid/graphics/Rect;->top:I

    .line 665
    iget p3, p3, Landroid/graphics/Rect;->right:I

    .line 668
    :goto_f
    iget-object v3, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 669
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 671
    if-nez p2, :cond_18

    .line 672
    goto :goto_26

    .line 673
    :cond_18
    iget-boolean v5, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v5, :cond_21

    .line 674
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    goto :goto_26

    .line 676
    :cond_21
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 679
    :goto_26
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 680
    sub-int/2addr v4, v1

    sub-int/2addr v4, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 681
    const/high16 v6, -0x80000000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 682
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 684
    invoke-virtual {p1, v6, v0}, Landroid/view/View;->measure(II)V

    .line 687
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 690
    iget-boolean v4, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v4, :cond_5a

    .line 691
    if-nez p2, :cond_52

    iget p2, v3, Landroid/graphics/Rect;->right:I

    goto :goto_56

    :cond_52
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    :goto_56
    sub-int/2addr p2, p3

    .line 692
    sub-int p3, p2, v0

    goto :goto_67

    .line 694
    :cond_5a
    if-nez p2, :cond_5f

    iget p2, v3, Landroid/graphics/Rect;->left:I

    goto :goto_63

    :cond_5f
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    :goto_63
    add-int p3, p2, v1

    .line 695
    add-int p2, p3, v0

    .line 699
    :goto_67
    nop

    .line 700
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v2

    .line 701
    invoke-virtual {p4, p3, v2, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 702
    return-void
.end method

.method private greylist-max-o onStateDependencyChanged(Z)V
    .registers 4

    .line 459
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 460
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 461
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    goto :goto_25

    .line 462
    :cond_11
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v1, :cond_19

    .line 463
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    goto :goto_25

    .line 464
    :cond_19
    if-eqz p1, :cond_25

    .line 465
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 466
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    goto :goto_25

    .line 469
    :cond_22
    invoke-virtual {p0}, Landroid/widget/FastScroller;->stop()V

    .line 472
    :cond_25
    :goto_25
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 473
    return-void
.end method

.method private greylist-max-o postAutoHide()V
    .registers 5

    .line 941
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 942
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 943
    return-void
.end method

.method private greylist-max-o refreshDrawablePressedState()V
    .registers 3

    .line 867
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 868
    :goto_8
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 869
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 870
    return-void
.end method

.method private greylist-max-o scrollTo(F)V
    .registers 15

    .line 1005
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 1007
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    .line 1008
    iget-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 1009
    if-nez v2, :cond_f

    move v3, v0

    goto :goto_10

    :cond_f
    array-length v3, v2

    .line 1011
    :goto_10
    const/4 v4, 0x1

    if-eqz v2, :cond_bf

    if-le v3, v4, :cond_bf

    .line 1012
    int-to-float v2, v3

    mul-float v5, p1, v2

    float-to-int v5, v5

    add-int/lit8 v6, v3, -0x1

    invoke-static {v5, v0, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 1014
    nop

    .line 1015
    iget-object v7, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v7, v5}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 1016
    nop

    .line 1024
    nop

    .line 1025
    nop

    .line 1026
    nop

    .line 1027
    add-int/lit8 v8, v5, 0x1

    .line 1030
    if-ge v5, v6, :cond_35

    .line 1031
    iget-object v6, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v6

    goto :goto_36

    .line 1030
    :cond_35
    move v6, v1

    .line 1035
    :goto_36
    move v9, v5

    if-ne v6, v7, :cond_56

    move v10, v7

    .line 1037
    :cond_3a
    if-lez v9, :cond_52

    .line 1038
    add-int/lit8 v9, v9, -0x1

    .line 1039
    iget-object v10, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v10, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    .line 1040
    if-eq v10, v7, :cond_4b

    .line 1041
    nop

    .line 1042
    nop

    .line 1043
    move v7, v10

    move v10, v9

    goto :goto_57

    .line 1044
    :cond_4b
    if-nez v9, :cond_3a

    .line 1047
    nop

    .line 1048
    move v9, v5

    move v7, v10

    move v10, v0

    goto :goto_57

    .line 1037
    :cond_52
    move v9, v5

    move v7, v10

    move v10, v9

    goto :goto_57

    .line 1035
    :cond_56
    move v10, v9

    .line 1058
    :goto_57
    add-int/lit8 v11, v8, 0x1

    .line 1059
    :goto_59
    if-ge v11, v3, :cond_68

    iget-object v12, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1060
    invoke-interface {v12, v11}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    if-ne v12, v6, :cond_68

    .line 1061
    add-int/lit8 v11, v11, 0x1

    .line 1062
    add-int/lit8 v8, v8, 0x1

    goto :goto_59

    .line 1069
    :cond_68
    int-to-float v3, v9

    div-float/2addr v3, v2

    .line 1070
    int-to-float v8, v8

    div-float/2addr v8, v2

    .line 1071
    if-nez v1, :cond_72

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_76

    :cond_72
    const/high16 v2, 0x3e000000    # 0.125f

    int-to-float v11, v1

    div-float/2addr v2, v11

    .line 1072
    :goto_76
    if-ne v9, v5, :cond_7f

    sub-float v5, p1, v3

    cmpg-float v2, v5, v2

    if-gez v2, :cond_7f

    .line 1073
    goto :goto_87

    .line 1075
    :cond_7f
    sub-int/2addr v6, v7

    int-to-float v2, v6

    sub-float/2addr p1, v3

    mul-float/2addr v2, p1

    sub-float/2addr v8, v3

    div-float/2addr v2, v8

    float-to-int p1, v2

    add-int/2addr v7, p1

    .line 1080
    :goto_87
    sub-int/2addr v1, v4

    invoke-static {v7, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 1082
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_a5

    .line 1083
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ExpandableListView;

    .line 1084
    iget v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr p1, v2

    .line 1085
    invoke-static {p1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    .line 1084
    invoke-virtual {v1, v2, v3}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1087
    goto :goto_be

    :cond_a5
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_b6

    .line 1088
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    iget v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr p1, v2

    invoke-virtual {v1, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_be

    .line 1090
    :cond_b6
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget v1, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 1092
    :goto_be
    goto :goto_fa

    .line 1093
    :cond_bf
    int-to-float v2, v1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    sub-int/2addr v1, v4

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 1095
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_e0

    .line 1096
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ExpandableListView;

    .line 1097
    iget v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr p1, v2

    .line 1098
    invoke-static {p1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    .line 1097
    invoke-virtual {v1, v2, v3}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1099
    goto :goto_f9

    :cond_e0
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_f1

    .line 1100
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    iget v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr p1, v2

    invoke-virtual {v1, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_f9

    .line 1102
    :cond_f1
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget v1, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 1105
    :goto_f9
    const/4 v10, -0x1

    .line 1108
    :goto_fa
    iget p1, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    if-eq p1, v10, :cond_117

    .line 1109
    iput v10, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    .line 1111
    invoke-direct {p0, v10}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    move-result p1

    .line 1112
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    if-nez v0, :cond_10e

    if-eqz p1, :cond_10e

    .line 1113
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    goto :goto_117

    .line 1114
    :cond_10e
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    if-eqz v0, :cond_117

    if-nez p1, :cond_117

    .line 1115
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    .line 1118
    :cond_117
    :goto_117
    return-void
.end method

.method private greylist setState(I)V
    .registers 4

    .line 835
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 837
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_e

    if-nez p1, :cond_e

    .line 838
    const/4 p1, 0x1

    .line 841
    :cond_e
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne p1, v0, :cond_13

    .line 842
    return-void

    .line 845
    :cond_13
    packed-switch p1, :pswitch_data_36

    goto :goto_2f

    .line 853
    :pswitch_17
    iget v0, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 854
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    goto :goto_2f

    .line 856
    :cond_23
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    goto :goto_2f

    .line 850
    :pswitch_27
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    .line 851
    goto :goto_2f

    .line 847
    :pswitch_2b
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToHidden()V

    .line 848
    nop

    .line 861
    :goto_2f
    iput p1, p0, Landroid/widget/FastScroller;->mState:I

    .line 863
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    .line 864
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_27
        :pswitch_17
    .end packed-switch
.end method

.method private greylist-max-o setThumbPos(F)V
    .registers 6

    .line 1212
    iget v0, p0, Landroid/widget/FastScroller;->mThumbRange:F

    mul-float/2addr p1, v0

    iget v0, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    add-float/2addr p1, v0

    .line 1213
    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1215
    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 1216
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 1218
    iget v2, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    packed-switch v2, :pswitch_data_48

    .line 1227
    const/4 p1, 0x0

    goto :goto_2a

    .line 1223
    :pswitch_26
    sub-float/2addr p1, v1

    .line 1224
    goto :goto_2a

    .line 1220
    :pswitch_28
    nop

    .line 1221
    nop

    .line 1232
    :goto_2a
    iget-object v2, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1233
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 1234
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 1235
    int-to-float v3, v3

    add-float/2addr v3, v1

    .line 1236
    int-to-float v2, v2

    sub-float/2addr v2, v1

    .line 1237
    invoke-static {p1, v3, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 1238
    sub-float/2addr p1, v1

    .line 1239
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1241
    iget-object v0, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1242
    iget-object v0, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1243
    return-void

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_28
        :pswitch_26
    .end packed-switch
.end method

.method private greylist-max-o startPendingDrag()V
    .registers 5

    .line 1378
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Landroid/widget/FastScroller;->mTapTimeoutMillis:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 1379
    return-void
.end method

.method private greylist-max-o transitionPreviewLayout(I)Z
    .registers 12

    .line 1129
    iget-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 1130
    nop

    .line 1131
    if-eqz v0, :cond_13

    if-ltz p1, :cond_13

    array-length v1, v0

    if-ge p1, v1, :cond_13

    .line 1132
    aget-object p1, v0, p1

    .line 1133
    if-eqz p1, :cond_13

    .line 1134
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_14

    .line 1138
    :cond_13
    const/4 p1, 0x0

    :goto_14
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1139
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 1142
    iget-boolean v2, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    if-eqz v2, :cond_21

    .line 1143
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1144
    iget-object v3, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    goto :goto_25

    .line 1146
    :cond_21
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1147
    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1151
    :goto_25
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    invoke-direct {p0, v3, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1153
    invoke-direct {p0, v3, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1155
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_37

    .line 1156
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1160
    :cond_37
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v5

    const-wide/16 v6, 0x32

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v5

    .line 1161
    const/4 v8, 0x0

    invoke-static {v2, v8}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .line 1162
    iget-object v7, p0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1165
    iget v7, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 1166
    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->top:I

    .line 1167
    iget v7, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 1168
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 1169
    invoke-static {v1, v0}, Landroid/widget/FastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v0

    .line 1170
    const-wide/16 v7, 0x64

    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1172
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1173
    iget-object v9, p0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 1174
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1178
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v0, v6

    .line 1179
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1183
    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    .line 1184
    if-le v1, v0, :cond_b8

    .line 1185
    int-to-float v0, v0

    int-to-float v6, v1

    div-float/2addr v0, v6

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1186
    invoke-static {v3, v4}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 1187
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1188
    goto :goto_bb

    .line 1189
    :cond_b8
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1193
    :goto_bb
    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    .line 1194
    if-le v0, v1, :cond_cf

    .line 1195
    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 1196
    invoke-static {v2, v1}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 1197
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1200
    :cond_cf
    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private greylist-max-o transitionToDragging()V
    .registers 10

    .line 923
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_9

    .line 924
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 927
    :cond_9
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 929
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 930
    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v5, [Landroid/view/View;

    iget-object v8, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v8, v7, v3

    iget-object v8, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v8, v7, v4

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v6

    .line 931
    invoke-virtual {v6, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 933
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 934
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    aput-object v1, v5, v4

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 935
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 937
    iput-boolean v4, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 938
    return-void
.end method

.method private greylist-max-o transitionToHidden()V
    .registers 11

    .line 876
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_9

    .line 877
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 880
    :cond_9
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    iget-object v6, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v6, v1, v2

    const/4 v2, 0x4

    iget-object v6, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v6, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 881
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 884
    iget-boolean v6, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v6, :cond_3d

    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    goto :goto_44

    :cond_3d
    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    neg-int v6, v6

    :goto_44
    int-to-float v6, v6

    .line 885
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v5, [Landroid/view/View;

    iget-object v9, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v9, v8, v3

    iget-object v9, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v9, v8, v4

    invoke-static {v7, v6, v8}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v6

    .line 887
    invoke-virtual {v6, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 889
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 890
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    aput-object v1, v5, v4

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 891
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 893
    iput-boolean v3, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 894
    return-void
.end method

.method private greylist-max-o transitionToVisible()V
    .registers 13

    .line 900
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_9

    .line 901
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 904
    :cond_9
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/view/View;

    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v2}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 905
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 906
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x3

    new-array v8, v7, [Landroid/view/View;

    iget-object v9, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v9, v8, v4

    iget-object v9, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v9, v8, v5

    iget-object v9, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v9, v8, v1

    const/4 v9, 0x0

    invoke-static {v6, v9, v8}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v6

    .line 908
    const-wide/16 v10, 0x12c

    invoke-virtual {v6, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .line 909
    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v1, [Landroid/view/View;

    iget-object v11, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v11, v10, v4

    iget-object v11, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v11, v10, v5

    invoke-static {v8, v9, v10}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v8

    .line 910
    invoke-virtual {v8, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 912
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 913
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v0, v7, v4

    aput-object v6, v7, v5

    aput-object v2, v7, v1

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 914
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 916
    iput-boolean v4, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 917
    return-void
.end method

.method private greylist-max-o updateAppearance()V
    .registers 5

    .line 304
    nop

    .line 307
    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 309
    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_19

    .line 308
    :cond_18
    move v0, v1

    .line 313
    :goto_19
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 315
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, Landroid/widget/FastScroller;->mThumbMinHeight:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 316
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3c

    .line 317
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 321
    :cond_3c
    iget v2, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mWidth:I

    .line 323
    iget v0, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    if-eqz v0, :cond_56

    .line 324
    iget-object v0, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 325
    iget-object v0, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 328
    :cond_56
    iget-object v0, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_68

    .line 329
    iget-object v0, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 330
    iget-object v0, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 333
    :cond_68
    iget v0, p0, Landroid/widget/FastScroller;->mTextSize:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7d

    .line 334
    iget-object v0, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/FastScroller;->mTextSize:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 335
    iget-object v0, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/FastScroller;->mTextSize:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 338
    :cond_7d
    iget v0, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    .line 339
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 340
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 341
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 342
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 344
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    .line 345
    return-void
.end method

.method private greylist-max-o updateContainerRect()V
    .registers 7

    .line 741
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 742
    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 744
    iget-object v1, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 745
    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 746
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 747
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 748
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 750
    iget v2, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 751
    const/high16 v3, 0x1000000

    if-eq v2, v3, :cond_20

    if-nez v2, :cond_5a

    .line 753
    :cond_20
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 754
    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 755
    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 756
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v4, v0

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 759
    if-ne v2, v3, :cond_5a

    .line 760
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getWidth()I

    move-result v0

    .line 761
    iget v2, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_55

    .line 762
    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_5a

    .line 764
    :cond_55
    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 768
    :cond_5a
    :goto_5a
    return-void
.end method

.method private greylist-max-o updateLongList(II)V
    .registers 4

    .line 544
    const/4 v0, 0x0

    if-lez p1, :cond_9

    div-int/2addr p2, p1

    const/4 p1, 0x4

    if-lt p2, p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    move p1, v0

    .line 545
    :goto_a
    iget-boolean p2, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-eq p2, p1, :cond_13

    .line 546
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 548
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    .line 550
    :cond_13
    return-void
.end method

.method private greylist-max-o updateOffsetAndRange()V
    .registers 5

    .line 816
    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 817
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 820
    iget v2, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 821
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 822
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    .line 823
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    .line 824
    goto :goto_28

    .line 825
    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v2, v1

    .line 826
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    .line 829
    :goto_28
    iput v2, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    .line 830
    sub-float/2addr v0, v2

    iput v0, p0, Landroid/widget/FastScroller;->mThumbRange:F

    .line 831
    return-void
.end method


# virtual methods
.method public greylist-max-o getWidth()I
    .registers 2

    .line 520
    iget v0, p0, Landroid/widget/FastScroller;->mWidth:I

    return v0
.end method

.method public greylist-max-o isAlwaysShowEnabled()Z
    .registers 2

    .line 450
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public greylist-max-o isEnabled()Z
    .registers 2

    .line 431
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1446
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1447
    return v1

    .line 1450
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1451
    const/16 v2, 0x9

    if-eq v0, v2, :cond_13

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2c

    :cond_13
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-nez v0, :cond_2c

    .line 1453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 1454
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setState(I)V

    .line 1455
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 1458
    :cond_2c
    return v1
.end method

.method public greylist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1400
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1401
    return v1

    .line 1404
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_6c

    goto :goto_6a

    .line 1423
    :pswitch_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1424
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_6a

    .line 1425
    :cond_22
    iget-wide v2, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_6a

    iget-wide v2, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_6a

    .line 1426
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1428
    iget v0, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1429
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 1433
    invoke-virtual {p0, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1438
    :pswitch_45
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_6a

    .line 1406
    :pswitch_49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1412
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_61

    .line 1415
    const/4 p1, 0x1

    return p1

    .line 1418
    :cond_61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    .line 1419
    invoke-direct {p0}, Landroid/widget/FastScroller;->startPendingDrag()V

    .line 1442
    :cond_6a
    :goto_6a
    return v1

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_49
        :pswitch_45
        :pswitch_10
        :pswitch_45
    .end packed-switch
.end method

.method public greylist-max-o onItemCountChanged(II)V
    .registers 5

    .line 529
    iget v0, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    if-ne v0, p2, :cond_8

    iget v0, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    if-eq v0, p1, :cond_2a

    .line 530
    :cond_8
    iput p2, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    .line 531
    iput p1, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    .line 533
    sub-int v0, p2, p1

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 534
    :goto_13
    if-eqz v0, :cond_27

    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    .line 535
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 536
    invoke-direct {p0, v0, p1, p2}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 539
    :cond_27
    invoke-direct {p0, p1, p2}, Landroid/widget/FastScroller;->updateLongList(II)V

    .line 541
    :cond_2a
    return-void
.end method

.method public greylist-max-o onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 4

    .line 1462
    iget p2, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_16

    .line 1465
    :cond_14
    const/4 p1, 0x0

    return-object p1

    .line 1463
    :cond_16
    :goto_16
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3e8

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o onScroll(III)V
    .registers 7

    .line 946
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 947
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 948
    return-void

    .line 951
    :cond_b
    sub-int v0, p3, p2

    const/4 v2, 0x1

    if-lez v0, :cond_11

    move v1, v2

    .line 952
    :cond_11
    const/4 v0, 0x2

    if-eqz v1, :cond_1f

    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v1, v0, :cond_1f

    .line 953
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    move-result p2

    invoke-direct {p0, p2}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 956
    :cond_1f
    iput-boolean v2, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 958
    iget p2, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    if-eq p2, p1, :cond_31

    .line 959
    iput p1, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    .line 962
    iget p1, p0, Landroid/widget/FastScroller;->mState:I

    if-eq p1, v0, :cond_31

    .line 963
    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    .line 964
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 967
    :cond_31
    return-void
.end method

.method public greylist-max-o onSectionsChanged()V
    .registers 2

    .line 997
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 998
    return-void
.end method

.method public greylist onSizeChanged(IIII)V
    .registers 5

    .line 525
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 526
    return-void
.end method

.method public greylist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 1470
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1471
    return v1

    .line 1474
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_98

    goto/16 :goto_96

    .line 1534
    :pswitch_15
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto/16 :goto_96

    .line 1513
    :pswitch_1a
    iget-wide v6, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    cmp-long v0, v6, v3

    if-ltz v0, :cond_35

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_35

    .line 1514
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1519
    :cond_35
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_96

    .line 1521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result p1

    .line 1522
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 1525
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    if-eqz v0, :cond_4b

    .line 1526
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 1529
    :cond_4b
    return v5

    .line 1485
    :pswitch_4c
    iget-wide v6, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    cmp-long v0, v6, v3

    if-ltz v0, :cond_63

    .line 1487
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result p1

    .line 1490
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 1491
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 1496
    :cond_63
    iget p1, p0, Landroid/widget/FastScroller;->mState:I

    if-ne p1, v2, :cond_96

    .line 1497
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz p1, :cond_75

    .line 1501
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1502
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1505
    :cond_75
    invoke-direct {p0, v5}, Landroid/widget/FastScroller;->setState(I)V

    .line 1506
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 1508
    return v5

    .line 1476
    :pswitch_7c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result p1

    if-eqz p1, :cond_96

    .line 1477
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result p1

    if-nez p1, :cond_96

    .line 1478
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1479
    return v5

    .line 1538
    :cond_96
    :goto_96
    return v1

    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_4c
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method public greylist remove()V
    .registers 3

    .line 409
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 410
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 411
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 412
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 413
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 414
    return-void
.end method

.method public greylist-max-o setAlwaysShow(Z)V
    .registers 3

    .line 438
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_a

    .line 439
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    .line 441
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    .line 443
    :cond_a
    return-void
.end method

.method public greylist-max-o setEnabled(Z)V
    .registers 3

    .line 420
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_a

    .line 421
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mEnabled:Z

    .line 423
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    .line 425
    :cond_a
    return-void
.end method

.method public greylist-max-o setScrollBarStyle(I)V
    .registers 3

    .line 476
    iget v0, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_9

    .line 477
    iput p1, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 479
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 481
    :cond_9
    return-void
.end method

.method public greylist-max-o setScrollbarPosition(I)V
    .registers 4

    .line 491
    const/4 v0, 0x1

    if-nez p1, :cond_e

    .line 492
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 493
    move p1, v0

    goto :goto_e

    :cond_d
    const/4 p1, 0x2

    .line 496
    :cond_e
    :goto_e
    iget v1, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    if-eq v1, p1, :cond_65

    .line 497
    iput p1, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    .line 498
    const/4 v1, 0x0

    if-eq p1, v0, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    .line 500
    iget-object p1, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    aget p1, p1, v0

    .line 501
    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 504
    iget p1, p0, Landroid/widget/FastScroller;->mPreviewMinWidth:I

    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 505
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 504
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 506
    iget-object v0, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 507
    iget-object v0, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 509
    iget p1, p0, Landroid/widget/FastScroller;->mPreviewMinHeight:I

    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 510
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    .line 509
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 511
    iget-object v0, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 512
    iget-object v0, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 515
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 517
    :cond_65
    return-void
.end method

.method public greylist-max-o setStyle(I)V
    .registers 8

    .line 348
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 349
    sget-object v1, Lcom/android/internal/R$styleable;->FastScroll:[I

    const v2, 0x10103f7

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 351
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 352
    const/4 v1, 0x0

    move v2, v1

    :goto_16
    if-ge v2, v0, :cond_8c

    .line 353
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 354
    packed-switch v3, :pswitch_data_94

    goto/16 :goto_89

    .line 368
    :pswitch_21
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 369
    goto :goto_89

    .line 386
    :pswitch_28
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    .line 387
    goto :goto_89

    .line 389
    :pswitch_2f
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/FastScroller;->mThumbMinHeight:I

    .line 390
    goto :goto_89

    .line 365
    :pswitch_36
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 366
    goto :goto_89

    .line 356
    :pswitch_3d
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    .line 357
    goto :goto_89

    .line 362
    :pswitch_44
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v5, 0x1

    aput v3, v4, v5

    .line 363
    goto :goto_89

    .line 359
    :pswitch_4e
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v4, v1

    .line 360
    goto :goto_89

    .line 395
    :pswitch_57
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    goto :goto_89

    .line 383
    :pswitch_5e
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/FastScroller;->mPreviewMinHeight:I

    .line 384
    goto :goto_89

    .line 380
    :pswitch_65
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/FastScroller;->mPreviewMinWidth:I

    .line 381
    goto :goto_89

    .line 392
    :pswitch_6c
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    .line 393
    goto :goto_89

    .line 374
    :pswitch_73
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    .line 375
    goto :goto_89

    .line 377
    :pswitch_7a
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Landroid/widget/FastScroller;->mTextSize:F

    .line 378
    goto :goto_89

    .line 371
    :pswitch_82
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    .line 372
    nop

    .line 352
    :goto_89
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 399
    :cond_8c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 401
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateAppearance()V

    .line 402
    return-void

    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7a
        :pswitch_73
        :pswitch_6c
        :pswitch_65
        :pswitch_5e
        :pswitch_57
        :pswitch_4e
        :pswitch_44
        :pswitch_3d
        :pswitch_36
        :pswitch_2f
        :pswitch_28
        :pswitch_21
    .end packed-switch
.end method

.method public greylist-max-o stop()V
    .registers 2

    .line 487
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 488
    return-void
.end method

.method public greylist-max-o updateLayout()V
    .registers 4

    .line 577
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    if-eqz v0, :cond_5

    .line 578
    return-void

    .line 581
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    .line 583
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateContainerRect()V

    .line 585
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutThumb()V

    .line 586
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutTrack()V

    .line 588
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateOffsetAndRange()V

    .line 590
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 591
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 592
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 593
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 594
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 596
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    if-eqz v1, :cond_5f

    .line 598
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 599
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 600
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 601
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 602
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 605
    :cond_5f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    .line 606
    return-void
.end method
