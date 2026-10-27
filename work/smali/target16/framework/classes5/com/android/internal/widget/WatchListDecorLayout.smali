.class public Lcom/android/internal/widget/WatchListDecorLayout;
.super Landroid/widget/FrameLayout;
.source "WatchListDecorLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private blacklist mBottomPanel:Landroid/view/View;

.field private blacklist mForegroundPaddingBottom:I

.field private blacklist mForegroundPaddingLeft:I

.field private blacklist mForegroundPaddingRight:I

.field private blacklist mForegroundPaddingTop:I

.field private blacklist mListView:Landroid/widget/ListView;

.field private final blacklist mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mObserver:Landroid/view/ViewTreeObserver;

.field private blacklist mPendingScroll:I

.field private blacklist mTopPanel:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 43
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 44
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 45
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 43
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 44
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 45
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 43
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 44
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 45
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method private blacklist applyMeasureToChild(Landroid/view/View;II)V
    .registers 10

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 116
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2b

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasuredWidth()I

    move-result p2

    .line 118
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    move-result v1

    sub-int/2addr p2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p2, v1

    .line 117
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 120
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 122
    goto :goto_41

    .line 123
    :cond_2b
    nop

    .line 124
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    move-result v5

    add-int/2addr v1, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 123
    invoke-static {p2, v1, v5}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildMeasureSpec(III)I

    move-result p2

    .line 130
    :goto_41
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v1, v4, :cond_62

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasuredHeight()I

    move-result p3

    .line 132
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    move-result v1

    sub-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p3, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p3, v0

    .line 131
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 134
    invoke-static {p3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 136
    goto :goto_78

    .line 137
    :cond_62
    nop

    .line 138
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 137
    invoke-static {p3, v1, v0}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildMeasureSpec(III)I

    move-result p3

    .line 143
    :goto_78
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 144
    return-void
.end method

.method private blacklist getPaddingBottomWithForeground()I
    .registers 3

    .line 280
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingBottom:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 281
    :cond_f
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingBottom:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    .line 280
    :goto_14
    return v0
.end method

.method private blacklist getPaddingLeftWithForeground()I
    .registers 3

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 266
    :cond_f
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    .line 265
    :goto_14
    return v0
.end method

.method private blacklist getPaddingRightWithForeground()I
    .registers 3

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingRight:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 271
    :cond_f
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingRight:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v1

    .line 270
    :goto_14
    return v0
.end method

.method private blacklist getPaddingTopWithForeground()I
    .registers 3

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingTop:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 276
    :cond_f
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingTop:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v1

    .line 275
    :goto_14
    return v0
.end method

.method private blacklist measureAndGetHeight(Landroid/view/View;II)I
    .registers 6

    .line 147
    if-eqz p1, :cond_1f

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_14

    .line 149
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1

    .line 151
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasureAllChildren()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 152
    iget-object p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    .line 155
    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist setScrolling(Landroid/view/View;F)V
    .registers 4

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_b

    .line 325
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 327
    :cond_b
    return-void
.end method


# virtual methods
.method protected whitelist onAttachedToWindow()V
    .registers 5

    .line 72
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    .line 76
    nop

    :goto_7
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5c

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 78
    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_3a

    .line 79
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_31

    .line 82
    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 84
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    .line 85
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    .line 86
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_59

    .line 80
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only one ListView child allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_3a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, 0x70

    .line 90
    const/16 v3, 0x30

    if-ne v2, v3, :cond_4f

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    if-nez v3, :cond_4f

    .line 91
    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    goto :goto_59

    .line 92
    :cond_4f
    const/16 v3, 0x50

    if-ne v2, v3, :cond_59

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    if-nez v2, :cond_59

    .line 93
    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 76
    :cond_59
    :goto_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 97
    :cond_5c
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 3

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 102
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 103
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 104
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_1a

    .line 105
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 106
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 108
    :cond_18
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    .line 110
    :cond_1a
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 18

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildCount()I

    move-result v6

    .line 162
    nop

    .line 163
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_18

    .line 164
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_18

    :cond_16
    move v9, v8

    goto :goto_19

    :cond_18
    :goto_18
    move v9, v7

    .line 165
    :goto_19
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    nop

    .line 168
    nop

    .line 169
    nop

    .line 171
    move v10, v8

    move v11, v10

    move v12, v11

    move v13, v12

    :goto_25
    if-ge v10, v6, :cond_88

    .line 172
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasureAllChildren()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3a

    goto :goto_3f

    :cond_3a
    move/from16 v2, p1

    move/from16 v4, p2

    goto :goto_85

    .line 174
    :cond_3f
    :goto_3f
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/WatchListDecorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 176
    nop

    .line 177
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v14, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v14

    iget v14, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v14

    .line 176
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 178
    nop

    .line 179
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v14, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v14

    iget v14, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v14

    .line 178
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 180
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    invoke-static {v13, v5}, Lcom/android/internal/widget/WatchListDecorLayout;->combineMeasuredStates(II)I

    move-result v13

    .line 181
    if-eqz v9, :cond_85

    .line 182
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v14, -0x1

    if-eq v5, v14, :cond_80

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v3, v14, :cond_85

    .line 184
    :cond_80
    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_85
    :goto_85
    add-int/lit8 v10, v10, 0x1

    goto :goto_25

    .line 191
    :cond_88
    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v11, v1

    .line 192
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v12, v1

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 200
    if-eqz v5, :cond_c6

    .line 201
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 202
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 205
    :cond_c6
    invoke-static {v3, v2, v13}, Lcom/android/internal/widget/WatchListDecorLayout;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v5, v13, 0x10

    .line 206
    invoke-static {v1, v4, v5}, Lcom/android/internal/widget/WatchListDecorLayout;->resolveSizeAndState(III)I

    move-result v1

    .line 205
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/widget/WatchListDecorLayout;->setMeasuredDimension(II)V

    .line 209
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_131

    .line 210
    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    if-eqz v1, :cond_e4

    .line 211
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 212
    iput v8, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    .line 215
    :cond_e4
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 216
    invoke-direct {p0, v3, v2, v4}, Lcom/android/internal/widget/WatchListDecorLayout;->measureAndGetHeight(Landroid/view/View;II)I

    move-result v3

    .line 215
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 217
    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v3

    iget-object v5, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 218
    invoke-direct {p0, v5, v2, v4}, Lcom/android/internal/widget/WatchListDecorLayout;->measureAndGetHeight(Landroid/view/View;II)I

    move-result v5

    .line 217
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 220
    iget-object v5, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v5

    if-ne v1, v5, :cond_114

    iget-object v5, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 221
    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v5

    if-eq v3, v5, :cond_131

    .line 222
    :cond_114
    iget v5, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    iget-object v6, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v6, v1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    .line 223
    iget-object v5, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 224
    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v6

    iget-object v9, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 225
    invoke-virtual {v9}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v9

    .line 223
    invoke-virtual {v5, v6, v1, v9, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 229
    :cond_131
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 230
    if-le v1, v7, :cond_156

    .line 231
    nop

    :goto_13a
    if-ge v8, v1, :cond_156

    .line 232
    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 233
    iget-object v5, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-eqz v5, :cond_150

    iget-object v5, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    if-eq v3, v5, :cond_153

    iget-object v5, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    if-eq v3, v5, :cond_153

    .line 234
    :cond_150
    invoke-direct {p0, v3, v2, v4}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    .line 231
    :cond_153
    add-int/lit8 v8, v8, 0x1

    goto :goto_13a

    .line 238
    :cond_156
    return-void
.end method

.method public whitelist onScrollChanged()V
    .registers 5

    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_5

    .line 287
    return-void

    .line 290
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    .line 291
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_49

    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_3b

    .line 293
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 294
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 294
    invoke-direct {p0, v2, v0}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    .line 296
    goto :goto_4e

    .line 298
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    goto :goto_4e

    .line 301
    :cond_49
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    .line 305
    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    if-eqz v0, :cond_a6

    .line 306
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_a1

    .line 307
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_94

    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 309
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 311
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v3, v0

    .line 309
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    .line 312
    goto :goto_a6

    .line 314
    :cond_94
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    goto :goto_a6

    .line 317
    :cond_a1
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    .line 320
    :cond_a6
    :goto_a6
    return-void
.end method

.method public whitelist setForegroundGravity(I)V
    .registers 4

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForegroundGravity()I

    move-result v0

    if-eq v0, p1, :cond_3c

    .line 243
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 247
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForegroundGravity()I

    move-result v0

    const/16 v1, 0x77

    if-ne v0, v1, :cond_33

    if-eqz p1, :cond_33

    .line 248
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 249
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 250
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 251
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 252
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 253
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 255
    :cond_32
    goto :goto_3c

    .line 256
    :cond_33
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 257
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 258
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 259
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 262
    :cond_3c
    :goto_3c
    return-void
.end method
