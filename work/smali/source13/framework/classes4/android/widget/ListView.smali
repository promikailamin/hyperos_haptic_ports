.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$FixedViewInfo;
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

.field greylist-max-o mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 220
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 223
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 224
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 228
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 231
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

    invoke-direct {v2, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$ArrowScrollFocusResult-IA;)V

    iput-object v2, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 233
    sget-object v2, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 235
    .local v2, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->ListView:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/ListView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 238
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 239
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_48

    .line 240
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090003

    invoke-direct {v4, p1, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 243
    :cond_48
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 244
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_51

    .line 247
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 250
    :cond_51
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 251
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_5b

    .line 252
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 255
    :cond_5b
    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 256
    .local v6, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_65

    .line 257
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 261
    :cond_65
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 262
    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 264
    .local v1, "dividerHeight":I
    if-eqz v1, :cond_75

    .line 265
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 269
    .end local v1    # "dividerHeight":I
    :cond_75
    const/4 v1, 0x3

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 270
    const/4 v1, 0x4

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 272
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 273
    return-void
.end method

.method private greylist-max-o addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .registers 14
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 3337
    add-int/lit8 v8, p2, -0x1

    .line 3338
    .local v8, "abovePosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v8, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    .line 3339
    .local v9, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v10, v0, v1

    .line 3340
    .local v10, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v9

    move v2, v8

    move v3, v10

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3342
    return-object v9
.end method

.method private greylist-max-o addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .registers 14
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 3346
    add-int/lit8 v8, p2, 0x1

    .line 3347
    .local v8, "belowPosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v8, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    .line 3348
    .local v9, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v10, v0, v1

    .line 3349
    .local v10, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v9

    move v2, v8

    move v3, v10

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3351
    return-object v9
.end method

.method private greylist-max-o adjustViewsUpOrDown()V
    .registers 6

    .line 288
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 291
    .local v0, "childCount":I
    if-lez v0, :cond_4a

    .line 294
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_23

    .line 297
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 298
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 299
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-eqz v3, :cond_1f

    .line 302
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 304
    :cond_1f
    if-gez v2, :cond_44

    .line 306
    const/4 v2, 0x0

    goto :goto_44

    .line 310
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_23
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 311
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 313
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v3, v4, :cond_41

    .line 316
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 319
    :cond_41
    if-lez v2, :cond_44

    .line 320
    const/4 v2, 0x0

    .line 324
    :cond_44
    :goto_44
    if-eqz v2, :cond_4a

    .line 325
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 328
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_4a
    return-void
.end method

.method private greylist-max-o amountToScroll(II)I
    .registers 13
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .line 2938
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 2939
    .local v0, "listBottom":I
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 2941
    .local v1, "listTop":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 2943
    .local v2, "numChildren":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x82

    if-ne p1, v5, :cond_7f

    .line 2944
    add-int/lit8 v5, v2, -0x1

    .line 2945
    .local v5, "indexToMakeVisible":I
    if-eq p2, v3, :cond_1f

    .line 2946
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v5, p2, v6

    .line 2948
    :cond_1f
    :goto_1f
    if-gt v2, v5, :cond_32

    .line 2950
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v6, v7}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    .line 2951
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 2953
    :cond_32
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v6, v5

    .line 2954
    .local v6, "positionToMakeVisible":I
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2956
    .local v7, "viewToMakeVisible":Landroid/view/View;
    move v8, v0

    .line 2957
    .local v8, "goalBottom":I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_45

    .line 2958
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v9

    sub-int/2addr v8, v9

    .line 2961
    :cond_45
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-gt v9, v8, :cond_4c

    .line 2963
    return v4

    .line 2966
    :cond_4c
    if-eq p2, v3, :cond_5b

    .line 2967
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v8, v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v3, v9, :cond_5b

    .line 2969
    return v4

    .line 2972
    :cond_5b
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v8

    .line 2974
    .local v3, "amountToScroll":I
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v2

    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    if-ne v4, v9, :cond_76

    .line 2976
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v4, v0

    .line 2977
    .local v4, "max":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2980
    .end local v4    # "max":I
    :cond_76
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4

    .line 2982
    .end local v3    # "amountToScroll":I
    .end local v5    # "indexToMakeVisible":I
    .end local v6    # "positionToMakeVisible":I
    .end local v7    # "viewToMakeVisible":Landroid/view/View;
    .end local v8    # "goalBottom":I
    :cond_7f
    const/4 v5, 0x0

    .line 2983
    .restart local v5    # "indexToMakeVisible":I
    if-eq p2, v3, :cond_86

    .line 2984
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v5, p2, v6

    .line 2986
    :cond_86
    :goto_86
    if-gez v5, :cond_9c

    .line 2988
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v6, v7}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    .line 2989
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 2990
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v5, p2, v6

    goto :goto_86

    .line 2992
    :cond_9c
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v6, v5

    .line 2993
    .restart local v6    # "positionToMakeVisible":I
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2994
    .restart local v7    # "viewToMakeVisible":Landroid/view/View;
    move v8, v1

    .line 2995
    .local v8, "goalTop":I
    if-lez v6, :cond_ab

    .line 2996
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v9

    add-int/2addr v8, v9

    .line 2998
    :cond_ab
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v9, v8, :cond_b2

    .line 3000
    return v4

    .line 3003
    :cond_b2
    if-eq p2, v3, :cond_c0

    .line 3004
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v3, v9, :cond_c0

    .line 3006
    return v4

    .line 3009
    :cond_c0
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v8, v3

    .line 3010
    .restart local v3    # "amountToScroll":I
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v9, :cond_d8

    .line 3012
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v1, v4

    .line 3013
    .restart local v4    # "max":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3015
    .end local v4    # "max":I
    :cond_d8
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4
.end method

.method private greylist-max-o amountToScrollToNewFocus(ILandroid/view/View;I)I
    .registers 7
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .line 3207
    const/4 v0, 0x0

    .line 3208
    .local v0, "amountToScroll":I
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3209
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3210
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2b

    .line 3211
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_4b

    .line 3212
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v2

    .line 3213
    if-lez p3, :cond_4b

    .line 3214
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4b

    .line 3218
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 3219
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_4b

    .line 3220
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 3221
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_4b

    .line 3222
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3226
    .end local v1    # "listBottom":I
    :cond_4b
    :goto_4b
    return v0
.end method

.method private greylist-max-o arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .registers 9
    .param p1, "direction"    # I

    .line 3105
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 3107
    .local v0, "selectedView":Landroid/view/View;
    const/16 v1, 0x82

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3108
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 3109
    .local v2, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 3110
    .local v2, "newFocus":Landroid/view/View;
    goto/16 :goto_86

    .line 3111
    .end local v2    # "newFocus":Landroid/view/View;
    :cond_1c
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_48

    .line 3112
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v4, :cond_25

    goto :goto_26

    :cond_25
    move v2, v3

    .line 3113
    .local v2, "topFadingEdgeShowing":Z
    :goto_26
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 3114
    if-eqz v2, :cond_31

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_32

    :cond_31
    move v5, v3

    :goto_32
    add-int/2addr v4, v5

    .line 3116
    .local v4, "listTop":I
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v4, :cond_40

    .line 3117
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_41

    .line 3118
    :cond_40
    move v5, v4

    :goto_41
    nop

    .line 3119
    .local v5, "ySearchPoint":I
    iget-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v5, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3120
    .end local v2    # "topFadingEdgeShowing":Z
    .end local v4    # "listTop":I
    .end local v5    # "ySearchPoint":I
    goto :goto_7c

    .line 3121
    :cond_48
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3122
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v4, v5, :cond_55

    goto :goto_56

    :cond_55
    move v2, v3

    .line 3123
    .local v2, "bottomFadingEdgeShowing":Z
    :goto_56
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 3124
    if-eqz v2, :cond_66

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_67

    :cond_66
    move v5, v3

    :goto_67
    sub-int/2addr v4, v5

    .line 3126
    .local v4, "listBottom":I
    if-eqz v0, :cond_75

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v4, :cond_75

    .line 3127
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    goto :goto_76

    .line 3128
    :cond_75
    move v5, v4

    :goto_76
    nop

    .line 3129
    .restart local v5    # "ySearchPoint":I
    iget-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v5, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3131
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .end local v5    # "ySearchPoint":I
    :goto_7c
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v2

    .line 3134
    .local v2, "newFocus":Landroid/view/View;
    :goto_86
    const/4 v3, 0x0

    if-eqz v2, :cond_cd

    .line 3135
    invoke-direct {p0, v2}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v4

    .line 3139
    .local v4, "positionOfNewFocus":I
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a7

    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v4, v5, :cond_a7

    .line 3140
    invoke-direct {p0, p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v5

    .line 3141
    .local v5, "selectablePosition":I
    if-eq v5, v6, :cond_a7

    if-ne p1, v1, :cond_a0

    if-lt v5, v4, :cond_a6

    :cond_a0
    const/16 v1, 0x21

    if-ne p1, v1, :cond_a7

    if-le v5, v4, :cond_a7

    .line 3144
    :cond_a6
    return-object v3

    .line 3148
    .end local v5    # "selectablePosition":I
    :cond_a7
    invoke-direct {p0, p1, v2, v4}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v1

    .line 3150
    .local v1, "focusScroll":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v5

    .line 3151
    .local v5, "maxScrollAmount":I
    if-ge v1, v5, :cond_bc

    .line 3153
    invoke-virtual {v2, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 3154
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v3, v4, v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3155
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object v3

    .line 3156
    :cond_bc
    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-ge v6, v5, :cond_cd

    .line 3161
    invoke-virtual {v2, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 3162
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3163
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object v3

    .line 3166
    .end local v1    # "focusScroll":I
    .end local v4    # "positionOfNewFocus":I
    .end local v5    # "maxScrollAmount":I
    :cond_cd
    return-object v3
.end method

.method private greylist-max-o arrowScrollImpl(I)Z
    .registers 13
    .param p1, "direction"    # I

    .line 2719
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    .line 2720
    return v1

    .line 2723
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2724
    .local v0, "selectedView":Landroid/view/View;
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2726
    .local v2, "selectedPos":I
    invoke-direct {p0, v0, v2, p1}, Landroid/widget/ListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v3

    .line 2727
    .local v3, "nextSelectedPosition":I
    invoke-direct {p0, p1, v3}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v4

    .line 2730
    .local v4, "amountToScroll":I
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_1f

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v5

    goto :goto_20

    :cond_1f
    const/4 v5, 0x0

    .line 2731
    .local v5, "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    :goto_20
    if-eqz v5, :cond_2a

    .line 2732
    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v3

    .line 2733
    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v4

    .line 2736
    :cond_2a
    const/4 v6, 0x1

    if-eqz v5, :cond_2f

    move v7, v6

    goto :goto_30

    :cond_2f
    move v7, v1

    .line 2737
    .local v7, "needToRedraw":Z
    :goto_30
    const/4 v8, -0x1

    if-eq v3, v8, :cond_59

    .line 2738
    if-eqz v5, :cond_37

    move v9, v6

    goto :goto_38

    :cond_37
    move v9, v1

    :goto_38
    invoke-direct {p0, v0, p1, v3, v9}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2739
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 2740
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2741
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2742
    move v2, v3

    .line 2743
    iget-boolean v9, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v9, :cond_55

    if-nez v5, :cond_55

    .line 2746
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v9

    .line 2747
    .local v9, "focused":Landroid/view/View;
    if-eqz v9, :cond_55

    .line 2748
    invoke-virtual {v9}, Landroid/view/View;->clearFocus()V

    .line 2751
    .end local v9    # "focused":Landroid/view/View;
    :cond_55
    const/4 v7, 0x1

    .line 2752
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2755
    :cond_59
    if-lez v4, :cond_66

    .line 2756
    const/16 v9, 0x21

    if-ne p1, v9, :cond_61

    move v9, v4

    goto :goto_62

    :cond_61
    neg-int v9, v4

    :goto_62
    invoke-direct {p0, v9}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 2757
    const/4 v7, 0x1

    .line 2762
    :cond_66
    iget-boolean v9, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v9, :cond_89

    if-nez v5, :cond_89

    if-eqz v0, :cond_89

    .line 2763
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v9

    if-eqz v9, :cond_89

    .line 2764
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v9

    .line 2765
    .restart local v9    # "focused":Landroid/view/View;
    if-eqz v9, :cond_89

    .line 2766
    invoke-direct {p0, v9, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_86

    invoke-direct {p0, v9}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v10

    if-lez v10, :cond_89

    .line 2767
    :cond_86
    invoke-virtual {v9}, Landroid/view/View;->clearFocus()V

    .line 2773
    .end local v9    # "focused":Landroid/view/View;
    :cond_89
    if-ne v3, v8, :cond_99

    if-eqz v0, :cond_99

    .line 2774
    invoke-direct {p0, v0, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_99

    .line 2775
    const/4 v0, 0x0

    .line 2776
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    .line 2780
    iput v8, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    .line 2783
    :cond_99
    if-eqz v7, :cond_b3

    .line 2784
    if-eqz v0, :cond_a6

    .line 2785
    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 2786
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 2788
    :cond_a6
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_af

    .line 2789
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2791
    :cond_af
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2792
    return v6

    .line 2795
    :cond_b3
    return v1
.end method

.method private greylist-max-o clearRecycledState(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 628
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_24

    .line 629
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 631
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_24

    .line 632
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 633
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 634
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 635
    move-object v4, v3

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 631
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 639
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_24
    return-void
.end method

.method private greylist-max-o commonKey(IILandroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2377
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b0

    invoke-virtual {p0}, Landroid/widget/ListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_1b0

    .line 2381
    :cond_d
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-eqz v0, :cond_14

    .line 2382
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2385
    :cond_14
    const/4 v0, 0x0

    .line 2386
    .local v0, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 2387
    .local v2, "action":I
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3e

    .line 2388
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_3e

    if-eq v2, v4, :cond_3e

    .line 2389
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 2390
    if-nez v0, :cond_3e

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3e

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3e

    .line 2391
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    .line 2392
    const/4 v0, 0x1

    .line 2397
    :cond_3e
    if-nez v0, :cond_193

    if-eq v2, v4, :cond_193

    .line 2398
    const/4 v3, 0x2

    const/16 v5, 0x21

    const/16 v6, 0x82

    sparse-switch p1, :sswitch_data_1b2

    goto/16 :goto_193

    .line 2468
    :sswitch_4c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2469
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_61

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_5f

    goto :goto_61

    :cond_5f
    move v3, v1

    goto :goto_62

    :cond_61
    :goto_61
    move v3, v4

    :goto_62
    move v0, v3

    goto/16 :goto_193

    .line 2462
    :sswitch_65
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2463
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_7a

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_78

    goto :goto_7a

    :cond_78
    move v3, v1

    goto :goto_7b

    :cond_7a
    :goto_7a
    move v3, v4

    :goto_7b
    move v0, v3

    goto/16 :goto_193

    .line 2454
    :sswitch_7e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_97

    .line 2455
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_93

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_91

    goto :goto_93

    :cond_91
    move v3, v1

    goto :goto_94

    :cond_93
    :goto_93
    move v3, v4

    :goto_94
    move v0, v3

    goto/16 :goto_193

    .line 2456
    :cond_97
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2457
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_ac

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_aa

    goto :goto_ac

    :cond_aa
    move v3, v1

    goto :goto_ad

    :cond_ac
    :goto_ac
    move v3, v4

    :goto_ad
    move v0, v3

    goto/16 :goto_193

    .line 2446
    :sswitch_b0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 2447
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_c5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_c3

    goto :goto_c5

    :cond_c3
    move v3, v1

    goto :goto_c6

    :cond_c5
    :goto_c5
    move v3, v4

    :goto_c6
    move v0, v3

    goto/16 :goto_193

    .line 2448
    :cond_c9
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2449
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_de

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_dc

    goto :goto_de

    :cond_dc
    move v3, v1

    goto :goto_df

    :cond_de
    :goto_de
    move v3, v4

    :goto_df
    move v0, v3

    goto/16 :goto_193

    .line 2478
    :sswitch_e2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 2479
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_f7

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_f5

    goto :goto_f7

    :cond_f5
    move v3, v1

    goto :goto_f8

    :cond_f7
    :goto_f7
    move v3, v4

    :goto_f8
    move v0, v3

    goto/16 :goto_193

    .line 2480
    :cond_fb
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2481
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_110

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_10e

    goto :goto_110

    :cond_10e
    move v3, v1

    goto :goto_111

    :cond_110
    :goto_110
    move v3, v4

    :goto_111
    move v0, v3

    goto/16 :goto_193

    .line 2440
    :sswitch_114
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2441
    const/16 v3, 0x42

    invoke-direct {p0, v3}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v0

    goto/16 :goto_193

    .line 2434
    :sswitch_122
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2435
    const/16 v3, 0x11

    invoke-direct {p0, v3}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v0

    goto/16 :goto_193

    .line 2417
    :sswitch_130
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_149

    .line 2418
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 2419
    if-nez v0, :cond_193

    .line 2420
    :goto_13c
    add-int/lit8 v3, p2, -0x1

    .end local p2    # "count":I
    .local v3, "count":I
    if-lez p2, :cond_17a

    .line 2421
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_17a

    .line 2422
    const/4 v0, 0x1

    move p2, v3

    goto :goto_13c

    .line 2428
    .end local v3    # "count":I
    .restart local p2    # "count":I
    :cond_149
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2429
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_15e

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_15c

    goto :goto_15e

    :cond_15c
    move v3, v1

    goto :goto_15f

    :cond_15e
    :goto_15e
    move v3, v4

    :goto_15f
    move v0, v3

    goto :goto_193

    .line 2400
    :sswitch_161
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_17c

    .line 2401
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 2402
    if-nez v0, :cond_193

    .line 2403
    :goto_16d
    add-int/lit8 v3, p2, -0x1

    .end local p2    # "count":I
    .restart local v3    # "count":I
    if-lez p2, :cond_17a

    .line 2404
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_17a

    .line 2405
    const/4 v0, 0x1

    move p2, v3

    goto :goto_16d

    .line 2487
    :cond_17a
    move p2, v3

    goto :goto_193

    .line 2411
    .end local v3    # "count":I
    .restart local p2    # "count":I
    :cond_17c
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2412
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_191

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_18f

    goto :goto_191

    :cond_18f
    move v3, v1

    goto :goto_192

    :cond_191
    :goto_191
    move v3, v4

    :goto_192
    move v0, v3

    .line 2487
    :cond_193
    :goto_193
    if-eqz v0, :cond_196

    .line 2488
    return v4

    .line 2491
    :cond_196
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_19d

    .line 2492
    return v4

    .line 2495
    :cond_19d
    packed-switch v2, :pswitch_data_1d8

    .line 2506
    return v1

    .line 2503
    :pswitch_1a1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2500
    :pswitch_1a6
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2497
    :pswitch_1ab
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2378
    .end local v0    # "handled":Z
    .end local v2    # "action":I
    :cond_1b0
    :goto_1b0
    return v1

    nop

    :sswitch_data_1b2
    .sparse-switch
        0x13 -> :sswitch_161
        0x14 -> :sswitch_130
        0x15 -> :sswitch_122
        0x16 -> :sswitch_114
        0x3d -> :sswitch_e2
        0x5c -> :sswitch_b0
        0x5d -> :sswitch_7e
        0x7a -> :sswitch_65
        0x7b -> :sswitch_4c
    .end sparse-switch

    :pswitch_data_1d8
    .packed-switch 0x0
        :pswitch_1ab
        :pswitch_1a6
        :pswitch_1a1
    .end packed-switch
.end method

.method private greylist-max-p correctTooHigh(I)V
    .registers 12
    .param p1, "childCount"    # I

    .line 1540
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1541
    .local v0, "lastPosition":I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5d

    if-lez p1, :cond_5d

    .line 1544
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1547
    .local v1, "lastChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1550
    .local v2, "lastBottom":I
    iget v3, p0, Landroid/widget/ListView;->mBottom:I

    iget v4, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1554
    .local v3, "end":I
    sub-int v4, v3, v2

    .line 1555
    .local v4, "bottomOffset":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1556
    .local v5, "firstChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1560
    .local v6, "firstTop":I
    if-lez v4, :cond_5d

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v7, :cond_38

    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_5d

    .line 1561
    :cond_38
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v7, :cond_45

    .line 1563
    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v6

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1566
    :cond_45
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1567
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v7, :cond_5d

    .line 1570
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1572
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1577
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v2    # "lastBottom":I
    .end local v3    # "end":I
    .end local v4    # "bottomOffset":I
    .end local v5    # "firstChild":Landroid/view/View;
    .end local v6    # "firstTop":I
    :cond_5d
    return-void
.end method

.method private greylist-max-p correctTooLow(I)V
    .registers 13
    .param p1, "childCount"    # I

    .line 1590
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v0, :cond_68

    if-lez p1, :cond_68

    .line 1593
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1596
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1599
    .local v1, "firstTop":I
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 1602
    .local v2, "start":I
    iget v3, p0, Landroid/widget/ListView;->mBottom:I

    iget v4, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1606
    .local v3, "end":I
    sub-int v4, v1, v2

    .line 1607
    .local v4, "topOffset":I
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1608
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1609
    .local v6, "lastBottom":I
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v7, v7, -0x1

    .line 1613
    .local v7, "lastPosition":I
    if-lez v4, :cond_68

    .line 1614
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_43

    if-le v6, v3, :cond_39

    goto :goto_43

    .line 1628
    :cond_39
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_68

    .line 1629
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_68

    .line 1615
    :cond_43
    :goto_43
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_4f

    .line 1617
    sub-int v8, v6, v3

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1620
    :cond_4f
    neg-int v8, v4

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1621
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_68

    .line 1624
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1626
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1633
    .end local v0    # "firstChild":Landroid/view/View;
    .end local v1    # "firstTop":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "topOffset":I
    .end local v5    # "lastChild":Landroid/view/View;
    .end local v6    # "lastBottom":I
    .end local v7    # "lastPosition":I
    :cond_68
    :goto_68
    return-void
.end method

.method private greylist-max-o distanceToView(Landroid/view/View;)I
    .registers 6
    .param p1, "descendant"    # Landroid/view/View;

    .line 3237
    const/4 v0, 0x0

    .line 3238
    .local v0, "distance":I
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3239
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3240
    iget v1, p0, Landroid/widget/ListView;->mBottom:I

    iget v2, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 3241
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2a

    .line 3242
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    goto :goto_36

    .line 3243
    :cond_2a
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_36

    .line 3244
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    .line 3246
    :cond_36
    :goto_36
    return v0
.end method

.method private greylist-max-o fillAboveAndBelow(Landroid/view/View;I)V
    .registers 6
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 902
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 903
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_1e

    .line 904
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 905
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 906
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    goto :goto_35

    .line 908
    :cond_1e
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 909
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 910
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 912
    :goto_35
    return-void
.end method

.method private greylist-max-p fillDown(II)Landroid/view/View;
    .registers 12
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .line 783
    const/4 v0, 0x0

    .line 785
    .local v0, "selectedView":Landroid/view/View;
    iget v1, p0, Landroid/widget/ListView;->mBottom:I

    iget v2, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    .line 786
    .local v1, "end":I
    iget v2, p0, Landroid/widget/ListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_12

    .line 787
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 790
    :cond_12
    :goto_12
    const/4 v2, 0x1

    if-ge p2, v1, :cond_3c

    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge p1, v3, :cond_3c

    .line 792
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    move v8, v2

    .line 793
    .local v8, "selected":Z
    const/4 v5, 0x1

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    .line 795
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v3, v4

    .line 796
    if-eqz v8, :cond_38

    .line 797
    move-object v0, v2

    .line 799
    :cond_38
    nop

    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "selected":Z
    add-int/lit8 p1, p1, 0x1

    .line 800
    goto :goto_12

    .line 802
    :cond_3c
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 803
    return-object v0
.end method

.method private greylist-max-o fillFromMiddle(II)Landroid/view/View;
    .registers 11
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .line 870
    sub-int v0, p2, p1

    .line 872
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v7

    .line 874
    .local v7, "position":I
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 876
    .local v1, "sel":Landroid/view/View;
    iput v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 878
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 879
    .local v2, "selHeight":I
    if-gt v2, v0, :cond_22

    .line 880
    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 883
    :cond_22
    invoke-direct {p0, v1, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 885
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_31

    .line 886
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_38

    .line 888
    :cond_31
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 891
    :goto_38
    return-object v1
.end method

.method private greylist-max-o fillFromSelection(III)Landroid/view/View;
    .registers 14
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .line 926
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 927
    .local v0, "fadingEdgeLength":I
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 931
    .local v7, "selectedPosition":I
    invoke-direct {p0, p2, v0, v7}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v8

    .line 933
    .local v8, "topSelectionPixel":I
    invoke-direct {p0, p3, v0, v7}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v9

    .line 936
    .local v9, "bottomSelectionPixel":I
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 940
    .local v1, "sel":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v9, :cond_34

    .line 943
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v8

    .line 947
    .local v2, "spaceAbove":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v9

    .line 948
    .local v3, "spaceBelow":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 951
    .local v4, "offset":I
    neg-int v5, v4

    invoke-virtual {v1, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .end local v2    # "spaceAbove":I
    .end local v3    # "spaceBelow":I
    .end local v4    # "offset":I
    goto :goto_4e

    .line 952
    :cond_34
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-ge v2, v8, :cond_4e

    .line 955
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v8, v2

    .line 959
    .restart local v2    # "spaceAbove":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v3, v9, v3

    .line 960
    .restart local v3    # "spaceBelow":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 963
    .restart local v4    # "offset":I
    invoke-virtual {v1, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4f

    .line 952
    .end local v2    # "spaceAbove":I
    .end local v3    # "spaceBelow":I
    .end local v4    # "offset":I
    :cond_4e
    :goto_4e
    nop

    .line 967
    :goto_4f
    invoke-direct {p0, v1, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 969
    iget-boolean v2, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v2, :cond_5e

    .line 970
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_65

    .line 972
    :cond_5e
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 975
    :goto_65
    return-object v1
.end method

.method private greylist-max-o fillFromTop(I)Landroid/view/View;
    .registers 4
    .param p1, "nextTop"    # I

    .line 850
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 851
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 852
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gez v0, :cond_1d

    .line 853
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 855
    :cond_1d
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-p fillSpecific(II)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "top"    # I

    .line 1491
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 1492
    .local v0, "tempIsSelected":Z
    :goto_7
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 1494
    .local v1, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1499
    iget v2, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1500
    .local v2, "dividerHeight":I
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_3f

    .line 1501
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v3

    .line 1503
    .local v3, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1504
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {p0, v4, v5}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v4

    .line 1505
    .local v4, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 1506
    .local v5, "childCount":I
    if-lez v5, :cond_3e

    .line 1507
    invoke-direct {p0, v5}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1509
    .end local v5    # "childCount":I
    :cond_3e
    goto :goto_61

    .line 1510
    .end local v3    # "above":Landroid/view/View;
    .end local v4    # "below":Landroid/view/View;
    :cond_3f
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v4

    .line 1512
    .restart local v4    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1513
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-direct {p0, v3, v5}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v3

    .line 1514
    .restart local v3    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 1515
    .restart local v5    # "childCount":I
    if-lez v5, :cond_61

    .line 1516
    invoke-direct {p0, v5}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 1520
    .end local v5    # "childCount":I
    :cond_61
    :goto_61
    if-eqz v0, :cond_64

    .line 1521
    return-object v1

    .line 1522
    :cond_64
    if-eqz v3, :cond_67

    .line 1523
    return-object v3

    .line 1525
    :cond_67
    return-object v4
.end method

.method private greylist-max-p fillUp(II)Landroid/view/View;
    .registers 12
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .line 818
    const/4 v0, 0x0

    .line 820
    .local v0, "selectedView":Landroid/view/View;
    const/4 v1, 0x0

    .line 821
    .local v1, "end":I
    iget v2, p0, Landroid/widget/ListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_d

    .line 822
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 825
    :cond_d
    :goto_d
    const/4 v2, 0x1

    if-le p2, v1, :cond_35

    if-ltz p1, :cond_35

    .line 827
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    move v8, v2

    .line 828
    .local v8, "selected":Z
    const/4 v5, 0x0

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    .line 829
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v3, v4

    .line 830
    if-eqz v8, :cond_31

    .line 831
    move-object v0, v2

    .line 833
    :cond_31
    nop

    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "selected":Z
    add-int/lit8 p1, p1, -0x1

    .line 834
    goto :goto_d

    .line 836
    :cond_35
    add-int/lit8 v3, p1, 0x1

    iput v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 837
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 838
    return-object v0
.end method

.method private greylist-max-o getArrowScrollPreviewLength()I
    .registers 3

    .line 2922
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getBottomSelectionPixel(III)I
    .registers 6
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .line 988
    move v0, p1

    .line 989
    .local v0, "bottomSelectionPixel":I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_8

    .line 990
    sub-int/2addr v0, p2

    .line 992
    :cond_8
    return v0
.end method

.method private greylist-max-o getTopSelectionPixel(III)I
    .registers 5
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .line 1005
    move v0, p1

    .line 1006
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_4

    .line 1007
    add-int/2addr v0, p2

    .line 1009
    :cond_4
    return v0
.end method

.method private greylist-max-o handleHorizontalFocusWithinListItem(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 2607
    const/16 v0, 0x11

    if-eq p1, v0, :cond_11

    const/16 v0, 0x42

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 2608
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2612
    :cond_11
    :goto_11
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 2613
    .local v0, "numChildren":I
    iget-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v1, :cond_6d

    if-lez v0, :cond_6d

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6d

    .line 2614
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 2615
    .local v1, "selectedView":Landroid/view/View;
    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_6d

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_6d

    .line 2618
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2619
    .local v2, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2621
    .local v3, "nextFocus":Landroid/view/View;
    if-eqz v3, :cond_58

    .line 2623
    iget-object v4, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 2624
    .local v4, "focusedRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_4f

    .line 2625
    invoke-virtual {v2, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2626
    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2627
    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_50

    .line 2629
    :cond_4f
    const/4 v4, 0x0

    .line 2631
    :goto_50
    invoke-virtual {v3, p1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 2632
    const/4 v5, 0x1

    return v5

    .line 2639
    .end local v4    # "focusedRect":Landroid/graphics/Rect;
    :cond_58
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    .line 2640
    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 2639
    invoke-virtual {v4, v5, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2641
    .local v4, "globalNextFocus":Landroid/view/View;
    if-eqz v4, :cond_6d

    .line 2642
    invoke-direct {p0, v4, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    return v5

    .line 2646
    .end local v1    # "selectedView":Landroid/view/View;
    .end local v2    # "currentFocus":Landroid/view/View;
    .end local v3    # "nextFocus":Landroid/view/View;
    .end local v4    # "globalNextFocus":Landroid/view/View;
    :cond_6d
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o handleNewSelectionChange(Landroid/view/View;IIZ)V
    .registers 16
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .line 2813
    const/4 v0, -0x1

    if-eq p3, v0, :cond_45

    .line 2824
    const/4 v0, 0x0

    .line 2825
    .local v0, "topSelected":Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    .line 2826
    .local v1, "selectedIndex":I
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v2, p3, v2

    .line 2827
    .local v2, "nextSelectedIndex":I
    const/16 v3, 0x21

    if-ne p2, v3, :cond_1a

    .line 2828
    move v3, v2

    .line 2829
    .local v3, "topViewIndex":I
    move v4, v1

    .line 2830
    .local v4, "bottomViewIndex":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2831
    .local v5, "topView":Landroid/view/View;
    move-object v6, p1

    .line 2832
    .local v6, "bottomView":Landroid/view/View;
    const/4 v0, 0x1

    goto :goto_21

    .line 2834
    .end local v3    # "topViewIndex":I
    .end local v4    # "bottomViewIndex":I
    .end local v5    # "topView":Landroid/view/View;
    .end local v6    # "bottomView":Landroid/view/View;
    :cond_1a
    move v3, v1

    .line 2835
    .restart local v3    # "topViewIndex":I
    move v4, v2

    .line 2836
    .restart local v4    # "bottomViewIndex":I
    move-object v5, p1

    .line 2837
    .restart local v5    # "topView":Landroid/view/View;
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2840
    .restart local v6    # "bottomView":Landroid/view/View;
    :goto_21
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 2843
    .local v7, "numChildren":I
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_36

    .line 2844
    if-nez p4, :cond_2f

    if-eqz v0, :cond_2f

    move v10, v8

    goto :goto_30

    :cond_2f
    move v10, v9

    :goto_30
    invoke-virtual {v5, v10}, Landroid/view/View;->setSelected(Z)V

    .line 2845
    invoke-direct {p0, v5, v3, v7}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2849
    :cond_36
    if-eqz v6, :cond_44

    .line 2850
    if-nez p4, :cond_3d

    if-nez v0, :cond_3d

    goto :goto_3e

    :cond_3d
    move v8, v9

    :goto_3e
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2851
    invoke-direct {p0, v6, v4, v7}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2853
    :cond_44
    return-void

    .line 2814
    .end local v0    # "topSelected":Z
    .end local v1    # "selectedIndex":I
    .end local v2    # "nextSelectedIndex":I
    .end local v3    # "topViewIndex":I
    .end local v4    # "bottomViewIndex":I
    .end local v5    # "topView":Landroid/view/View;
    .end local v6    # "bottomView":Landroid/view/View;
    .end local v7    # "numChildren":I
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newSelectedPosition needs to be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .registers 9
    .param p1, "child"    # Landroid/view/View;

    .line 2018
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2019
    .local v0, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2020
    .local v1, "numHeaders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    const/4 v3, 0x1

    if-ge v2, v1, :cond_18

    .line 2021
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView$FixedViewInfo;

    iget-object v4, v4, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v4, :cond_15

    .line 2022
    return v3

    .line 2020
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2026
    .end local v2    # "i":I
    :cond_18
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2027
    .local v2, "footers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2028
    .local v4, "numFooters":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f
    if-ge v5, v4, :cond_2f

    .line 2029
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView$FixedViewInfo;

    iget-object v6, v6, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v6, :cond_2c

    .line 2030
    return v3

    .line 2028
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 2034
    .end local v5    # "i":I
    :cond_2f
    const/4 v3, 0x0

    return v3
.end method

.method private greylist-max-o isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .line 3189
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 3190
    return v0

    .line 3193
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3194
    .local v1, "theParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private greylist-max-o lookForSelectablePositionOnScreen(I)I
    .registers 9
    .param p1, "direction"    # I

    .line 3052
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3053
    .local v0, "firstPosition":I
    const/4 v1, -0x1

    const/16 v2, 0x82

    if-ne p1, v2, :cond_40

    .line 3054
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v2, v1, :cond_10

    .line 3055
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 3056
    :cond_10
    move v2, v0

    :goto_11
    nop

    .line 3057
    .local v2, "startPos":I
    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_1b

    .line 3058
    return v1

    .line 3060
    :cond_1b
    if-ge v2, v0, :cond_1e

    .line 3061
    move v2, v0

    .line 3064
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 3065
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 3066
    .local v4, "adapter":Landroid/widget/ListAdapter;
    move v5, v2

    .local v5, "pos":I
    :goto_27
    if-gt v5, v3, :cond_3f

    .line 3067
    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3c

    sub-int v6, v5, v0

    .line 3068
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3c

    .line 3069
    return v5

    .line 3066
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 3072
    .end local v2    # "startPos":I
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "pos":I
    :cond_3f
    goto :goto_83

    .line 3073
    :cond_40
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 3074
    .local v2, "last":I
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v3, v1, :cond_50

    .line 3075
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_57

    .line 3076
    :cond_50
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_57
    nop

    .line 3077
    .local v3, "startPos":I
    if-ltz v3, :cond_84

    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_63

    goto :goto_84

    .line 3080
    :cond_63
    if-le v3, v2, :cond_66

    .line 3081
    move v3, v2

    .line 3084
    :cond_66
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 3085
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    move v5, v3

    .restart local v5    # "pos":I
    :goto_6b
    if-lt v5, v0, :cond_83

    .line 3086
    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_80

    sub-int v6, v5, v0

    .line 3087
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_80

    .line 3088
    return v5

    .line 3085
    :cond_80
    add-int/lit8 v5, v5, -0x1

    goto :goto_6b

    .line 3092
    .end local v2    # "last":I
    .end local v3    # "startPos":I
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "pos":I
    :cond_83
    :goto_83
    return v1

    .line 3078
    .restart local v2    # "last":I
    .restart local v3    # "startPos":I
    :cond_84
    :goto_84
    return v1
.end method

.method private greylist makeAndAddView(IIZIZ)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z

    .line 2054
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v0, :cond_18

    .line 2056
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v0

    .line 2057
    .local v0, "activeView":Landroid/view/View;
    if-eqz v0, :cond_18

    .line 2060
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2061
    return-object v0

    .line 2067
    .end local v0    # "activeView":Landroid/view/View;
    :cond_18
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 2070
    .local v0, "child":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v8, v1, v2

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2072
    return-object v0
.end method

.method private greylist-max-o measureAndAdjustDown(Landroid/view/View;II)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .line 2863
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2864
    .local v0, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 2865
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-eq v1, v0, :cond_23

    .line 2867
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2870
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2871
    .local v1, "heightDelta":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_17
    if-ge v2, p3, :cond_23

    .line 2872
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2871
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2875
    .end local v1    # "heightDelta":I
    .end local v2    # "i":I
    :cond_23
    return-void
.end method

.method private greylist-max-o measureItem(Landroid/view/View;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;

    .line 2883
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2884
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_e

    .line 2885
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 2890
    :cond_e
    iget v1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2892
    .local v1, "childWidthSpec":I
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2894
    .local v2, "lpHeight":I
    if-lez v2, :cond_2a

    .line 2895
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "childHeightSpec":I
    goto :goto_33

    .line 2897
    .end local v3    # "childHeightSpec":I
    :cond_2a
    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 2900
    .restart local v3    # "childHeightSpec":I
    :goto_33
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 2901
    return-void
.end method

.method private greylist-max-o measureScrapChild(Landroid/view/View;III)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "heightHint"    # I

    .line 1332
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 1333
    .local v0, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_12

    .line 1334
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 1335
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1337
    :cond_12
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1338
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1339
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1341
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1343
    .local v1, "childWidthSpec":I
    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1345
    .local v2, "lpHeight":I
    if-lez v2, :cond_3f

    .line 1346
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "childHeightSpec":I
    goto :goto_44

    .line 1348
    .end local v3    # "childHeightSpec":I
    :cond_3f
    const/4 v3, 0x0

    invoke-static {p4, v3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 1350
    .restart local v3    # "childHeightSpec":I
    :goto_44
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 1354
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 1355
    return-void
.end method

.method private greylist-max-o moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .registers 20
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenTop"    # I
    .param p5, "childrenBottom"    # I

    .line 1051
    move-object v6, p0

    move/from16 v7, p4

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 1052
    .local v8, "fadingEdgeLength":I
    iget v9, v6, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1056
    .local v9, "selectedPosition":I
    invoke-direct {p0, v7, v8, v9}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v10

    .line 1058
    .local v10, "topSelectionPixel":I
    invoke-direct {p0, v7, v8, v9}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v11

    .line 1061
    .local v11, "bottomSelectionPixel":I
    if-lez p3, :cond_98

    .line 1083
    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v12

    .line 1086
    .end local p1    # "oldSel":Landroid/view/View;
    .local v12, "oldSel":Landroid/view/View;
    iget v13, v6, Landroid/widget/ListView;->mDividerHeight:I

    .line 1089
    .local v13, "dividerHeight":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int v2, v0, v13

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1093
    .local v0, "sel":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v11, :cond_5b

    .line 1096
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v10

    .line 1099
    .local v1, "spaceAbove":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v11

    .line 1102
    .local v2, "spaceBelow":I
    sub-int v3, p5, v7

    div-int/lit8 v3, v3, 0x2

    .line 1103
    .local v3, "halfVerticalSpace":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1104
    .local v4, "offset":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1107
    neg-int v5, v4

    invoke-virtual {v12, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1109
    neg-int v5, v4

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1113
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    .end local v3    # "halfVerticalSpace":I
    .end local v4    # "offset":I
    :cond_5b
    iget-boolean v1, v6, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_7b

    .line 1114
    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1115
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1116
    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    goto :goto_96

    .line 1118
    :cond_7b
    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1119
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1120
    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1122
    .end local v13    # "dividerHeight":I
    :goto_96
    goto/16 :goto_10b

    .end local v0    # "sel":Landroid/view/View;
    .end local v12    # "oldSel":Landroid/view/View;
    .restart local p1    # "oldSel":Landroid/view/View;
    :cond_98
    if-gez p3, :cond_e3

    .line 1143
    if-eqz p2, :cond_ad

    .line 1145
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "sel":Landroid/view/View;
    goto :goto_bd

    .line 1150
    .end local v0    # "sel":Landroid/view/View;
    :cond_ad
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x0

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1155
    .restart local v0    # "sel":Landroid/view/View;
    :goto_bd
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v10, :cond_de

    .line 1157
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v10, v1

    .line 1160
    .restart local v1    # "spaceAbove":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v2, v11, v2

    .line 1163
    .restart local v2    # "spaceBelow":I
    sub-int v3, p5, v7

    div-int/lit8 v3, v3, 0x2

    .line 1164
    .restart local v3    # "halfVerticalSpace":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1165
    .restart local v4    # "offset":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1168
    invoke-virtual {v0, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1172
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    .end local v3    # "halfVerticalSpace":I
    .end local v4    # "offset":I
    :cond_de
    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    move-object v12, p1

    goto :goto_10b

    .line 1175
    .end local v0    # "sel":Landroid/view/View;
    :cond_e3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1180
    .local v12, "oldTop":I
    const/4 v3, 0x1

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    move v2, v12

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1183
    .restart local v0    # "sel":Landroid/view/View;
    if-ge v12, v7, :cond_107

    .line 1186
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1187
    .local v1, "newBottom":I
    add-int/lit8 v2, v7, 0x14

    if-ge v1, v2, :cond_107

    .line 1189
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v7, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1194
    .end local v1    # "newBottom":I
    :cond_107
    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    move-object v12, p1

    .line 1197
    .end local p1    # "oldSel":Landroid/view/View;
    .local v12, "oldSel":Landroid/view/View;
    :goto_10b
    return-object v0
.end method

.method private final greylist-max-o nextSelectedPositionForDirection(Landroid/view/View;II)I
    .registers 10
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .line 2684
    const/16 v0, 0x82

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p3, v0, :cond_25

    .line 2685
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 2686
    .local v3, "listBottom":I
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v4, v3, :cond_24

    .line 2687
    if-eq p2, v2, :cond_20

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lt p2, v4, :cond_20

    .line 2688
    add-int/lit8 v4, p2, 0x1

    goto :goto_22

    .line 2689
    :cond_20
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    :goto_22
    nop

    .line 2693
    .end local v3    # "listBottom":I
    .local v4, "nextSelected":I
    goto :goto_43

    .line 2691
    .end local v4    # "nextSelected":I
    .restart local v3    # "listBottom":I
    :cond_24
    return v2

    .line 2694
    .end local v3    # "listBottom":I
    :cond_25
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 2695
    .local v3, "listTop":I
    if-eqz p1, :cond_58

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v4, v3, :cond_58

    .line 2696
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    .line 2697
    .local v4, "lastPos":I
    if-eq p2, v2, :cond_40

    if-gt p2, v4, :cond_40

    .line 2698
    add-int/lit8 v5, p2, -0x1

    goto :goto_41

    .line 2699
    :cond_40
    move v5, v4

    :goto_41
    move v4, v5

    .line 2700
    .local v4, "nextSelected":I
    nop

    .line 2705
    .end local v3    # "listTop":I
    :goto_43
    if-ltz v4, :cond_57

    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v4, v3, :cond_4e

    goto :goto_57

    .line 2708
    :cond_4e
    if-ne p3, v0, :cond_51

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    :goto_52
    invoke-virtual {p0, v4, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    return v0

    .line 2706
    :cond_57
    :goto_57
    return v2

    .line 2701
    .end local v4    # "nextSelected":I
    .restart local v3    # "listTop":I
    :cond_58
    return v2
.end method

.method private greylist-max-o positionOfNewFocus(Landroid/view/View;)I
    .registers 6
    .param p1, "newFocus"    # Landroid/view/View;

    .line 3174
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3175
    .local v0, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_18

    .line 3176
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3177
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, p1, v2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3178
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 3175
    .end local v2    # "child":Landroid/view/View;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3181
    .end local v1    # "i":I
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o relayoutMeasuredItem(Landroid/view/View;)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;

    .line 2909
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2910
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2911
    .local v1, "h":I
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2912
    .local v2, "childLeft":I
    add-int v3, v2, v0

    .line 2913
    .local v3, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2914
    .local v4, "childTop":I
    add-int v5, v4, v1

    .line 2915
    .local v5, "childBottom":I
    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 2916
    return-void
.end method

.method private greylist-max-o removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 420
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 421
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_18

    .line 422
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    .line 423
    .local v2, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_15

    .line 424
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 425
    goto :goto_18

    .line 421
    .end local v2    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 428
    .end local v1    # "i":I
    :cond_18
    :goto_18
    return-void
.end method

.method private greylist-max-o removeUnusedFixedViews(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 1997
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ListView$FixedViewInfo;>;"
    if-nez p1, :cond_3

    .line 1998
    return-void

    .line 2000
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_2e

    .line 2001
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 2002
    .local v1, "fixedViewInfo":Landroid/widget/ListView$FixedViewInfo;
    iget-object v2, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 2003
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 2004
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_2b

    if-eqz v3, :cond_2b

    iget-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    if-eqz v4, :cond_2b

    .line 2005
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->removeDetachedView(Landroid/view/View;Z)V

    .line 2006
    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2000
    .end local v1    # "fixedViewInfo":Landroid/widget/ListView$FixedViewInfo;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 2010
    .end local v0    # "i":I
    :cond_2e
    return-void
.end method

.method private greylist scrollListItemsBy(I)V
    .registers 13
    .param p1, "amount"    # I

    .line 3258
    iget v0, p0, Landroid/widget/ListView;->mScrollX:I

    .line 3259
    .local v0, "oldX":I
    iget v1, p0, Landroid/widget/ListView;->mScrollY:I

    .line 3261
    .local v1, "oldY":I
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3263
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 3264
    .local v2, "listBottom":I
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 3265
    .local v3, "listTop":I
    iget-object v4, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 3267
    .local v4, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    const/4 v5, 0x0

    if-gez p1, :cond_77

    .line 3271
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    .line 3272
    .local v6, "numChildren":I
    add-int/lit8 v7, v6, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3273
    .local v7, "last":Landroid/view/View;
    :goto_23
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v8, v2, :cond_3c

    .line 3274
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x1

    .line 3275
    .local v8, "lastVisiblePosition":I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_3c

    .line 3276
    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 3277
    nop

    .end local v8    # "lastVisiblePosition":I
    add-int/lit8 v6, v6, 0x1

    .line 3281
    goto :goto_23

    .line 3286
    :cond_3c
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v8, v2, :cond_4b

    .line 3287
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3291
    :cond_4b
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3292
    .local v8, "first":Landroid/view/View;
    :goto_4f
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v3, :cond_76

    .line 3293
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/AbsListView$LayoutParams;

    .line 3294
    .local v9, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v10, v9, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v4, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 3295
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {v4, v8, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3297
    :cond_68
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3298
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3299
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3300
    .end local v9    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_4f

    .line 3301
    .end local v6    # "numChildren":I
    .end local v7    # "last":Landroid/view/View;
    .end local v8    # "first":Landroid/view/View;
    :cond_76
    goto :goto_cf

    .line 3303
    :cond_77
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3306
    .local v5, "first":Landroid/view/View;
    :goto_7b
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-le v6, v3, :cond_92

    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v6, :cond_92

    .line 3307
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v5, v6}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 3308
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_7b

    .line 3313
    :cond_92
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-le v6, v3, :cond_a1

    .line 3314
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3317
    :cond_a1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 3318
    .local v6, "lastIndex":I
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3321
    .restart local v7    # "last":Landroid/view/View;
    :goto_ab
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-le v8, v2, :cond_cf

    .line 3322
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    .line 3323
    .local v8, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v4, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_c5

    .line 3324
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v6

    invoke-virtual {v4, v7, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3326
    :cond_c5
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3327
    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3328
    .end local v8    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_ab

    .line 3330
    .end local v5    # "first":Landroid/view/View;
    .end local v6    # "lastIndex":I
    .end local v7    # "last":Landroid/view/View;
    :cond_cf
    :goto_cf
    invoke-virtual {v4}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 3331
    iget-object v5, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 3332
    iget-object v5, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 3333
    iget v5, p0, Landroid/widget/ListView;->mScrollX:I

    iget v6, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0, v5, v6, v0, v1}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 3334
    return-void
.end method

.method private greylist-max-o setupChild(Landroid/view/View;IIZIZZ)V
    .registers 25
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "isAttachedToWindow"    # Z

    .line 2093
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    const-wide/16 v4, 0x8

    const-string/jumbo v6, "setupListItem"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2095
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p6, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v8

    if-eqz v8, :cond_1c

    move v8, v6

    goto :goto_1d

    :cond_1c
    move v8, v7

    .line 2096
    .local v8, "isSelected":Z
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v9

    if-eq v8, v9, :cond_25

    move v9, v6

    goto :goto_26

    :cond_25
    move v9, v7

    .line 2097
    .local v9, "updateChildSelected":Z
    :goto_26
    iget v10, v0, Landroid/widget/ListView;->mTouchMode:I

    .line 2098
    .local v10, "mode":I
    if-lez v10, :cond_33

    const/4 v11, 0x3

    if-ge v10, v11, :cond_33

    iget v11, v0, Landroid/widget/ListView;->mMotionPosition:I

    if-ne v11, v2, :cond_33

    move v11, v6

    goto :goto_34

    :cond_33
    move v11, v7

    .line 2100
    .local v11, "isPressed":Z
    :goto_34
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v12

    if-eq v11, v12, :cond_3c

    move v12, v6

    goto :goto_3d

    :cond_3c
    move v12, v7

    .line 2101
    .local v12, "updateChildPressed":Z
    :goto_3d
    if-eqz p7, :cond_4a

    if-nez v9, :cond_4a

    .line 2102
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v13

    if-eqz v13, :cond_48

    goto :goto_4a

    :cond_48
    move v13, v7

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v13, v6

    .line 2106
    .local v13, "needToMeasure":Z
    :goto_4b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 2107
    .local v14, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v14, :cond_5a

    .line 2108
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 2110
    :cond_5a
    iget-object v15, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v15

    iput v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2111
    iget-object v15, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v15

    iput-boolean v15, v14, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 2116
    if-eqz v9, :cond_6f

    .line 2117
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2120
    :cond_6f
    if-eqz v12, :cond_74

    .line 2121
    invoke-virtual {v1, v11}, Landroid/view/View;->setPressed(Z)V

    .line 2124
    :cond_74
    iget v15, v0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v15, :cond_a4

    iget-object v15, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v15, :cond_a4

    .line 2125
    instance-of v15, v1, Landroid/widget/Checkable;

    if-eqz v15, :cond_8d

    .line 2126
    move-object v15, v1

    check-cast v15, Landroid/widget/Checkable;

    iget-object v4, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-interface {v15, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_a4

    .line 2127
    :cond_8d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_a4

    .line 2129
    iget-object v4, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setActivated(Z)V

    .line 2133
    :cond_a4
    :goto_a4
    const/4 v4, -0x1

    if-eqz p7, :cond_ab

    iget-boolean v5, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-eqz v5, :cond_b4

    :cond_ab
    iget-boolean v5, v14, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    const/4 v15, -0x2

    if-eqz v5, :cond_cb

    iget v5, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v5, v15, :cond_cb

    .line 2135
    :cond_b4
    if-eqz p4, :cond_b7

    goto :goto_b8

    :cond_b7
    move v4, v7

    :goto_b8
    invoke-virtual {v0, v1, v4, v14}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2139
    if-eqz p7, :cond_dd

    .line 2140
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    iget v4, v4, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v4, v2, :cond_dd

    .line 2142
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_dd

    .line 2145
    :cond_cb
    iput-boolean v7, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 2146
    iget v5, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v5, v15, :cond_d3

    .line 2147
    iput-boolean v6, v14, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2149
    :cond_d3
    if-eqz p4, :cond_d6

    goto :goto_d7

    :cond_d6
    move v4, v7

    :goto_d7
    invoke-virtual {v0, v1, v4, v14, v6}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2151
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 2154
    :cond_dd
    :goto_dd
    if-eqz v13, :cond_107

    .line 2155
    iget v4, v0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v15, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v15

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v4, v5, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 2157
    .local v4, "childWidthSpec":I
    iget v5, v14, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 2159
    .local v5, "lpHeight":I
    if-lez v5, :cond_fb

    .line 2160
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .local v7, "childHeightSpec":I
    goto :goto_103

    .line 2162
    .end local v7    # "childHeightSpec":I
    :cond_fb
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v15

    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v7

    .line 2165
    .restart local v7    # "childHeightSpec":I
    :goto_103
    invoke-virtual {v1, v4, v7}, Landroid/view/View;->measure(II)V

    .line 2166
    .end local v4    # "childWidthSpec":I
    .end local v5    # "lpHeight":I
    .end local v7    # "childHeightSpec":I
    goto :goto_10a

    .line 2167
    :cond_107
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    .line 2170
    :goto_10a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 2171
    .local v4, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 2172
    .local v5, "h":I
    if-eqz p4, :cond_117

    move/from16 v7, p3

    goto :goto_119

    :cond_117
    sub-int v7, p3, v5

    .line 2174
    .local v7, "childTop":I
    :goto_119
    if-eqz v13, :cond_123

    .line 2175
    add-int v15, v3, v4

    .line 2176
    .local v15, "childRight":I
    add-int v6, v7, v5

    .line 2177
    .local v6, "childBottom":I
    invoke-virtual {v1, v3, v7, v15, v6}, Landroid/view/View;->layout(IIII)V

    .line 2178
    .end local v6    # "childBottom":I
    .end local v15    # "childRight":I
    goto :goto_135

    .line 2179
    :cond_123
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {v1, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2180
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v6, v7, v6

    invoke-virtual {v1, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2183
    :goto_135
    iget-boolean v6, v0, Landroid/widget/ListView;->mCachingStarted:Z

    if-eqz v6, :cond_143

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v6

    if-nez v6, :cond_143

    .line 2184
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2187
    :cond_143
    const-wide/16 v15, 0x8

    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    .line 2188
    return-void
.end method

.method private greylist-max-o shouldAdjustHeightForDivider(I)Z
    .registers 23
    .param p1, "itemIndex"    # I

    .line 4041
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 4042
    .local v2, "dividerHeight":I
    iget-object v3, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 4043
    .local v3, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-object v4, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 4044
    .local v4, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_e

    const/4 v7, 0x1

    goto :goto_f

    :cond_e
    const/4 v7, 0x0

    .line 4045
    .local v7, "drawOverscrollHeader":Z
    :goto_f
    if-eqz v4, :cond_13

    const/4 v8, 0x1

    goto :goto_14

    :cond_13
    const/4 v8, 0x0

    .line 4046
    .local v8, "drawOverscrollFooter":Z
    :goto_14
    if-lez v2, :cond_1c

    iget-object v9, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1c

    const/4 v9, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v9, 0x0

    .line 4048
    .local v9, "drawDividers":Z
    :goto_1d
    if-eqz v9, :cond_d8

    .line 4049
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v10

    if-eqz v10, :cond_2d

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v10

    if-nez v10, :cond_2d

    const/4 v10, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v10, 0x0

    .line 4050
    .local v10, "fillForMissingDividers":Z
    :goto_2e
    iget v11, v0, Landroid/widget/ListView;->mItemCount:I

    .line 4051
    .local v11, "itemCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v12

    .line 4052
    .local v12, "headerCount":I
    iget-object v13, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int v13, v11, v13

    .line 4053
    .local v13, "footerLimit":I
    if-ge v1, v12, :cond_40

    const/4 v14, 0x1

    goto :goto_41

    :cond_40
    const/4 v14, 0x0

    .line 4054
    .local v14, "isHeader":Z
    :goto_41
    if-lt v1, v13, :cond_45

    const/4 v15, 0x1

    goto :goto_46

    :cond_45
    const/4 v15, 0x0

    .line 4055
    .local v15, "isFooter":Z
    :goto_46
    iget-boolean v5, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 4056
    .local v5, "headerDividers":Z
    iget-boolean v6, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 4057
    .local v6, "footerDividers":Z
    if-nez v5, :cond_55

    if-nez v14, :cond_4f

    goto :goto_55

    :cond_4f
    move/from16 v17, v2

    move-object/from16 v18, v3

    goto/16 :goto_dc

    :cond_55
    :goto_55
    if-nez v6, :cond_59

    if-nez v15, :cond_4f

    .line 4058
    :cond_59
    move/from16 v17, v2

    .end local v2    # "dividerHeight":I
    .local v17, "dividerHeight":I
    iget-object v2, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4059
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v18, v3

    .end local v3    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v18, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-boolean v3, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_9b

    .line 4060
    add-int/lit8 v3, v11, -0x1

    if-ne v1, v3, :cond_69

    const/4 v3, 0x1

    goto :goto_6a

    :cond_69
    const/4 v3, 0x0

    .line 4061
    .local v3, "isLastItem":Z
    :goto_6a
    if-eqz v8, :cond_6e

    if-nez v3, :cond_9a

    .line 4062
    :cond_6e
    add-int/lit8 v0, v1, 0x1

    .line 4066
    .local v0, "nextIndex":I
    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_95

    if-nez v5, :cond_80

    if-nez v14, :cond_7d

    if-lt v0, v12, :cond_7d

    goto :goto_80

    :cond_7d
    const/16 v16, 0x1

    goto :goto_97

    :cond_80
    :goto_80
    if-nez v3, :cond_92

    .line 4068
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_8f

    if-nez v6, :cond_8e

    if-nez v15, :cond_8f

    if-ge v0, v13, :cond_8f

    :cond_8e
    goto :goto_92

    :cond_8f
    const/16 v16, 0x1

    goto :goto_97

    .line 4070
    :cond_92
    :goto_92
    const/16 v16, 0x1

    return v16

    .line 4066
    :cond_95
    const/16 v16, 0x1

    .line 4071
    :goto_97
    if-eqz v10, :cond_9a

    .line 4072
    return v16

    .line 4075
    .end local v0    # "nextIndex":I
    .end local v3    # "isLastItem":Z
    :cond_9a
    goto :goto_dc

    .line 4076
    :cond_9b
    if-eqz v7, :cond_9f

    const/4 v0, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v0, 0x0

    .line 4077
    .local v0, "start":I
    :goto_a0
    if-ne v1, v0, :cond_a4

    const/4 v3, 0x1

    goto :goto_a5

    :cond_a4
    const/4 v3, 0x0

    .line 4078
    .local v3, "isFirstItem":Z
    :goto_a5
    if-nez v3, :cond_d5

    .line 4079
    move/from16 v19, v0

    .end local v0    # "start":I
    .local v19, "start":I
    add-int/lit8 v0, v1, -0x1

    .line 4083
    .local v0, "previousIndex":I
    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_d0

    if-nez v5, :cond_bb

    if-nez v14, :cond_b8

    if-lt v0, v12, :cond_b8

    goto :goto_bb

    :cond_b8
    const/16 v16, 0x1

    goto :goto_d2

    :cond_bb
    :goto_bb
    if-nez v3, :cond_cd

    .line 4085
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_ca

    if-nez v6, :cond_c9

    if-nez v15, :cond_ca

    if-ge v0, v13, :cond_ca

    :cond_c9
    goto :goto_cd

    :cond_ca
    const/16 v16, 0x1

    goto :goto_d2

    .line 4087
    :cond_cd
    :goto_cd
    const/16 v16, 0x1

    return v16

    .line 4083
    :cond_d0
    const/16 v16, 0x1

    .line 4088
    :goto_d2
    if-eqz v10, :cond_dc

    .line 4089
    return v16

    .line 4078
    .end local v19    # "start":I
    .local v0, "start":I
    :cond_d5
    move/from16 v19, v0

    .end local v0    # "start":I
    .restart local v19    # "start":I
    goto :goto_dc

    .line 4048
    .end local v5    # "headerDividers":Z
    .end local v6    # "footerDividers":Z
    .end local v10    # "fillForMissingDividers":Z
    .end local v11    # "itemCount":I
    .end local v12    # "headerCount":I
    .end local v13    # "footerLimit":I
    .end local v14    # "isHeader":Z
    .end local v15    # "isFooter":Z
    .end local v17    # "dividerHeight":I
    .end local v18    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v19    # "start":I
    .local v2, "dividerHeight":I
    .local v3, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_d8
    move/from16 v17, v2

    move-object/from16 v18, v3

    .line 4096
    .end local v2    # "dividerHeight":I
    .end local v3    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "dividerHeight":I
    .restart local v18    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_dc
    :goto_dc
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o showingBottomFadingEdge()Z
    .registers 7

    .line 653
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 654
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 655
    .local v1, "bottomOfBottomChild":I
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 657
    .local v2, "lastVisiblePosition":I
    iget v4, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 659
    .local v4, "listBottom":I
    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v5, v3

    if-lt v2, v5, :cond_28

    if-ge v1, v4, :cond_27

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :cond_28
    :goto_28
    return v3
.end method

.method private greylist-max-o showingTopFadingEdge()Z
    .registers 4

    .line 645
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 646
    .local v0, "listTop":I
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    const/4 v2, 0x0

    if-gtz v1, :cond_16

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-le v1, v0, :cond_17

    :cond_16
    const/4 v2, 0x1

    :cond_17
    return v2
.end method


# virtual methods
.method public whitelist addFooterView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 490
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 491
    return-void
.end method

.method public whitelist addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1a

    .line 448
    const/4 v0, 0x5

    const-string v1, "ListView"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 449
    const-string v0, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_1a
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 455
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 456
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 457
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 458
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 462
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_45

    .line 463
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_3c

    .line 464
    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    .line 469
    :cond_3c
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_45

    .line 470
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 473
    :cond_45
    return-void
.end method

.method public whitelist addHeaderView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 389
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 390
    return-void
.end method

.method public whitelist addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1a

    .line 348
    const/4 v0, 0x5

    const-string v1, "ListView"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 349
    const-string v0, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1a
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 354
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 355
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 356
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 357
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 361
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_45

    .line 362
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_3c

    .line 363
    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    .line 368
    :cond_3c
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_45

    .line 369
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 372
    :cond_45
    return-void
.end method

.method public whitelist areFooterDividersEnabled()Z
    .registers 2

    .line 3735
    iget-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public whitelist areHeaderDividersEnabled()Z
    .registers 2

    .line 3711
    iget-boolean v0, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method greylist arrowScroll(I)Z
    .registers 5
    .param p1, "direction"    # I

    .line 2659
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2660
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2661
    .local v0, "handled":Z
    if-eqz v0, :cond_11

    .line 2662
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_15

    .line 2664
    :cond_11
    nop

    .line 2666
    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2664
    return v0

    .line 2666
    .end local v0    # "handled":Z
    :catchall_15
    move-exception v0

    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2667
    throw v0
.end method

.method protected whitelist canAnimate()Z
    .registers 2

    .line 2192
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

    .line 4179
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_9

    .line 4180
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 4182
    :cond_9
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 38
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 3445
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroid/widget/ListView;->mCachingStarted:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    .line 3446
    iput-boolean v3, v0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3450
    :cond_b
    iget v2, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3451
    .local v2, "dividerHeight":I
    iget-object v4, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3452
    .local v4, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-object v5, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3453
    .local v5, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_15

    move v7, v3

    goto :goto_16

    :cond_15
    const/4 v7, 0x0

    .line 3454
    .local v7, "drawOverscrollHeader":Z
    :goto_16
    if-eqz v5, :cond_1a

    move v8, v3

    goto :goto_1b

    :cond_1a
    const/4 v8, 0x0

    .line 3455
    .local v8, "drawOverscrollFooter":Z
    :goto_1b
    if-lez v2, :cond_23

    iget-object v9, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_23

    move v9, v3

    goto :goto_24

    :cond_23
    const/4 v9, 0x0

    .line 3457
    .local v9, "drawDividers":Z
    :goto_24
    if-nez v9, :cond_36

    if-nez v7, :cond_36

    if-eqz v8, :cond_2b

    goto :goto_36

    :cond_2b
    move-object/from16 v27, v4

    move-object v6, v5

    move/from16 v31, v7

    move/from16 v25, v8

    move/from16 v33, v9

    goto/16 :goto_2e3

    .line 3459
    :cond_36
    :goto_36
    iget-object v10, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3460
    .local v10, "bounds":Landroid/graphics/Rect;
    iget v11, v0, Landroid/widget/ListView;->mPaddingLeft:I

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 3461
    iget v11, v0, Landroid/widget/ListView;->mRight:I

    iget v12, v0, Landroid/widget/ListView;->mLeft:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/widget/ListView;->mPaddingRight:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 3463
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    .line 3464
    .local v11, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v12

    .line 3465
    .local v12, "headerCount":I
    iget v13, v0, Landroid/widget/ListView;->mItemCount:I

    .line 3466
    .local v13, "itemCount":I
    iget-object v14, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int v14, v13, v14

    .line 3467
    .local v14, "footerLimit":I
    iget-boolean v15, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3468
    .local v15, "headerDividers":Z
    iget-boolean v3, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3469
    .local v3, "footerDividers":Z
    iget v6, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3470
    .local v6, "first":I
    move-object/from16 v17, v5

    .end local v5    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v17, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    iget-boolean v5, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 3471
    .local v5, "areAllItemsSelectable":Z
    move/from16 v18, v5

    .end local v5    # "areAllItemsSelectable":Z
    .local v18, "areAllItemsSelectable":Z
    iget-object v5, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3476
    .local v5, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v19

    if-eqz v19, :cond_75

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v19

    if-nez v19, :cond_75

    const/16 v19, 0x1

    goto :goto_77

    :cond_75
    const/16 v19, 0x0

    .line 3478
    .local v19, "fillForMissingDividers":Z
    :goto_77
    if-eqz v19, :cond_97

    move/from16 v20, v13

    .end local v13    # "itemCount":I
    .local v20, "itemCount":I
    iget-object v13, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v13, :cond_94

    iget-boolean v13, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v13, :cond_94

    .line 3479
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    iput-object v13, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3480
    move-object/from16 v21, v5

    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    .local v21, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9b

    .line 3478
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "adapter":Landroid/widget/ListAdapter;
    :cond_94
    move-object/from16 v21, v5

    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_9b

    .end local v20    # "itemCount":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "adapter":Landroid/widget/ListAdapter;
    .restart local v13    # "itemCount":I
    :cond_97
    move-object/from16 v21, v5

    move/from16 v20, v13

    .line 3482
    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    .end local v13    # "itemCount":I
    .restart local v20    # "itemCount":I
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    :goto_9b
    iget-object v5, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3484
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v13, 0x0

    .line 3485
    .local v13, "effectivePaddingTop":I
    const/16 v22, 0x0

    .line 3486
    .local v22, "effectivePaddingBottom":I
    move/from16 v23, v13

    .end local v13    # "effectivePaddingTop":I
    .local v23, "effectivePaddingTop":I
    iget v13, v0, Landroid/widget/ListView;->mGroupFlags:I

    move-object/from16 v24, v5

    .end local v5    # "paint":Landroid/graphics/Paint;
    .local v24, "paint":Landroid/graphics/Paint;
    const/16 v5, 0x22

    and-int/2addr v13, v5

    if-ne v13, v5, :cond_b6

    .line 3487
    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v5, Landroid/graphics/Rect;->top:I

    .line 3488
    .end local v23    # "effectivePaddingTop":I
    .restart local v13    # "effectivePaddingTop":I
    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v5

    .end local v22    # "effectivePaddingBottom":I
    .local v5, "effectivePaddingBottom":I
    goto :goto_b8

    .line 3486
    .end local v5    # "effectivePaddingBottom":I
    .end local v13    # "effectivePaddingTop":I
    .restart local v22    # "effectivePaddingBottom":I
    .restart local v23    # "effectivePaddingTop":I
    :cond_b6
    move/from16 v13, v23

    .line 3491
    .end local v23    # "effectivePaddingTop":I
    .restart local v13    # "effectivePaddingTop":I
    :goto_b8
    iget v5, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v23, v13

    .end local v13    # "effectivePaddingTop":I
    .restart local v23    # "effectivePaddingTop":I
    iget v13, v0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v5, v13

    sub-int v5, v5, v22

    iget v13, v0, Landroid/widget/ListView;->mScrollY:I

    add-int/2addr v5, v13

    .line 3492
    .local v5, "listBottom":I
    iget-boolean v13, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v25, v8

    .end local v8    # "drawOverscrollFooter":Z
    .local v25, "drawOverscrollFooter":Z
    if-nez v13, :cond_1d4

    .line 3493
    const/4 v13, 0x0

    .line 3496
    .local v13, "bottom":I
    iget v8, v0, Landroid/widget/ListView;->mScrollY:I

    .line 3497
    .local v8, "scrollY":I
    if-lez v11, :cond_ed

    if-gez v8, :cond_ed

    .line 3498
    if-eqz v7, :cond_de

    .line 3499
    move/from16 v27, v13

    const/4 v13, 0x0

    .end local v13    # "bottom":I
    .local v27, "bottom":I
    iput v13, v10, Landroid/graphics/Rect;->bottom:I

    .line 3500
    iput v8, v10, Landroid/graphics/Rect;->top:I

    .line 3501
    invoke-virtual {v0, v1, v4, v10}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_ef

    .line 3502
    .end local v27    # "bottom":I
    .restart local v13    # "bottom":I
    :cond_de
    move/from16 v27, v13

    const/4 v13, 0x0

    .end local v13    # "bottom":I
    .restart local v27    # "bottom":I
    if-eqz v9, :cond_ef

    .line 3503
    iput v13, v10, Landroid/graphics/Rect;->bottom:I

    .line 3504
    neg-int v13, v2

    iput v13, v10, Landroid/graphics/Rect;->top:I

    .line 3505
    const/4 v13, -0x1

    invoke-virtual {v0, v1, v10, v13}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_ef

    .line 3497
    .end local v27    # "bottom":I
    .restart local v13    # "bottom":I
    :cond_ed
    move/from16 v27, v13

    .line 3509
    .end local v13    # "bottom":I
    .restart local v27    # "bottom":I
    :cond_ef
    :goto_ef
    const/4 v13, 0x0

    move/from16 v26, v8

    move/from16 v8, v27

    .end local v27    # "bottom":I
    .local v8, "bottom":I
    .local v13, "i":I
    .local v26, "scrollY":I
    :goto_f4
    if-ge v13, v11, :cond_1a5

    .line 3510
    move-object/from16 v27, v4

    .end local v4    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v27, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    add-int v4, v6, v13

    .line 3511
    .local v4, "itemIndex":I
    if-ge v4, v12, :cond_ff

    const/16 v28, 0x1

    goto :goto_101

    :cond_ff
    const/16 v28, 0x0

    .line 3512
    .local v28, "isHeader":Z
    :goto_101
    if-lt v4, v14, :cond_106

    const/16 v29, 0x1

    goto :goto_108

    :cond_106
    const/16 v29, 0x0

    .line 3513
    .local v29, "isFooter":Z
    :goto_108
    if-nez v15, :cond_10c

    if-nez v28, :cond_111

    :cond_10c
    if-nez v3, :cond_11d

    if-nez v29, :cond_111

    goto :goto_11d

    .line 3509
    .end local v4    # "itemIndex":I
    .end local v28    # "isHeader":Z
    .end local v29    # "isFooter":Z
    :cond_111
    move/from16 v32, v5

    move/from16 v31, v7

    move/from16 v33, v9

    move-object/from16 v9, v21

    move-object/from16 v4, v24

    goto/16 :goto_195

    .line 3514
    .restart local v4    # "itemIndex":I
    .restart local v28    # "isHeader":Z
    .restart local v29    # "isFooter":Z
    :cond_11d
    :goto_11d
    invoke-virtual {v0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 3515
    .local v30, "child":Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 3516
    move/from16 v31, v7

    .end local v7    # "drawOverscrollHeader":Z
    .local v31, "drawOverscrollHeader":Z
    add-int/lit8 v7, v11, -0x1

    if-ne v13, v7, :cond_12d

    const/4 v7, 0x1

    goto :goto_12e

    :cond_12d
    const/4 v7, 0x0

    .line 3518
    .local v7, "isLastItem":Z
    :goto_12e
    if-eqz v9, :cond_18b

    if-ge v8, v5, :cond_18b

    if-eqz v25, :cond_140

    if-nez v7, :cond_137

    goto :goto_140

    :cond_137
    move/from16 v32, v5

    move/from16 v33, v9

    move-object/from16 v9, v21

    move-object/from16 v4, v24

    goto :goto_195

    .line 3520
    :cond_140
    :goto_140
    move/from16 v32, v5

    .end local v5    # "listBottom":I
    .local v32, "listBottom":I
    add-int/lit8 v5, v4, 0x1

    .line 3524
    .local v5, "nextIndex":I
    move/from16 v33, v9

    move-object/from16 v9, v21

    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .local v9, "adapter":Landroid/widget/ListAdapter;
    .local v33, "drawDividers":Z
    invoke-interface {v9, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_178

    if-nez v15, :cond_158

    if-nez v28, :cond_155

    if-lt v5, v12, :cond_155

    goto :goto_158

    :cond_155
    move/from16 v21, v4

    goto :goto_17a

    :cond_158
    :goto_158
    if-nez v7, :cond_16a

    .line 3526
    invoke-interface {v9, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_167

    if-nez v3, :cond_166

    if-nez v29, :cond_167

    if-ge v5, v14, :cond_167

    :cond_166
    goto :goto_16a

    :cond_167
    move/from16 v21, v4

    goto :goto_17a

    .line 3528
    :cond_16a
    :goto_16a
    iput v8, v10, Landroid/graphics/Rect;->top:I

    .line 3529
    move/from16 v21, v4

    .end local v4    # "itemIndex":I
    .local v21, "itemIndex":I
    add-int v4, v8, v2

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    .line 3530
    invoke-virtual {v0, v1, v10, v13}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    move-object/from16 v4, v24

    goto :goto_195

    .line 3524
    .end local v21    # "itemIndex":I
    .restart local v4    # "itemIndex":I
    :cond_178
    move/from16 v21, v4

    .line 3531
    .end local v4    # "itemIndex":I
    .restart local v21    # "itemIndex":I
    :goto_17a
    if-eqz v19, :cond_188

    .line 3532
    iput v8, v10, Landroid/graphics/Rect;->top:I

    .line 3533
    add-int v4, v8, v2

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    .line 3534
    move-object/from16 v4, v24

    .end local v24    # "paint":Landroid/graphics/Paint;
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, v10, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_195

    .line 3531
    .end local v4    # "paint":Landroid/graphics/Paint;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_188
    move-object/from16 v4, v24

    .end local v24    # "paint":Landroid/graphics/Paint;
    .restart local v4    # "paint":Landroid/graphics/Paint;
    goto :goto_195

    .line 3518
    .end local v32    # "listBottom":I
    .end local v33    # "drawDividers":Z
    .local v4, "itemIndex":I
    .local v5, "listBottom":I
    .local v9, "drawDividers":Z
    .local v21, "adapter":Landroid/widget/ListAdapter;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_18b
    move/from16 v32, v5

    move/from16 v33, v9

    move-object/from16 v9, v21

    move/from16 v21, v4

    move-object/from16 v4, v24

    .line 3509
    .end local v5    # "listBottom":I
    .end local v7    # "isLastItem":Z
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .end local v28    # "isHeader":Z
    .end local v29    # "isFooter":Z
    .end local v30    # "child":Landroid/view/View;
    .local v4, "paint":Landroid/graphics/Paint;
    .local v9, "adapter":Landroid/widget/ListAdapter;
    .restart local v32    # "listBottom":I
    .restart local v33    # "drawDividers":Z
    :goto_195
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v24, v4

    move-object/from16 v21, v9

    move-object/from16 v4, v27

    move/from16 v7, v31

    move/from16 v5, v32

    move/from16 v9, v33

    goto/16 :goto_f4

    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v31    # "drawOverscrollHeader":Z
    .end local v32    # "listBottom":I
    .end local v33    # "drawDividers":Z
    .local v4, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "listBottom":I
    .local v7, "drawOverscrollHeader":Z
    .local v9, "drawDividers":Z
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_1a5
    move-object/from16 v27, v4

    move/from16 v32, v5

    move/from16 v31, v7

    move/from16 v33, v9

    move-object/from16 v9, v21

    move-object/from16 v4, v24

    .line 3540
    .end local v5    # "listBottom":I
    .end local v7    # "drawOverscrollHeader":Z
    .end local v13    # "i":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .local v4, "paint":Landroid/graphics/Paint;
    .local v9, "adapter":Landroid/widget/ListAdapter;
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v31    # "drawOverscrollHeader":Z
    .restart local v32    # "listBottom":I
    .restart local v33    # "drawDividers":Z
    iget v5, v0, Landroid/widget/ListView;->mBottom:I

    iget v7, v0, Landroid/widget/ListView;->mScrollY:I

    add-int/2addr v5, v7

    .line 3541
    .local v5, "overFooterBottom":I
    if-eqz v25, :cond_1cd

    add-int v7, v6, v11

    move/from16 v13, v20

    .end local v20    # "itemCount":I
    .local v13, "itemCount":I
    if-ne v7, v13, :cond_1ca

    if-le v5, v8, :cond_1ca

    .line 3543
    iput v8, v10, Landroid/graphics/Rect;->top:I

    .line 3544
    iput v5, v10, Landroid/graphics/Rect;->bottom:I

    .line 3545
    move-object/from16 v7, v17

    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v7, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1, v7, v10}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_1d1

    .line 3541
    .end local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :cond_1ca
    move-object/from16 v7, v17

    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    goto :goto_1d1

    .end local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v13    # "itemCount":I
    .restart local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "itemCount":I
    :cond_1cd
    move-object/from16 v7, v17

    move/from16 v13, v20

    .line 3547
    .end local v5    # "overFooterBottom":I
    .end local v8    # "bottom":I
    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v20    # "itemCount":I
    .end local v26    # "scrollY":I
    .restart local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "itemCount":I
    :goto_1d1
    move-object v6, v7

    goto/16 :goto_2e3

    .line 3550
    .end local v13    # "itemCount":I
    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v31    # "drawOverscrollHeader":Z
    .end local v32    # "listBottom":I
    .end local v33    # "drawDividers":Z
    .local v4, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v5, "listBottom":I
    .local v7, "drawOverscrollHeader":Z
    .local v9, "drawDividers":Z
    .restart local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "itemCount":I
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_1d4
    move-object/from16 v27, v4

    move/from16 v32, v5

    move/from16 v31, v7

    move/from16 v33, v9

    move-object/from16 v7, v17

    move/from16 v13, v20

    move-object/from16 v9, v21

    move-object/from16 v4, v24

    .end local v5    # "listBottom":I
    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v20    # "itemCount":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .local v4, "paint":Landroid/graphics/Paint;
    .local v7, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v9, "adapter":Landroid/widget/ListAdapter;
    .restart local v13    # "itemCount":I
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v31    # "drawOverscrollHeader":Z
    .restart local v32    # "listBottom":I
    .restart local v33    # "drawDividers":Z
    iget v5, v0, Landroid/widget/ListView;->mScrollY:I

    .line 3552
    .local v5, "scrollY":I
    if-lez v11, :cond_1fd

    if-eqz v31, :cond_1fd

    .line 3553
    iput v5, v10, Landroid/graphics/Rect;->top:I

    .line 3554
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v10, Landroid/graphics/Rect;->bottom:I

    .line 3555
    move-object/from16 v8, v27

    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v8, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1, v8, v10}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_1ff

    .line 3552
    .end local v8    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_1fd
    move-object/from16 v8, v27

    .line 3558
    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :goto_1ff
    if-eqz v31, :cond_204

    const/16 v16, 0x1

    goto :goto_206

    :cond_204
    const/16 v16, 0x0

    :goto_206
    move/from16 v20, v16

    .line 3559
    .local v20, "start":I
    move-object/from16 v27, v8

    move/from16 v8, v16

    .local v8, "i":I
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :goto_20c
    if-ge v8, v11, :cond_2ad

    .line 3560
    move/from16 v16, v13

    .end local v13    # "itemCount":I
    .local v16, "itemCount":I
    add-int v13, v6, v8

    .line 3561
    .local v13, "itemIndex":I
    if-ge v13, v12, :cond_217

    const/16 v21, 0x1

    goto :goto_219

    :cond_217
    const/16 v21, 0x0

    .line 3562
    .local v21, "isHeader":Z
    :goto_219
    if-lt v13, v14, :cond_21e

    const/16 v24, 0x1

    goto :goto_220

    :cond_21e
    const/16 v24, 0x0

    .line 3563
    .local v24, "isFooter":Z
    :goto_220
    if-nez v15, :cond_22f

    if-nez v21, :cond_225

    goto :goto_22f

    :cond_225
    move/from16 v35, v3

    move/from16 v29, v6

    move-object/from16 v30, v7

    move/from16 v34, v20

    goto/16 :goto_29f

    :cond_22f
    :goto_22f
    if-nez v3, :cond_233

    if-nez v24, :cond_225

    .line 3564
    :cond_233
    invoke-virtual {v0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 3565
    .local v28, "child":Landroid/view/View;
    move/from16 v29, v6

    .end local v6    # "first":I
    .local v29, "first":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v6

    .line 3566
    .local v6, "top":I
    if-eqz v33, :cond_299

    move-object/from16 v30, v7

    move/from16 v7, v23

    .end local v23    # "effectivePaddingTop":I
    .local v7, "effectivePaddingTop":I
    .local v30, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-le v6, v7, :cond_292

    .line 3567
    move/from16 v23, v7

    move/from16 v7, v20

    .end local v20    # "start":I
    .local v7, "start":I
    .restart local v23    # "effectivePaddingTop":I
    if-ne v8, v7, :cond_24e

    const/16 v20, 0x1

    goto :goto_250

    :cond_24e
    const/16 v20, 0x0

    .line 3568
    .local v20, "isFirstItem":Z
    :goto_250
    move/from16 v34, v7

    .end local v7    # "start":I
    .local v34, "start":I
    add-int/lit8 v7, v13, -0x1

    .line 3572
    .local v7, "previousIndex":I
    invoke-interface {v9, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_284

    if-nez v15, :cond_264

    if-nez v21, :cond_261

    if-lt v7, v12, :cond_261

    goto :goto_264

    :cond_261
    move/from16 v35, v3

    goto :goto_286

    :cond_264
    :goto_264
    if-nez v20, :cond_276

    .line 3574
    invoke-interface {v9, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_273

    if-nez v3, :cond_272

    if-nez v24, :cond_273

    if-ge v7, v14, :cond_273

    :cond_272
    goto :goto_276

    :cond_273
    move/from16 v35, v3

    goto :goto_286

    .line 3576
    :cond_276
    :goto_276
    move/from16 v35, v3

    .end local v3    # "footerDividers":Z
    .local v35, "footerDividers":Z
    sub-int v3, v6, v2

    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 3577
    iput v6, v10, Landroid/graphics/Rect;->bottom:I

    .line 3582
    add-int/lit8 v3, v8, -0x1

    invoke-virtual {v0, v1, v10, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_29f

    .line 3572
    .end local v35    # "footerDividers":Z
    .restart local v3    # "footerDividers":Z
    :cond_284
    move/from16 v35, v3

    .line 3583
    .end local v3    # "footerDividers":Z
    .restart local v35    # "footerDividers":Z
    :goto_286
    if-eqz v19, :cond_29f

    .line 3584
    sub-int v3, v6, v2

    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 3585
    iput v6, v10, Landroid/graphics/Rect;->bottom:I

    .line 3586
    invoke-virtual {v1, v10, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_29f

    .line 3566
    .end local v23    # "effectivePaddingTop":I
    .end local v34    # "start":I
    .end local v35    # "footerDividers":Z
    .restart local v3    # "footerDividers":Z
    .local v7, "effectivePaddingTop":I
    .local v20, "start":I
    :cond_292
    move/from16 v35, v3

    move/from16 v23, v7

    move/from16 v34, v20

    .end local v3    # "footerDividers":Z
    .end local v7    # "effectivePaddingTop":I
    .end local v20    # "start":I
    .restart local v23    # "effectivePaddingTop":I
    .restart local v34    # "start":I
    .restart local v35    # "footerDividers":Z
    goto :goto_29f

    .end local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v34    # "start":I
    .end local v35    # "footerDividers":Z
    .restart local v3    # "footerDividers":Z
    .local v7, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "start":I
    :cond_299
    move/from16 v35, v3

    move-object/from16 v30, v7

    move/from16 v34, v20

    .line 3559
    .end local v3    # "footerDividers":Z
    .end local v6    # "top":I
    .end local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v13    # "itemIndex":I
    .end local v20    # "start":I
    .end local v21    # "isHeader":Z
    .end local v24    # "isFooter":Z
    .end local v28    # "child":Landroid/view/View;
    .restart local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v34    # "start":I
    .restart local v35    # "footerDividers":Z
    :cond_29f
    :goto_29f
    add-int/lit8 v8, v8, 0x1

    move/from16 v13, v16

    move/from16 v6, v29

    move-object/from16 v7, v30

    move/from16 v20, v34

    move/from16 v3, v35

    goto/16 :goto_20c

    .end local v16    # "itemCount":I
    .end local v29    # "first":I
    .end local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v34    # "start":I
    .end local v35    # "footerDividers":Z
    .restart local v3    # "footerDividers":Z
    .local v6, "first":I
    .restart local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v13, "itemCount":I
    .restart local v20    # "start":I
    :cond_2ad
    move/from16 v35, v3

    move/from16 v29, v6

    move-object/from16 v30, v7

    move/from16 v16, v13

    move/from16 v34, v20

    .line 3592
    .end local v3    # "footerDividers":Z
    .end local v6    # "first":I
    .end local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v8    # "i":I
    .end local v13    # "itemCount":I
    .end local v20    # "start":I
    .restart local v16    # "itemCount":I
    .restart local v29    # "first":I
    .restart local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v34    # "start":I
    .restart local v35    # "footerDividers":Z
    if-lez v11, :cond_2df

    if-lez v5, :cond_2df

    .line 3593
    if-eqz v25, :cond_2cb

    .line 3594
    iget v3, v0, Landroid/widget/ListView;->mBottom:I

    .line 3595
    .local v3, "absListBottom":I
    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 3596
    add-int v6, v3, v5

    iput v6, v10, Landroid/graphics/Rect;->bottom:I

    .line 3597
    move-object/from16 v6, v30

    .end local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v6, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1, v6, v10}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3598
    .end local v3    # "absListBottom":I
    goto :goto_2e3

    .end local v6    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :cond_2cb
    move-object/from16 v6, v30

    .end local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v33, :cond_2dc

    .line 3599
    move/from16 v3, v32

    .end local v32    # "listBottom":I
    .local v3, "listBottom":I
    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 3600
    add-int v7, v3, v2

    iput v7, v10, Landroid/graphics/Rect;->bottom:I

    .line 3601
    const/4 v7, -0x1

    invoke-virtual {v0, v1, v10, v7}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_2e3

    .line 3598
    .end local v3    # "listBottom":I
    .restart local v32    # "listBottom":I
    :cond_2dc
    move/from16 v3, v32

    .end local v32    # "listBottom":I
    .restart local v3    # "listBottom":I
    goto :goto_2e3

    .line 3592
    .end local v3    # "listBottom":I
    .end local v6    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v32    # "listBottom":I
    :cond_2df
    move-object/from16 v6, v30

    move/from16 v3, v32

    .line 3608
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "scrollY":I
    .end local v9    # "adapter":Landroid/widget/ListAdapter;
    .end local v10    # "bounds":Landroid/graphics/Rect;
    .end local v11    # "count":I
    .end local v12    # "headerCount":I
    .end local v14    # "footerLimit":I
    .end local v15    # "headerDividers":Z
    .end local v16    # "itemCount":I
    .end local v18    # "areAllItemsSelectable":Z
    .end local v19    # "fillForMissingDividers":Z
    .end local v22    # "effectivePaddingBottom":I
    .end local v23    # "effectivePaddingTop":I
    .end local v29    # "first":I
    .end local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v32    # "listBottom":I
    .end local v34    # "start":I
    .end local v35    # "footerDividers":Z
    .restart local v6    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :goto_2e3
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3609
    return-void
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2348
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2349
    .local v0, "handled":Z
    if-nez v0, :cond_1a

    .line 2351
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 2352
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1a

    .line 2355
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2358
    .end local v1    # "focused":Landroid/view/View;
    :cond_1a
    return v0
.end method

.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 3613
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3614
    .local v0, "more":Z
    iget-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_f

    .line 3615
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3617
    :cond_f
    return v0
.end method

.method greylist-max-o drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .line 3631
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3633
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3634
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3635
    return-void
.end method

.method greylist-max-o drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 3427
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3429
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3430
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3432
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 3433
    .local v1, "span":I
    if-ge v1, v0, :cond_16

    .line 3434
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3437
    :cond_16
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3438
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3440
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3441
    return-void
.end method

.method greylist-max-o drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 3410
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3412
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3413
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3415
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 3416
    .local v1, "span":I
    if-ge v1, v0, :cond_16

    .line 3417
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3420
    :cond_16
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3421
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3423
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3424
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 4159
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 4161
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v0

    const-string/jumbo v1, "recycleOnMeasure"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 4162
    return-void
.end method

.method greylist-max-o fillGap(Z)V
    .registers 6
    .param p1, "down"    # Z

    .line 748
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 749
    .local v0, "count":I
    const/16 v1, 0x22

    if-eqz p1, :cond_32

    .line 750
    const/4 v2, 0x0

    .line 751
    .local v2, "paddingTop":I
    iget v3, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_12

    .line 752
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    .line 754
    :cond_12
    if-lez v0, :cond_22

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, v3

    goto :goto_23

    .line 755
    :cond_22
    move v1, v2

    :goto_23
    nop

    .line 756
    .local v1, "startOffset":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 757
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 758
    .end local v1    # "startOffset":I
    .end local v2    # "paddingTop":I
    goto :goto_5f

    .line 759
    :cond_32
    const/4 v2, 0x0

    .line 760
    .local v2, "paddingBottom":I
    iget v3, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_3c

    .line 761
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v2

    .line 763
    :cond_3c
    if-lez v0, :cond_4b

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v1, v3

    goto :goto_50

    .line 764
    :cond_4b
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_50
    nop

    .line 765
    .restart local v1    # "startOffset":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 766
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 768
    .end local v1    # "startOffset":I
    .end local v2    # "paddingBottom":I
    :goto_5f
    return-void
.end method

.method greylist-max-o findMotionRow(I)I
    .registers 6
    .param p1, "y"    # I

    .line 1457
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1458
    .local v0, "childCount":I
    if-lez v0, :cond_34

    .line 1459
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_1f

    .line 1460
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_1e

    .line 1461
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1462
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1b

    .line 1463
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1460
    .end local v2    # "v":Landroid/view/View;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .end local v1    # "i":I
    :cond_1e
    goto :goto_34

    .line 1467
    :cond_1f
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_21
    if-ltz v1, :cond_34

    .line 1468
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1469
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_31

    .line 1470
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1467
    .end local v2    # "v":Landroid/view/View;
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 1475
    .end local v1    # "i":I
    :cond_34
    :goto_34
    const/4 v1, -0x1

    return v1
.end method

.method greylist-max-o findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 8
    .param p3, "childToSkip"    # Landroid/view/View;
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

    .line 3966
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_23

    .line 3967
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3970
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_23

    .line 3971
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3973
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_20

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_20

    .line 3974
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3976
    if-eqz v2, :cond_20

    .line 3977
    return-object v2

    .line 3970
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3982
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist-max-o findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 5
    .param p2, "childToSkip"    # Landroid/view/View;
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

    .line 3945
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3946
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_18

    .line 3947
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3948
    if-eqz v0, :cond_f

    .line 3949
    return-object v0

    .line 3952
    :cond_f
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3953
    if-eqz v0, :cond_18

    .line 3954
    return-object v0

    .line 3957
    :cond_18
    return-object v0
.end method

.method greylist-max-o findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 7
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 3871
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_21

    .line 3872
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3875
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 3876
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3878
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3879
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3881
    if-eqz v2, :cond_1e

    .line 3882
    return-object v2

    .line 3875
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3887
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist findViewTraversal(I)Landroid/view/View;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 3855
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3856
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_18

    .line 3857
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3858
    if-eqz v0, :cond_f

    .line 3859
    return-object v0

    .line 3861
    :cond_f
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3862
    if-eqz v0, :cond_18

    .line 3863
    return-object v0

    .line 3866
    :cond_18
    return-object v0
.end method

.method greylist-max-o findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .registers 7
    .param p2, "tag"    # Ljava/lang/Object;
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

    .line 3916
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_21

    .line 3917
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3920
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 3921
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3923
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3924
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3926
    if-eqz v2, :cond_1e

    .line 3927
    return-object v2

    .line 3920
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3932
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 4
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 3898
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3899
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_18

    .line 3900
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3901
    if-eqz v0, :cond_f

    .line 3902
    return-object v0

    .line 3905
    :cond_f
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3906
    if-eqz v0, :cond_18

    .line 3907
    return-object v0

    .line 3910
    :cond_18
    return-object v0
.end method

.method greylist-max-o fullScroll(I)Z
    .registers 6
    .param p1, "direction"    # I

    .line 2566
    const/4 v0, 0x0

    .line 2567
    .local v0, "moved":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    if-ne p1, v3, :cond_1d

    .line 2568
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eqz v3, :cond_3a

    .line 2569
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v1, v2}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    .line 2570
    .local v1, "position":I
    if-ltz v1, :cond_1b

    .line 2571
    iput v2, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2572
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2573
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2575
    :cond_1b
    const/4 v0, 0x1

    .line 2576
    .end local v1    # "position":I
    goto :goto_3a

    .line 2577
    :cond_1d
    const/16 v3, 0x82

    if-ne p1, v3, :cond_3a

    .line 2578
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v3, v2

    .line 2579
    .local v3, "lastItem":I
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ge v2, v3, :cond_3a

    .line 2580
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v2, v3, v1}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    .line 2582
    .restart local v1    # "position":I
    if-ltz v1, :cond_39

    .line 2583
    const/4 v2, 0x3

    iput v2, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2584
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2585
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2587
    :cond_39
    const/4 v0, 0x1

    .line 2591
    .end local v1    # "position":I
    .end local v3    # "lastItem":I
    :cond_3a
    :goto_3a
    if-eqz v0, :cond_48

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_48

    .line 2592
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2593
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2596
    :cond_48
    return v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 4101
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

    .line 531
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public whitelist getCheckItemIds()[J
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3997
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3998
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v0

    return-object v0

    .line 4003
    :cond_11
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4b

    .line 4004
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4005
    .local v0, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 4006
    .local v2, "count":I
    new-array v3, v2, [J

    .line 4007
    .local v3, "ids":[J
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4009
    .local v4, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, 0x0

    .line 4010
    .local v5, "checkedCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2a
    if-ge v6, v2, :cond_42

    .line 4011
    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 4012
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "checkedCount":I
    .local v7, "checkedCount":I
    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v3, v5

    move v5, v7

    .line 4010
    .end local v7    # "checkedCount":I
    .restart local v5    # "checkedCount":I
    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 4018
    .end local v6    # "i":I
    :cond_42
    if-ne v5, v2, :cond_45

    .line 4019
    return-object v3

    .line 4021
    :cond_45
    new-array v6, v5, [J

    .line 4022
    .local v6, "result":[J
    invoke-static {v3, v1, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4024
    return-object v6

    .line 4027
    .end local v0    # "states":Landroid/util/SparseBooleanArray;
    .end local v2    # "count":I
    .end local v3    # "ids":[J
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "checkedCount":I
    .end local v6    # "result":[J
    :cond_4b
    new-array v0, v1, [J

    return-object v0
.end method

.method public whitelist getDivider()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 3646
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getDividerHeight()I
    .registers 2

    .line 3675
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public whitelist getFooterViewsCount()I
    .registers 2

    .line 495
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getHeaderViewsCount()I
    .registers 2

    .line 394
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method greylist-max-r getHeightForPosition(I)I
    .registers 4
    .param p1, "position"    # I

    .line 4033
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->getHeightForPosition(I)I

    move-result v0

    .line 4034
    .local v0, "height":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->shouldAdjustHeightForDivider(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4035
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, v0

    return v1

    .line 4037
    :cond_e
    return v0
.end method

.method public whitelist getItemsCanFocus()Z
    .registers 2

    .line 3372
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public whitelist getMaxScrollAmount()I
    .registers 3

    .line 280
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

    .line 3774
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 3755
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist isOpaque()Z
    .registers 8

    .line 3377
    iget-boolean v0, p0, Landroid/widget/ListView;->mCachingActive:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v0, :cond_14

    .line 3378
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

    .line 3379
    .local v0, "retValue":Z
    :goto_1d
    if-eqz v0, :cond_5a

    .line 3381
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v3, :cond_28

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_2a

    :cond_28
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    .line 3382
    .local v3, "listTop":I
    :goto_2a
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3383
    .local v4, "first":Landroid/view/View;
    if-eqz v4, :cond_59

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_37

    goto :goto_59

    .line 3386
    :cond_37
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    .line 3387
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v6, :cond_44

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_46

    :cond_44
    iget v6, p0, Landroid/widget/ListView;->mPaddingBottom:I

    :goto_46
    sub-int/2addr v5, v6

    .line 3388
    .local v5, "listBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3389
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_58

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge v6, v5, :cond_5a

    .line 3390
    :cond_58
    return v2

    .line 3384
    .end local v1    # "last":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_59
    :goto_59
    return v2

    .line 3393
    .end local v3    # "listTop":I
    .end local v4    # "first":Landroid/view/View;
    :cond_5a
    return v0
.end method

.method protected whitelist layoutChildren()V
    .registers 27

    .line 1637
    move-object/from16 v7, p0

    iget-boolean v8, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1638
    .local v8, "blockLayoutRequests":Z
    if-eqz v8, :cond_7

    .line 1639
    return-void

    .line 1642
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1645
    const/4 v9, 0x0

    :try_start_b
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1647
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 1649
    iget-object v1, v7, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_27

    .line 1650
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1651
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_3c8

    .line 1972
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_22

    .line 1973
    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 1975
    :cond_22
    if-nez v8, :cond_26

    .line 1976
    iput-boolean v9, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1652
    :cond_26
    return-void

    .line 1655
    :cond_27
    :try_start_27
    iget-object v1, v7, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move v10, v1

    .line 1656
    .local v10, "childrenTop":I
    iget v1, v7, Landroid/widget/ListView;->mBottom:I

    iget v2, v7, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    iget-object v2, v7, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v1, v2

    .line 1657
    .local v11, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    move v12, v1

    .line 1659
    .local v12, "childCount":I
    const/4 v1, 0x0

    .line 1660
    .local v1, "index":I
    const/4 v2, 0x0

    .line 1663
    .local v2, "delta":I
    const/4 v3, 0x0

    .line 1664
    .local v3, "oldSel":Landroid/view/View;
    const/4 v4, 0x0

    .line 1665
    .local v4, "oldFirst":Landroid/view/View;
    const/4 v5, 0x0

    .line 1668
    .local v5, "newSel":Landroid/view/View;
    iget v6, v7, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v6, :pswitch_data_3d6

    .line 1683
    iget v6, v7, Landroid/widget/ListView;->mSelectedPosition:I

    goto :goto_70

    .line 1670
    :pswitch_49
    iget v6, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    iget v13, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v1, v6, v13

    .line 1671
    if-ltz v1, :cond_60

    if-ge v1, v12, :cond_60

    .line 1672
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_9a

    .line 1700
    :cond_60
    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_9a

    .line 1679
    :pswitch_68
    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_9a

    .line 1683
    :goto_70
    iget v13, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v1, v6, v13

    .line 1684
    if-ltz v1, :cond_7d

    if-ge v1, v12, :cond_7d

    .line 1685
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    .line 1689
    :cond_7d
    invoke-virtual {v7, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 1691
    iget v6, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    if-ltz v6, :cond_8c

    .line 1692
    iget v6, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    iget v13, v7, Landroid/widget/ListView;->mSelectedPosition:I

    sub-int v2, v6, v13

    .line 1696
    :cond_8c
    add-int v6, v1, v2

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 1700
    .end local v1    # "index":I
    .end local v2    # "delta":I
    .end local v3    # "oldSel":Landroid/view/View;
    .end local v4    # "oldFirst":Landroid/view/View;
    .end local v5    # "newSel":Landroid/view/View;
    .local v13, "index":I
    .local v14, "delta":I
    .local v15, "oldSel":Landroid/view/View;
    .local v16, "oldFirst":Landroid/view/View;
    .local v17, "newSel":Landroid/view/View;
    :goto_9a
    iget-boolean v1, v7, Landroid/widget/ListView;->mDataChanged:Z

    move/from16 v18, v1

    .line 1701
    .local v18, "dataChanged":Z
    if-eqz v18, :cond_a3

    .line 1702
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1707
    :cond_a3
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    if-nez v1, :cond_b9

    .line 1708
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1709
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_ad
    .catchall {:try_start_27 .. :try_end_ad} :catchall_3c8

    .line 1972
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_b4

    .line 1973
    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 1975
    :cond_b4
    if-nez v8, :cond_b8

    .line 1976
    iput-boolean v9, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1710
    :cond_b8
    return-void

    .line 1711
    :cond_b9
    :try_start_b9
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    iget-object v2, v7, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_385

    .line 1720
    iget v1, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1722
    const/4 v1, 0x0

    .line 1723
    .local v1, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v2, 0x0

    .line 1724
    .local v2, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v3, -0x1

    .line 1729
    .local v3, "accessibilityFocusPosition":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    move-object/from16 v19, v4

    .line 1730
    .local v19, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v19, :cond_102

    .line 1731
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v4

    .line 1732
    .local v4, "focusHost":Landroid/view/View;
    if-eqz v4, :cond_102

    .line 1733
    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 1734
    .local v5, "focusChild":Landroid/view/View;
    if-eqz v5, :cond_102

    .line 1735
    if-eqz v18, :cond_f1

    invoke-direct {v7, v5}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_f1

    .line 1736
    invoke-virtual {v5}, Landroid/view/View;->hasTransientState()Z

    move-result v6

    if-eqz v6, :cond_f8

    iget-boolean v6, v7, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v6, :cond_f8

    .line 1739
    :cond_f1
    move-object v2, v4

    .line 1740
    nop

    .line 1741
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    move-object v1, v6

    .line 1746
    :cond_f8
    invoke-virtual {v7, v5}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    move v3, v6

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    goto :goto_107

    .line 1751
    .end local v4    # "focusHost":Landroid/view/View;
    .end local v5    # "focusChild":Landroid/view/View;
    :cond_102
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move v6, v3

    .end local v1    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v3    # "accessibilityFocusPosition":I
    .local v6, "accessibilityFocusPosition":I
    .local v20, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v21, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :goto_107
    const/4 v1, 0x0

    .line 1752
    .local v1, "focusLayoutRestoreDirectChild":Landroid/view/View;
    const/4 v2, 0x0

    .line 1757
    .local v2, "focusLayoutRestoreView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    .line 1758
    .local v5, "focusedChild":Landroid/view/View;
    if-eqz v5, :cond_134

    .line 1764
    if-eqz v18, :cond_122

    invoke-direct {v7, v5}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_122

    .line 1765
    invoke-virtual {v5}, Landroid/view/View;->hasTransientState()Z

    move-result v3

    if-nez v3, :cond_122

    iget-boolean v3, v7, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_12d

    .line 1766
    :cond_122
    move-object v1, v5

    .line 1768
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1769
    if-eqz v2, :cond_12d

    .line 1771
    invoke-virtual {v2}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1774
    :cond_12d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->requestFocus()Z

    move-object v4, v1

    move-object/from16 v22, v2

    goto :goto_137

    .line 1758
    :cond_134
    move-object v4, v1

    move-object/from16 v22, v2

    .line 1779
    .end local v1    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v2    # "focusLayoutRestoreView":Landroid/view/View;
    .local v4, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v22, "focusLayoutRestoreView":Landroid/view/View;
    :goto_137
    iget v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    move v3, v1

    .line 1780
    .local v3, "firstPosition":I
    iget-object v1, v7, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object v2, v1

    .line 1781
    .local v2, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v18, :cond_151

    .line 1782
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_140
    if-ge v1, v12, :cond_150

    .line 1783
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    add-int v0, v3, v1

    invoke-virtual {v2, v9, v0}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1782
    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x1

    const/4 v9, 0x0

    goto :goto_140

    .end local v1    # "i":I
    :cond_150
    goto :goto_154

    .line 1786
    :cond_151
    invoke-virtual {v2, v12, v3}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1790
    :goto_154
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    .line 1791
    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1793
    iget v0, v7, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v0, :pswitch_data_3e4

    .line 1834
    move-object v0, v2

    move/from16 v23, v3

    move-object v9, v4

    move-object/from16 v24, v5

    move/from16 v25, v13

    move v13, v6

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .local v0, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v9, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v13, "accessibilityFocusPosition":I
    .local v23, "firstPosition":I
    .local v24, "focusedChild":Landroid/view/View;
    .local v25, "index":I
    if-nez v12, :cond_22c

    .line 1835
    iget-boolean v1, v7, Landroid/widget/ListView;->mStackFromBottom:Z

    goto/16 :goto_204

    .line 1831
    .end local v0    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v9    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v23    # "firstPosition":I
    .end local v24    # "focusedChild":Landroid/view/View;
    .end local v25    # "index":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    :pswitch_16e
    move-object/from16 v1, p0

    move-object v0, v2

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v0    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    move-object v2, v15

    move v9, v3

    .end local v3    # "firstPosition":I
    .local v9, "firstPosition":I
    move-object/from16 v3, v17

    move/from16 v23, v9

    move-object v9, v4

    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v9, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v23    # "firstPosition":I
    move v4, v14

    move-object/from16 v24, v5

    .end local v5    # "focusedChild":Landroid/view/View;
    .restart local v24    # "focusedChild":Landroid/view/View;
    move v5, v10

    move/from16 v25, v13

    move v13, v6

    .end local v6    # "accessibilityFocusPosition":I
    .local v13, "accessibilityFocusPosition":I
    .restart local v25    # "index":I
    move v6, v11

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v1

    .line 1832
    .local v1, "sel":Landroid/view/View;
    goto/16 :goto_260

    .line 1802
    .end local v0    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v1    # "sel":Landroid/view/View;
    .end local v9    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v23    # "firstPosition":I
    .end local v24    # "focusedChild":Landroid/view/View;
    .end local v25    # "index":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    :pswitch_186
    move-object v0, v2

    move/from16 v23, v3

    move-object v9, v4

    move-object/from16 v24, v5

    move/from16 v25, v13

    move v13, v6

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v0    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v9    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v13, "accessibilityFocusPosition":I
    .restart local v23    # "firstPosition":I
    .restart local v24    # "focusedChild":Landroid/view/View;
    .restart local v25    # "index":I
    iget v1, v7, Landroid/widget/ListView;->mSyncPosition:I

    iget v2, v7, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .line 1803
    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_260

    .line 1814
    .end local v0    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v1    # "sel":Landroid/view/View;
    .end local v9    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v23    # "firstPosition":I
    .end local v24    # "focusedChild":Landroid/view/View;
    .end local v25    # "index":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    :pswitch_199
    move-object v0, v2

    move/from16 v23, v3

    move-object v9, v4

    move-object/from16 v24, v5

    move/from16 v25, v13

    move v13, v6

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v0    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v9    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v13, "accessibilityFocusPosition":I
    .restart local v23    # "firstPosition":I
    .restart local v24    # "focusedChild":Landroid/view/View;
    .restart local v25    # "index":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    .line 1815
    .local v1, "selectedPosition":I
    iget v2, v7, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .line 1822
    .local v2, "sel":Landroid/view/View;
    if-nez v2, :cond_1bc

    iget-object v3, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v3, :cond_1bc

    .line 1823
    nop

    .line 1824
    invoke-virtual {v3, v1}, Landroid/widget/ListView$FocusSelector;->setupFocusIfValid(I)Ljava/lang/Runnable;

    move-result-object v3

    .line 1825
    .local v3, "focusRunnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_1bc

    .line 1826
    invoke-virtual {v7, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1859
    .end local v1    # "selectedPosition":I
    .end local v3    # "focusRunnable":Ljava/lang/Runnable;
    :cond_1bc
    move-object v1, v2

    goto/16 :goto_260

    .line 1805
    .end local v0    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v9    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v23    # "firstPosition":I
    .end local v24    # "focusedChild":Landroid/view/View;
    .end local v25    # "index":I
    .local v2, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v3, "firstPosition":I
    .restart local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    :pswitch_1bf
    move-object v0, v2

    move/from16 v23, v3

    move-object v9, v4

    move-object/from16 v24, v5

    move/from16 v25, v13

    move v13, v6

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v0    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v9    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v13, "accessibilityFocusPosition":I
    .restart local v23    # "firstPosition":I
    .restart local v24    # "focusedChild":Landroid/view/View;
    .restart local v25    # "index":I
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v7, v1, v11}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    .line 1806
    .local v1, "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1807
    goto/16 :goto_260

    .line 1795
    .end local v0    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v1    # "sel":Landroid/view/View;
    .end local v9    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v23    # "firstPosition":I
    .end local v24    # "focusedChild":Landroid/view/View;
    .end local v25    # "index":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    :pswitch_1d5
    move-object v0, v2

    move/from16 v23, v3

    move-object v9, v4

    move-object/from16 v24, v5

    move/from16 v25, v13

    move v13, v6

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v0    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v9    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v13, "accessibilityFocusPosition":I
    .restart local v23    # "firstPosition":I
    .restart local v24    # "focusedChild":Landroid/view/View;
    .restart local v25    # "index":I
    if-eqz v17, :cond_1ea

    .line 1796
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-direct {v7, v1, v10, v11}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_260

    .line 1798
    .end local v1    # "sel":Landroid/view/View;
    :cond_1ea
    invoke-direct {v7, v10, v11}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v1

    .line 1800
    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_260

    .line 1809
    .end local v0    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v1    # "sel":Landroid/view/View;
    .end local v9    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v23    # "firstPosition":I
    .end local v24    # "focusedChild":Landroid/view/View;
    .end local v25    # "index":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    :pswitch_1f0
    move-object v0, v2

    move/from16 v23, v3

    move-object v9, v4

    move-object/from16 v24, v5

    move/from16 v25, v13

    move v13, v6

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v0    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v9    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v13, "accessibilityFocusPosition":I
    .restart local v23    # "firstPosition":I
    .restart local v24    # "focusedChild":Landroid/view/View;
    .restart local v25    # "index":I
    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    .line 1810
    invoke-direct {v7, v10}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v1

    .line 1811
    .restart local v1    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1812
    goto :goto_260

    .line 1835
    .end local v1    # "sel":Landroid/view/View;
    :goto_204
    if-nez v1, :cond_216

    .line 1836
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v3

    move v1, v3

    .line 1837
    .local v1, "position":I
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1838
    invoke-direct {v7, v10}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1839
    .local v1, "sel":Landroid/view/View;
    goto :goto_260

    .line 1840
    .end local v1    # "sel":Landroid/view/View;
    :cond_216
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 1841
    .local v1, "position":I
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1842
    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v7, v2, v11}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1843
    .local v1, "sel":Landroid/view/View;
    goto :goto_260

    .line 1845
    .end local v1    # "sel":Landroid/view/View;
    :cond_22c
    iget v1, v7, Landroid/widget/ListView;->mSelectedPosition:I

    if-ltz v1, :cond_245

    iget v1, v7, Landroid/widget/ListView;->mSelectedPosition:I

    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    if-ge v1, v2, :cond_245

    .line 1846
    iget v1, v7, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1847
    if-nez v15, :cond_23c

    move v2, v10

    goto :goto_240

    :cond_23c
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1846
    :goto_240
    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_260

    .line 1848
    .end local v1    # "sel":Landroid/view/View;
    :cond_245
    iget v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    if-ge v1, v2, :cond_25a

    .line 1849
    iget v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    .line 1850
    if-nez v16, :cond_251

    move v2, v10

    goto :goto_255

    :cond_251
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1849
    :goto_255
    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_260

    .line 1852
    .end local v1    # "sel":Landroid/view/View;
    :cond_25a
    const/4 v1, 0x0

    invoke-direct {v7, v1, v10}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1859
    .restart local v1    # "sel":Landroid/view/View;
    :goto_260
    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1862
    iget-object v2, v7, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1863
    iget-object v2, v7, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1865
    const/4 v2, -0x1

    if-eqz v1, :cond_2b6

    .line 1868
    iget-boolean v3, v7, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v3, :cond_2ac

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_2ac

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_2ac

    .line 1869
    if-ne v1, v9, :cond_28a

    if-eqz v22, :cond_28a

    .line 1871
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-nez v3, :cond_290

    :cond_28a
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_292

    :cond_290
    const/4 v3, 0x1

    goto :goto_293

    :cond_292
    const/4 v3, 0x0

    .line 1872
    .local v3, "focusWasTaken":Z
    :goto_293
    if-nez v3, :cond_2a2

    .line 1876
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    .line 1877
    .local v4, "focused":Landroid/view/View;
    if-eqz v4, :cond_29e

    .line 1878
    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    .line 1880
    :cond_29e
    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1881
    .end local v4    # "focused":Landroid/view/View;
    goto :goto_2ab

    .line 1882
    :cond_2a2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1883
    iget-object v4, v7, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1885
    .end local v3    # "focusWasTaken":Z
    :goto_2ab
    goto :goto_2af

    .line 1886
    :cond_2ac
    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1888
    :goto_2af
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v7, Landroid/widget/ListView;->mSelectedTop:I

    goto :goto_2ff

    .line 1890
    :cond_2b6
    iget v3, v7, Landroid/widget/ListView;->mTouchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2c3

    iget v3, v7, Landroid/widget/ListView;->mTouchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2c1

    goto :goto_2c3

    :cond_2c1
    const/4 v3, 0x0

    goto :goto_2c4

    :cond_2c3
    :goto_2c3
    const/4 v3, 0x1

    .line 1892
    .local v3, "inTouchMode":Z
    :goto_2c4
    if-eqz v3, :cond_2d7

    .line 1894
    iget v4, v7, Landroid/widget/ListView;->mMotionPosition:I

    iget v5, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1895
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_2d6

    .line 1896
    iget v5, v7, Landroid/widget/ListView;->mMotionPosition:I

    invoke-virtual {v7, v5, v4}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1898
    .end local v4    # "child":Landroid/view/View;
    :cond_2d6
    goto :goto_2f4

    :cond_2d7
    iget v4, v7, Landroid/widget/ListView;->mSelectorPosition:I

    if-eq v4, v2, :cond_2ec

    .line 1902
    iget v4, v7, Landroid/widget/ListView;->mSelectorPosition:I

    iget v5, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1903
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_2eb

    .line 1904
    iget v5, v7, Landroid/widget/ListView;->mSelectorPosition:I

    invoke-virtual {v7, v5, v4}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1906
    .end local v4    # "child":Landroid/view/View;
    :cond_2eb
    goto :goto_2f4

    .line 1908
    :cond_2ec
    const/4 v4, 0x0

    iput v4, v7, Landroid/widget/ListView;->mSelectedTop:I

    .line 1909
    iget-object v4, v7, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1914
    :goto_2f4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2ff

    if-eqz v22, :cond_2ff

    .line 1915
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 1920
    .end local v3    # "inTouchMode":Z
    :cond_2ff
    :goto_2ff
    const/4 v3, 0x0

    if-eqz v19, :cond_348

    .line 1921
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v4

    .line 1922
    .local v4, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v4, :cond_348

    .line 1923
    if-eqz v21, :cond_32d

    .line 1924
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_32d

    .line 1925
    nop

    .line 1926
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    .line 1927
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v20, :cond_329

    if-eqz v2, :cond_329

    .line 1928
    nop

    .line 1929
    invoke-virtual/range {v20 .. v20}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v5

    .line 1928
    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    .line 1930
    .local v5, "virtualViewId":I
    const/16 v6, 0x40

    invoke-virtual {v2, v5, v6, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 1932
    nop

    .end local v5    # "virtualViewId":I
    goto :goto_348

    .line 1933
    :cond_329
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_348

    .line 1935
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_32d
    if-eq v13, v2, :cond_348

    .line 1937
    iget v2, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v6, v13, v2

    .line 1939
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    .line 1937
    const/4 v5, 0x0

    invoke-static {v6, v5, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 1940
    .local v2, "position":I
    invoke-virtual {v7, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1941
    .local v5, "restoreView":Landroid/view/View;
    if-eqz v5, :cond_348

    .line 1942
    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    nop

    .line 1950
    .end local v2    # "position":I
    .end local v4    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v5    # "restoreView":Landroid/view/View;
    :cond_348
    :goto_348
    if-eqz v22, :cond_353

    .line 1951
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_353

    .line 1952
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 1955
    :cond_353
    const/4 v2, 0x0

    iput v2, v7, Landroid/widget/ListView;->mLayoutMode:I

    .line 1956
    iput-boolean v2, v7, Landroid/widget/ListView;->mDataChanged:Z

    .line 1957
    iget-object v2, v7, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_363

    .line 1958
    iget-object v2, v7, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1959
    iput-object v3, v7, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1961
    :cond_363
    const/4 v2, 0x0

    iput-boolean v2, v7, Landroid/widget/ListView;->mNeedSync:Z

    .line 1962
    iget v2, v7, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1964
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    .line 1966
    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    if-lez v2, :cond_375

    .line 1967
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 1970
    :cond_375
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_378
    .catchall {:try_start_b9 .. :try_end_378} :catchall_3c8

    .line 1972
    .end local v0    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v1    # "sel":Landroid/view/View;
    .end local v9    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v10    # "childrenTop":I
    .end local v11    # "childrenBottom":I
    .end local v12    # "childCount":I
    .end local v13    # "accessibilityFocusPosition":I
    .end local v14    # "delta":I
    .end local v15    # "oldSel":Landroid/view/View;
    .end local v16    # "oldFirst":Landroid/view/View;
    .end local v17    # "newSel":Landroid/view/View;
    .end local v18    # "dataChanged":Z
    .end local v19    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v20    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v21    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v22    # "focusLayoutRestoreView":Landroid/view/View;
    .end local v23    # "firstPosition":I
    .end local v24    # "focusedChild":Landroid/view/View;
    .end local v25    # "index":I
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_37f

    .line 1973
    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 1975
    :cond_37f
    if-nez v8, :cond_384

    .line 1976
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1979
    :cond_384
    return-void

    .line 1712
    .restart local v10    # "childrenTop":I
    .restart local v11    # "childrenBottom":I
    .restart local v12    # "childCount":I
    .local v13, "index":I
    .restart local v14    # "delta":I
    .restart local v15    # "oldSel":Landroid/view/View;
    .restart local v16    # "oldFirst":Landroid/view/View;
    .restart local v17    # "newSel":Landroid/view/View;
    .restart local v18    # "dataChanged":Z
    :cond_385
    move/from16 v25, v13

    .end local v13    # "index":I
    .restart local v25    # "index":I
    :try_start_387
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1716
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with Adapter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1717
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v8    # "blockLayoutRequests":Z
    .end local p0    # "this":Landroid/widget/ListView;
    throw v0
    :try_end_3c8
    .catchall {:try_start_387 .. :try_end_3c8} :catchall_3c8

    .line 1972
    .end local v10    # "childrenTop":I
    .end local v11    # "childrenBottom":I
    .end local v12    # "childCount":I
    .end local v14    # "delta":I
    .end local v15    # "oldSel":Landroid/view/View;
    .end local v16    # "oldFirst":Landroid/view/View;
    .end local v17    # "newSel":Landroid/view/View;
    .end local v18    # "dataChanged":Z
    .end local v25    # "index":I
    .restart local v8    # "blockLayoutRequests":Z
    .restart local p0    # "this":Landroid/widget/ListView;
    :catchall_3c8
    move-exception v0

    iget-object v1, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v1, :cond_3d0

    .line 1973
    invoke-virtual {v1}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 1975
    :cond_3d0
    if-nez v8, :cond_3d5

    .line 1976
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1978
    :cond_3d5
    throw v0

    :pswitch_data_3d6
    .packed-switch 0x1
        :pswitch_68
        :pswitch_49
        :pswitch_68
        :pswitch_68
        :pswitch_68
    .end packed-switch

    :pswitch_data_3e4
    .packed-switch 0x1
        :pswitch_1f0
        :pswitch_1d5
        :pswitch_1bf
        :pswitch_199
        :pswitch_186
        :pswitch_16e
    .end packed-switch
.end method

.method greylist lookForSelectablePosition(IZ)I
    .registers 7
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 2250
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2251
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_3e

    .line 2255
    :cond_c
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2256
    .local v2, "count":I
    iget-boolean v3, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_37

    .line 2257
    if-eqz p2, :cond_26

    .line 2258
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2259
    :goto_1b
    if-ge p1, v2, :cond_37

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_37

    .line 2260
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 2263
    :cond_26
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2264
    :goto_2c
    if-ltz p1, :cond_37

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_37

    .line 2265
    add-int/lit8 p1, p1, -0x1

    goto :goto_2c

    .line 2270
    :cond_37
    if-ltz p1, :cond_3d

    if-lt p1, v2, :cond_3c

    goto :goto_3d

    .line 2274
    :cond_3c
    return p1

    .line 2271
    :cond_3d
    :goto_3d
    return v1

    .line 2252
    .end local v2    # "count":I
    :cond_3e
    :goto_3e
    return v1
.end method

.method greylist-max-o lookForSelectablePositionAfter(IIZ)I
    .registers 10
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .line 2290
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2291
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_4b

    .line 2296
    :cond_c
    invoke-virtual {p0, p2, p3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2297
    .local v2, "after":I
    if-eq v2, v1, :cond_13

    .line 2298
    return v2

    .line 2302
    :cond_13
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 2303
    .local v3, "count":I
    add-int/lit8 v4, v3, -0x1

    invoke-static {p1, v1, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 2304
    if-eqz p3, :cond_35

    .line 2305
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v3, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2306
    :goto_27
    if-le p2, p1, :cond_32

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_32

    .line 2307
    add-int/lit8 p2, p2, -0x1

    goto :goto_27

    .line 2309
    :cond_32
    if-gt p2, p1, :cond_4a

    .line 2310
    return v1

    .line 2313
    :cond_35
    const/4 v4, 0x0

    add-int/lit8 v5, p2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2314
    :goto_3c
    if-ge p2, p1, :cond_47

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_47

    .line 2315
    add-int/lit8 p2, p2, 0x1

    goto :goto_3c

    .line 2317
    :cond_47
    if-lt p2, p1, :cond_4a

    .line 2318
    return v1

    .line 2322
    :cond_4a
    return p2

    .line 2292
    .end local v2    # "after":I
    .end local v3    # "count":I
    :cond_4b
    :goto_4b
    return v1
.end method

.method final greylist-max-p measureHeightOfChildren(IIIII)I
    .registers 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .line 1396
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    iget-object v3, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1397
    .local v3, "adapter":Landroid/widget/ListAdapter;
    if-nez v3, :cond_14

    .line 1398
    iget-object v4, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    return v4

    .line 1402
    :cond_14
    iget-object v4, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    .line 1403
    .local v4, "returnedHeight":I
    iget v5, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1406
    .local v5, "dividerHeight":I
    const/4 v6, 0x0

    .line 1411
    .local v6, "prevHeightWithoutPartialChild":I
    const/4 v7, -0x1

    move/from16 v8, p3

    if-ne v8, v7, :cond_2c

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    goto :goto_2d

    :cond_2c
    move v9, v8

    :goto_2d
    move v8, v9

    .line 1412
    .end local p3    # "endPosition":I
    .local v8, "endPosition":I
    iget-object v9, v0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1413
    .local v9, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v10

    .line 1414
    .local v10, "recyle":Z
    iget-object v11, v0, Landroid/widget/ListView;->mIsScrap:[Z

    .line 1416
    .local v11, "isScrap":[Z
    move/from16 v12, p2

    .local v12, "i":I
    :goto_38
    if-gt v12, v8, :cond_74

    .line 1417
    invoke-virtual {v0, v12, v11}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v13

    .line 1419
    .local v13, "child":Landroid/view/View;
    move/from16 v14, p1

    invoke-direct {v0, v13, v12, v14, v1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1421
    if-lez v12, :cond_46

    .line 1423
    add-int/2addr v4, v5

    .line 1427
    :cond_46
    if-eqz v10, :cond_59

    .line 1428
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    iget v15, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1427
    invoke-virtual {v9, v15}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v15

    if-eqz v15, :cond_59

    .line 1429
    invoke-virtual {v9, v13, v7}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1432
    :cond_59
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v4, v15

    .line 1434
    if-lt v4, v1, :cond_6c

    .line 1440
    if-ltz v2, :cond_6a

    if-le v12, v2, :cond_6a

    if-lez v6, :cond_6a

    if-eq v4, v1, :cond_6a

    .line 1441
    move v7, v6

    goto :goto_6b

    .line 1442
    :cond_6a
    move v7, v1

    .line 1437
    :goto_6b
    return v7

    .line 1445
    :cond_6c
    if-ltz v2, :cond_71

    if-lt v12, v2, :cond_71

    .line 1446
    move v6, v4

    .line 1416
    :cond_71
    add-int/lit8 v12, v12, 0x1

    goto :goto_38

    .line 1452
    .end local v13    # "child":Landroid/view/View;
    :cond_74
    move/from16 v14, p1

    return v4
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 1251
    iget-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_a

    .line 1252
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1253
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1255
    :cond_a
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    .line 1256
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 4

    .line 3836
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 3838
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3839
    .local v0, "count":I
    if-lez v0, :cond_19

    .line 3840
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_16

    .line 3841
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3840
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3843
    .end local v1    # "i":I
    :cond_16
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    .line 3845
    :cond_19
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 14
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3779
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3781
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3782
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    .line 3783
    .local v1, "closetChildIndex":I
    const/4 v2, 0x0

    .line 3784
    .local v2, "closestChildTop":I
    if-eqz v0, :cond_57

    if-eqz p1, :cond_57

    if-eqz p3, :cond_57

    .line 3785
    iget v3, p0, Landroid/widget/ListView;->mScrollX:I

    iget v4, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 3789
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_27

    .line 3790
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 3791
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 3796
    :cond_27
    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3797
    .local v3, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 3798
    .local v4, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 3799
    .local v5, "childCount":I
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3801
    .local v6, "firstPosition":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_33
    if-ge v7, v5, :cond_57

    .line 3803
    add-int v8, v6, v7

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_3e

    .line 3804
    goto :goto_54

    .line 3807
    :cond_3e
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3808
    .local v8, "other":Landroid/view/View;
    invoke-virtual {v8, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3809
    invoke-virtual {p0, v8, v3}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3810
    invoke-static {p3, v3, p2}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v9

    .line 3812
    .local v9, "distance":I
    if-ge v9, v4, :cond_54

    .line 3813
    move v4, v9

    .line 3814
    move v1, v7

    .line 3815
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 3801
    .end local v8    # "other":Landroid/view/View;
    .end local v9    # "distance":I
    :cond_54
    :goto_54
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 3820
    .end local v3    # "otherRect":Landroid/graphics/Rect;
    .end local v4    # "minDistance":I
    .end local v5    # "childCount":I
    .end local v6    # "firstPosition":I
    .end local v7    # "i":I
    :cond_57
    if-ltz v1, :cond_60

    .line 3821
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_63

    .line 3823
    :cond_60
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3825
    :goto_63
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4146
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4148
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 4149
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v0, :cond_12

    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    move v6, v1

    .line 4150
    .local v6, "isHeading":Z
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    .line 4151
    .local v1, "isSelected":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v2, p2

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v2

    .line 4153
    .local v2, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 4154
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4107
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4109
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 4110
    .local v0, "rowsCount":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectionModeForAccessibility()I

    move-result v1

    .line 4111
    .local v1, "selectionMode":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v2, v2, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    .line 4113
    .local v2, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 4115
    if-lez v0, :cond_1b

    .line 4116
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4118
    :cond_1b
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2363
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2368
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2373
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onMeasure(II)V
    .registers 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1279
    move-object v6, p0

    move/from16 v7, p1

    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1281
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 1282
    .local v8, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1283
    .local v9, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1284
    .local v0, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1286
    .local v1, "heightSize":I
    const/4 v2, 0x0

    .line 1287
    .local v2, "childWidth":I
    const/4 v3, 0x0

    .line 1288
    .local v3, "childHeight":I
    const/4 v4, 0x0

    .line 1290
    .local v4, "childState":I
    iget-object v5, v6, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v10, 0x0

    if-nez v5, :cond_20

    move v5, v10

    goto :goto_26

    :cond_20
    iget-object v5, v6, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    :goto_26
    iput v5, v6, Landroid/widget/ListView;->mItemCount:I

    .line 1291
    iget v5, v6, Landroid/widget/ListView;->mItemCount:I

    if-lez v5, :cond_64

    if-eqz v8, :cond_30

    if-nez v9, :cond_64

    .line 1293
    :cond_30
    iget-object v5, v6, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v10, v5}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v5

    .line 1297
    .local v5, "child":Landroid/view/View;
    invoke-direct {p0, v5, v10, v7, v1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1299
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1300
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1301
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v4, v11}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    move-result v4

    .line 1303
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v11

    if-eqz v11, :cond_64

    iget-object v11, v6, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1304
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/AbsListView$LayoutParams;

    iget v12, v12, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1303
    invoke-virtual {v11, v12}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_64

    .line 1305
    iget-object v11, v6, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v11, v5, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1309
    .end local v5    # "child":Landroid/view/View;
    :cond_64
    move v10, v2

    move v11, v3

    move v12, v4

    .end local v2    # "childWidth":I
    .end local v3    # "childHeight":I
    .end local v4    # "childState":I
    .local v10, "childWidth":I
    .local v11, "childHeight":I
    .local v12, "childState":I
    if-nez v8, :cond_7a

    .line 1310
    iget-object v2, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, v10

    .line 1311
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v3

    add-int/2addr v2, v3

    move v13, v2

    .end local v0    # "widthSize":I
    .local v2, "widthSize":I
    goto :goto_7f

    .line 1313
    .end local v2    # "widthSize":I
    .restart local v0    # "widthSize":I
    :cond_7a
    const/high16 v2, -0x1000000

    and-int/2addr v2, v12

    or-int/2addr v2, v0

    move v13, v2

    .line 1316
    .end local v0    # "widthSize":I
    .local v13, "widthSize":I
    :goto_7f
    if-nez v9, :cond_95

    .line 1317
    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    add-int/2addr v0, v11

    .line 1318
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v1, v0, v2

    move v14, v1

    goto :goto_96

    .line 1316
    :cond_95
    move v14, v1

    .line 1321
    .end local v1    # "heightSize":I
    .local v14, "heightSize":I
    :goto_96
    const/high16 v0, -0x80000000

    if-ne v9, v0, :cond_a5

    .line 1323
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move/from16 v1, p1

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v14

    .line 1326
    :cond_a5
    invoke-virtual {p0, v13, v14}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 1328
    iput v7, v6, Landroid/widget/ListView;->mWidthMeasureSpec:I

    .line 1329
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 12
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1260
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3c

    .line 1261
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1262
    .local v0, "focusedChild":Landroid/view/View;
    if-eqz v0, :cond_3c

    .line 1263
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1264
    .local v1, "childPosition":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1265
    .local v2, "childBottom":I
    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/ListView;->mPaddingTop:I

    sub-int v4, p2, v4

    sub-int v4, v2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1266
    .local v3, "offset":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v3

    .line 1267
    .local v4, "top":I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_33

    .line 1268
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$FocusSelector-IA;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1270
    :cond_33
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setupForSetSelection(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1273
    .end local v0    # "focusedChild":Landroid/view/View;
    .end local v1    # "childPosition":I
    .end local v2    # "childBottom":I
    .end local v3    # "offset":I
    .end local v4    # "top":I
    :cond_3c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1274
    return-void
.end method

.method greylist-max-o pageScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 2520
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x21

    if-ne p1, v2, :cond_14

    .line 2521
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2522
    .local v2, "nextPage":I
    const/4 v3, 0x0

    .local v3, "down":Z
    goto :goto_28

    .line 2523
    .end local v2    # "nextPage":I
    .end local v3    # "down":Z
    :cond_14
    const/16 v2, 0x82

    if-ne p1, v2, :cond_67

    .line 2524
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v2, v1

    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2525
    .restart local v2    # "nextPage":I
    const/4 v3, 0x1

    .line 2530
    .restart local v3    # "down":Z
    :goto_28
    if-ltz v2, :cond_66

    .line 2531
    iget v4, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v4

    .line 2532
    .local v4, "position":I
    if-ltz v4, :cond_66

    .line 2533
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2534
    iget v0, p0, Landroid/widget/ListView;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 2536
    if-eqz v3, :cond_4c

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    sub-int/2addr v0, v5

    if-le v4, v0, :cond_4c

    .line 2537
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2540
    :cond_4c
    if-nez v3, :cond_56

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_56

    .line 2541
    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2544
    :cond_56
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2545
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2546
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_65

    .line 2547
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2550
    :cond_65
    return v1

    .line 2554
    .end local v4    # "position":I
    :cond_66
    return v0

    .line 2527
    .end local v2    # "nextPage":I
    .end local v3    # "down":Z
    :cond_67
    return v0
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 4123
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 4124
    return v1

    .line 4127
    :cond_8
    packed-switch p1, :pswitch_data_24

    goto :goto_22

    .line 4129
    :pswitch_c
    const/4 v0, -0x1

    const-string v2, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4130
    .local v0, "row":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4131
    .local v2, "position":I
    if-ltz v0, :cond_22

    .line 4134
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 4135
    return v1

    .line 4140
    .end local v0    # "row":I
    .end local v2    # "position":I
    :cond_22
    :goto_22
    const/4 v0, 0x0

    return v0

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

    .line 1364
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist removeFooterView(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 506
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 509
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 510
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 512
    :cond_20
    const/4 v0, 0x1

    .line 514
    :cond_21
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 515
    return v0

    .line 517
    .end local v0    # "result":Z
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeHeaderView(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 405
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 408
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 409
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 411
    :cond_20
    const/4 v0, 0x1

    .line 413
    :cond_21
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 414
    return v0

    .line 416
    .end local v0    # "result":Z
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 667
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 670
    .local v0, "rectTopWithinChild":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 671
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 673
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    .line 674
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v2

    .line 675
    .local v2, "listUnfadedTop":I
    add-int v3, v2, v1

    .line 676
    .local v3, "listUnfadedBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 678
    .local v4, "fadingEdge":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 680
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-gtz v5, :cond_34

    if-le v0, v4, :cond_35

    .line 681
    :cond_34
    add-int/2addr v2, v4

    .line 685
    :cond_35
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 686
    .local v5, "childCount":I
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 688
    .local v6, "bottomOfBottomChild":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_58

    .line 690
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v9, v8

    if-lt v7, v9, :cond_57

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v6, v4

    if-ge v7, v9, :cond_58

    .line 692
    :cond_57
    sub-int/2addr v3, v4

    .line 696
    :cond_58
    const/4 v7, 0x0

    .line 698
    .local v7, "scrollYDelta":I
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v10, 0x0

    if-le v9, v3, :cond_78

    iget v9, p2, Landroid/graphics/Rect;->top:I

    if-le v9, v2, :cond_78

    .line 703
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v9, v1, :cond_6d

    .line 705
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v2

    add-int/2addr v7, v9

    goto :goto_71

    .line 708
    :cond_6d
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v3

    add-int/2addr v7, v9

    .line 712
    :goto_71
    sub-int v9, v6, v3

    .line 713
    .local v9, "distanceToBottom":I
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 714
    .end local v9    # "distanceToBottom":I
    :cond_77
    goto :goto_9f

    :cond_78
    iget v9, p2, Landroid/graphics/Rect;->top:I

    if-ge v9, v2, :cond_77

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v3, :cond_77

    .line 719
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v9, v1, :cond_8c

    .line 721
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v3, v9

    sub-int/2addr v7, v9

    goto :goto_91

    .line 724
    :cond_8c
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int v9, v2, v9

    sub-int/2addr v7, v9

    .line 728
    :goto_91
    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    .line 729
    .local v9, "top":I
    sub-int v11, v9, v2

    .line 730
    .local v11, "deltaToTop":I
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 733
    .end local v9    # "top":I
    .end local v11    # "deltaToTop":I
    :goto_9f
    if-eqz v7, :cond_a2

    goto :goto_a3

    :cond_a2
    move v8, v10

    .line 734
    .local v8, "scroll":Z
    :goto_a3
    if-eqz v8, :cond_b6

    .line 735
    neg-int v9, v7

    invoke-direct {p0, v9}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 736
    const/4 v9, -0x1

    invoke-virtual {p0, v9, p1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 737
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 738
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 740
    :cond_b6
    return v8
.end method

.method greylist-max-o resetList()V
    .registers 2

    .line 619
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 620
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 622
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 624
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 625
    return-void
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .line 148
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 559
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_f

    .line 560
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 563
    :cond_f
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 564
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 566
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2b

    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    goto :goto_2b

    .line 569
    :cond_28
    iput-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_35

    .line 567
    :cond_2b
    :goto_2b
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 572
    :goto_35
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mOldSelectedPosition:I

    .line 573
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/ListView;->mOldSelectedRowId:J

    .line 576
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 578
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_93

    .line 579
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 580
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    iput v0, p0, Landroid/widget/ListView;->mOldItemCount:I

    .line 581
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mItemCount:I

    .line 582
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 584
    new-instance v0, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 585
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 587
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 590
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_81

    .line 591
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .local v0, "position":I
    goto :goto_85

    .line 593
    .end local v0    # "position":I
    :cond_81
    invoke-virtual {p0, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 595
    .restart local v0    # "position":I
    :goto_85
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 596
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 598
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-nez v1, :cond_92

    .line 600
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 602
    .end local v0    # "position":I
    :cond_92
    goto :goto_9b

    .line 603
    :cond_93
    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 604
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 606
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 609
    :goto_9b
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 610
    return-void
.end method

.method public whitelist setCacheColorHint(I)V
    .registers 4
    .param p1, "color"    # I

    .line 3398
    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 3399
    .local v0, "opaque":Z
    :goto_9
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3400
    if-eqz v0, :cond_1d

    .line 3401
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_18

    .line 3402
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3404
    :cond_18
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3406
    :cond_1d
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3407
    return-void
.end method

.method public whitelist setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 3659
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 3660
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_c

    .line 3662
    :cond_a
    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3664
    :goto_c
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3665
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    :cond_17
    const/4 v0, 0x1

    :cond_18
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3666
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3667
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3668
    return-void
.end method

.method public whitelist setDividerHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 3685
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3686
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3687
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3688
    return-void
.end method

.method public whitelist setFooterDividersEnabled(Z)V
    .registers 2
    .param p1, "footerDividersEnabled"    # Z

    .line 3724
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3725
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3726
    return-void
.end method

.method public whitelist setHeaderDividersEnabled(Z)V
    .registers 2
    .param p1, "headerDividersEnabled"    # Z

    .line 3700
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3701
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3702
    return-void
.end method

.method public whitelist setItemsCanFocus(Z)V
    .registers 3
    .param p1, "itemsCanFocus"    # Z

    .line 3361
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 3362
    if-nez p1, :cond_9

    .line 3363
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 3365
    :cond_9
    return-void
.end method

.method public whitelist setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .line 3766
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3767
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3768
    return-void
.end method

.method public whitelist setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .line 3745
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3746
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    if-gez v0, :cond_9

    .line 3747
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3749
    :cond_9
    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .line 541
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 542
    return-void
.end method

.method public whitelist setSelection(I)V
    .registers 3
    .param p1, "position"    # I

    .line 2204
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2205
    return-void
.end method

.method public whitelist setSelectionAfterHeaderView()V
    .registers 3

    .line 2330
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 2331
    .local v0, "count":I
    if-lez v0, :cond_a

    .line 2332
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2333
    return-void

    .line 2336
    :cond_a
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_12

    .line 2337
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_17

    .line 2339
    :cond_12
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2340
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2343
    :goto_17
    return-void
.end method

.method greylist setSelectionInt(I)V
    .registers 5
    .param p1, "position"    # I

    .line 2215
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2216
    const/4 v0, 0x0

    .line 2218
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2220
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_13

    .line 2221
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_e

    .line 2222
    const/4 v0, 0x1

    goto :goto_13

    .line 2223
    :cond_e
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_13

    .line 2224
    const/4 v0, 0x1

    .line 2228
    :cond_13
    :goto_13
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1c

    .line 2229
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 2232
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2234
    if-eqz v0, :cond_24

    .line 2235
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2237
    :cond_24
    return-void
.end method

.method public whitelist smoothScrollByOffset(I)V
    .registers 2
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1029
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 1030
    return-void
.end method

.method public whitelist smoothScrollToPosition(I)V
    .registers 2
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1019
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 1020
    return-void
.end method

.method greylist-max-r trackMotionScroll(II)Z
    .registers 5
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .line 1984
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    .line 1985
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1986
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1987
    return v0
.end method

.method protected greylist-max-o wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;
    .registers 5
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
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

    .line 4169
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    new-instance v0, Landroid/widget/HeaderViewListAdapter;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method protected greylist-max-o wrapHeaderListAdapterInternal()V
    .registers 4

    .line 4174
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4175
    return-void
.end method
