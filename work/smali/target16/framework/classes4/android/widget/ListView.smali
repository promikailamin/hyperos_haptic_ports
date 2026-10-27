.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FixedViewInfo;,
        Landroid/widget/ListView$FocusSelector;
    }
.end annotation


# static fields
.field private static final greylist-max-o MAX_SCROLL_FACTOR:F = 0.33f

.field private static final greylist-max-o MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final greylist-max-o NO_POSITION:I = -0x1

.field static final greylist-max-o TAG:Ljava/lang/String; = "ListView"


# instance fields
.field private greylist mAreAllItemsSelectable:Z

.field private final greylist-max-o mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field greylist mDivider:Landroid/graphics/drawable/Drawable;

.field greylist-max-p mDividerHeight:I

.field private greylist-max-o mDividerIsOpaque:Z

.field private greylist-max-o mDividerPaint:Landroid/graphics/Paint;

.field private greylist-max-o mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private greylist-max-o mFooterDividersEnabled:Z

.field greylist mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHeaderDividersEnabled:Z

.field greylist mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mIsCacheColorOpaque:Z

.field private greylist-max-o mItemsCanFocus:Z

.field private blacklist mJankTracker:Landroid/app/jank/JankTracker;

.field greylist-max-o mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private blacklist mPreviousScrollState:I

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmJankTracker(Landroid/widget/ListView;)Landroid/app/jank/JankTracker;
    .registers 1

    iget-object p0, p0, Landroid/widget/ListView;->mJankTracker:Landroid/app/jank/JankTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviousScrollState(Landroid/widget/ListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/ListView;->mPreviousScrollState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmJankTracker(Landroid/widget/ListView;Landroid/app/jank/JankTracker;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ListView;->mJankTracker:Landroid/app/jank/JankTracker;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreviousScrollState(Landroid/widget/ListView;I)V
    .registers 2

    iput p1, p0, Landroid/widget/ListView;->mPreviousScrollState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetWidgetStateFromScrollState(Landroid/widget/ListView;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ListView;->getWidgetStateFromScrollState(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 226
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 229
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 234
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15

    .line 237
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 183
    nop

    .line 184
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 185
    nop

    .line 186
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 205
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 208
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 213
    new-instance v2, Landroid/widget/ListView$ArrowScrollFocusResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView-IA;)V

    iput-object v2, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 222
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/ListView;->mPreviousScrollState:I

    .line 239
    sget-object v2, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 241
    sget-object v5, Lcom/android/internal/R$styleable;->ListView:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/ListView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 244
    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 245
    if-eqz p1, :cond_4a

    .line 246
    new-instance p2, Landroid/widget/ArrayAdapter;

    const p3, 0x1090003

    invoke-direct {p2, v4, p3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 249
    :cond_4a
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 250
    if-eqz p1, :cond_53

    .line 253
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 256
    :cond_53
    const/4 p1, 0x5

    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 257
    if-eqz p1, :cond_5d

    .line 258
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 261
    :cond_5d
    const/4 p1, 0x6

    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 262
    if-eqz p1, :cond_67

    .line 263
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 267
    :cond_67
    const/4 p1, 0x2

    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p2

    if-eqz p2, :cond_77

    .line 268
    invoke-virtual {v7, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 270
    if-eqz p1, :cond_77

    .line 271
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 275
    :cond_77
    const/4 p1, 0x3

    invoke-virtual {v7, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v3, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 276
    const/4 p1, 0x4

    invoke-virtual {v7, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v3, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 278
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/Flags;->instrumentListviewScrollStates()Z

    move-result p1

    if-eqz p1, :cond_99

    .line 281
    invoke-virtual {p0}, Landroid/widget/ListView;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/ListView;->initializeScrollStateTracking(Ljava/lang/String;)V

    .line 283
    :cond_99
    return-void
.end method

.method private greylist-max-o addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .registers 11

    .line 3393
    add-int/lit8 v2, p2, -0x1

    .line 3394
    iget-object p2, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3395
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget p2, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, p1, p2

    .line 3396
    iget-object p1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 p2, 0x0

    aget-boolean v7, p1, p2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3398
    return-object v1
.end method

.method private greylist-max-o addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .registers 11

    .line 3402
    add-int/lit8 v2, p2, 0x1

    .line 3403
    iget-object p2, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3404
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget p2, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, p1, p2

    .line 3405
    iget-object p1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 p2, 0x0

    aget-boolean v7, p1, p2

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3407
    return-object v1
.end method

.method private greylist-max-o adjustViewsUpOrDown()V
    .registers 6

    .line 344
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 347
    if-lez v0, :cond_4c

    .line 350
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-nez v1, :cond_24

    .line 353
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 355
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-eqz v1, :cond_1f

    .line 358
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v0, v1

    .line 360
    :cond_1f
    if-gez v0, :cond_22

    .line 362
    goto :goto_46

    .line 360
    :cond_22
    move v2, v0

    goto :goto_46

    .line 366
    :cond_24
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 367
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 369
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v3, v0, :cond_42

    .line 372
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, v0

    .line 375
    :cond_42
    if-lez v1, :cond_45

    .line 376
    goto :goto_46

    .line 375
    :cond_45
    move v2, v1

    .line 380
    :goto_46
    if-eqz v2, :cond_4c

    .line 381
    neg-int v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 384
    :cond_4c
    return-void
.end method

.method private greylist-max-o amountToScroll(II)I
    .registers 9

    .line 2994
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 2995
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 2997
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 2999
    const/16 v3, 0x82

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne p1, v3, :cond_82

    .line 3000
    add-int/lit8 p1, v2, -0x1

    .line 3001
    if-eq p2, v4, :cond_1f

    .line 3002
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int p1, p2, p1

    .line 3004
    :cond_1f
    :goto_1f
    if-gt v2, p1, :cond_32

    .line 3006
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    .line 3007
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 3009
    :cond_32
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v1, p1

    .line 3010
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3012
    nop

    .line 3013
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_47

    .line 3014
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_48

    .line 3013
    :cond_47
    move v1, v0

    .line 3017
    :goto_48
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt v3, v1, :cond_4f

    .line 3019
    return v5

    .line 3022
    :cond_4f
    if-eq p2, v4, :cond_5e

    .line 3023
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int p2, v1, p2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v3

    if-lt p2, v3, :cond_5e

    .line 3025
    return v5

    .line 3028
    :cond_5e
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr p1, v1

    .line 3030
    iget p2, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr p2, v2

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-ne p2, v1, :cond_79

    .line 3032
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p2, v0

    .line 3033
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3036
    :cond_79
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 3038
    :cond_82
    nop

    .line 3039
    if-eq p2, v4, :cond_8a

    .line 3040
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int p1, p2, p1

    goto :goto_8b

    .line 3039
    :cond_8a
    move p1, v5

    .line 3042
    :goto_8b
    if-gez p1, :cond_a1

    .line 3044
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    .line 3045
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3046
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int p1, p2, p1

    goto :goto_8b

    .line 3048
    :cond_a1
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v0, p1

    .line 3049
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3050
    nop

    .line 3051
    if-lez v0, :cond_b1

    .line 3052
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_b2

    .line 3051
    :cond_b1
    move v0, v1

    .line 3054
    :goto_b2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v2, v0, :cond_b9

    .line 3056
    return v5

    .line 3059
    :cond_b9
    if-eq p2, v4, :cond_c7

    .line 3060
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v2

    if-lt p2, v2, :cond_c7

    .line 3062
    return v5

    .line 3065
    :cond_c7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    .line 3066
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez p1, :cond_dd

    .line 3068
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v1, p1

    .line 3069
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3071
    :cond_dd
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private greylist-max-o amountToScrollToNewFocus(ILandroid/view/View;I)I
    .registers 5

    .line 3263
    nop

    .line 3264
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3265
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3266
    const/16 p2, 0x21

    if-ne p1, p2, :cond_2a

    .line 3267
    iget-object p1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    if-ge p1, p2, :cond_4b

    .line 3268
    iget-object p1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    .line 3269
    if-lez p3, :cond_4c

    .line 3270
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_4c

    .line 3274
    :cond_2a
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p1

    iget-object p2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    .line 3275
    iget-object p2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-le p2, p1, :cond_4b

    .line 3276
    iget-object p2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int p1, p2, p1

    .line 3277
    iget p2, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 p2, p2, -0x1

    if-ge p3, p2, :cond_4c

    .line 3278
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_4c

    .line 3282
    :cond_4b
    const/4 p1, 0x0

    :cond_4c
    :goto_4c
    return p1
.end method

.method private greylist-max-o arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .registers 8

    .line 3161
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 3163
    const/16 v1, 0x82

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3164
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3165
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3166
    goto/16 :goto_84

    .line 3167
    :cond_1c
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_47

    .line 3168
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v4, :cond_25

    goto :goto_26

    :cond_25
    move v2, v3

    .line 3169
    :goto_26
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 3170
    if-eqz v2, :cond_31

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    goto :goto_32

    :cond_31
    move v2, v3

    :goto_32
    add-int/2addr v4, v2

    .line 3172
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v4, :cond_40

    .line 3173
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_41

    .line 3174
    :cond_40
    nop

    .line 3175
    :goto_41
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3176
    goto :goto_7a

    .line 3177
    :cond_47
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3178
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v4, v5, :cond_54

    goto :goto_55

    :cond_54
    move v2, v3

    .line 3179
    :goto_55
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 3180
    if-eqz v2, :cond_65

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    goto :goto_66

    :cond_65
    move v2, v3

    :goto_66
    sub-int/2addr v4, v2

    .line 3182
    if-eqz v0, :cond_74

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v2, v4, :cond_74

    .line 3183
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    goto :goto_75

    .line 3184
    :cond_74
    nop

    .line 3185
    :goto_75
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3187
    :goto_7a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    .line 3190
    :goto_84
    const/4 v2, 0x0

    if-eqz v0, :cond_cb

    .line 3191
    invoke-direct {p0, v0}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v3

    .line 3195
    iget v4, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a5

    iget v4, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v3, v4, :cond_a5

    .line 3196
    invoke-direct {p0, p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 3197
    if-eq v4, v5, :cond_a5

    if-ne p1, v1, :cond_9e

    if-lt v4, v3, :cond_a4

    :cond_9e
    const/16 v1, 0x21

    if-ne p1, v1, :cond_a5

    if-le v4, v3, :cond_a5

    .line 3200
    :cond_a4
    return-object v2

    .line 3204
    :cond_a5
    invoke-direct {p0, p1, v0, v3}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v1

    .line 3206
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v4

    .line 3207
    if-ge v1, v4, :cond_ba

    .line 3209
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 3210
    iget-object p1, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {p1, v3, v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3211
    iget-object p1, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object p1

    .line 3212
    :cond_ba
    invoke-direct {p0, v0}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v1

    if-ge v1, v4, :cond_cb

    .line 3217
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 3218
    iget-object p1, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {p1, v3, v4}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3219
    iget-object p1, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object p1

    .line 3222
    :cond_cb
    return-object v2
.end method

.method private greylist-max-o arrowScrollImpl(I)Z
    .registers 12

    .line 2775
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    .line 2776
    return v1

    .line 2779
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2780
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2782
    invoke-direct {p0, v0, v2, p1}, Landroid/widget/ListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v3

    .line 2783
    invoke-direct {p0, p1, v3}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v4

    .line 2786
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_20

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v5

    goto :goto_21

    :cond_20
    move-object v5, v6

    .line 2787
    :goto_21
    if-eqz v5, :cond_2b

    .line 2788
    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v3

    .line 2789
    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v4

    .line 2792
    :cond_2b
    const/4 v7, 0x1

    if-eqz v5, :cond_30

    move v8, v7

    goto :goto_31

    :cond_30
    move v8, v1

    .line 2793
    :goto_31
    const/4 v9, -0x1

    if-eq v3, v9, :cond_5c

    .line 2794
    if-eqz v5, :cond_38

    move v2, v7

    goto :goto_39

    :cond_38
    move v2, v1

    :goto_39
    invoke-direct {p0, v0, p1, v3, v2}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2795
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 2796
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2797
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2798
    nop

    .line 2799
    iget-boolean v2, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v2, :cond_56

    if-nez v5, :cond_56

    .line 2802
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2803
    if-eqz v2, :cond_56

    .line 2804
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2807
    :cond_56
    nop

    .line 2808
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    move v2, v3

    move v8, v7

    .line 2811
    :cond_5c
    if-lez v4, :cond_68

    .line 2812
    const/16 v8, 0x21

    if-ne p1, v8, :cond_63

    goto :goto_64

    :cond_63
    neg-int v4, v4

    :goto_64
    invoke-direct {p0, v4}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 2813
    move v8, v7

    .line 2818
    :cond_68
    iget-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz p1, :cond_8b

    if-nez v5, :cond_8b

    if-eqz v0, :cond_8b

    .line 2819
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 2820
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    .line 2821
    if-eqz p1, :cond_8b

    .line 2822
    invoke-direct {p0, p1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-direct {p0, p1}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_8b

    .line 2823
    :cond_88
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 2829
    :cond_8b
    if-ne v3, v9, :cond_9c

    if-eqz v0, :cond_9c

    .line 2830
    invoke-direct {p0, v0, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9c

    .line 2831
    nop

    .line 2832
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    .line 2836
    iput v9, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    goto :goto_9d

    .line 2839
    :cond_9c
    move-object v6, v0

    :goto_9d
    if-eqz v8, :cond_b7

    .line 2840
    if-eqz v6, :cond_aa

    .line 2841
    invoke-virtual {p0, v2, v6}, Landroid/widget/ListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 2842
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 2844
    :cond_aa
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_b3

    .line 2845
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2847
    :cond_b3
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2848
    return v7

    .line 2851
    :cond_b7
    return v1
.end method

.method private greylist-max-o clearRecycledState(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 684
    if-eqz p1, :cond_23

    .line 685
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 687
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_23

    .line 688
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 689
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 690
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 691
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    iput-boolean v1, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 687
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 695
    :cond_23
    return-void
.end method

.method private greylist-max-o commonKey(IILandroid/view/KeyEvent;)Z
    .registers 11

    .line 2433
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b0

    invoke-virtual {p0}, Landroid/widget/ListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_1b0

    .line 2437
    :cond_d
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-eqz v0, :cond_14

    .line 2438
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2441
    :cond_14
    nop

    .line 2442
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2443
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3f

    .line 2444
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_3f

    if-eq v0, v3, :cond_3f

    .line 2445
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2446
    if-nez v2, :cond_40

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_40

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_40

    .line 2447
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    .line 2448
    move v2, v3

    goto :goto_40

    .line 2453
    :cond_3f
    move v2, v1

    :cond_40
    :goto_40
    if-nez v2, :cond_193

    if-eq v0, v3, :cond_193

    .line 2454
    const/4 v4, 0x2

    const/16 v5, 0x21

    const/16 v6, 0x82

    sparse-switch p1, :sswitch_data_1b2

    goto/16 :goto_193

    .line 2524
    :sswitch_4e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_193

    .line 2525
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_64

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_61

    goto :goto_64

    :cond_61
    move v2, v1

    goto/16 :goto_193

    :cond_64
    :goto_64
    move v2, v3

    goto/16 :goto_193

    .line 2518
    :sswitch_67
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_193

    .line 2519
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_7d

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_7a

    goto :goto_7d

    :cond_7a
    move v2, v1

    goto/16 :goto_193

    :cond_7d
    :goto_7d
    move v2, v3

    goto/16 :goto_193

    .line 2510
    :sswitch_80
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_99

    .line 2511
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_96

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v2

    if-eqz v2, :cond_93

    goto :goto_96

    :cond_93
    move v2, v1

    goto/16 :goto_193

    :cond_96
    :goto_96
    move v2, v3

    goto/16 :goto_193

    .line 2512
    :cond_99
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_193

    .line 2513
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_af

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_ac

    goto :goto_af

    :cond_ac
    move v2, v1

    goto/16 :goto_193

    :cond_af
    :goto_af
    move v2, v3

    goto/16 :goto_193

    .line 2502
    :sswitch_b2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 2503
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_c8

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v2

    if-eqz v2, :cond_c5

    goto :goto_c8

    :cond_c5
    move v2, v1

    goto/16 :goto_193

    :cond_c8
    :goto_c8
    move v2, v3

    goto/16 :goto_193

    .line 2504
    :cond_cb
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_193

    .line 2505
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_e1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_de

    goto :goto_e1

    :cond_de
    move v2, v1

    goto/16 :goto_193

    :cond_e1
    :goto_e1
    move v2, v3

    goto/16 :goto_193

    .line 2534
    :sswitch_e4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_fd

    .line 2535
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_fa

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v2

    if-eqz v2, :cond_f7

    goto :goto_fa

    :cond_f7
    move v2, v1

    goto/16 :goto_193

    :cond_fa
    :goto_fa
    move v2, v3

    goto/16 :goto_193

    .line 2536
    :cond_fd
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_193

    .line 2537
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_113

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v2

    if-eqz v2, :cond_110

    goto :goto_113

    :cond_110
    move v2, v1

    goto/16 :goto_193

    :cond_113
    :goto_113
    move v2, v3

    goto/16 :goto_193

    .line 2496
    :sswitch_116
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_193

    .line 2497
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_193

    .line 2490
    :sswitch_124
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_193

    .line 2491
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_193

    .line 2473
    :sswitch_132
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_14b

    .line 2474
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2475
    if-nez v2, :cond_193

    .line 2476
    :goto_13e
    add-int/lit8 v4, p2, -0x1

    if-lez p2, :cond_17b

    .line 2477
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_17b

    .line 2478
    move v2, v3

    move p2, v4

    goto :goto_13e

    .line 2484
    :cond_14b
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_193

    .line 2485
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_160

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_15e

    goto :goto_160

    :cond_15e
    move v2, v1

    goto :goto_193

    :cond_160
    :goto_160
    move v2, v3

    goto :goto_193

    .line 2456
    :sswitch_162
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_17d

    .line 2457
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2458
    if-nez v2, :cond_193

    .line 2459
    :goto_16e
    add-int/lit8 v4, p2, -0x1

    if-lez p2, :cond_17b

    .line 2460
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_17b

    .line 2461
    move v2, v3

    move p2, v4

    goto :goto_16e

    .line 2543
    :cond_17b
    move p2, v4

    goto :goto_193

    .line 2467
    :cond_17d
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_193

    .line 2468
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_192

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_190

    goto :goto_192

    :cond_190
    move v2, v1

    goto :goto_193

    :cond_192
    :goto_192
    move v2, v3

    .line 2543
    :cond_193
    :goto_193
    if-eqz v2, :cond_196

    .line 2544
    return v3

    .line 2547
    :cond_196
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_19d

    .line 2548
    return v3

    .line 2551
    :cond_19d
    packed-switch v0, :pswitch_data_1d8

    .line 2562
    return v1

    .line 2559
    :pswitch_1a1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2556
    :pswitch_1a6
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2553
    :pswitch_1ab
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2434
    :cond_1b0
    :goto_1b0
    return v1

    nop

    :sswitch_data_1b2
    .sparse-switch
        0x13 -> :sswitch_162
        0x14 -> :sswitch_132
        0x15 -> :sswitch_124
        0x16 -> :sswitch_116
        0x3d -> :sswitch_e4
        0x5c -> :sswitch_b2
        0x5d -> :sswitch_80
        0x7a -> :sswitch_67
        0x7b -> :sswitch_4e
    .end sparse-switch

    :pswitch_data_1d8
    .packed-switch 0x0
        :pswitch_1ab
        :pswitch_1a6
        :pswitch_1a1
    .end packed-switch
.end method

.method private greylist-max-p correctTooHigh(I)V
    .registers 5

    .line 1596
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1597
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5c

    if-lez p1, :cond_5c

    .line 1600
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1603
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    .line 1606
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 1610
    sub-int/2addr v0, p1

    .line 1611
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1612
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1616
    if-lez v0, :cond_5c

    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v2, :cond_37

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_5c

    .line 1617
    :cond_37
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v2, :cond_44

    .line 1619
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1622
    :cond_44
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1623
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v0, :cond_5c

    .line 1626
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr p1, v1

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1628
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1633
    :cond_5c
    return-void
.end method

.method private greylist-max-p correctTooLow(I)V
    .registers 7

    .line 1646
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v0, :cond_66

    if-lez p1, :cond_66

    .line 1649
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1652
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1655
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1658
    iget v2, p0, Landroid/widget/ListView;->mBottom:I

    iget v3, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 1662
    sub-int/2addr v0, v1

    .line 1663
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1664
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1665
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    .line 1669
    if-lez v0, :cond_66

    .line 1670
    iget p1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    if-lt v4, p1, :cond_42

    if-le v3, v2, :cond_38

    goto :goto_42

    .line 1684
    :cond_38
    iget p1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    if-ne v4, p1, :cond_66

    .line 1685
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_66

    .line 1671
    :cond_42
    :goto_42
    iget p1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    if-ne v4, p1, :cond_4d

    .line 1673
    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1676
    :cond_4d
    neg-int p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1677
    iget p1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    if-ge v4, p1, :cond_66

    .line 1680
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr p1, v0

    invoke-direct {p0, v4, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1682
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1689
    :cond_66
    :goto_66
    return-void
.end method

.method private greylist-max-o distanceToView(Landroid/view/View;)I
    .registers 4

    .line 3293
    nop

    .line 3294
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3295
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3296
    iget p1, p0, Landroid/widget/ListView;->mBottom:I

    iget v0, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v0

    .line 3297
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_29

    .line 3298
    iget-object p1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v0

    goto :goto_37

    .line 3299
    :cond_29
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-le v0, p1, :cond_36

    .line 3300
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int p1, v0, p1

    goto :goto_37

    .line 3299
    :cond_36
    const/4 p1, 0x0

    .line 3302
    :goto_37
    return p1
.end method

.method private greylist-max-o fillAboveAndBelow(Landroid/view/View;I)V
    .registers 6

    .line 958
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 959
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_1e

    .line 960
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 961
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 962
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p1, v0

    invoke-direct {p0, p2, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    goto :goto_35

    .line 964
    :cond_1e
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 965
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 966
    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-direct {p0, p2, p1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 968
    :goto_35
    return-void
.end method

.method private greylist-max-p fillDown(II)Landroid/view/View;
    .registers 13

    .line 839
    nop

    .line 841
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v0, v1

    .line 842
    iget v1, p0, Landroid/widget/ListView;->mGroupFlags:I

    const/16 v2, 0x22

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_16

    .line 843
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    move v5, p1

    move v6, p2

    goto :goto_18

    .line 842
    :cond_16
    move v5, p1

    move v6, p2

    .line 846
    :goto_18
    const/4 p1, 0x1

    if-ge v6, v0, :cond_3e

    iget p2, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v5, p2, :cond_3e

    .line 848
    iget p2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne v5, p2, :cond_24

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    move v9, p1

    .line 849
    iget-object p1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, p1, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 851
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    iget v1, v4, Landroid/widget/ListView;->mDividerHeight:I

    add-int v6, p2, v1

    .line 852
    if-eqz v9, :cond_3b

    .line 853
    move-object v3, p1

    .line 855
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    .line 856
    goto :goto_18

    .line 846
    :cond_3e
    move-object v4, p0

    .line 858
    iget p2, v4, Landroid/widget/ListView;->mFirstPosition:I

    iget v0, v4, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    invoke-virtual {p0, p2, v0}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 859
    return-object v3
.end method

.method private greylist-max-o fillFromMiddle(II)Landroid/view/View;
    .registers 9

    .line 926
    sub-int/2addr p2, p1

    .line 928
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    .line 930
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 932
    iput v1, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 934
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 935
    if-gt v2, p2, :cond_1f

    .line 936
    sub-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 939
    :cond_1f
    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 941
    iget-boolean p2, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez p2, :cond_2e

    .line 942
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_35

    .line 944
    :cond_2e
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 947
    :goto_35
    return-object p1
.end method

.method private greylist-max-o fillFromSelection(III)Landroid/view/View;
    .registers 11

    .line 982
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 983
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 987
    invoke-direct {p0, p2, v0, v2}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result p2

    .line 989
    invoke-direct {p0, p3, v0, v2}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result p3

    .line 992
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 996
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, p3, :cond_33

    .line 999
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p2

    .line 1003
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p2, p3

    .line 1004
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1007
    neg-int p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4b

    .line 1008
    :cond_33
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, p2, :cond_4b

    .line 1011
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p2, v0

    .line 1015
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr p3, v0

    .line 1016
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1019
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4c

    .line 1008
    :cond_4b
    :goto_4b
    nop

    .line 1023
    :goto_4c
    invoke-direct {p0, p1, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1025
    iget-boolean p2, v1, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez p2, :cond_5b

    .line 1026
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_62

    .line 1028
    :cond_5b
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 1031
    :goto_62
    return-object p1
.end method

.method private greylist-max-o fillFromTop(I)Landroid/view/View;
    .registers 4

    .line 906
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 907
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 908
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gez v0, :cond_1d

    .line 909
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 911
    :cond_1d
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-p fillSpecific(II)Landroid/view/View;
    .registers 12

    .line 1547
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_7

    move v7, v1

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    move v7, v0

    .line 1548
    :goto_9
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1550
    iput v3, v2, Landroid/widget/ListView;->mFirstPosition:I

    .line 1555
    iget p2, v2, Landroid/widget/ListView;->mDividerHeight:I

    .line 1556
    iget-boolean v0, v2, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_3f

    .line 1557
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-direct {p0, v0, v4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 1559
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1560
    add-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, p2

    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object p2

    .line 1561
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 1562
    if-lez v1, :cond_3e

    .line 1563
    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1565
    :cond_3e
    goto :goto_64

    .line 1566
    :cond_3f
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, p2

    invoke-direct {p0, v0, v4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    .line 1568
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1569
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, p2

    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object p2

    .line 1570
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 1571
    if-lez v1, :cond_61

    .line 1572
    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 1576
    :cond_61
    move-object v8, v0

    move-object v0, p2

    move-object p2, v8

    :goto_64
    if-eqz v7, :cond_67

    .line 1577
    return-object p1

    .line 1578
    :cond_67
    if-eqz v0, :cond_6a

    .line 1579
    return-object v0

    .line 1581
    :cond_6a
    return-object p2
.end method

.method private greylist-max-p fillUp(II)Landroid/view/View;
    .registers 13

    .line 874
    nop

    .line 876
    nop

    .line 877
    iget v0, p0, Landroid/widget/ListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_12

    .line 878
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, p1

    move v6, p2

    goto :goto_15

    .line 877
    :cond_12
    move v5, p1

    move v6, p2

    move v0, v3

    .line 881
    :goto_15
    const/4 p1, 0x1

    if-le v6, v0, :cond_39

    if-ltz v5, :cond_39

    .line 883
    iget p2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne v5, p2, :cond_20

    move v9, p1

    goto :goto_21

    :cond_20
    move v9, v3

    .line 884
    :goto_21
    iget-object p1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, p1, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 885
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget v1, v4, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v6, p2, v1

    .line 886
    if-eqz v9, :cond_36

    .line 887
    move-object v2, p1

    .line 889
    :cond_36
    add-int/lit8 v5, v5, -0x1

    .line 890
    goto :goto_15

    .line 881
    :cond_39
    move-object v4, p0

    .line 892
    add-int/2addr v5, p1

    iput v5, v4, Landroid/widget/ListView;->mFirstPosition:I

    .line 893
    iget p2, v4, Landroid/widget/ListView;->mFirstPosition:I

    iget v0, v4, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    invoke-virtual {p0, p2, v0}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 894
    return-object v2
.end method

.method private greylist-max-o getArrowScrollPreviewLength()I
    .registers 3

    .line 2978
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getBottomSelectionPixel(III)I
    .registers 5

    .line 1044
    nop

    .line 1045
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    if-eq p3, v0, :cond_8

    .line 1046
    sub-int/2addr p1, p2

    .line 1048
    :cond_8
    return p1
.end method

.method private greylist-max-o getTopSelectionPixel(III)I
    .registers 4

    .line 1061
    nop

    .line 1062
    if-lez p3, :cond_4

    .line 1063
    add-int/2addr p1, p2

    .line 1065
    :cond_4
    return p1
.end method

.method private blacklist getWidgetStateFromScrollState(I)Ljava/lang/String;
    .registers 2

    .line 319
    packed-switch p1, :pswitch_data_c

    .line 326
    const-string p1, "none"

    return-object p1

    .line 321
    :pswitch_6
    const-string p1, "flinging"

    return-object p1

    .line 323
    :pswitch_9
    const-string p1, "scrolling"

    return-object p1

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private greylist-max-o handleHorizontalFocusWithinListItem(I)Z
    .registers 5

    .line 2663
    const/16 v0, 0x11

    if-eq p1, v0, :cond_11

    const/16 v0, 0x42

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 2664
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2668
    :cond_11
    :goto_11
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 2669
    iget-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v1, :cond_6c

    if-lez v0, :cond_6c

    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6c

    .line 2670
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2671
    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_6c

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6c

    .line 2674
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2675
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2677
    if-eqz v0, :cond_57

    .line 2679
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 2680
    if-eqz v1, :cond_4e

    .line 2681
    invoke-virtual {v1, v2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2682
    invoke-virtual {p0, v1, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2683
    invoke-virtual {p0, v0, v2}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_4f

    .line 2685
    :cond_4e
    const/4 v2, 0x0

    .line 2687
    :goto_4f
    invoke-virtual {v0, p1, v2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2688
    const/4 p1, 0x1

    return p1

    .line 2695
    :cond_57
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 2696
    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2695
    invoke-virtual {v0, v2, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 2697
    if-eqz p1, :cond_6c

    .line 2698
    invoke-direct {p0, p1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    .line 2702
    :cond_6c
    const/4 p1, 0x0

    return p1
.end method

.method private greylist-max-o handleNewSelectionChange(Landroid/view/View;IIZ)V
    .registers 11

    .line 2869
    const/4 v0, -0x1

    if-eq p3, v0, :cond_4b

    .line 2880
    nop

    .line 2881
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 2882
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr p3, v1

    .line 2883
    const/16 v1, 0x21

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_21

    .line 2884
    nop

    .line 2885
    nop

    .line 2886
    invoke-virtual {p0, p3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 2887
    nop

    .line 2888
    move-object v1, p2

    move-object p2, p1

    move-object p1, v1

    move v1, v0

    move v0, p3

    move p3, v1

    move v1, v2

    goto :goto_29

    .line 2890
    :cond_21
    nop

    .line 2891
    nop

    .line 2892
    nop

    .line 2893
    invoke-virtual {p0, p3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    move v1, v3

    .line 2896
    :goto_29
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    .line 2899
    if-eqz p1, :cond_3c

    .line 2900
    if-nez p4, :cond_35

    if-eqz v1, :cond_35

    move v5, v2

    goto :goto_36

    :cond_35
    move v5, v3

    :goto_36
    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 2901
    invoke-direct {p0, p1, v0, v4}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2905
    :cond_3c
    if-eqz p2, :cond_4a

    .line 2906
    if-nez p4, :cond_43

    if-nez v1, :cond_43

    goto :goto_44

    :cond_43
    move v2, v3

    :goto_44
    invoke-virtual {p2, v2}, Landroid/view/View;->setSelected(Z)V

    .line 2907
    invoke-direct {p0, p2, p3, v4}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2909
    :cond_4a
    return-void

    .line 2870
    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "newSelectedPosition needs to be valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist initializeScrollStateTracking(Ljava/lang/String;)V
    .registers 3

    .line 286
    new-instance v0, Landroid/widget/ListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/ListView$1;-><init>(Landroid/widget/ListView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setOnScrollStateChangeListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 316
    return-void
.end method

.method private greylist isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .registers 8

    .line 2074
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2075
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2076
    const/4 v2, 0x0

    move v3, v2

    :goto_8
    const/4 v4, 0x1

    if-ge v3, v1, :cond_19

    .line 2077
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_16

    .line 2078
    return v4

    .line 2076
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2082
    :cond_19
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2083
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2084
    move v3, v2

    :goto_20
    if-ge v3, v1, :cond_30

    .line 2085
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2d

    .line 2086
    return v4

    .line 2084
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 2090
    :cond_30
    return v2
.end method

.method private greylist-max-o isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    .line 3245
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 3246
    return v0

    .line 3249
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 3250
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method private greylist-max-o lookForSelectablePositionOnScreen(I)I
    .registers 7

    .line 3108
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3109
    const/16 v1, 0x82

    const/4 v2, -0x1

    if-ne p1, v1, :cond_3f

    .line 3110
    iget p1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq p1, v2, :cond_10

    .line 3111
    iget p1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 3112
    :cond_10
    move p1, v0

    .line 3113
    :goto_11
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1a

    .line 3114
    return v2

    .line 3116
    :cond_1a
    if-ge p1, v0, :cond_1d

    .line 3117
    move p1, v0

    .line 3120
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 3121
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 3122
    nop

    :goto_26
    if-gt p1, v1, :cond_3e

    .line 3123
    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3b

    sub-int v4, p1, v0

    .line 3124
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3b

    .line 3125
    return p1

    .line 3122
    :cond_3b
    add-int/lit8 p1, p1, 0x1

    goto :goto_26

    .line 3128
    :cond_3e
    goto :goto_82

    .line 3129
    :cond_3f
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    .line 3130
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v1, v2, :cond_4f

    .line 3131
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_56

    .line 3132
    :cond_4f
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 3133
    :goto_56
    if-ltz v1, :cond_83

    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_61

    goto :goto_83

    .line 3136
    :cond_61
    if-le v1, p1, :cond_64

    .line 3137
    goto :goto_65

    .line 3136
    :cond_64
    move p1, v1

    .line 3140
    :goto_65
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 3141
    nop

    :goto_6a
    if-lt p1, v0, :cond_82

    .line 3142
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_7f

    sub-int v3, p1, v0

    .line 3143
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7f

    .line 3144
    return p1

    .line 3141
    :cond_7f
    add-int/lit8 p1, p1, -0x1

    goto :goto_6a

    .line 3148
    :cond_82
    :goto_82
    return v2

    .line 3134
    :cond_83
    :goto_83
    return v2
.end method

.method private greylist makeAndAddView(IIZIZ)Landroid/view/View;
    .registers 14

    .line 2110
    iget-boolean v1, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v1, :cond_17

    .line 2112
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 2113
    if-eqz v1, :cond_17

    .line 2116
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2117
    return-object v1

    .line 2123
    :cond_17
    iget-object v1, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v1}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 2126
    iget-object v3, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v4, 0x0

    aget-boolean v7, v3, v4

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2128
    return-object v1
.end method

.method private greylist-max-o measureAndAdjustDown(Landroid/view/View;II)V
    .registers 6

    .line 2919
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2920
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 2921
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-eq v1, v0, :cond_21

    .line 2923
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2926
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p1, v0

    .line 2927
    :goto_15
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_21

    .line 2928
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_15

    .line 2931
    :cond_21
    return-void
.end method

.method private greylist-max-o measureItem(Landroid/view/View;)V
    .registers 6

    .line 2939
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2940
    if-nez v0, :cond_d

    .line 2941
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2946
    :cond_d
    iget v1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2948
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2950
    if-lez v0, :cond_29

    .line 2951
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_32

    .line 2953
    :cond_29
    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 2956
    :goto_32
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2957
    return-void
.end method

.method private greylist-max-o measureScrapChild(Landroid/view/View;III)V
    .registers 7

    .line 1388
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 1389
    if-nez v0, :cond_11

    .line 1390
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 1391
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1393
    :cond_11
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1394
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    iput-boolean p2, v0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1395
    const/4 p2, 0x1

    iput-boolean p2, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1397
    iget-object p2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, p2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 1399
    iget p3, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1401
    if-lez p3, :cond_3e

    .line 1402
    const/high16 p4, 0x40000000    # 2.0f

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    goto :goto_43

    .line 1404
    :cond_3e
    const/4 p3, 0x0

    invoke-static {p4, p3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result p3

    .line 1406
    :goto_43
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 1410
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 1411
    return-void
.end method

.method private greylist-max-o moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .registers 18

    .line 1107
    move/from16 v6, p4

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 1108
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1112
    invoke-direct {p0, v6, v1, v7}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v8

    .line 1114
    invoke-direct {p0, v6, v1, v7}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v9

    .line 1117
    if-lez p3, :cond_95

    .line 1139
    add-int/lit8 v1, v7, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1142
    iget v11, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1145
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int v2, v1, v11

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move v1, v7

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 1149
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v9, :cond_58

    .line 1152
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v8

    .line 1155
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v9

    .line 1158
    sub-int v4, p5, v6

    div-int/lit8 v4, v4, 0x2

    .line 1159
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1160
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1163
    neg-int v2, v2

    invoke-virtual {v10, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1165
    invoke-virtual {v1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1169
    :cond_58
    iget-boolean v2, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v2, :cond_78

    .line 1170
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v11

    invoke-direct {p0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1171
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1172
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v11

    invoke-direct {p0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    goto :goto_93

    .line 1174
    :cond_78
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v11

    invoke-direct {p0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1175
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1176
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v11

    invoke-direct {p0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1178
    :goto_93
    goto/16 :goto_103

    :cond_95
    move v1, v7

    if-gez p3, :cond_dd

    .line 1199
    if-eqz p2, :cond_aa

    .line 1201
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    goto :goto_b9

    .line 1206
    :cond_aa
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    .line 1211
    :goto_b9
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v8, :cond_d8

    .line 1213
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v8, v3

    .line 1216
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v9, v3

    .line 1219
    sub-int v3, p5, v6

    div-int/lit8 v3, v3, 0x2

    .line 1220
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1221
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1224
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1228
    :cond_d8
    invoke-direct {p0, v2, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    move-object v1, v2

    goto :goto_103

    .line 1231
    :cond_dd
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1236
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v3

    .line 1239
    if-ge v2, v6, :cond_ff

    .line 1242
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1243
    add-int/lit8 v4, v6, 0x14

    if-ge v2, v4, :cond_ff

    .line 1245
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v6, v2

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1250
    :cond_ff
    invoke-direct {p0, v3, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    move-object v1, v3

    .line 1253
    :goto_103
    return-object v1
.end method

.method private final greylist-max-o nextSelectedPositionForDirection(Landroid/view/View;II)I
    .registers 9

    .line 2740
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/16 v2, 0x82

    if-ne p3, v2, :cond_24

    .line 2741
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 2742
    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-gt p1, v3, :cond_23

    .line 2743
    if-eq p2, v1, :cond_1f

    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lt p2, p1, :cond_1f

    .line 2744
    add-int/2addr p2, v0

    goto :goto_21

    .line 2745
    :cond_1f
    iget p2, p0, Landroid/widget/ListView;->mFirstPosition:I

    :goto_21
    nop

    .line 2749
    goto :goto_40

    .line 2747
    :cond_23
    return v1

    .line 2750
    :cond_24
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 2751
    if-eqz p1, :cond_55

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-lt p1, v3, :cond_55

    .line 2752
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    add-int/2addr p1, v3

    sub-int/2addr p1, v0

    .line 2753
    if-eq p2, v1, :cond_3e

    if-gt p2, p1, :cond_3e

    .line 2754
    sub-int/2addr p2, v0

    goto :goto_3f

    .line 2755
    :cond_3e
    move p2, p1

    .line 2756
    :goto_3f
    nop

    .line 2761
    :goto_40
    if-ltz p2, :cond_54

    iget-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    if-lt p2, p1, :cond_4b

    goto :goto_54

    .line 2764
    :cond_4b
    if-ne p3, v2, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v0, 0x0

    :goto_4f
    invoke-virtual {p0, p2, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    return p1

    .line 2762
    :cond_54
    :goto_54
    return v1

    .line 2757
    :cond_55
    return v1
.end method

.method private greylist-max-o positionOfNewFocus(Landroid/view/View;)I
    .registers 5

    .line 3230
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3231
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_18

    .line 3232
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3233
    invoke-direct {p0, p1, v2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3234
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr p1, v1

    return p1

    .line 3231
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3237
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newFocus is not a child of any of the children of the list!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o relayoutMeasuredItem(Landroid/view/View;)V
    .registers 6

    .line 2965
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2966
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2967
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2968
    add-int/2addr v0, v2

    .line 2969
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2970
    add-int/2addr v1, v3

    .line 2971
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 2972
    return-void
.end method

.method private greylist-max-o removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 476
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 477
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_18

    .line 478
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    .line 479
    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v2, p1, :cond_15

    .line 480
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 481
    goto :goto_18

    .line 477
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 484
    :cond_18
    :goto_18
    return-void
.end method

.method private greylist-max-o removeUnusedFixedViews(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 2053
    if-nez p1, :cond_3

    .line 2054
    return-void

    .line 2056
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_2e

    .line 2057
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 2058
    iget-object v1, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 2059
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    .line 2060
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2b

    if-eqz v2, :cond_2b

    iget-boolean v3, v2, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    if-eqz v3, :cond_2b

    .line 2061
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/widget/ListView;->removeDetachedView(Landroid/view/View;Z)V

    .line 2062
    iput-boolean v3, v2, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2056
    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 2066
    :cond_2e
    return-void
.end method

.method private greylist scrollListItemsBy(I)V
    .registers 11

    .line 3314
    iget v0, p0, Landroid/widget/ListView;->mScrollX:I

    .line 3315
    iget v1, p0, Landroid/widget/ListView;->mScrollY:I

    .line 3317
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3319
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 3320
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 3321
    iget-object v4, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 3323
    const/4 v5, 0x0

    if-gez p1, :cond_75

    .line 3327
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    .line 3328
    add-int/lit8 v6, p1, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3329
    :goto_23
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    if-ge v7, v2, :cond_3b

    .line 3330
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v7, v7, -0x1

    .line 3331
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_3b

    .line 3332
    invoke-direct {p0, v6, v7}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 3333
    add-int/lit8 p1, p1, 0x1

    .line 3337
    goto :goto_23

    .line 3342
    :cond_3b
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p1, v2, :cond_49

    .line 3343
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3347
    :cond_49
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3348
    :goto_4d
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v2, v3, :cond_74

    .line 3349
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    .line 3350
    iget v2, v2, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v4, v2}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 3351
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {v4, p1, v2}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3353
    :cond_66
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3354
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3355
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3356
    goto :goto_4d

    .line 3357
    :cond_74
    goto :goto_cc

    .line 3359
    :cond_75
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3362
    :goto_79
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_90

    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v5, :cond_90

    .line 3363
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, p1, v5}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 3364
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_79

    .line 3369
    :cond_90
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_9e

    .line 3370
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3373
    :cond_9e
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 3374
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3377
    :goto_a8
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v2, :cond_cc

    .line 3378
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsListView$LayoutParams;

    .line 3379
    iget v5, v5, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 3380
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v5, p1

    invoke-virtual {v4, v3, v5}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3382
    :cond_c2
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3383
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3384
    goto :goto_a8

    .line 3386
    :cond_cc
    :goto_cc
    invoke-virtual {v4}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 3387
    iget-object p1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 3388
    iget-object p1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 3389
    iget p1, p0, Landroid/widget/ListView;->mScrollX:I

    iget v2, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 3390
    return-void
.end method

.method private greylist-max-o setupChild(Landroid/view/View;IIZIZZ)V
    .registers 21

    .line 2149
    move v0, p2

    move/from16 v1, p5

    const-string v2, "setupListItem"

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2151
    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz p6, :cond_16

    invoke-virtual {p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v6

    if-eqz v6, :cond_16

    move v6, v2

    goto :goto_17

    :cond_16
    move v6, v5

    .line 2152
    :goto_17
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eq v6, v7, :cond_1f

    move v7, v2

    goto :goto_20

    :cond_1f
    move v7, v5

    .line 2153
    :goto_20
    iget v8, p0, Landroid/widget/ListView;->mTouchMode:I

    .line 2154
    if-lez v8, :cond_2d

    const/4 v9, 0x3

    if-ge v8, v9, :cond_2d

    iget v8, p0, Landroid/widget/ListView;->mMotionPosition:I

    if-ne v8, v0, :cond_2d

    move v8, v2

    goto :goto_2e

    :cond_2d
    move v8, v5

    .line 2156
    :goto_2e
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v9

    if-eq v8, v9, :cond_36

    move v9, v2

    goto :goto_37

    :cond_36
    move v9, v5

    .line 2157
    :goto_37
    if-eqz p7, :cond_44

    if-nez v7, :cond_44

    .line 2158
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v10

    if-eqz v10, :cond_42

    goto :goto_44

    :cond_42
    move v10, v5

    goto :goto_45

    :cond_44
    :goto_44
    move v10, v2

    .line 2162
    :goto_45
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/AbsListView$LayoutParams;

    .line 2163
    if-nez v11, :cond_53

    .line 2164
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/AbsListView$LayoutParams;

    .line 2166
    :cond_53
    iget-object v12, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v12

    iput v12, v11, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2167
    iget-object v12, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    iput-boolean v12, v11, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 2172
    if-eqz v7, :cond_68

    .line 2173
    invoke-virtual {p1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 2176
    :cond_68
    if-eqz v9, :cond_6d

    .line 2177
    invoke-virtual {p1, v8}, Landroid/view/View;->setPressed(Z)V

    .line 2180
    :cond_6d
    iget v6, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v6, :cond_9d

    iget-object v6, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v6, :cond_9d

    .line 2181
    instance-of v6, p1, Landroid/widget/Checkable;

    if-eqz v6, :cond_86

    .line 2182
    move-object v6, p1

    check-cast v6, Landroid/widget/Checkable;

    iget-object v7, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_9d

    .line 2183
    :cond_86
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_9d

    .line 2185
    iget-object v6, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setActivated(Z)V

    .line 2189
    :cond_9d
    :goto_9d
    const/4 v6, -0x1

    if-eqz p7, :cond_a4

    iget-boolean v7, v11, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-eqz v7, :cond_ad

    :cond_a4
    iget-boolean v7, v11, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    const/4 v8, -0x2

    if-eqz v7, :cond_c4

    iget v7, v11, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v7, v8, :cond_c4

    .line 2191
    :cond_ad
    if-eqz p4, :cond_b0

    goto :goto_b1

    :cond_b0
    move v6, v5

    :goto_b1
    invoke-virtual {p0, p1, v6, v11}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2195
    if-eqz p7, :cond_d6

    .line 2196
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsListView$LayoutParams;

    iget v6, v6, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v6, v0, :cond_d6

    .line 2198
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_d6

    .line 2201
    :cond_c4
    iput-boolean v5, v11, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 2202
    iget v0, v11, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v0, v8, :cond_cc

    .line 2203
    iput-boolean v2, v11, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2205
    :cond_cc
    if-eqz p4, :cond_cf

    goto :goto_d0

    :cond_cf
    move v6, v5

    :goto_d0
    invoke-virtual {p0, p1, v6, v11, v2}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2207
    invoke-virtual {p1}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 2210
    :cond_d6
    :goto_d6
    if-eqz v10, :cond_100

    .line 2211
    iget v0, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v7, v11, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v0, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 2213
    iget v6, v11, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 2215
    if-lez v6, :cond_f4

    .line 2216
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_fc

    .line 2218
    :cond_f4
    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v5

    .line 2221
    :goto_fc
    invoke-virtual {p1, v0, v5}, Landroid/view/View;->measure(II)V

    .line 2222
    goto :goto_103

    .line 2223
    :cond_100
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    .line 2226
    :goto_103
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2227
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 2228
    if-eqz p4, :cond_110

    move/from16 v6, p3

    goto :goto_112

    :cond_110
    sub-int v6, p3, v5

    .line 2230
    :goto_112
    if-eqz v10, :cond_11a

    .line 2231
    add-int/2addr v0, v1

    .line 2232
    add-int/2addr v5, v6

    .line 2233
    invoke-virtual {p1, v1, v6, v0, v5}, Landroid/view/View;->layout(IIII)V

    .line 2234
    goto :goto_12b

    .line 2235
    :cond_11a
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2236
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v6, v0

    invoke-virtual {p1, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2239
    :goto_12b
    iget-boolean v0, p0, Landroid/widget/ListView;->mCachingStarted:Z

    if-eqz v0, :cond_138

    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_138

    .line 2240
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2243
    :cond_138
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2244
    return-void
.end method

.method private greylist-max-o shouldAdjustHeightForDivider(I)Z
    .registers 16

    .line 4097
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 4098
    iget-object v1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 4099
    iget-object v2, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 4100
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_c

    move v1, v4

    goto :goto_d

    :cond_c
    move v1, v3

    .line 4101
    :goto_d
    if-eqz v2, :cond_11

    move v2, v4

    goto :goto_12

    :cond_11
    move v2, v3

    .line 4102
    :goto_12
    if-lez v0, :cond_1a

    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    move v0, v4

    goto :goto_1b

    :cond_1a
    move v0, v3

    .line 4104
    :goto_1b
    if-eqz v0, :cond_a9

    .line 4105
    invoke-virtual {p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_2b

    move v0, v4

    goto :goto_2c

    :cond_2b
    move v0, v3

    .line 4106
    :goto_2c
    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    .line 4107
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    .line 4108
    iget-object v7, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v7, v5, v7

    .line 4109
    if-ge p1, v6, :cond_3e

    move v8, v4

    goto :goto_3f

    :cond_3e
    move v8, v3

    .line 4110
    :goto_3f
    if-lt p1, v7, :cond_43

    move v9, v4

    goto :goto_44

    :cond_43
    move v9, v3

    .line 4111
    :goto_44
    iget-boolean v10, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 4112
    iget-boolean v11, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 4113
    if-nez v10, :cond_4c

    if-nez v8, :cond_a9

    :cond_4c
    if-nez v11, :cond_50

    if-nez v9, :cond_a9

    .line 4114
    :cond_50
    iget-object v12, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4115
    iget-boolean v13, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v13, :cond_81

    .line 4116
    sub-int/2addr v5, v4

    if-ne p1, v5, :cond_5b

    move v1, v4

    goto :goto_5c

    :cond_5b
    move v1, v3

    .line 4117
    :goto_5c
    if-eqz v2, :cond_60

    if-nez v1, :cond_80

    .line 4118
    :cond_60
    add-int/lit8 v2, p1, 0x1

    .line 4122
    invoke-interface {v12, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_7d

    if-nez v10, :cond_6e

    if-nez v8, :cond_7d

    if-lt v2, v6, :cond_7d

    :cond_6e
    if-nez v1, :cond_7c

    .line 4124
    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_7d

    if-nez v11, :cond_7c

    if-nez v9, :cond_7d

    if-ge v2, v7, :cond_7d

    .line 4126
    :cond_7c
    return v4

    .line 4127
    :cond_7d
    if-eqz v0, :cond_80

    .line 4128
    return v4

    .line 4131
    :cond_80
    goto :goto_a9

    .line 4132
    :cond_81
    nop

    .line 4133
    if-ne p1, v1, :cond_86

    move v1, v4

    goto :goto_87

    :cond_86
    move v1, v3

    .line 4134
    :goto_87
    if-nez v1, :cond_a9

    .line 4135
    add-int/lit8 v2, p1, -0x1

    .line 4139
    invoke-interface {v12, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_a6

    if-nez v10, :cond_97

    if-nez v8, :cond_a6

    if-lt v2, v6, :cond_a6

    :cond_97
    if-nez v1, :cond_a5

    .line 4141
    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_a6

    if-nez v11, :cond_a5

    if-nez v9, :cond_a6

    if-ge v2, v7, :cond_a6

    .line 4143
    :cond_a5
    return v4

    .line 4144
    :cond_a6
    if-eqz v0, :cond_a9

    .line 4145
    return v4

    .line 4152
    :cond_a9
    :goto_a9
    return v3
.end method

.method private greylist-max-o showingBottomFadingEdge()Z
    .registers 6

    .line 709
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 710
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 711
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v2, v0

    const/4 v0, 0x1

    sub-int/2addr v2, v0

    .line 713
    iget v3, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 715
    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v4, v0

    if-lt v2, v4, :cond_28

    if-ge v1, v3, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :cond_28
    :goto_28
    return v0
.end method

.method private greylist-max-o showingTopFadingEdge()Z
    .registers 4

    .line 701
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 702
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v1, :cond_16

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    return v1
.end method


# virtual methods
.method public whitelist addFooterView(Landroid/view/View;)V
    .registers 4

    .line 546
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 547
    return-void
.end method

.method public whitelist addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6

    .line 503
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1a

    .line 504
    const/4 v0, 0x5

    const-string v1, "ListView"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 505
    const-string v0, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_1a
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 511
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 512
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 513
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 514
    iget-object p1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    iget-boolean p1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr p1, p3

    iput-boolean p1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 518
    iget-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_45

    .line 519
    iget-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of p1, p1, Landroid/widget/HeaderViewListAdapter;

    if-nez p1, :cond_3c

    .line 520
    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    .line 525
    :cond_3c
    iget-object p1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz p1, :cond_45

    .line 526
    iget-object p1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {p1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 529
    :cond_45
    return-void
.end method

.method public whitelist addHeaderView(Landroid/view/View;)V
    .registers 4

    .line 445
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 446
    return-void
.end method

.method public whitelist addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6

    .line 403
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1a

    .line 404
    const/4 v0, 0x5

    const-string v1, "ListView"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 405
    const-string v0, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_1a
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 410
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 411
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 412
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 413
    iget-object p1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    iget-boolean p1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr p1, p3

    iput-boolean p1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 417
    iget-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_45

    .line 418
    iget-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of p1, p1, Landroid/widget/HeaderViewListAdapter;

    if-nez p1, :cond_3c

    .line 419
    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    .line 424
    :cond_3c
    iget-object p1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz p1, :cond_45

    .line 425
    iget-object p1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {p1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 428
    :cond_45
    return-void
.end method

.method public whitelist areFooterDividersEnabled()Z
    .registers 2

    .line 3791
    iget-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public whitelist areHeaderDividersEnabled()Z
    .registers 2

    .line 3767
    iget-boolean v0, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method greylist arrowScroll(I)Z
    .registers 4

    .line 2715
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2716
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2717
    if-eqz v0, :cond_11

    .line 2718
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_15

    .line 2720
    :cond_11
    nop

    .line 2722
    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2720
    return v0

    .line 2722
    :catchall_15
    move-exception p1

    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2723
    throw p1
.end method

.method protected whitelist canAnimate()Z
    .registers 2

    .line 2248
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected greylist-max-o dispatchDataSetObserverOnChangedInternal()V
    .registers 2

    .line 4235
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_9

    .line 4236
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 4238
    :cond_9
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 30

    .line 3501
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroid/widget/ListView;->mCachingStarted:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    .line 3502
    iput-boolean v3, v0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3506
    :cond_b
    iget v2, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3507
    iget-object v4, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3508
    iget-object v5, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3509
    if-eqz v4, :cond_15

    move v7, v3

    goto :goto_16

    :cond_15
    const/4 v7, 0x0

    .line 3510
    :goto_16
    if-eqz v5, :cond_1a

    move v8, v3

    goto :goto_1b

    :cond_1a
    const/4 v8, 0x0

    .line 3511
    :goto_1b
    if-lez v2, :cond_23

    iget-object v9, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_23

    move v9, v3

    goto :goto_24

    :cond_23
    const/4 v9, 0x0

    .line 3513
    :goto_24
    if-nez v9, :cond_2a

    if-nez v7, :cond_2a

    if-eqz v8, :cond_20e

    .line 3515
    :cond_2a
    iget-object v10, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3516
    iget v11, v0, Landroid/widget/ListView;->mPaddingLeft:I

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 3517
    iget v11, v0, Landroid/widget/ListView;->mRight:I

    iget v12, v0, Landroid/widget/ListView;->mLeft:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/widget/ListView;->mPaddingRight:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 3519
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    .line 3520
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v12

    .line 3521
    iget v13, v0, Landroid/widget/ListView;->mItemCount:I

    .line 3522
    iget-object v14, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int v14, v13, v14

    .line 3523
    iget-boolean v15, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3524
    iget-boolean v3, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3525
    iget v6, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3526
    nop

    .line 3527
    move/from16 v17, v3

    iget-object v3, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3532
    invoke-virtual {v0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v18

    if-eqz v18, :cond_66

    invoke-super {v0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v18

    if-nez v18, :cond_66

    const/16 v18, 0x1

    goto :goto_68

    :cond_66
    const/16 v18, 0x0

    .line 3534
    :goto_68
    if-eqz v18, :cond_87

    move/from16 v19, v6

    iget-object v6, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_89

    iget-boolean v6, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v6, :cond_89

    .line 3535
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3536
    iget-object v6, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move/from16 v20, v8

    invoke-virtual {v0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8b

    .line 3534
    :cond_87
    move/from16 v19, v6

    :cond_89
    move/from16 v20, v8

    .line 3538
    :goto_8b
    iget-object v6, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3540
    nop

    .line 3541
    nop

    .line 3542
    iget v8, v0, Landroid/widget/ListView;->mGroupFlags:I

    move/from16 v21, v8

    const/16 v8, 0x22

    move/from16 v22, v9

    and-int/lit8 v9, v21, 0x22

    if-ne v9, v8, :cond_a4

    .line 3543
    iget-object v8, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 3544
    iget-object v9, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_a6

    .line 3542
    :cond_a4
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3547
    :goto_a6
    move/from16 v21, v9

    iget v9, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v23, v9

    iget v9, v0, Landroid/widget/ListView;->mTop:I

    sub-int v9, v23, v9

    sub-int v9, v9, v21

    move/from16 v21, v9

    iget v9, v0, Landroid/widget/ListView;->mScrollY:I

    add-int v9, v21, v9

    .line 3548
    move/from16 v21, v15

    iget-boolean v15, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v23, v15

    const/4 v15, -0x1

    if-nez v23, :cond_163

    .line 3549
    nop

    .line 3552
    iget v8, v0, Landroid/widget/ListView;->mScrollY:I

    .line 3553
    if-lez v11, :cond_de

    if-gez v8, :cond_de

    .line 3554
    if-eqz v7, :cond_d3

    .line 3555
    const/4 v7, 0x0

    iput v7, v10, Landroid/graphics/Rect;->bottom:I

    .line 3556
    iput v8, v10, Landroid/graphics/Rect;->top:I

    .line 3557
    invoke-virtual {v0, v1, v4, v10}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_de

    .line 3558
    :cond_d3
    const/4 v7, 0x0

    if-eqz v22, :cond_de

    .line 3559
    iput v7, v10, Landroid/graphics/Rect;->bottom:I

    .line 3560
    neg-int v4, v2

    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3561
    invoke-virtual {v0, v1, v10, v15}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3565
    :cond_de
    :goto_de
    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_e0
    if-ge v7, v11, :cond_14d

    .line 3566
    add-int v8, v19, v7

    .line 3567
    if-ge v8, v12, :cond_e8

    const/4 v15, 0x1

    goto :goto_e9

    :cond_e8
    const/4 v15, 0x0

    .line 3568
    :goto_e9
    if-lt v8, v14, :cond_ee

    const/16 v23, 0x1

    goto :goto_f0

    :cond_ee
    const/16 v23, 0x0

    .line 3569
    :goto_f0
    if-nez v21, :cond_f4

    if-nez v15, :cond_f9

    :cond_f4
    if-nez v17, :cond_fc

    if-nez v23, :cond_f9

    goto :goto_fc

    .line 3565
    :cond_f9
    move/from16 v24, v2

    goto :goto_148

    .line 3570
    :cond_fc
    :goto_fc
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3571
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 3572
    move/from16 v24, v2

    add-int/lit8 v2, v11, -0x1

    if-ne v7, v2, :cond_10c

    const/4 v2, 0x1

    goto :goto_10d

    :cond_10c
    const/4 v2, 0x0

    .line 3574
    :goto_10d
    if-eqz v22, :cond_148

    if-ge v4, v9, :cond_148

    if-eqz v20, :cond_115

    if-nez v2, :cond_148

    .line 3576
    :cond_115
    move/from16 v25, v2

    add-int/lit8 v2, v8, 0x1

    .line 3580
    invoke-interface {v3, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_13d

    if-nez v21, :cond_125

    if-nez v15, :cond_13d

    if-lt v2, v12, :cond_13d

    :cond_125
    if-nez v25, :cond_133

    .line 3582
    invoke-interface {v3, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_13d

    if-nez v17, :cond_133

    if-nez v23, :cond_13d

    if-ge v2, v14, :cond_13d

    .line 3584
    :cond_133
    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3585
    add-int v2, v4, v24

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 3586
    invoke-virtual {v0, v1, v10, v7}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_148

    .line 3587
    :cond_13d
    if-eqz v18, :cond_148

    .line 3588
    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3589
    add-int v2, v4, v24

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 3590
    invoke-virtual {v1, v10, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3565
    :cond_148
    :goto_148
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v24

    goto :goto_e0

    .line 3596
    :cond_14d
    iget v2, v0, Landroid/widget/ListView;->mBottom:I

    iget v3, v0, Landroid/widget/ListView;->mScrollY:I

    add-int/2addr v2, v3

    .line 3597
    if-eqz v20, :cond_161

    add-int v6, v19, v11

    if-ne v6, v13, :cond_161

    if-le v2, v4, :cond_161

    .line 3599
    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3600
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 3601
    invoke-virtual {v0, v1, v5, v10}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3603
    :cond_161
    goto/16 :goto_20e

    .line 3606
    :cond_163
    move/from16 v24, v2

    iget v2, v0, Landroid/widget/ListView;->mScrollY:I

    .line 3608
    if-lez v11, :cond_17b

    if-eqz v7, :cond_17b

    .line 3609
    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 3610
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, v10, Landroid/graphics/Rect;->bottom:I

    .line 3611
    invoke-virtual {v0, v1, v4, v10}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3614
    :cond_17b
    nop

    .line 3615
    move v4, v7

    :goto_17d
    if-ge v4, v11, :cond_1ec

    .line 3616
    add-int v13, v19, v4

    .line 3617
    if-ge v13, v12, :cond_186

    const/16 v16, 0x1

    goto :goto_188

    :cond_186
    const/16 v16, 0x0

    .line 3618
    :goto_188
    if-lt v13, v14, :cond_18d

    const/16 v25, 0x1

    goto :goto_18f

    :cond_18d
    const/16 v25, 0x0

    .line 3619
    :goto_18f
    if-nez v21, :cond_197

    if-nez v16, :cond_194

    goto :goto_197

    :cond_194
    move/from16 v27, v2

    goto :goto_1e6

    :cond_197
    :goto_197
    if-nez v17, :cond_19b

    if-nez v25, :cond_194

    .line 3620
    :cond_19b
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 3621
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTop()I

    move-result v15

    .line 3622
    if-eqz v22, :cond_1e4

    if-le v15, v8, :cond_1e4

    .line 3623
    if-ne v4, v7, :cond_1ac

    const/16 v26, 0x1

    goto :goto_1ae

    :cond_1ac
    const/16 v26, 0x0

    .line 3624
    :goto_1ae
    move/from16 v27, v2

    add-int/lit8 v2, v13, -0x1

    .line 3628
    invoke-interface {v3, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_1d8

    if-nez v21, :cond_1be

    if-nez v16, :cond_1d8

    if-lt v2, v12, :cond_1d8

    :cond_1be
    if-nez v26, :cond_1cc

    .line 3630
    invoke-interface {v3, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_1d8

    if-nez v17, :cond_1cc

    if-nez v25, :cond_1d8

    if-ge v2, v14, :cond_1d8

    .line 3632
    :cond_1cc
    sub-int v2, v15, v24

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 3633
    iput v15, v10, Landroid/graphics/Rect;->bottom:I

    .line 3638
    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v0, v1, v10, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_1e6

    .line 3639
    :cond_1d8
    if-eqz v18, :cond_1e6

    .line 3640
    sub-int v2, v15, v24

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 3641
    iput v15, v10, Landroid/graphics/Rect;->bottom:I

    .line 3642
    invoke-virtual {v1, v10, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1e6

    .line 3622
    :cond_1e4
    move/from16 v27, v2

    .line 3615
    :cond_1e6
    :goto_1e6
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v27

    const/4 v15, -0x1

    goto :goto_17d

    .line 3648
    :cond_1ec
    move/from16 v27, v2

    if-lez v11, :cond_20e

    if-lez v27, :cond_20e

    .line 3649
    if-eqz v20, :cond_200

    .line 3650
    iget v2, v0, Landroid/widget/ListView;->mBottom:I

    .line 3651
    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 3652
    add-int v2, v2, v27

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 3653
    invoke-virtual {v0, v1, v5, v10}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_20d

    .line 3654
    :cond_200
    if-eqz v22, :cond_20d

    .line 3655
    iput v9, v10, Landroid/graphics/Rect;->top:I

    .line 3656
    add-int v9, v9, v24

    iput v9, v10, Landroid/graphics/Rect;->bottom:I

    .line 3657
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v10, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_20e

    .line 3654
    :cond_20d
    :goto_20d
    nop

    .line 3664
    :cond_20e
    :goto_20e
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3665
    return-void
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 2404
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2405
    if-nez v0, :cond_1a

    .line 2407
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 2408
    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1a

    .line 2411
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2414
    :cond_1a
    return v0
.end method

.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 5

    .line 3669
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    .line 3670
    iget-boolean p3, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz p3, :cond_f

    iget-boolean p2, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz p2, :cond_f

    .line 3671
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3673
    :cond_f
    return p1
.end method

.method greylist-max-o drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 4

    .line 3687
    iget-object p3, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3689
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3690
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3691
    return-void
.end method

.method greylist-max-o drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 7

    .line 3483
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3485
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3486
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3488
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 3489
    if-ge v1, v0, :cond_16

    .line 3490
    iget v1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 3493
    :cond_16
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3494
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3496
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3497
    return-void
.end method

.method greylist-max-o drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 7

    .line 3466
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3468
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3469
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3471
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 3472
    if-ge v1, v0, :cond_16

    .line 3473
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 3476
    :cond_16
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3477
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3479
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3480
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    .line 4215
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 4217
    const-string v0, "recycleOnMeasure"

    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 4218
    return-void
.end method

.method greylist-max-o fillGap(Z)V
    .registers 5

    .line 804
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 805
    const/4 v1, 0x0

    const/16 v2, 0x22

    if-eqz p1, :cond_32

    .line 806
    nop

    .line 807
    iget p1, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_13

    .line 808
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v1

    .line 810
    :cond_13
    if-lez v0, :cond_23

    add-int/lit8 p1, v0, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, p1

    goto :goto_24

    .line 811
    :cond_23
    nop

    .line 812
    :goto_24
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 813
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 814
    goto :goto_60

    .line 815
    :cond_32
    nop

    .line 816
    iget p1, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_3d

    .line 817
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result p1

    goto :goto_3e

    .line 816
    :cond_3d
    move p1, v1

    .line 819
    :goto_3e
    if-lez v0, :cond_4c

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr p1, v0

    goto :goto_52

    .line 820
    :cond_4c
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    sub-int p1, v0, p1

    .line 821
    :goto_52
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 822
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 824
    :goto_60
    return-void
.end method

.method greylist-max-o findMotionRow(I)I
    .registers 5

    .line 1513
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1514
    if-lez v0, :cond_33

    .line 1515
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_1e

    .line 1516
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_33

    .line 1517
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1518
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-gt p1, v2, :cond_1b

    .line 1519
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr p1, v1

    return p1

    .line 1516
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1523
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    :goto_20
    if-ltz v0, :cond_33

    .line 1524
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1525
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p1, v1, :cond_30

    .line 1526
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr p1, v0

    return p1

    .line 1523
    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 1531
    :cond_33
    const/4 p1, -0x1

    return p1
.end method

.method greylist-max-o findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 4022
    if-eqz p1, :cond_23

    .line 4023
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4026
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_23

    .line 4027
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4029
    if-eq v2, p3, :cond_20

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_20

    .line 4030
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 4032
    if-eqz v2, :cond_20

    .line 4033
    return-object v2

    .line 4026
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4038
    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method protected greylist-max-o findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 4001
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4002
    if-nez v0, :cond_18

    .line 4003
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4004
    if-eqz v0, :cond_f

    .line 4005
    return-object v0

    .line 4008
    :cond_f
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4009
    if-eqz v0, :cond_18

    .line 4010
    return-object v0

    .line 4013
    :cond_18
    return-object v0
.end method

.method greylist-max-o findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 3927
    if-eqz p1, :cond_21

    .line 3928
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3931
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    .line 3932
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3934
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3935
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3937
    if-eqz v2, :cond_1e

    .line 3938
    return-object v2

    .line 3931
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3943
    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method protected greylist findViewTraversal(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 3911
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3912
    if-nez v0, :cond_18

    .line 3913
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3914
    if-eqz v0, :cond_f

    .line 3915
    return-object v0

    .line 3917
    :cond_f
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3918
    if-eqz v0, :cond_18

    .line 3919
    return-object v0

    .line 3922
    :cond_18
    return-object v0
.end method

.method greylist-max-o findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 3972
    if-eqz p1, :cond_21

    .line 3973
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3976
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    .line 3977
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3979
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3980
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3982
    if-eqz v2, :cond_1e

    .line 3983
    return-object v2

    .line 3976
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3988
    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method protected greylist findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 3954
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3955
    if-nez v0, :cond_18

    .line 3956
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3957
    if-eqz v0, :cond_f

    .line 3958
    return-object v0

    .line 3961
    :cond_f
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3962
    if-eqz v0, :cond_18

    .line 3963
    return-object v0

    .line 3966
    :cond_18
    return-object v0
.end method

.method greylist-max-o fullScroll(I)Z
    .registers 5

    .line 2622
    nop

    .line 2623
    const/16 v0, 0x21

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1d

    .line 2624
    iget p1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eqz p1, :cond_3a

    .line 2625
    iget p1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, p1, v2, v1}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result p1

    .line 2626
    if-ltz p1, :cond_1b

    .line 2627
    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2628
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2629
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2631
    :cond_1b
    nop

    .line 2632
    goto :goto_3b

    .line 2633
    :cond_1d
    const/16 v0, 0x82

    if-ne p1, v0, :cond_3a

    .line 2634
    iget p1, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr p1, v1

    .line 2635
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ge v0, p1, :cond_3a

    .line 2636
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v0, p1, v2}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result p1

    .line 2638
    if-ltz p1, :cond_39

    .line 2639
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2640
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2641
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2643
    :cond_39
    goto :goto_3b

    .line 2647
    :cond_3a
    move v1, v2

    :goto_3b
    if-eqz v1, :cond_49

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_49

    .line 2648
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2649
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2652
    :cond_49
    return v1
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 4157
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getAdapter()Landroid/widget/Adapter;
    .registers 2

    .line 148
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 587
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public whitelist getCheckItemIds()[J
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4053
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4054
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v0

    return-object v0

    .line 4059
    :cond_11
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4c

    .line 4060
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4061
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 4062
    new-array v3, v2, [J

    .line 4063
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4065
    nop

    .line 4066
    move v5, v1

    move v6, v5

    :goto_2b
    if-ge v5, v2, :cond_43

    .line 4067
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 4068
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v3, v6

    move v6, v7

    .line 4066
    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 4074
    :cond_43
    if-ne v6, v2, :cond_46

    .line 4075
    return-object v3

    .line 4077
    :cond_46
    new-array v0, v6, [J

    .line 4078
    invoke-static {v3, v1, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4080
    return-object v0

    .line 4083
    :cond_4c
    new-array v0, v1, [J

    return-object v0
.end method

.method public whitelist getDivider()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 3702
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getDividerHeight()I
    .registers 2

    .line 3731
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public whitelist getFooterViewsCount()I
    .registers 2

    .line 551
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getHeaderViewsCount()I
    .registers 2

    .line 450
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method greylist-max-r getHeightForPosition(I)I
    .registers 3

    .line 4089
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->getHeightForPosition(I)I

    move-result v0

    .line 4090
    invoke-direct {p0, p1}, Landroid/widget/ListView;->shouldAdjustHeightForDivider(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 4091
    iget p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v0, p1

    return v0

    .line 4093
    :cond_e
    return v0
.end method

.method public whitelist getItemsCanFocus()Z
    .registers 2

    .line 3428
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public whitelist getMaxScrollAmount()I
    .registers 3

    .line 336
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 3830
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 3811
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist isOpaque()Z
    .registers 6

    .line 3433
    iget-boolean v0, p0, Landroid/widget/ListView;->mCachingActive:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v0, :cond_14

    .line 3434
    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_14
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    move v0, v1

    goto :goto_1d

    :cond_1c
    move v0, v2

    .line 3435
    :goto_1d
    if-eqz v0, :cond_5a

    .line 3437
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v3, :cond_28

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_2a

    :cond_28
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    .line 3438
    :goto_2a
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3439
    if-eqz v4, :cond_59

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-le v4, v3, :cond_37

    goto :goto_59

    .line 3442
    :cond_37
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    .line 3443
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v4, :cond_44

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_46

    :cond_44
    iget v4, p0, Landroid/widget/ListView;->mPaddingBottom:I

    :goto_46
    sub-int/2addr v3, v4

    .line 3444
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3445
    if-eqz v1, :cond_58

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge v1, v3, :cond_5a

    .line 3446
    :cond_58
    return v2

    .line 3440
    :cond_59
    :goto_59
    return v2

    .line 3449
    :cond_5a
    return v0
.end method

.method protected whitelist layoutChildren()V
    .registers 24

    .line 1693
    move-object/from16 v1, p0

    iget-boolean v7, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1694
    if-eqz v7, :cond_7

    .line 1695
    return-void

    .line 1698
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1701
    const/4 v8, 0x0

    :try_start_b
    invoke-super {v1}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1703
    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 1705
    iget-object v2, v1, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_29

    .line 1706
    invoke-virtual {v1}, Landroid/widget/ListView;->resetList()V

    .line 1707
    invoke-virtual {v1}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_386

    .line 2028
    iget-object v0, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_24

    .line 2029
    iget-object v0, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2031
    :cond_24
    if-nez v7, :cond_28

    .line 2032
    iput-boolean v8, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1708
    :cond_28
    return-void

    .line 1711
    :cond_29
    :try_start_29
    iget-object v2, v1, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 1712
    iget v2, v1, Landroid/widget/ListView;->mBottom:I

    iget v3, v1, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, v1, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v2, v3

    .line 1713
    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 1715
    nop

    .line 1716
    nop

    .line 1719
    nop

    .line 1720
    nop

    .line 1721
    nop

    .line 1724
    iget v3, v1, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v3, :pswitch_data_398

    .line 1739
    iget v3, v1, Landroid/widget/ListView;->mSelectedPosition:I

    goto :goto_60

    .line 1726
    :pswitch_49
    iget v3, v1, Landroid/widget/ListView;->mNextSelectedPosition:I

    iget v4, v1, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    .line 1727
    if-ltz v3, :cond_5b

    if-ge v3, v2, :cond_5b

    .line 1728
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move v11, v8

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto :goto_81

    .line 1735
    :pswitch_5a
    nop

    .line 1756
    :cond_5b
    move v11, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto :goto_81

    .line 1739
    :goto_60
    iget v4, v1, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    .line 1740
    if-ltz v3, :cond_6c

    if-ge v3, v2, :cond_6c

    .line 1741
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_6d

    .line 1745
    :cond_6c
    const/4 v4, 0x0

    :goto_6d
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1747
    iget v11, v1, Landroid/widget/ListView;->mNextSelectedPosition:I

    if-ltz v11, :cond_7b

    .line 1748
    iget v11, v1, Landroid/widget/ListView;->mNextSelectedPosition:I

    iget v12, v1, Landroid/widget/ListView;->mSelectedPosition:I

    sub-int/2addr v11, v12

    goto :goto_7c

    .line 1747
    :cond_7b
    move v11, v8

    .line 1752
    :goto_7c
    add-int/2addr v3, v11

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1756
    :goto_81
    iget-boolean v12, v1, Landroid/widget/ListView;->mDataChanged:Z

    .line 1757
    if-eqz v12, :cond_88

    .line 1758
    invoke-virtual {v1}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1763
    :cond_88
    iget v13, v1, Landroid/widget/ListView;->mItemCount:I

    if-nez v13, :cond_a0

    .line 1764
    invoke-virtual {v1}, Landroid/widget/ListView;->resetList()V

    .line 1765
    invoke-virtual {v1}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_92
    .catchall {:try_start_29 .. :try_end_92} :catchall_386

    .line 2028
    iget-object v0, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_9b

    .line 2029
    iget-object v0, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2031
    :cond_9b
    if-nez v7, :cond_9f

    .line 2032
    iput-boolean v8, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1766
    :cond_9f
    return-void

    .line 1767
    :cond_a0
    :try_start_a0
    iget v13, v1, Landroid/widget/ListView;->mItemCount:I

    iget-object v14, v1, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v14}, Landroid/widget/ListAdapter;->getCount()I

    move-result v14

    if-ne v13, v14, :cond_341

    .line 1776
    iget v13, v1, Landroid/widget/ListView;->mNextSelectedPosition:I

    invoke-virtual {v1, v13}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1778
    nop

    .line 1779
    nop

    .line 1780
    nop

    .line 1785
    invoke-virtual {v1}, Landroid/widget/ListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v13

    .line 1786
    if-eqz v13, :cond_e5

    .line 1787
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v15

    .line 1788
    if-eqz v15, :cond_e5

    .line 1789
    invoke-virtual {v1, v15}, Landroid/widget/ListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    .line 1790
    if-eqz v9, :cond_e5

    .line 1791
    if-eqz v12, :cond_da

    invoke-direct {v1, v9}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v16

    if-nez v16, :cond_da

    .line 1792
    invoke-virtual {v9}, Landroid/view/View;->hasTransientState()Z

    move-result v16

    if-eqz v16, :cond_d7

    iget-boolean v14, v1, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v14, :cond_d7

    goto :goto_da

    .line 1802
    :cond_d7
    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_e0

    .line 1795
    :cond_da
    :goto_da
    nop

    .line 1796
    nop

    .line 1797
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v14

    .line 1802
    :goto_e0
    invoke-virtual {v1, v9}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v9

    goto :goto_e8

    .line 1807
    :cond_e5
    const/4 v9, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_e8
    nop

    .line 1808
    nop

    .line 1813
    move/from16 v17, v0

    invoke-virtual {v1}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1814
    if-eqz v0, :cond_116

    .line 1820
    if-eqz v12, :cond_108

    invoke-direct {v1, v0}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v18

    if-nez v18, :cond_108

    .line 1821
    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v18

    if-nez v18, :cond_108

    iget-boolean v8, v1, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v8, :cond_105

    goto :goto_108

    :cond_105
    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_112

    .line 1822
    :cond_108
    :goto_108
    nop

    .line 1824
    invoke-virtual {v1}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 1825
    if-eqz v8, :cond_112

    .line 1827
    invoke-virtual {v8}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1830
    :cond_112
    :goto_112
    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_118

    .line 1814
    :cond_116
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 1835
    :goto_118
    move-object/from16 v19, v3

    iget v3, v1, Landroid/widget/ListView;->mFirstPosition:I
    :try_end_11c
    .catchall {:try_start_a0 .. :try_end_11c} :catchall_386

    .line 1836
    move/from16 v20, v7

    :try_start_11e
    iget-object v7, v1, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1837
    if-eqz v12, :cond_13e

    .line 1838
    const/4 v12, 0x0

    :goto_123
    if-ge v12, v2, :cond_139

    .line 1839
    move-object/from16 v21, v4

    invoke-virtual {v1, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move/from16 v22, v5

    add-int v5, v3, v12

    invoke-virtual {v7, v4, v5}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1838
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v21

    move/from16 v5, v22

    goto :goto_123

    :cond_139
    move-object/from16 v21, v4

    move/from16 v22, v5

    goto :goto_145

    .line 1842
    :cond_13e
    move-object/from16 v21, v4

    move/from16 v22, v5

    invoke-virtual {v7, v2, v3}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1846
    :goto_145
    invoke-virtual {v1}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    .line 1847
    invoke-virtual {v7}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1849
    iget v3, v1, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v3, :pswitch_data_3a6

    .line 1890
    move/from16 v5, v22

    if-nez v2, :cond_1e4

    .line 1891
    iget-boolean v2, v1, Landroid/widget/ListView;->mStackFromBottom:Z

    goto :goto_1bc

    .line 1887
    :pswitch_157
    move v4, v11

    move-object/from16 v3, v19

    move-object/from16 v2, v21

    move/from16 v5, v22

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v2

    .line 1888
    goto/16 :goto_215

    .line 1858
    :pswitch_164
    iget v2, v1, Landroid/widget/ListView;->mSyncPosition:I

    iget v3, v1, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v1, v2, v3}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .line 1859
    goto/16 :goto_215

    .line 1870
    :pswitch_16e
    invoke-virtual {v1}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v2

    .line 1871
    iget v3, v1, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v1, v2, v3}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v3

    .line 1878
    if-nez v3, :cond_18a

    iget-object v4, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v4, :cond_18a

    .line 1879
    iget-object v4, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1880
    invoke-virtual {v4, v2}, Landroid/widget/ListView$FocusSelector;->setupFocusIfValid(I)Ljava/lang/Runnable;

    move-result-object v2

    .line 1881
    if-eqz v2, :cond_189

    .line 1882
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1884
    :cond_189
    nop

    .line 1915
    :cond_18a
    move-object v2, v3

    goto/16 :goto_215

    .line 1861
    :pswitch_18d
    iget v2, v1, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2, v6}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    .line 1862
    invoke-direct {v1}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1863
    goto/16 :goto_215

    .line 1851
    :pswitch_19a
    move-object/from16 v3, v19

    move/from16 v5, v22

    if-eqz v3, :cond_1aa

    .line 1852
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-direct {v1, v2, v5, v6}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_215

    .line 1854
    :cond_1aa
    invoke-direct {v1, v5, v6}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v2

    .line 1856
    goto :goto_215

    .line 1865
    :pswitch_1af
    move/from16 v5, v22

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/ListView;->mFirstPosition:I

    .line 1866
    invoke-direct {v1, v5}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    .line 1867
    invoke-direct {v1}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1868
    goto :goto_215

    .line 1891
    :goto_1bc
    if-nez v2, :cond_1cd

    .line 1892
    move/from16 v2, v17

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v4

    .line 1893
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1894
    invoke-direct {v1, v5}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    .line 1895
    goto :goto_215

    .line 1896
    :cond_1cd
    iget v2, v1, Landroid/widget/ListView;->mItemCount:I

    const/16 v17, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 1897
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1898
    iget v2, v1, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2, v6}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    .line 1899
    goto :goto_215

    .line 1901
    :cond_1e4
    iget v2, v1, Landroid/widget/ListView;->mSelectedPosition:I

    if-ltz v2, :cond_1fc

    iget v2, v1, Landroid/widget/ListView;->mSelectedPosition:I

    iget v3, v1, Landroid/widget/ListView;->mItemCount:I

    if-ge v2, v3, :cond_1fc

    .line 1902
    iget v2, v1, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1903
    if-nez v21, :cond_1f3

    goto :goto_1f7

    :cond_1f3
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1902
    :goto_1f7
    invoke-direct {v1, v2, v5}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto :goto_215

    .line 1904
    :cond_1fc
    iget v2, v1, Landroid/widget/ListView;->mFirstPosition:I

    iget v3, v1, Landroid/widget/ListView;->mItemCount:I

    if-ge v2, v3, :cond_210

    .line 1905
    iget v2, v1, Landroid/widget/ListView;->mFirstPosition:I

    .line 1906
    if-nez v10, :cond_207

    goto :goto_20b

    :cond_207
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1905
    :goto_20b
    invoke-direct {v1, v2, v5}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto :goto_215

    .line 1908
    :cond_210
    const/4 v3, 0x0

    invoke-direct {v1, v3, v5}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .line 1915
    :goto_215
    invoke-virtual {v7}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1918
    iget-object v3, v1, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1919
    iget-object v3, v1, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1921
    if-eqz v2, :cond_26c

    .line 1924
    iget-boolean v3, v1, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v3, :cond_261

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_261

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_261

    .line 1925
    if-ne v2, v0, :cond_23e

    if-eqz v8, :cond_23e

    .line 1927
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_244

    :cond_23e
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_246

    :cond_244
    const/4 v0, 0x1

    goto :goto_247

    :cond_246
    const/4 v0, 0x0

    .line 1928
    :goto_247
    if-nez v0, :cond_257

    .line 1932
    invoke-virtual {v1}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1933
    if-eqz v0, :cond_252

    .line 1934
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1936
    :cond_252
    const/4 v0, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1937
    goto :goto_260

    .line 1938
    :cond_257
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1939
    iget-object v0, v1, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1941
    :goto_260
    goto :goto_265

    .line 1942
    :cond_261
    const/4 v0, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1944
    :goto_265
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/widget/ListView;->mSelectedTop:I

    goto :goto_2b6

    .line 1946
    :cond_26c
    iget v0, v1, Landroid/widget/ListView;->mTouchMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_279

    iget v0, v1, Landroid/widget/ListView;->mTouchMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_277

    goto :goto_279

    :cond_277
    const/4 v0, 0x0

    goto :goto_27a

    :cond_279
    :goto_279
    const/4 v0, 0x1

    .line 1948
    :goto_27a
    if-eqz v0, :cond_28d

    .line 1950
    iget v0, v1, Landroid/widget/ListView;->mMotionPosition:I

    iget v2, v1, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1951
    if-eqz v0, :cond_28c

    .line 1952
    iget v2, v1, Landroid/widget/ListView;->mMotionPosition:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1954
    :cond_28c
    goto :goto_2ab

    :cond_28d
    iget v0, v1, Landroid/widget/ListView;->mSelectorPosition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2a3

    .line 1958
    iget v0, v1, Landroid/widget/ListView;->mSelectorPosition:I

    iget v2, v1, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1959
    if-eqz v0, :cond_2a2

    .line 1960
    iget v2, v1, Landroid/widget/ListView;->mSelectorPosition:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1962
    :cond_2a2
    goto :goto_2ab

    .line 1964
    :cond_2a3
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/ListView;->mSelectedTop:I

    .line 1965
    iget-object v0, v1, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1970
    :goto_2ab
    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2b6

    if-eqz v8, :cond_2b6

    .line 1971
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 1976
    :cond_2b6
    :goto_2b6
    if-eqz v13, :cond_301

    .line 1977
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    .line 1978
    if-nez v0, :cond_301

    .line 1979
    if-eqz v15, :cond_2e3

    .line 1980
    invoke-virtual {v15}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2e3

    .line 1981
    nop

    .line 1982
    invoke-virtual {v15}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1983
    if-eqz v14, :cond_2df

    if-eqz v0, :cond_2df

    .line 1984
    nop

    .line 1985
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    .line 1984
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    .line 1986
    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 1988
    goto :goto_300

    .line 1989
    :cond_2df
    invoke-virtual {v15}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_300

    .line 1991
    :cond_2e3
    const/4 v0, -0x1

    if-eq v9, v0, :cond_300

    .line 1993
    iget v0, v1, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v9, v0

    .line 1995
    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    .line 1993
    const/4 v3, 0x0

    invoke-static {v9, v3, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 1996
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1997
    if-eqz v0, :cond_301

    .line 1998
    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_301

    .line 1991
    :cond_300
    :goto_300
    nop

    .line 2006
    :cond_301
    :goto_301
    if-eqz v8, :cond_30c

    .line 2007
    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_30c

    .line 2008
    invoke-virtual {v8}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2011
    :cond_30c
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/ListView;->mLayoutMode:I

    .line 2012
    iput-boolean v3, v1, Landroid/widget/ListView;->mDataChanged:Z

    .line 2013
    iget-object v0, v1, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v0, :cond_31d

    .line 2014
    iget-object v0, v1, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 2015
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2017
    :cond_31d
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/widget/ListView;->mNeedSync:Z

    .line 2018
    iget v0, v1, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2020
    invoke-virtual {v1}, Landroid/widget/ListView;->updateScrollIndicators()V

    .line 2022
    iget v0, v1, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_32f

    .line 2023
    invoke-virtual {v1}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2026
    :cond_32f
    invoke-virtual {v1}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_332
    .catchall {:try_start_11e .. :try_end_332} :catchall_384

    .line 2028
    iget-object v0, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_33b

    .line 2029
    iget-object v0, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2031
    :cond_33b
    if-nez v20, :cond_340

    .line 2032
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 2035
    :cond_340
    return-void

    .line 1768
    :cond_341
    move/from16 v20, v7

    :try_start_343
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1772
    invoke-virtual {v1}, Landroid/widget/ListView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") with Adapter("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1773
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_384
    .catchall {:try_start_343 .. :try_end_384} :catchall_384

    .line 2028
    :catchall_384
    move-exception v0

    goto :goto_389

    :catchall_386
    move-exception v0

    move/from16 v20, v7

    :goto_389
    iget-object v2, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v2, :cond_392

    .line 2029
    iget-object v2, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v2}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2031
    :cond_392
    if-nez v20, :cond_397

    .line 2032
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 2034
    :cond_397
    throw v0

    :pswitch_data_398
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_49
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
    .end packed-switch

    :pswitch_data_3a6
    .packed-switch 0x1
        :pswitch_1af
        :pswitch_19a
        :pswitch_18d
        :pswitch_16e
        :pswitch_164
        :pswitch_157
    .end packed-switch
.end method

.method greylist lookForSelectablePosition(IZ)I
    .registers 7

    .line 2306
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2307
    const/4 v1, -0x1

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_3e

    .line 2311
    :cond_c
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2312
    iget-boolean v3, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_37

    .line 2313
    if-eqz p2, :cond_26

    .line 2314
    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2315
    :goto_1b
    if-ge p1, v2, :cond_37

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_37

    .line 2316
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 2319
    :cond_26
    add-int/lit8 p2, v2, -0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2320
    :goto_2c
    if-ltz p1, :cond_37

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_37

    .line 2321
    add-int/lit8 p1, p1, -0x1

    goto :goto_2c

    .line 2326
    :cond_37
    if-ltz p1, :cond_3d

    if-lt p1, v2, :cond_3c

    goto :goto_3d

    .line 2330
    :cond_3c
    return p1

    .line 2327
    :cond_3d
    :goto_3d
    return v1

    .line 2308
    :cond_3e
    :goto_3e
    return v1
.end method

.method greylist-max-o lookForSelectablePositionAfter(IIZ)I
    .registers 7

    .line 2346
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2347
    const/4 v1, -0x1

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_49

    .line 2352
    :cond_c
    invoke-virtual {p0, p2, p3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2353
    if-eq v2, v1, :cond_13

    .line 2354
    return v2

    .line 2358
    :cond_13
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2359
    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 2360
    if-eqz p3, :cond_33

    .line 2361
    add-int/lit8 p2, p2, -0x1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2362
    :goto_25
    if-le p2, p1, :cond_30

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p3

    if-nez p3, :cond_30

    .line 2363
    add-int/lit8 p2, p2, -0x1

    goto :goto_25

    .line 2365
    :cond_30
    if-gt p2, p1, :cond_48

    .line 2366
    return v1

    .line 2369
    :cond_33
    const/4 p3, 0x0

    add-int/lit8 p2, p2, 0x1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2370
    :goto_3a
    if-ge p2, p1, :cond_45

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p3

    if-nez p3, :cond_45

    .line 2371
    add-int/lit8 p2, p2, 0x1

    goto :goto_3a

    .line 2373
    :cond_45
    if-lt p2, p1, :cond_48

    .line 2374
    return v1

    .line 2378
    :cond_48
    return p2

    .line 2348
    :cond_49
    :goto_49
    return v1
.end method

.method final greylist-max-p measureHeightOfChildren(IIIII)I
    .registers 15

    .line 1452
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1453
    if-nez v0, :cond_e

    .line 1454
    iget-object p1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    return p1

    .line 1458
    :cond_e
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 1459
    iget v2, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1462
    nop

    .line 1467
    const/4 v3, -0x1

    if-ne p3, v3, :cond_23

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    .line 1468
    :cond_23
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1469
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v4

    .line 1470
    iget-object v5, p0, Landroid/widget/ListView;->mIsScrap:[Z

    .line 1472
    const/4 v6, 0x0

    :goto_2c
    if-gt p2, p3, :cond_66

    .line 1473
    invoke-virtual {p0, p2, v5}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v7

    .line 1475
    invoke-direct {p0, v7, p2, p1, p4}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1477
    if-lez p2, :cond_38

    .line 1479
    add-int/2addr v1, v2

    .line 1483
    :cond_38
    if-eqz v4, :cond_4b

    .line 1484
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    iget v8, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1483
    invoke-virtual {v0, v8}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 1485
    invoke-virtual {v0, v7, v3}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1488
    :cond_4b
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v1, v7

    .line 1490
    if-lt v1, p4, :cond_5e

    .line 1496
    if-ltz p5, :cond_5c

    if-le p2, p5, :cond_5c

    if-lez v6, :cond_5c

    if-eq v1, p4, :cond_5c

    .line 1497
    move p4, v6

    goto :goto_5d

    .line 1498
    :cond_5c
    nop

    .line 1493
    :goto_5d
    return p4

    .line 1501
    :cond_5e
    if-ltz p5, :cond_63

    if-lt p2, p5, :cond_63

    .line 1502
    move v6, v1

    .line 1472
    :cond_63
    add-int/lit8 p2, p2, 0x1

    goto :goto_2c

    .line 1508
    :cond_66
    return v1
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 1307
    iget-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_c

    .line 1308
    iget-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1309
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1311
    :cond_c
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    .line 1312
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 4

    .line 3892
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 3894
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3895
    if-lez v0, :cond_19

    .line 3896
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_16

    .line 3897
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3896
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3899
    :cond_16
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    .line 3901
    :cond_19
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 13

    .line 3835
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3837
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3838
    nop

    .line 3839
    nop

    .line 3840
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5d

    if-eqz p1, :cond_5d

    if-eqz p3, :cond_5d

    .line 3841
    iget p1, p0, Landroid/widget/ListView;->mScrollX:I

    iget v3, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p3, p1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 3845
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_28

    .line 3846
    iput v2, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 3847
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 3852
    :cond_28
    iget-object p1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3853
    nop

    .line 3854
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 3855
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3857
    const v5, 0x7fffffff

    move v6, v5

    move v5, v2

    :goto_36
    if-ge v2, v3, :cond_5c

    .line 3859
    add-int v7, v4, v2

    invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_41

    .line 3860
    goto :goto_59

    .line 3863
    :cond_41
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3864
    invoke-virtual {v7, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3865
    invoke-virtual {p0, v7, p1}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3866
    invoke-static {p3, p1, p2}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v8

    .line 3868
    if-ge v8, v6, :cond_59

    .line 3869
    nop

    .line 3870
    nop

    .line 3871
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v5

    move v1, v2

    move v6, v8

    .line 3857
    :cond_59
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_5c
    move v2, v5

    .line 3876
    :cond_5d
    if-ltz v1, :cond_66

    .line 3877
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_69

    .line 3879
    :cond_66
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3881
    :goto_69
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 10

    .line 4202
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4204
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView$LayoutParams;

    .line 4205
    if-eqz p1, :cond_12

    iget p1, p1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v0, -0x2

    if-ne p1, v0, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    move v4, p1

    .line 4206
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    .line 4207
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x1

    move v0, p2

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p1

    .line 4209
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 4210
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    .line 4163
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4165
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 4166
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectionModeForAccessibility()I

    move-result v1

    .line 4167
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v2, v2, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v1

    .line 4169
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 4171
    if-lez v0, :cond_1b

    .line 4172
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4174
    :cond_1b
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 2419
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 4

    .line 2424
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 2429
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected whitelist onMeasure(II)V
    .registers 13

    .line 1335
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1337
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1338
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1339
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1340
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1342
    nop

    .line 1343
    nop

    .line 1344
    nop

    .line 1346
    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    if-nez v3, :cond_1d

    move v3, v4

    goto :goto_23

    :cond_1d
    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    :goto_23
    iput v3, p0, Landroid/widget/ListView;->mItemCount:I

    .line 1347
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v3, :cond_63

    if-eqz v0, :cond_2d

    if-nez v1, :cond_63

    .line 1349
    :cond_2d
    iget-object v3, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v4, v3}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 1353
    invoke-direct {p0, v3, v4, p1, p2}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1355
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1356
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1357
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    invoke-static {v4, v7}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    move-result v7

    .line 1359
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v8

    if-eqz v8, :cond_61

    iget-object v8, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1360
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/AbsListView$LayoutParams;

    iget v9, v9, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1359
    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 1361
    iget-object v8, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v8, v3, v4}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1365
    :cond_61
    move v4, v7

    goto :goto_65

    :cond_63
    move v5, v4

    move v6, v5

    :goto_65
    if-nez v0, :cond_77

    .line 1366
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    add-int/2addr v0, v5

    .line 1367
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_7b

    .line 1369
    :cond_77
    const/high16 v0, -0x1000000

    and-int/2addr v0, v4

    or-int/2addr v0, v2

    .line 1372
    :goto_7b
    if-nez v1, :cond_90

    .line 1373
    iget-object p2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v2

    add-int/2addr p2, v6

    .line 1374
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    move v6, p2

    goto :goto_91

    .line 1372
    :cond_90
    move v6, p2

    .line 1377
    :goto_91
    const/high16 p2, -0x80000000

    if-ne v1, p2, :cond_9f

    .line 1379
    const/4 v5, -0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v6

    goto :goto_a1

    .line 1377
    :cond_9f
    move-object v2, p0

    move v3, p1

    .line 1382
    :goto_a1
    invoke-virtual {p0, v0, v6}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 1384
    iput v3, v2, Landroid/widget/ListView;->mWidthMeasureSpec:I

    .line 1385
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 9

    .line 1316
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3b

    .line 1317
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1318
    if-eqz v0, :cond_3b

    .line 1319
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1320
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1321
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    sub-int v3, p2, v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1322
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v2

    .line 1323
    iget-object v2, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v2, :cond_32

    .line 1324
    new-instance v2, Landroid/widget/ListView$FocusSelector;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView-IA;)V

    iput-object v2, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1326
    :cond_32
    iget-object v2, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v2, v1, v0}, Landroid/widget/ListView$FocusSelector;->setupForSetSelection(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1329
    :cond_3b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1330
    return-void
.end method

.method greylist-max-o pageScroll(I)Z
    .registers 6

    .line 2576
    const/16 v0, 0x21

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_14

    .line 2577
    iget p1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2578
    move v0, v1

    goto :goto_28

    .line 2579
    :cond_14
    const/16 v0, 0x82

    if-ne p1, v0, :cond_67

    .line 2580
    iget p1, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr p1, v2

    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    add-int/2addr v0, v3

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2581
    move v0, v2

    .line 2586
    :goto_28
    if-ltz p1, :cond_66

    .line 2587
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, p1, v0}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result p1

    .line 2588
    if-ltz p1, :cond_66

    .line 2589
    const/4 v1, 0x4

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2590
    iget v1, p0, Landroid/widget/ListView;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 2592
    if-eqz v0, :cond_4c

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    sub-int/2addr v1, v3

    if-le p1, v1, :cond_4c

    .line 2593
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2596
    :cond_4c
    if-nez v0, :cond_56

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_56

    .line 2597
    iput v2, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2600
    :cond_56
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2601
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2602
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_65

    .line 2603
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2606
    :cond_65
    return v2

    .line 2610
    :cond_66
    return v1

    .line 2583
    :cond_67
    return v1
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 5

    .line 4179
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 4180
    return v1

    .line 4183
    :cond_8
    packed-switch p1, :pswitch_data_24

    goto :goto_22

    .line 4185
    :pswitch_c
    const-string p1, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 4186
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 4187
    if-ltz p1, :cond_22

    .line 4190
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 4191
    return v1

    .line 4196
    :cond_22
    :goto_22
    const/4 p1, 0x0

    return p1

    :pswitch_data_24
    .packed-switch 0x1020037
        :pswitch_c
    .end packed-switch
.end method

.method protected greylist-max-o recycleOnMeasure()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .line 1420
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist removeFooterView(Landroid/view/View;)Z
    .registers 4

    .line 562
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_28

    .line 563
    nop

    .line 564
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 565
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_21

    .line 566
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 568
    :cond_21
    const/4 v1, 0x1

    .line 570
    :cond_22
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 571
    return v1

    .line 573
    :cond_28
    return v1
.end method

.method public whitelist removeHeaderView(Landroid/view/View;)Z
    .registers 4

    .line 461
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_28

    .line 462
    nop

    .line 463
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 464
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_21

    .line 465
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 467
    :cond_21
    const/4 v1, 0x1

    .line 469
    :cond_22
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 470
    return v1

    .line 472
    :cond_28
    return v1
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 11

    .line 723
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 726
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 727
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 729
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    .line 730
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v1

    .line 731
    add-int v2, v1, v0

    .line 732
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v3

    .line 734
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 736
    iget v4, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-gtz v4, :cond_34

    if-le p3, v3, :cond_35

    .line 737
    :cond_34
    add-int/2addr v1, v3

    .line 741
    :cond_35
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p3

    .line 742
    const/4 v4, 0x1

    sub-int/2addr p3, v4

    invoke-virtual {p0, p3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    .line 744
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 746
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v6, v4

    if-lt v5, v6, :cond_56

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v6, p3, v3

    if-ge v5, v6, :cond_57

    .line 748
    :cond_56
    sub-int/2addr v2, v3

    .line 752
    :cond_57
    nop

    .line 754
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    if-le v3, v2, :cond_76

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-le v3, v1, :cond_76

    .line 759
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v3, v0, :cond_6c

    .line 761
    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    add-int/2addr p2, v5

    goto :goto_70

    .line 764
    :cond_6c
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v2

    add-int/2addr p2, v5

    .line 768
    :goto_70
    sub-int/2addr p3, v2

    .line 769
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 770
    goto :goto_9f

    :cond_76
    iget p3, p2, Landroid/graphics/Rect;->top:I

    if-ge p3, v1, :cond_9e

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    if-ge p3, v2, :cond_9e

    .line 775
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-le p3, v0, :cond_8a

    .line 777
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p2

    rsub-int/lit8 p2, v2, 0x0

    goto :goto_90

    .line 780
    :cond_8a
    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int p2, v1, p2

    rsub-int/lit8 p2, p2, 0x0

    .line 784
    :goto_90
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    .line 785
    sub-int/2addr p3, v1

    .line 786
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_9f

    .line 789
    :cond_9e
    move p2, v5

    :goto_9f
    if-eqz p2, :cond_a2

    goto :goto_a3

    :cond_a2
    move v4, v5

    .line 790
    :goto_a3
    if-eqz v4, :cond_b6

    .line 791
    neg-int p2, p2

    invoke-direct {p0, p2}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 792
    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 793
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 794
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 796
    :cond_b6
    return v4
.end method

.method greylist-max-o resetList()V
    .registers 2

    .line 675
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 676
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 678
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 680
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 681
    return-void
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 148
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    .line 615
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_f

    .line 616
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 619
    :cond_f
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 620
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 622
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2b

    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    goto :goto_2b

    .line 625
    :cond_28
    iput-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_35

    .line 623
    :cond_2b
    :goto_2b
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 628
    :goto_35
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mOldSelectedPosition:I

    .line 629
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/ListView;->mOldSelectedRowId:J

    .line 632
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 634
    iget-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v0, 0x1

    if-eqz p1, :cond_93

    .line 635
    iget-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 636
    iget p1, p0, Landroid/widget/ListView;->mItemCount:I

    iput p1, p0, Landroid/widget/ListView;->mOldItemCount:I

    .line 637
    iget-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    iput p1, p0, Landroid/widget/ListView;->mItemCount:I

    .line 638
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 640
    new-instance p1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {p1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object p1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 641
    iget-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 643
    iget-object p1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 646
    iget-boolean p1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_81

    .line 647
    iget p1, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    goto :goto_85

    .line 649
    :cond_81
    invoke-virtual {p0, v1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 651
    :goto_85
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 652
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 654
    iget p1, p0, Landroid/widget/ListView;->mItemCount:I

    if-nez p1, :cond_92

    .line 656
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 658
    :cond_92
    goto :goto_9b

    .line 659
    :cond_93
    iput-boolean v0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 660
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 662
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 665
    :goto_9b
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 666
    return-void
.end method

.method public whitelist setCacheColorHint(I)V
    .registers 4

    .line 3454
    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 3455
    :goto_9
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3456
    if-eqz v0, :cond_1d

    .line 3457
    iget-object v0, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_18

    .line 3458
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3460
    :cond_18
    iget-object v0, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3462
    :cond_1d
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3463
    return-void
.end method

.method public whitelist setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 3715
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 3716
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_c

    .line 3718
    :cond_a
    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3720
    :goto_c
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3721
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_18

    :cond_17
    const/4 v0, 0x1

    :cond_18
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3722
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3723
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3724
    return-void
.end method

.method public whitelist setDividerHeight(I)V
    .registers 2

    .line 3741
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3742
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3743
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3744
    return-void
.end method

.method public whitelist setFooterDividersEnabled(Z)V
    .registers 2

    .line 3780
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3781
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3782
    return-void
.end method

.method public whitelist setHeaderDividersEnabled(Z)V
    .registers 2

    .line 3756
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3757
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3758
    return-void
.end method

.method public whitelist setItemsCanFocus(Z)V
    .registers 2

    .line 3417
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 3418
    if-nez p1, :cond_9

    .line 3419
    const/high16 p1, 0x60000

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 3421
    :cond_9
    return-void
.end method

.method public whitelist setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 3822
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3823
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3824
    return-void
.end method

.method public whitelist setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 3801
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3802
    iget p1, p0, Landroid/widget/ListView;->mScrollY:I

    if-gez p1, :cond_9

    .line 3803
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3805
    :cond_9
    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .line 597
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 598
    return-void
.end method

.method public whitelist setSelection(I)V
    .registers 3

    .line 2260
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2261
    return-void
.end method

.method public whitelist setSelectionAfterHeaderView()V
    .registers 3

    .line 2386
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 2387
    if-lez v0, :cond_a

    .line 2388
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2389
    return-void

    .line 2392
    :cond_a
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_12

    .line 2393
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_17

    .line 2395
    :cond_12
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2396
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2399
    :goto_17
    return-void
.end method

.method greylist setSelectionInt(I)V
    .registers 5

    .line 2271
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2272
    nop

    .line 2274
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2276
    if-ltz v0, :cond_12

    .line 2277
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_e

    .line 2278
    goto :goto_13

    .line 2279
    :cond_e
    add-int/2addr v0, v2

    if-ne p1, v0, :cond_12

    .line 2280
    goto :goto_13

    .line 2284
    :cond_12
    const/4 v2, 0x0

    :goto_13
    iget-object p1, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz p1, :cond_1c

    .line 2285
    iget-object p1, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 2288
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2290
    if-eqz v2, :cond_24

    .line 2291
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2293
    :cond_24
    return-void
.end method

.method public whitelist smoothScrollByOffset(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1085
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 1086
    return-void
.end method

.method public whitelist smoothScrollToPosition(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1075
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 1076
    return-void
.end method

.method greylist-max-r trackMotionScroll(II)Z
    .registers 3

    .line 2040
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result p1

    .line 2041
    iget-object p2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 2042
    iget-object p2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 2043
    return p1
.end method

.method protected greylist-max-o wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")",
            "Landroid/widget/HeaderViewListAdapter;"
        }
    .end annotation

    .line 4225
    new-instance v0, Landroid/widget/HeaderViewListAdapter;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method protected greylist-max-o wrapHeaderListAdapterInternal()V
    .registers 4

    .line 4230
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4231
    return-void
.end method
