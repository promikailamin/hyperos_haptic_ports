.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GridView$StretchMode;
    }
.end annotation


# static fields
.field public static final whitelist AUTO_FIT:I = -0x1

.field public static final whitelist NO_STRETCH:I = 0x0

.field public static final whitelist STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final whitelist STRETCH_SPACING:I = 0x1

.field public static final whitelist STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private greylist-max-p mColumnWidth:I

.field private greylist-max-o mGravity:I

.field private greylist mHorizontalSpacing:I

.field private greylist-max-p mNumColumns:I

.field private greylist-max-o mReferenceView:Landroid/view/View;

.field private greylist-max-o mReferenceViewInSelectedRow:Landroid/view/View;

.field private greylist mRequestedColumnWidth:I

.field private greylist mRequestedHorizontalSpacing:I

.field private greylist-max-p mRequestedNumColumns:I

.field private greylist-max-o mStretchMode:I

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist mVerticalSpacing:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 142
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 147
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16

    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 120
    iput v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 122
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 130
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 131
    iput-object v3, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 133
    const v3, 0x800003

    iput v3, p0, Landroid/widget/GridView;->mGravity:I

    .line 135
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 152
    sget-object v3, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 154
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/widget/GridView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 157
    const/4 p1, 0x1

    invoke-virtual {v8, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 159
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 161
    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 163
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 165
    const/4 p2, 0x3

    invoke-virtual {v8, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 166
    if-ltz p2, :cond_48

    .line 167
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 170
    :cond_48
    const/4 p2, 0x4

    invoke-virtual {v8, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 171
    if-lez p2, :cond_52

    .line 172
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 175
    :cond_52
    const/4 p2, 0x5

    invoke-virtual {v8, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 176
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 178
    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 179
    if-ltz p1, :cond_63

    .line 180
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setGravity(I)V

    .line 183
    :cond_63
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    return-void
.end method

.method private greylist-max-o adjustForBottomFadingEdge(Landroid/view/View;II)V
    .registers 5

    .line 823
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, p3, :cond_18

    .line 827
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p2

    .line 831
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr p1, p3

    .line 832
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 835
    neg-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 837
    :cond_18
    return-void
.end method

.method private greylist-max-o adjustForTopFadingEdge(Landroid/view/View;II)V
    .registers 5

    .line 851
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, p2, :cond_17

    .line 854
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p2, v0

    .line 858
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr p3, p1

    .line 859
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 862
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 864
    :cond_17
    return-void
.end method

.method private greylist-max-o adjustViewsUpOrDown()V
    .registers 6

    .line 2275
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 2277
    if-lez v0, :cond_4c

    .line 2281
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-nez v1, :cond_24

    .line 2284
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2285
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 2286
    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-eqz v1, :cond_1f

    .line 2289
    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v0, v1

    .line 2291
    :cond_1f
    if-gez v0, :cond_22

    .line 2293
    goto :goto_46

    .line 2291
    :cond_22
    move v2, v0

    goto :goto_46

    .line 2297
    :cond_24
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2298
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 2300
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge v3, v0, :cond_42

    .line 2303
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v1, v0

    .line 2306
    :cond_42
    if-lez v1, :cond_45

    .line 2308
    goto :goto_46

    .line 2306
    :cond_45
    move v2, v1

    .line 2312
    :goto_46
    if-eqz v2, :cond_4c

    .line 2313
    neg-int v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 2316
    :cond_4c
    return-void
.end method

.method private greylist-max-o commonKey(IILandroid/view/KeyEvent;)Z
    .registers 11

    .line 1664
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1665
    return v1

    .line 1668
    :cond_6
    iget-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-eqz v0, :cond_d

    .line 1669
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1672
    :cond_d
    nop

    .line 1673
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1674
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_38

    .line 1675
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_38

    if-eq v0, v3, :cond_38

    .line 1676
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 1677
    if-nez v2, :cond_39

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_39

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_39

    .line 1678
    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    .line 1679
    move v2, v3

    goto :goto_39

    .line 1683
    :cond_38
    move v2, v1

    :cond_39
    :goto_39
    if-nez v2, :cond_1a0

    if-eq v0, v3, :cond_1a0

    .line 1684
    const/16 v4, 0x82

    const/16 v5, 0x21

    const/4 v6, 0x2

    sparse-switch p1, :sswitch_data_1be

    goto/16 :goto_1a0

    .line 1736
    :sswitch_47
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_1a0

    .line 1737
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5d

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_5a

    goto :goto_5d

    :cond_5a
    move v2, v1

    goto/16 :goto_1a0

    :cond_5d
    :goto_5d
    move v2, v3

    goto/16 :goto_1a0

    .line 1730
    :sswitch_60
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1a0

    .line 1731
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_76

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_73

    goto :goto_76

    :cond_73
    move v2, v1

    goto/16 :goto_1a0

    :cond_76
    :goto_76
    move v2, v3

    goto/16 :goto_1a0

    .line 1722
    :sswitch_79
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_92

    .line 1723
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_8f

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v2

    if-eqz v2, :cond_8c

    goto :goto_8f

    :cond_8c
    move v2, v1

    goto/16 :goto_1a0

    :cond_8f
    :goto_8f
    move v2, v3

    goto/16 :goto_1a0

    .line 1724
    :cond_92
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_1a0

    .line 1725
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_a8

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_a5

    goto :goto_a8

    :cond_a5
    move v2, v1

    goto/16 :goto_1a0

    :cond_a8
    :goto_a8
    move v2, v3

    goto/16 :goto_1a0

    .line 1714
    :sswitch_ab
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 1715
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_c1

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v2

    if-eqz v2, :cond_be

    goto :goto_c1

    :cond_be
    move v2, v1

    goto/16 :goto_1a0

    :cond_c1
    :goto_c1
    move v2, v3

    goto/16 :goto_1a0

    .line 1716
    :cond_c4
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1a0

    .line 1717
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_da

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_d7

    goto :goto_da

    :cond_d7
    move v2, v1

    goto/16 :goto_1a0

    :cond_da
    :goto_da
    move v2, v3

    goto/16 :goto_1a0

    .line 1747
    :sswitch_dd
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 1748
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_f3

    .line 1749
    invoke-virtual {p0, v6}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v2

    if-eqz v2, :cond_f0

    goto :goto_f3

    :cond_f0
    move v2, v1

    goto/16 :goto_1a0

    :cond_f3
    :goto_f3
    move v2, v3

    goto/16 :goto_1a0

    .line 1750
    :cond_f6
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1a0

    .line 1751
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_10c

    .line 1752
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v2

    if-eqz v2, :cond_109

    goto :goto_10c

    :cond_109
    move v2, v1

    goto/16 :goto_1a0

    :cond_10c
    :goto_10c
    move v2, v3

    goto/16 :goto_1a0

    .line 1692
    :sswitch_10f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1a0

    .line 1693
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_127

    const/16 v2, 0x42

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v2

    if-eqz v2, :cond_124

    goto :goto_127

    :cond_124
    move v2, v1

    goto/16 :goto_1a0

    :cond_127
    :goto_127
    move v2, v3

    goto/16 :goto_1a0

    .line 1686
    :sswitch_12a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1a0

    .line 1687
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_142

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v2

    if-eqz v2, :cond_13f

    goto :goto_142

    :cond_13f
    move v2, v1

    goto/16 :goto_1a0

    :cond_142
    :goto_142
    move v2, v3

    goto/16 :goto_1a0

    .line 1706
    :sswitch_145
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_15c

    .line 1707
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_15a

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v2

    if-eqz v2, :cond_158

    goto :goto_15a

    :cond_158
    move v2, v1

    goto :goto_1a0

    :cond_15a
    :goto_15a
    move v2, v3

    goto :goto_1a0

    .line 1708
    :cond_15c
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_1a0

    .line 1709
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_171

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_16f

    goto :goto_171

    :cond_16f
    move v2, v1

    goto :goto_1a0

    :cond_171
    :goto_171
    move v2, v3

    goto :goto_1a0

    .line 1698
    :sswitch_173
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_18a

    .line 1699
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_188

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v2

    if-eqz v2, :cond_186

    goto :goto_188

    :cond_186
    move v2, v1

    goto :goto_1a0

    :cond_188
    :goto_188
    move v2, v3

    goto :goto_1a0

    .line 1700
    :cond_18a
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1a0

    .line 1701
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_19f

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_19d

    goto :goto_19f

    :cond_19d
    move v2, v1

    goto :goto_1a0

    :cond_19f
    :goto_19f
    move v2, v3

    .line 1758
    :cond_1a0
    :goto_1a0
    if-eqz v2, :cond_1a3

    .line 1759
    return v3

    .line 1762
    :cond_1a3
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1aa

    .line 1763
    return v3

    .line 1766
    :cond_1aa
    packed-switch v0, :pswitch_data_1e4

    .line 1774
    return v1

    .line 1772
    :pswitch_1ae
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 1770
    :pswitch_1b3
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 1768
    :pswitch_1b8
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_1be
    .sparse-switch
        0x13 -> :sswitch_173
        0x14 -> :sswitch_145
        0x15 -> :sswitch_12a
        0x16 -> :sswitch_10f
        0x3d -> :sswitch_dd
        0x5c -> :sswitch_ab
        0x5d -> :sswitch_79
        0x7a -> :sswitch_60
        0x7b -> :sswitch_47
    .end sparse-switch

    :pswitch_data_1e4
    .packed-switch 0x0
        :pswitch_1b8
        :pswitch_1b3
        :pswitch_1ae
    .end packed-switch
.end method

.method private greylist-max-o correctTooHigh(III)V
    .registers 8

    .line 635
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 636
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_5c

    if-lez p3, :cond_5c

    .line 638
    sub-int/2addr p3, v1

    invoke-virtual {p0, p3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 641
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    .line 643
    iget v0, p0, Landroid/widget/GridView;->mBottom:I

    iget v2, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 647
    sub-int/2addr v0, p3

    .line 649
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 650
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 654
    if-lez v0, :cond_5c

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gtz v3, :cond_35

    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_5c

    .line 655
    :cond_35
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v3, :cond_42

    .line 657
    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 661
    :cond_42
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 662
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v0, :cond_5c

    .line 665
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v2, :cond_50

    move p1, v1

    :cond_50
    sub-int/2addr v0, p1

    .line 666
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, p2

    .line 665
    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 668
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 672
    :cond_5c
    return-void
.end method

.method private greylist-max-o correctTooLow(III)V
    .registers 10

    .line 675
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v0, :cond_5a

    if-lez p3, :cond_5a

    .line 677
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 680
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 683
    iget-object v1, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 686
    iget v2, p0, Landroid/widget/GridView;->mBottom:I

    iget v3, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 690
    sub-int/2addr v0, v1

    .line 691
    add-int/lit8 v1, p3, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 692
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 693
    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v4, p3

    const/4 p3, 0x1

    sub-int/2addr v4, p3

    .line 697
    if-lez v0, :cond_5a

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, p3

    if-lt v4, v5, :cond_36

    if-le v3, v2, :cond_5a

    .line 698
    :cond_36
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, p3

    if-ne v4, v5, :cond_40

    .line 700
    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 704
    :cond_40
    neg-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 705
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v0, p3

    if-ge v4, v0, :cond_5a

    .line 708
    iget-boolean v0, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v0, :cond_4e

    move p1, p3

    :cond_4e
    add-int/2addr v4, p1

    .line 709
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p1, p2

    .line 708
    invoke-direct {p0, v4, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 711
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 715
    :cond_5a
    return-void
.end method

.method private greylist-max-r determineColumns(I)Z
    .registers 8

    .line 985
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 986
    iget v1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 987
    iget v2, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 988
    nop

    .line 990
    iget v3, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    .line 991
    if-lez v2, :cond_16

    .line 993
    add-int v3, p1, v0

    add-int v4, v2, v0

    div-int/2addr v3, v4

    iput v3, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_1e

    .line 997
    :cond_16
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_1e

    .line 1001
    :cond_1a
    iget v3, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iput v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1004
    :goto_1e
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v4, 0x1

    if-gtz v3, :cond_25

    .line 1005
    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1008
    :cond_25
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_6e

    .line 1016
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int/2addr v5, v2

    sub-int/2addr p1, v5

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v5, v4

    mul-int/2addr v5, v0

    sub-int/2addr p1, v5

    .line 1019
    if-gez p1, :cond_3b

    .line 1020
    move v3, v4

    goto :goto_3b

    .line 1011
    :pswitch_36
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1012
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 1013
    goto :goto_6c

    .line 1023
    :cond_3b
    :goto_3b
    packed-switch v1, :pswitch_data_74

    goto :goto_6c

    .line 1043
    :pswitch_3f
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1044
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v1, v4, :cond_4d

    .line 1045
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v1, v4

    div-int/2addr p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_6c

    .line 1048
    :cond_4d
    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_6c

    .line 1026
    :pswitch_51
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int/2addr p1, v1

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1027
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 1028
    goto :goto_6c

    .line 1032
    :pswitch_5a
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1033
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v1, v4, :cond_68

    .line 1034
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v1, v4

    div-int/2addr p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_6c

    .line 1037
    :cond_68
    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 1039
    nop

    .line 1055
    :goto_6c
    return v3

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_36
    .end packed-switch

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_51
        :pswitch_3f
    .end packed-switch
.end method

.method private greylist-max-p fillDown(II)Landroid/view/View;
    .registers 7

    .line 318
    nop

    .line 320
    iget v0, p0, Landroid/widget/GridView;->mBottom:I

    iget v1, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v0, v1

    .line 321
    iget v1, p0, Landroid/widget/GridView;->mGroupFlags:I

    const/16 v2, 0x22

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_13

    .line 322
    iget-object v1, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 325
    :cond_13
    :goto_13
    const/4 v1, 0x1

    if-ge p2, v0, :cond_2e

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge p1, v2, :cond_2e

    .line 326
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p2

    .line 327
    if-eqz p2, :cond_21

    .line 328
    move-object v3, p2

    .line 333
    :cond_21
    iget-object p2, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr p2, v1

    .line 335
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v1

    .line 336
    goto :goto_13

    .line 338
    :cond_2e
    iget p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget p2, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    .line 339
    return-object v3
.end method

.method private greylist-max-o fillFromBottom(II)Landroid/view/View;
    .registers 5

    .line 466
    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 467
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 469
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 470
    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 472
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o fillFromSelection(III)Landroid/view/View;
    .registers 11

    .line 728
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 729
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 730
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 731
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 734
    nop

    .line 736
    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v5, 0x1

    if-nez v4, :cond_15

    .line 737
    rem-int v4, v1, v2

    sub-int/2addr v1, v4

    const/4 v4, -0x1

    goto :goto_29

    .line 739
    :cond_15
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    .line 741
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v5

    rem-int v6, v4, v2

    sub-int/2addr v4, v6

    sub-int v4, v1, v4

    .line 742
    sub-int v1, v4, v2

    add-int/2addr v1, v5

    const/4 v6, 0x0

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 748
    :goto_29
    invoke-direct {p0, p2, v0, v1}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result p2

    .line 749
    invoke-direct {p0, p3, v0, v2, v1}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result p3

    .line 752
    iget-boolean v0, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v0, :cond_37

    move v0, v4

    goto :goto_38

    :cond_37
    move v0, v1

    :goto_38
    invoke-direct {p0, v0, p1, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    .line 754
    iput v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 756
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 757
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 758
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 760
    iget-boolean p2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez p2, :cond_61

    .line 761
    sub-int p2, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 762
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 763
    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_76

    .line 765
    :cond_61
    add-int/2addr v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v4, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 766
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 767
    sub-int/2addr v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 771
    :goto_76
    return-object p1
.end method

.method private greylist-max-o fillFromTop(I)Landroid/view/View;
    .registers 5

    .line 456
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 457
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 458
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gez v0, :cond_1d

    .line 459
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 461
    :cond_1d
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 462
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o fillSelection(II)Landroid/view/View;
    .registers 12

    .line 476
    invoke-virtual {p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v0

    .line 477
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 478
    iget v2, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 481
    nop

    .line 483
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x1

    if-nez v3, :cond_13

    .line 484
    rem-int v3, v0, v1

    sub-int/2addr v0, v3

    const/4 v3, -0x1

    goto :goto_27

    .line 486
    :cond_13
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    .line 488
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v0, v4

    rem-int v5, v3, v1

    sub-int/2addr v3, v5

    sub-int v3, v0, v3

    .line 489
    sub-int v0, v3, v1

    add-int/2addr v0, v4

    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 492
    :goto_27
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 493
    invoke-direct {p0, p1, v5, v0}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v6

    .line 495
    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v7, :cond_35

    move v7, v3

    goto :goto_36

    :cond_35
    move v7, v0

    :goto_36
    invoke-direct {p0, v7, v6, v4}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v6

    .line 496
    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 498
    iget-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 500
    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v8, :cond_5c

    .line 501
    add-int p1, v0, v1

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {p0, p1, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 502
    invoke-direct {p0, p2}, Landroid/widget/GridView;->pinToBottom(I)V

    .line 503
    sub-int/2addr v0, v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 504
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_80

    .line 506
    :cond_5c
    invoke-direct {p0, p2, v5, v1, v0}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result p2

    .line 508
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr p2, v5

    .line 509
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 510
    sub-int/2addr v0, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-direct {p0, v0, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 511
    invoke-direct {p0, p1}, Landroid/widget/GridView;->pinToTop(I)V

    .line 512
    add-int/2addr v3, v1

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p1, v2

    invoke-direct {p0, v3, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 513
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 516
    :goto_80
    return-object v6
.end method

.method private greylist-max-o fillSpecific(II)Landroid/view/View;
    .registers 10

    .line 574
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 577
    nop

    .line 579
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v2, 0x1

    if-nez v1, :cond_d

    .line 580
    rem-int v1, p1, v0

    sub-int/2addr p1, v1

    const/4 v1, -0x1

    goto :goto_21

    .line 582
    :cond_d
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    .line 584
    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr p1, v2

    rem-int v3, v1, v0

    sub-int/2addr v1, v3

    sub-int v1, p1, v1

    .line 585
    sub-int p1, v1, v0

    add-int/2addr p1, v2

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 588
    :goto_21
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v3, :cond_27

    move v3, v1

    goto :goto_28

    :cond_27
    move v3, p1

    :goto_28
    invoke-direct {p0, v3, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p2

    .line 591
    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 593
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 595
    if-nez v3, :cond_34

    .line 596
    const/4 p1, 0x0

    return-object p1

    .line 599
    :cond_34
    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 604
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v5, :cond_5c

    .line 605
    sub-int v1, p1, v0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-direct {p0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    .line 606
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 607
    add-int/2addr p1, v0

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v4

    invoke-direct {p0, p1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object p1

    .line 609
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 610
    if-lez v2, :cond_5b

    .line 611
    invoke-direct {p0, v0, v4, v2}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 613
    :cond_5b
    goto :goto_7f

    .line 614
    :cond_5c
    add-int/2addr v1, v0

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {p0, v1, v5}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 615
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 616
    sub-int/2addr p1, v2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-direct {p0, p1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object p1

    .line 618
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 619
    if-lez v2, :cond_7c

    .line 620
    invoke-direct {p0, v0, v4, v2}, Landroid/widget/GridView;->correctTooLow(III)V

    .line 624
    :cond_7c
    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    :goto_7f
    if-eqz p2, :cond_82

    .line 625
    return-object p2

    .line 626
    :cond_82
    if-eqz v1, :cond_85

    .line 627
    return-object v1

    .line 629
    :cond_85
    return-object p1
.end method

.method private greylist-max-p fillUp(II)Landroid/view/View;
    .registers 7

    .line 418
    nop

    .line 420
    nop

    .line 421
    iget v0, p0, Landroid/widget/GridView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_10

    .line 422
    iget-object v0, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_11

    .line 421
    :cond_10
    move v0, v3

    .line 425
    :goto_11
    if-le p2, v0, :cond_2b

    if-ltz p1, :cond_2b

    .line 427
    invoke-direct {p0, p1, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p2

    .line 428
    if-eqz p2, :cond_1c

    .line 429
    move-object v2, p2

    .line 432
    :cond_1c
    iget-object p2, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr p2, v1

    .line 434
    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 436
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v1

    .line 437
    goto :goto_11

    .line 439
    :cond_2b
    iget-boolean p2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz p2, :cond_37

    .line 440
    add-int/lit8 p1, p1, 0x1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 443
    :cond_37
    iget p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget p2, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    .line 444
    return-object v2
.end method

.method private greylist-max-o getBottomSelectionPixel(IIII)I
    .registers 5

    .line 786
    nop

    .line 787
    add-int/2addr p4, p3

    add-int/lit8 p4, p4, -0x1

    iget p3, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 p3, p3, -0x1

    if-ge p4, p3, :cond_b

    .line 788
    sub-int/2addr p1, p2

    .line 790
    :cond_b
    return p1
.end method

.method private greylist-max-o getTopSelectionPixel(III)I
    .registers 4

    .line 803
    nop

    .line 804
    if-lez p3, :cond_4

    .line 805
    add-int/2addr p1, p2

    .line 807
    :cond_4
    return p1
.end method

.method private greylist-max-o isCandidateSelection(II)Z
    .registers 9

    .line 2005
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 2006
    add-int/lit8 v1, v0, -0x1

    sub-int v2, v1, p1

    .line 2011
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1d

    .line 2012
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, p1, v2

    sub-int v2, p1, v2

    .line 2013
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2d

    .line 2015
    :cond_1d
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v0, v2, v0

    sub-int/2addr v2, v0

    sub-int v0, v1, v2

    .line 2016
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v2, v0, v2

    add-int/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2019
    :goto_2d
    sparse-switch p2, :sswitch_data_54

    .line 2040
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2026
    :sswitch_38
    if-nez v2, :cond_3b

    move v4, v5

    :cond_3b
    return v4

    .line 2023
    :sswitch_3c
    if-ne p1, v2, :cond_3f

    move v4, v5

    :cond_3f
    return v4

    .line 2032
    :sswitch_40
    if-ne v0, v1, :cond_43

    move v4, v5

    :cond_43
    return v4

    .line 2029
    :sswitch_44
    if-ne p1, v0, :cond_47

    move v4, v5

    :cond_47
    return v4

    .line 2035
    :sswitch_48
    if-ne p1, v2, :cond_4d

    if-nez v2, :cond_4d

    move v4, v5

    :cond_4d
    return v4

    .line 2038
    :sswitch_4e
    if-ne p1, v0, :cond_53

    if-ne v0, v1, :cond_53

    move v4, v5

    :cond_53
    return v4

    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_4e
        0x2 -> :sswitch_48
        0x11 -> :sswitch_44
        0x21 -> :sswitch_40
        0x42 -> :sswitch_3c
        0x82 -> :sswitch_38
    .end sparse-switch
.end method

.method private greylist-max-o makeAndAddView(IIZIZI)Landroid/view/View;
    .registers 16

    .line 1447
    iget-boolean v1, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-nez v1, :cond_18

    .line 1449
    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1450
    if-eqz v1, :cond_18

    .line 1453
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    .line 1454
    return-object v1

    .line 1460
    :cond_18
    iget-object v1, p0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v1}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1463
    iget-object v3, p0, Landroid/widget/GridView;->mIsScrap:[Z

    const/4 v4, 0x0

    aget-boolean v7, v3, v4

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    .line 1465
    return-object v1
.end method

.method private greylist-max-o makeRow(IIZ)Landroid/view/View;
    .registers 23

    .line 343
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/GridView;->mColumnWidth:I

    .line 344
    iget v8, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 346
    invoke-virtual {v0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v1

    .line 351
    const/4 v2, 0x3

    const/4 v9, 0x0

    if-eqz v1, :cond_21

    .line 352
    invoke-virtual {v0}, Landroid/widget/GridView;->getWidth()I

    move-result v3

    iget-object v4, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v7

    .line 353
    iget v4, v0, Landroid/widget/GridView;->mStretchMode:I

    if-ne v4, v2, :cond_1e

    move v2, v8

    goto :goto_1f

    :cond_1e
    move v2, v9

    :goto_1f
    sub-int/2addr v3, v2

    goto :goto_2d

    .line 355
    :cond_21
    iget-object v3, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 356
    iget v4, v0, Landroid/widget/GridView;->mStretchMode:I

    if-ne v4, v2, :cond_2b

    move v2, v8

    goto :goto_2c

    :cond_2b
    move v2, v9

    :goto_2c
    add-int/2addr v3, v2

    .line 359
    :goto_2d
    iget-boolean v2, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-nez v2, :cond_41

    .line 360
    iget v2, v0, Landroid/widget/GridView;->mNumColumns:I

    add-int v2, p1, v2

    iget v4, v0, Landroid/widget/GridView;->mItemCount:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v12, p1

    move v13, v2

    goto :goto_64

    .line 362
    :cond_41
    add-int/lit8 v2, p1, 0x1

    .line 363
    iget v4, v0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v4, p1, v4

    add-int/2addr v4, v11

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 365
    sub-int v5, v2, v4

    iget v6, v0, Landroid/widget/GridView;->mNumColumns:I

    if-ge v5, v6, :cond_62

    .line 366
    iget v6, v0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v6, v5

    add-int v5, v7, v8

    mul-int/2addr v6, v5

    .line 367
    if-eqz v1, :cond_5c

    move v5, v10

    goto :goto_5d

    :cond_5c
    move v5, v11

    :goto_5d
    mul-int/2addr v5, v6

    add-int/2addr v3, v5

    move v13, v2

    move v12, v4

    goto :goto_64

    .line 365
    :cond_62
    move v13, v2

    move v12, v4

    .line 371
    :goto_64
    nop

    .line 373
    invoke-virtual {v0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v14

    .line 374
    invoke-virtual {v0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v15

    .line 375
    iget v2, v0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 377
    nop

    .line 378
    if-eqz v1, :cond_75

    move/from16 v16, v10

    goto :goto_77

    :cond_75
    move/from16 v16, v11

    .line 379
    :goto_77
    const/4 v1, 0x0

    move-object/from16 v17, v1

    move v4, v3

    move v3, v12

    :goto_7c
    if-ge v3, v13, :cond_ad

    .line 381
    if-ne v3, v2, :cond_82

    move v5, v11

    goto :goto_83

    :cond_82
    move v5, v9

    .line 384
    :goto_83
    if-eqz p3, :cond_87

    move v6, v10

    goto :goto_8a

    :cond_87
    sub-int v1, v3, v12

    move v6, v1

    .line 385
    :goto_8a
    move/from16 v18, v2

    move v1, v3

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v6

    .line 387
    mul-int v2, v16, v7

    add-int/2addr v4, v2

    .line 388
    add-int/lit8 v2, v13, -0x1

    if-ge v1, v2, :cond_9f

    .line 389
    mul-int v2, v16, v8

    add-int/2addr v4, v2

    .line 392
    :cond_9f
    if-eqz v5, :cond_a7

    if-nez v14, :cond_a5

    if-eqz v15, :cond_a7

    .line 393
    :cond_a5
    move-object/from16 v17, v6

    .line 379
    :cond_a7
    add-int/lit8 v3, v1, 0x1

    move-object v1, v6

    move/from16 v2, v18

    goto :goto_7c

    .line 397
    :cond_ad
    iput-object v1, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 399
    if-eqz v17, :cond_b5

    .line 400
    iget-object v1, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iput-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 403
    :cond_b5
    return-object v17
.end method

.method private greylist-max-o moveSelection(III)Landroid/view/View;
    .registers 13

    .line 900
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 901
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 902
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 903
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 907
    nop

    .line 909
    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_1b

    .line 910
    sub-int p1, v1, p1

    rem-int v4, p1, v2

    sub-int/2addr p1, v4

    .line 912
    rem-int v4, v1, v2

    sub-int/2addr v1, v4

    const/4 v4, -0x1

    goto :goto_41

    .line 914
    :cond_1b
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v4, v6

    sub-int/2addr v4, v1

    .line 916
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v6

    rem-int v8, v4, v2

    sub-int/2addr v4, v8

    sub-int v4, v7, v4

    .line 917
    sub-int v7, v4, v2

    add-int/2addr v7, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 919
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v8, v6

    sub-int/2addr v1, p1

    sub-int/2addr v8, v1

    .line 920
    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr p1, v6

    rem-int v1, v8, v2

    sub-int/2addr v8, v1

    sub-int/2addr p1, v8

    .line 921
    sub-int/2addr p1, v2

    add-int/2addr p1, v6

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v1, v7

    .line 924
    :goto_41
    sub-int p1, v1, p1

    .line 926
    invoke-direct {p0, p2, v0, v1}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result p2

    .line 927
    invoke-direct {p0, p3, v0, v2, v1}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result p3

    .line 931
    iput v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 936
    if-lez p1, :cond_6c

    .line 941
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez p1, :cond_54

    goto :goto_5a

    .line 942
    :cond_54
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 944
    :goto_5a
    iget-boolean p1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz p1, :cond_60

    move p1, v4

    goto :goto_61

    :cond_60
    move p1, v1

    :goto_61
    add-int/2addr v5, v3

    invoke-direct {p0, p1, v5, v6}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    .line 945
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 947
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 948
    goto :goto_a4

    :cond_6c
    if-gez p1, :cond_8c

    .line 952
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez p1, :cond_74

    .line 953
    move p1, v5

    goto :goto_7a

    :cond_74
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 955
    :goto_7a
    iget-boolean v0, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v0, :cond_80

    move v0, v4

    goto :goto_81

    :cond_80
    move v0, v1

    :goto_81
    sub-int/2addr p1, v3

    invoke-direct {p0, v0, p1, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    .line 956
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 958
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 959
    goto :goto_a4

    .line 963
    :cond_8c
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez p1, :cond_91

    .line 964
    goto :goto_97

    :cond_91
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 966
    :goto_97
    iget-boolean p1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz p1, :cond_9d

    move p1, v4

    goto :goto_9e

    :cond_9d
    move p1, v1

    :goto_9e
    invoke-direct {p0, p1, v5, v6}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    .line 967
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 970
    :goto_a4
    iget-boolean p2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez p2, :cond_bf

    .line 971
    sub-int p2, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 972
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 973
    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_d4

    .line 975
    :cond_bf
    add-int/2addr v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v4, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 976
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 977
    sub-int/2addr v1, v6

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 980
    :goto_d4
    return-object p1
.end method

.method private greylist-max-o pinToBottom(I)V
    .registers 5

    .line 530
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 531
    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-ne v1, v2, :cond_1b

    .line 532
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 533
    sub-int/2addr p1, v0

    .line 534
    if-lez p1, :cond_1b

    .line 535
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 538
    :cond_1b
    return-void
.end method

.method private greylist-max-o pinToTop(I)V
    .registers 3

    .line 520
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v0, :cond_13

    .line 521
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 522
    sub-int/2addr p1, v0

    .line 523
    if-gez p1, :cond_13

    .line 524
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 527
    :cond_13
    return-void
.end method

.method private greylist-max-o setupChild(Landroid/view/View;IIZIZZI)V
    .registers 22

    .line 1488
    move v0, p2

    move/from16 v1, p8

    const-string v2, "setupGridItem"

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1490
    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz p6, :cond_16

    invoke-virtual {p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v6

    if-eqz v6, :cond_16

    move v6, v2

    goto :goto_17

    :cond_16
    move v6, v5

    .line 1491
    :goto_17
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eq v6, v7, :cond_1f

    move v7, v2

    goto :goto_20

    :cond_1f
    move v7, v5

    .line 1492
    :goto_20
    iget v8, p0, Landroid/widget/GridView;->mTouchMode:I

    .line 1493
    if-lez v8, :cond_2d

    const/4 v9, 0x3

    if-ge v8, v9, :cond_2d

    iget v8, p0, Landroid/widget/GridView;->mMotionPosition:I

    if-ne v8, v0, :cond_2d

    move v8, v2

    goto :goto_2e

    :cond_2d
    move v8, v5

    .line 1495
    :goto_2e
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v9

    if-eq v8, v9, :cond_36

    move v9, v2

    goto :goto_37

    :cond_36
    move v9, v5

    .line 1496
    :goto_37
    if-eqz p7, :cond_44

    if-nez v7, :cond_44

    .line 1497
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

    .line 1501
    :goto_45
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/AbsListView$LayoutParams;

    .line 1502
    if-nez v11, :cond_53

    .line 1503
    invoke-virtual {p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/AbsListView$LayoutParams;

    .line 1505
    :cond_53
    iget-object v12, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v12

    iput v12, v11, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1506
    iget-object v12, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    iput-boolean v12, v11, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1511
    if-eqz v7, :cond_6d

    .line 1512
    invoke-virtual {p1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 1513
    if-eqz v6, :cond_6d

    .line 1514
    invoke-virtual {p0}, Landroid/widget/GridView;->requestFocus()Z

    .line 1518
    :cond_6d
    if-eqz v9, :cond_72

    .line 1519
    invoke-virtual {p1, v8}, Landroid/view/View;->setPressed(Z)V

    .line 1522
    :cond_72
    iget v6, p0, Landroid/widget/GridView;->mChoiceMode:I

    if-eqz v6, :cond_a2

    iget-object v6, p0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v6, :cond_a2

    .line 1523
    instance-of v6, p1, Landroid/widget/Checkable;

    if-eqz v6, :cond_8b

    .line 1524
    move-object v6, p1

    check-cast v6, Landroid/widget/Checkable;

    iget-object v7, p0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_a2

    .line 1525
    :cond_8b
    invoke-virtual {p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_a2

    .line 1527
    iget-object v6, p0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setActivated(Z)V

    .line 1531
    :cond_a2
    :goto_a2
    if-eqz p7, :cond_bb

    iget-boolean v6, v11, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-nez v6, :cond_bb

    .line 1532
    invoke-virtual {p0, p1, v1, v11}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1536
    if-eqz p7, :cond_b7

    .line 1537
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    iget v1, v1, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v1, v0, :cond_c0

    .line 1539
    :cond_b7
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_c0

    .line 1542
    :cond_bb
    iput-boolean v5, v11, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1543
    invoke-virtual {p0, p1, v1, v11, v2}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1546
    :cond_c0
    :goto_c0
    if-eqz v10, :cond_df

    .line 1547
    nop

    .line 1548
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, v11, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1547
    invoke-static {v0, v5, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1550
    iget v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1551
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v6, v11, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 1550
    invoke-static {v1, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1552
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1553
    goto :goto_e2

    .line 1554
    :cond_df
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    .line 1557
    :goto_e2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1558
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1561
    if-eqz p4, :cond_ef

    move/from16 v5, p3

    goto :goto_f1

    :cond_ef
    sub-int v5, p3, v1

    .line 1563
    :goto_f1
    invoke-virtual {p0}, Landroid/widget/GridView;->getLayoutDirection()I

    move-result v6

    .line 1564
    iget v7, p0, Landroid/widget/GridView;->mGravity:I

    invoke-static {v7, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    .line 1565
    and-int/lit8 v6, v6, 0x7

    packed-switch v6, :pswitch_data_13c

    .line 1576
    :pswitch_100
    goto :goto_111

    .line 1573
    :pswitch_101
    iget v6, p0, Landroid/widget/GridView;->mColumnWidth:I

    add-int v6, p5, v6

    sub-int/2addr v6, v0

    .line 1574
    goto :goto_113

    .line 1567
    :pswitch_107
    nop

    .line 1568
    goto :goto_111

    .line 1570
    :pswitch_109
    iget v6, p0, Landroid/widget/GridView;->mColumnWidth:I

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    add-int v6, p5, v6

    .line 1571
    goto :goto_113

    .line 1580
    :goto_111
    move/from16 v6, p5

    :goto_113
    if-eqz v10, :cond_11b

    .line 1581
    add-int/2addr v0, v6

    .line 1582
    add-int/2addr v1, v5

    .line 1583
    invoke-virtual {p1, v6, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1584
    goto :goto_12b

    .line 1585
    :cond_11b
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v6, v0

    invoke-virtual {p1, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1586
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v5, v0

    invoke-virtual {p1, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1589
    :goto_12b
    iget-boolean v0, p0, Landroid/widget/GridView;->mCachingStarted:Z

    if-eqz v0, :cond_138

    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_138

    .line 1590
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1593
    :cond_138
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1594
    return-void

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_109
        :pswitch_100
        :pswitch_107
        :pswitch_100
        :pswitch_101
    .end packed-switch
.end method


# virtual methods
.method greylist-max-o arrowScroll(I)Z
    .registers 12

    .line 1840
    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 1841
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1846
    nop

    .line 1848
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_19

    .line 1849
    div-int v2, v0, v1

    mul-int/2addr v2, v1

    .line 1850
    add-int v5, v2, v1

    sub-int/2addr v5, v3

    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_2a

    .line 1852
    :cond_19
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 1853
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, v3

    div-int/2addr v2, v1

    mul-int/2addr v2, v1

    sub-int/2addr v5, v2

    .line 1854
    sub-int v2, v5, v1

    add-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1857
    :goto_2a
    const/4 v6, 0x6

    sparse-switch p1, :sswitch_data_9c

    goto :goto_52

    .line 1866
    :sswitch_2f
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v3

    if-ge v5, v7, :cond_52

    .line 1867
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1868
    add-int/2addr v1, v0

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v3

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1869
    move v1, v3

    goto :goto_53

    .line 1859
    :sswitch_43
    if-lez v2, :cond_52

    .line 1860
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1861
    sub-int v1, v0, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1862
    move v1, v3

    goto :goto_53

    .line 1874
    :cond_52
    :goto_52
    move v1, v4

    :goto_53
    invoke-virtual {p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v7

    .line 1875
    const/16 v8, 0x42

    const/16 v9, 0x11

    if-le v0, v2, :cond_70

    if-ne p1, v9, :cond_61

    if-eqz v7, :cond_65

    :cond_61
    if-ne p1, v8, :cond_70

    if-eqz v7, :cond_70

    .line 1877
    :cond_65
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1878
    sub-int/2addr v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1879
    goto :goto_89

    .line 1880
    :cond_70
    if-ge v0, v5, :cond_88

    if-ne p1, v9, :cond_76

    if-nez v7, :cond_7a

    :cond_76
    if-ne p1, v8, :cond_88

    if-nez v7, :cond_88

    .line 1882
    :cond_7a
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1883
    add-int/2addr v0, v3

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1884
    goto :goto_89

    .line 1887
    :cond_88
    move v3, v1

    :goto_89
    if-eqz v3, :cond_95

    .line 1888
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1889
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1892
    :cond_95
    if-eqz v3, :cond_9a

    .line 1893
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1896
    :cond_9a
    return v3

    nop

    :sswitch_data_9c
    .sparse-switch
        0x21 -> :sswitch_43
        0x82 -> :sswitch_2f
    .end sparse-switch
.end method

.method protected whitelist attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 5

    .line 1151
    iget-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1154
    if-nez p1, :cond_d

    .line 1155
    new-instance p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    invoke-direct {p1}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 1156
    iput-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1159
    :cond_d
    iput p4, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1160
    iput p3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1161
    iget p2, p0, Landroid/widget/GridView;->mNumColumns:I

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1162
    iget p2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int p2, p4, p2

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1164
    iget-boolean p2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez p2, :cond_2b

    .line 1165
    iget p2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int p2, p3, p2

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1166
    iget p2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int/2addr p3, p2

    iput p3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_43

    .line 1168
    :cond_2b
    add-int/lit8 p4, p4, -0x1

    sub-int/2addr p4, p3

    .line 1170
    iget p2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 p2, p2, -0x1

    iget p3, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int p3, p4, p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1171
    iget p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 p2, p2, -0x1

    iget p3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int/2addr p4, p3

    sub-int/2addr p2, p4

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1173
    :goto_43
    return-void
.end method

.method protected whitelist computeVerticalScrollExtent()I
    .registers 5

    .line 2320
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 2321
    const/4 v1, 0x0

    if-lez v0, :cond_3c

    .line 2322
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2323
    add-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v2

    .line 2325
    mul-int/lit8 v3, v3, 0x64

    .line 2327
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2328
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2329
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2330
    if-lez v1, :cond_22

    .line 2331
    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v1

    add-int/2addr v3, v2

    .line 2334
    :cond_22
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2335
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2336
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2337
    if-lez v0, :cond_3b

    .line 2338
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    sub-int/2addr v3, v1

    .line 2341
    :cond_3b
    return v3

    .line 2343
    :cond_3c
    return v1
.end method

.method protected whitelist computeVerticalScrollOffset()I
    .registers 8

    .line 2348
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_4d

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4d

    .line 2349
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2350
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2351
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2352
    if-lez v0, :cond_4d

    .line 2353
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2354
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v3

    .line 2358
    invoke-virtual {p0}, Landroid/widget/GridView;->isStackFromBottom()Z

    move-result v5

    if-eqz v5, :cond_2d

    mul-int v5, v4, v3

    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, v6

    goto :goto_2e

    .line 2359
    :cond_2d
    move v5, v1

    .line 2360
    :goto_2e
    iget v6, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v6, v5

    div-int/2addr v6, v3

    .line 2361
    mul-int/lit8 v6, v6, 0x64

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v0

    sub-int/2addr v6, v2

    iget v0, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v0, v0

    .line 2362
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v4

    mul-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v6, v0

    .line 2361
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 2365
    :cond_4d
    return v1
.end method

.method protected whitelist computeVerticalScrollRange()I
    .registers 5

    .line 2371
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2372
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    .line 2373
    mul-int/lit8 v0, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2374
    iget v2, p0, Landroid/widget/GridView;->mScrollY:I

    if-eqz v2, :cond_27

    .line 2376
    iget v2, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v1, v1

    mul-float/2addr v2, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2378
    :cond_27
    return v0
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    .line 2461
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2462
    const-string v0, "numColumns"

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2463
    return-void
.end method

.method greylist-max-o fillGap(Z)V
    .registers 7

    .line 269
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 270
    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 272
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 274
    const/4 v3, 0x0

    const/16 v4, 0x22

    if-eqz p1, :cond_3c

    .line 275
    nop

    .line 276
    iget p1, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_17

    .line 277
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v3

    .line 279
    :cond_17
    if-lez v2, :cond_26

    .line 280
    add-int/lit8 p1, v2, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int v3, p1, v1

    goto :goto_27

    :cond_26
    nop

    .line 281
    :goto_27
    iget p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr p1, v2

    .line 282
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v2, :cond_31

    .line 283
    add-int/lit8 v2, v0, -0x1

    add-int/2addr p1, v2

    .line 285
    :cond_31
    invoke-direct {p0, p1, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 286
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 287
    goto :goto_6e

    .line 288
    :cond_3c
    nop

    .line 289
    iget p1, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_47

    .line 290
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result p1

    goto :goto_48

    .line 289
    :cond_47
    move p1, v3

    .line 292
    :goto_48
    if-lez v2, :cond_54

    .line 293
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, v1

    goto :goto_5a

    :cond_54
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v2

    sub-int p1, v2, p1

    .line 294
    :goto_5a
    iget v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 295
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v3, :cond_62

    .line 296
    sub-int/2addr v2, v0

    goto :goto_64

    .line 298
    :cond_62
    add-int/lit8 v2, v2, -0x1

    .line 300
    :goto_64
    invoke-direct {p0, v2, p1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 301
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/GridView;->correctTooLow(III)V

    .line 303
    :goto_6e
    return-void
.end method

.method greylist-max-o findMotionRow(I)I
    .registers 6

    .line 542
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 543
    if-lez v0, :cond_33

    .line 545
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 546
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v2, :cond_1f

    .line 547
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_33

    .line 548
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1d

    .line 549
    iget p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr p1, v2

    return p1

    .line 547
    :cond_1d
    add-int/2addr v2, v1

    goto :goto_d

    .line 553
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    :goto_21
    if-ltz v0, :cond_33

    .line 554
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p1, v2, :cond_31

    .line 555
    iget p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr p1, v0

    return p1

    .line 553
    :cond_31
    sub-int/2addr v0, v1

    goto :goto_21

    .line 560
    :cond_33
    const/4 p1, -0x1

    return p1
.end method

.method greylist-max-o fullScroll(I)Z
    .registers 6

    .line 1811
    nop

    .line 1812
    const/16 v0, 0x21

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_11

    .line 1813
    iput v1, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1814
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1815
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1816
    goto :goto_22

    .line 1817
    :cond_11
    const/16 v0, 0x82

    if-ne p1, v0, :cond_21

    .line 1818
    iput v1, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1819
    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1820
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1821
    goto :goto_22

    .line 1817
    :cond_21
    move v2, v3

    .line 1824
    :goto_22
    if-eqz v2, :cond_27

    .line 1825
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1828
    :cond_27
    return v2
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 2383
    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getAdapter()Landroid/widget/Adapter;
    .registers 2

    .line 69
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public whitelist getColumnWidth()I
    .registers 2

    .line 2221
    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    return v0
.end method

.method public whitelist getGravity()I
    .registers 2

    .line 2071
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    return v0
.end method

.method public whitelist getHorizontalSpacing()I
    .registers 2

    .line 2108
    iget v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public whitelist getNumColumns()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 2267
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    return v0
.end method

.method public whitelist getRequestedColumnWidth()I
    .registers 2

    .line 2238
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public whitelist getRequestedHorizontalSpacing()I
    .registers 2

    .line 2128
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public whitelist getStretchMode()I
    .registers 2

    .line 2189
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method public whitelist getVerticalSpacing()I
    .registers 2

    .line 2161
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    return v0
.end method

.method protected whitelist layoutChildren()V
    .registers 21

    .line 1177
    move-object/from16 v1, p0

    iget-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1178
    const/4 v0, 0x1

    if-nez v2, :cond_9

    .line 1179
    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1183
    :cond_9
    const/4 v3, 0x0

    :try_start_a
    invoke-super {v1}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1185
    invoke-virtual {v1}, Landroid/widget/GridView;->invalidate()V

    .line 1187
    iget-object v4, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_1f

    .line 1188
    invoke-virtual {v1}, Landroid/widget/GridView;->resetList()V

    .line 1189
    invoke-virtual {v1}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_273

    .line 1423
    if-nez v2, :cond_1e

    .line 1424
    iput-boolean v3, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1190
    :cond_1e
    return-void

    .line 1193
    :cond_1f
    :try_start_1f
    iget-object v4, v1, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 1194
    iget v5, v1, Landroid/widget/GridView;->mBottom:I

    iget v6, v1, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v5, v6

    iget-object v6, v1, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 1196
    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    .line 1198
    nop

    .line 1201
    nop

    .line 1202
    nop

    .line 1203
    nop

    .line 1206
    iget v7, v1, Landroid/widget/GridView;->mLayoutMode:I

    packed-switch v7, :pswitch_data_27c

    .line 1225
    iget v7, v1, Landroid/widget/GridView;->mSelectedPosition:I

    goto :goto_62

    .line 1219
    :pswitch_3d
    iget v7, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    if-ltz v7, :cond_5d

    .line 1220
    iget v7, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v9, v1, Landroid/widget/GridView;->mSelectedPosition:I

    sub-int/2addr v7, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_77

    .line 1208
    :pswitch_4a
    iget v7, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v9, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v7, v9

    .line 1209
    if-ltz v7, :cond_5d

    if-ge v7, v6, :cond_5d

    .line 1210
    invoke-virtual {v1, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, v3

    goto :goto_77

    .line 1217
    :pswitch_5c
    nop

    .line 1234
    :cond_5d
    move v7, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_77

    .line 1225
    :goto_62
    iget v9, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v7, v9

    .line 1226
    if-ltz v7, :cond_6e

    if-ge v7, v6, :cond_6e

    .line 1227
    invoke-virtual {v1, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_6f

    .line 1231
    :cond_6e
    const/4 v7, 0x0

    :goto_6f
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v10, v7

    move-object v11, v9

    const/4 v9, 0x0

    move v7, v3

    .line 1234
    :goto_77
    iget-boolean v12, v1, Landroid/widget/GridView;->mDataChanged:Z

    .line 1235
    if-eqz v12, :cond_7e

    .line 1236
    invoke-virtual {v1}, Landroid/widget/GridView;->handleDataChanged()V

    .line 1241
    :cond_7e
    iget v13, v1, Landroid/widget/GridView;->mItemCount:I

    if-nez v13, :cond_8d

    .line 1242
    invoke-virtual {v1}, Landroid/widget/GridView;->resetList()V

    .line 1243
    invoke-virtual {v1}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_88
    .catchall {:try_start_1f .. :try_end_88} :catchall_273

    .line 1423
    if-nez v2, :cond_8c

    .line 1424
    iput-boolean v3, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1244
    :cond_8c
    return-void

    .line 1247
    :cond_8d
    :try_start_8d
    iget v13, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    invoke-virtual {v1, v13}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1249
    nop

    .line 1250
    nop

    .line 1251
    nop

    .line 1256
    invoke-virtual {v1}, Landroid/widget/GridView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v13

    .line 1257
    if-eqz v13, :cond_c7

    .line 1258
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v15

    .line 1259
    if-eqz v15, :cond_c4

    .line 1260
    move/from16 v16, v0

    invoke-virtual {v1, v15}, Landroid/widget/GridView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1261
    if-eqz v0, :cond_c9

    .line 1262
    if-eqz v12, :cond_b9

    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v17

    if-nez v17, :cond_b9

    iget-boolean v8, v1, Landroid/widget/GridView;->mAdapterHasStableIds:Z

    if-eqz v8, :cond_b6

    goto :goto_b9

    :cond_b6
    const/4 v8, 0x0

    const/4 v15, 0x0

    goto :goto_bf

    .line 1266
    :cond_b9
    :goto_b9
    nop

    .line 1267
    nop

    .line 1268
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .line 1272
    :goto_bf
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    goto :goto_cc

    .line 1259
    :cond_c4
    move/from16 v16, v0

    goto :goto_c9

    .line 1257
    :cond_c7
    move/from16 v16, v0

    .line 1279
    :cond_c9
    :goto_c9
    const/4 v0, -0x1

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_cc
    iget v14, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 1280
    iget-object v3, v1, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;
    :try_end_d0
    .catchall {:try_start_8d .. :try_end_d0} :catchall_273

    .line 1282
    if-eqz v12, :cond_ee

    .line 1283
    const/4 v12, 0x0

    :goto_d3
    if-ge v12, v6, :cond_e9

    .line 1284
    move/from16 v18, v2

    :try_start_d7
    invoke-virtual {v1, v12}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v8

    add-int v8, v14, v12

    invoke-virtual {v3, v2, v8}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1283
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v18

    move-object/from16 v8, v19

    goto :goto_d3

    :cond_e9
    move/from16 v18, v2

    move-object/from16 v19, v8

    goto :goto_f5

    .line 1287
    :cond_ee
    move/from16 v18, v2

    move-object/from16 v19, v8

    invoke-virtual {v3, v6, v14}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1291
    :goto_f5
    invoke-virtual {v1}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    .line 1292
    invoke-virtual {v3}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1294
    iget v2, v1, Landroid/widget/GridView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_28c

    .line 1322
    if-nez v6, :cond_17c

    .line 1323
    iget-boolean v2, v1, Landroid/widget/GridView;->mStackFromBottom:Z

    goto :goto_14a

    .line 1319
    :pswitch_105
    invoke-direct {v1, v7, v4, v5}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v2

    .line 1320
    goto/16 :goto_1ae

    .line 1315
    :pswitch_10b
    iget v2, v1, Landroid/widget/GridView;->mSyncPosition:I

    iget v4, v1, Landroid/widget/GridView;->mSpecificTop:I

    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .line 1316
    goto/16 :goto_1ae

    .line 1312
    :pswitch_115
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    iget v4, v1, Landroid/widget/GridView;->mSpecificTop:I

    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .line 1313
    goto/16 :goto_1ae

    .line 1308
    :pswitch_11f
    iget v2, v1, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    .line 1309
    invoke-direct {v1}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 1310
    goto/16 :goto_1ae

    .line 1296
    :pswitch_12c
    if-eqz v9, :cond_138

    .line 1297
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-direct {v1, v2, v4, v5}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_1ae

    .line 1299
    :cond_138
    invoke-direct {v1, v4, v5}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v2

    .line 1301
    goto/16 :goto_1ae

    .line 1303
    :pswitch_13e
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 1304
    invoke-direct {v1, v4}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    .line 1305
    invoke-direct {v1}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 1306
    goto/16 :goto_1ae

    .line 1323
    :goto_14a
    if-nez v2, :cond_162

    .line 1324
    iget-object v2, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_159

    invoke-virtual {v1}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_157

    goto :goto_159

    .line 1325
    :cond_157
    const/4 v2, 0x0

    goto :goto_15a

    :cond_159
    :goto_159
    const/4 v2, -0x1

    .line 1324
    :goto_15a
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1326
    invoke-direct {v1, v4}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1ae

    .line 1328
    :cond_162
    iget v2, v1, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    .line 1329
    iget-object v4, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_173

    invoke-virtual {v1}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_171

    goto :goto_173

    .line 1330
    :cond_171
    move v4, v2

    goto :goto_174

    :cond_173
    :goto_173
    const/4 v4, -0x1

    .line 1329
    :goto_174
    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1331
    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v2

    .line 1332
    goto :goto_1ae

    .line 1334
    :cond_17c
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    if-ltz v2, :cond_194

    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    iget v5, v1, Landroid/widget/GridView;->mItemCount:I

    if-ge v2, v5, :cond_194

    .line 1335
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    if-nez v10, :cond_18b

    .line 1336
    goto :goto_18f

    :cond_18b
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1335
    :goto_18f
    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto :goto_1ae

    .line 1337
    :cond_194
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    iget v5, v1, Landroid/widget/GridView;->mItemCount:I

    if-ge v2, v5, :cond_1a8

    .line 1338
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v11, :cond_19f

    .line 1339
    goto :goto_1a3

    :cond_19f
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1338
    :goto_1a3
    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto :goto_1ae

    .line 1341
    :cond_1a8
    const/4 v2, 0x0

    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 1348
    :goto_1ae
    invoke-virtual {v3}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1350
    if-eqz v2, :cond_1be

    .line 1351
    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1352
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, v1, Landroid/widget/GridView;->mSelectedTop:I

    goto :goto_1fc

    .line 1354
    :cond_1be
    iget v2, v1, Landroid/widget/GridView;->mTouchMode:I

    if-lez v2, :cond_1ca

    iget v2, v1, Landroid/widget/GridView;->mTouchMode:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1ca

    move/from16 v2, v16

    goto :goto_1cb

    :cond_1ca
    const/4 v2, 0x0

    .line 1356
    :goto_1cb
    if-eqz v2, :cond_1de

    .line 1358
    iget v2, v1, Landroid/widget/GridView;->mMotionPosition:I

    iget v3, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1359
    if-eqz v2, :cond_1dd

    .line 1360
    iget v3, v1, Landroid/widget/GridView;->mMotionPosition:I

    invoke-virtual {v1, v3, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1362
    :cond_1dd
    goto :goto_1fc

    :cond_1de
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1f4

    .line 1366
    iget v2, v1, Landroid/widget/GridView;->mSelectorPosition:I

    iget v3, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1367
    if-eqz v2, :cond_1f3

    .line 1368
    iget v3, v1, Landroid/widget/GridView;->mSelectorPosition:I

    invoke-virtual {v1, v3, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1370
    :cond_1f3
    goto :goto_1fc

    .line 1372
    :cond_1f4
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/GridView;->mSelectedTop:I

    .line 1373
    iget-object v2, v1, Landroid/widget/GridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1378
    :goto_1fc
    if-eqz v13, :cond_245

    .line 1379
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v2

    .line 1380
    if-nez v2, :cond_245

    .line 1381
    if-eqz v15, :cond_229

    .line 1382
    invoke-virtual {v15}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_229

    .line 1383
    nop

    .line 1384
    invoke-virtual {v15}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1385
    if-eqz v19, :cond_225

    if-eqz v0, :cond_225

    .line 1386
    nop

    .line 1387
    invoke-virtual/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    .line 1386
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    .line 1388
    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 1390
    goto :goto_244

    .line 1391
    :cond_225
    invoke-virtual {v15}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_244

    .line 1393
    :cond_229
    const/4 v3, -0x1

    if-eq v0, v3, :cond_244

    .line 1395
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v0, v2

    .line 1397
    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1395
    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 1398
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1399
    if-eqz v0, :cond_245

    .line 1400
    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_245

    .line 1393
    :cond_244
    :goto_244
    nop

    .line 1406
    :cond_245
    :goto_245
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/GridView;->mLayoutMode:I

    .line 1407
    iput-boolean v2, v1, Landroid/widget/GridView;->mDataChanged:Z

    .line 1408
    iget-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v0, :cond_256

    .line 1409
    iget-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 1410
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1412
    :cond_256
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mNeedSync:Z

    .line 1413
    iget v0, v1, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1415
    invoke-virtual {v1}, Landroid/widget/GridView;->updateScrollIndicators()V

    .line 1417
    iget v0, v1, Landroid/widget/GridView;->mItemCount:I

    if-lez v0, :cond_268

    .line 1418
    invoke-virtual {v1}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 1421
    :cond_268
    invoke-virtual {v1}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_26b
    .catchall {:try_start_d7 .. :try_end_26b} :catchall_271

    .line 1423
    if-nez v18, :cond_270

    .line 1424
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1427
    :cond_270
    return-void

    .line 1423
    :catchall_271
    move-exception v0

    goto :goto_276

    :catchall_273
    move-exception v0

    move/from16 v18, v2

    :goto_276
    if-nez v18, :cond_27b

    .line 1424
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1426
    :cond_27b
    throw v0

    :pswitch_data_27c
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_4a
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_3d
    .end packed-switch

    :pswitch_data_28c
    .packed-switch 0x1
        :pswitch_13e
        :pswitch_12c
        :pswitch_11f
        :pswitch_115
        :pswitch_10b
        :pswitch_105
    .end packed-switch
.end method

.method greylist-max-o lookForSelectablePosition(IZ)I
    .registers 4

    .line 253
    iget-object p2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 254
    const/4 v0, -0x1

    if-eqz p2, :cond_15

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_15

    .line 258
    :cond_c
    if-ltz p1, :cond_14

    iget p2, p0, Landroid/widget/GridView;->mItemCount:I

    if-lt p1, p2, :cond_13

    goto :goto_14

    .line 261
    :cond_13
    return p1

    .line 259
    :cond_14
    :goto_14
    return v0

    .line 255
    :cond_15
    :goto_15
    return v0
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 9

    .line 1960
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1962
    nop

    .line 1963
    const/4 v0, -0x1

    if-eqz p1, :cond_3a

    if-eqz p3, :cond_3a

    .line 1964
    iget p1, p0, Landroid/widget/GridView;->mScrollX:I

    iget v1, p0, Landroid/widget/GridView;->mScrollY:I

    invoke-virtual {p3, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1968
    iget-object p1, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 1969
    nop

    .line 1970
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 1971
    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_3a

    .line 1973
    invoke-direct {p0, v3, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v4

    if-nez v4, :cond_24

    .line 1974
    goto :goto_37

    .line 1977
    :cond_24
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1978
    invoke-virtual {v4, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1979
    invoke-virtual {p0, v4, p1}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1980
    invoke-static {p3, p1, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v4

    .line 1982
    if-ge v4, v2, :cond_37

    .line 1983
    nop

    .line 1984
    move v0, v3

    move v2, v4

    .line 1971
    :cond_37
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1989
    :cond_3a
    if-ltz v0, :cond_43

    .line 1990
    iget p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_46

    .line 1992
    :cond_43
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 1994
    :goto_46
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 15

    .line 2432
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2434
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    .line 2435
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .line 2436
    div-int v2, v0, v1

    .line 2440
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x1

    if-nez v3, :cond_19

    .line 2441
    rem-int v0, p2, v1

    .line 2442
    div-int v1, p2, v1

    move v7, v0

    move v5, v1

    goto :goto_26

    .line 2444
    :cond_19
    sub-int/2addr v0, v4

    sub-int/2addr v0, p2

    .line 2446
    add-int/lit8 v3, v1, -0x1

    rem-int v5, v0, v1

    sub-int/2addr v3, v5

    .line 2447
    sub-int/2addr v2, v4

    div-int/2addr v0, v1

    sub-int v1, v2, v0

    move v7, v3

    move v5, v1

    .line 2450
    :goto_26
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView$LayoutParams;

    .line 2451
    if-eqz p1, :cond_34

    iget p1, p1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v0, -0x2

    if-ne p1, v0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v4, 0x0

    :goto_35
    move v9, v4

    .line 2452
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->isItemChecked(I)Z

    move-result v10

    .line 2453
    const/4 v6, 0x1

    const/4 v8, 0x1

    invoke-static/range {v5 .. v10}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p1

    .line 2455
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 2456
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    .line 2389
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2391
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 2392
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v1

    div-int/2addr v1, v0

    .line 2393
    invoke-virtual {p0}, Landroid/widget/GridView;->getSelectionModeForAccessibility()I

    move-result v2

    .line 2394
    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    .line 2396
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 2398
    if-gtz v0, :cond_1c

    if-lez v1, :cond_21

    .line 2399
    :cond_1c
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2401
    :cond_21
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1650
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1655
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1660
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected whitelist onMeasure(II)V
    .registers 16

    .line 1061
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1063
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1064
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1065
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1066
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1068
    if-nez v0, :cond_34

    .line 1069
    iget v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    if-lez v2, :cond_26

    .line 1070
    iget v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    goto :goto_2f

    .line 1072
    :cond_26
    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    .line 1074
    :goto_2f
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 1077
    :cond_34
    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v2, v4

    iget-object v5, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 1078
    invoke-direct {p0, v4}, Landroid/widget/GridView;->determineColumns(I)Z

    move-result v4

    .line 1080
    nop

    .line 1081
    nop

    .line 1083
    iget-object v5, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v6, 0x0

    if-nez v5, :cond_4c

    move v5, v6

    goto :goto_52

    :cond_4c
    iget-object v5, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    :goto_52
    iput v5, p0, Landroid/widget/GridView;->mItemCount:I

    .line 1084
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    .line 1085
    const/4 v7, -0x1

    const/4 v8, 0x1

    if-lez v5, :cond_be

    .line 1086
    iget-object v9, p0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {p0, v6, v9}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    .line 1088
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    .line 1089
    if-nez v10, :cond_71

    .line 1090
    invoke-virtual {p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    .line 1091
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    :cond_71
    iget-object v11, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v11, v6}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v11

    iput v11, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1094
    iget-object v11, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v11, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v11

    iput-boolean v11, v10, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1095
    iput-boolean v8, v10, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1097
    nop

    .line 1098
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result p2

    iget v11, v10, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1097
    invoke-static {p2, v6, v11}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result p2

    .line 1100
    iget v11, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1101
    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget v12, v10, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 1100
    invoke-static {v11, v6, v12}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v11

    .line 1102
    invoke-virtual {v9, v11, p2}, Landroid/view/View;->measure(II)V

    .line 1104
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 1105
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v6, v11}, Landroid/widget/GridView;->combineMeasuredStates(II)I

    .line 1107
    iget-object v11, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v10, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v11, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_bf

    .line 1108
    iget-object v10, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10, v9, v7}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_bf

    .line 1085
    :cond_be
    move p2, v6

    .line 1112
    :cond_bf
    :goto_bf
    if-nez v1, :cond_d2

    .line 1113
    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v9

    add-int/2addr v3, p2

    .line 1114
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v3, v9

    .line 1117
    :cond_d2
    const/high16 v9, -0x80000000

    if-ne v1, v9, :cond_f0

    .line 1118
    iget-object v1, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v10

    .line 1120
    iget v10, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1121
    :cond_e1
    if-ge v6, v5, :cond_ee

    .line 1122
    add-int/2addr v1, p2

    .line 1123
    add-int/2addr v6, v10

    if-ge v6, v5, :cond_ea

    .line 1124
    iget v11, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v1, v11

    .line 1126
    :cond_ea
    if-lt v1, v3, :cond_e1

    .line 1127
    nop

    .line 1128
    goto :goto_ef

    .line 1121
    :cond_ee
    move v3, v1

    .line 1131
    :goto_ef
    nop

    .line 1134
    :cond_f0
    if-ne v0, v9, :cond_113

    iget p2, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p2, v7, :cond_113

    .line 1135
    iget p2, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    mul-int/2addr p2, v0

    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    sub-int/2addr v0, v8

    iget v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    mul-int/2addr v0, v1

    add-int/2addr p2, v0

    iget-object v0, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v0

    iget-object v0, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v0

    .line 1138
    if-gt p2, v2, :cond_110

    if-eqz v4, :cond_113

    .line 1139
    :cond_110
    const/high16 p2, 0x1000000

    or-int/2addr v2, p2

    .line 1143
    :cond_113
    invoke-virtual {p0, v2, v3}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    .line 1144
    iput p1, p0, Landroid/widget/GridView;->mWidthMeasureSpec:I

    .line 1145
    return-void
.end method

.method greylist-max-o pageScroll(I)Z
    .registers 6

    .line 1785
    nop

    .line 1787
    const/16 v0, 0x21

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_13

    .line 1788
    iget p1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_27

    .line 1789
    :cond_13
    const/16 v0, 0x82

    if-ne p1, v0, :cond_26

    .line 1790
    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr p1, v1

    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_27

    .line 1789
    :cond_26
    const/4 p1, -0x1

    .line 1793
    :goto_27
    if-ltz p1, :cond_33

    .line 1794
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1795
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1796
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1797
    return v1

    .line 1800
    :cond_33
    return v2
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 6

    .line 2406
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2407
    return v1

    .line 2410
    :cond_8
    packed-switch p1, :pswitch_data_2a

    goto :goto_27

    .line 2414
    :pswitch_c
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result p1

    .line 2415
    const-string v0, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 2416
    mul-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2417
    if-ltz p2, :cond_27

    .line 2420
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    .line 2421
    return v1

    .line 2426
    :cond_27
    :goto_27
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_2a
    .packed-switch 0x1020037
        :pswitch_c
    .end packed-switch
.end method

.method greylist sequenceScroll(I)Z
    .registers 10

    .line 1905
    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 1906
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1907
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    .line 1911
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_18

    .line 1912
    div-int v3, v0, v1

    mul-int/2addr v3, v1

    .line 1913
    add-int/2addr v1, v3

    sub-int/2addr v1, v5

    add-int/lit8 v6, v2, -0x1

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_29

    .line 1915
    :cond_18
    add-int/lit8 v3, v2, -0x1

    sub-int v6, v3, v0

    .line 1916
    div-int/2addr v6, v1

    mul-int/2addr v6, v1

    sub-int/2addr v3, v6

    .line 1917
    sub-int v1, v3, v1

    add-int/2addr v1, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v3

    move v3, v1

    move v1, v7

    .line 1920
    :goto_29
    nop

    .line 1921
    nop

    .line 1922
    const/4 v6, 0x6

    packed-switch p1, :pswitch_data_64

    goto :goto_51

    .line 1924
    :pswitch_30
    sub-int/2addr v2, v5

    if-ge v0, v2, :cond_51

    .line 1926
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1927
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1928
    nop

    .line 1930
    if-ne v0, v1, :cond_3e

    move v4, v5

    :cond_3e
    move v0, v4

    move v4, v5

    goto :goto_52

    .line 1935
    :pswitch_41
    if-lez v0, :cond_51

    .line 1937
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1938
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1939
    nop

    .line 1941
    if-ne v0, v3, :cond_4e

    move v4, v5

    :cond_4e
    move v0, v4

    move v4, v5

    goto :goto_52

    .line 1946
    :cond_51
    :goto_51
    move v0, v4

    :goto_52
    if-eqz v4, :cond_5e

    .line 1947
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1948
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1951
    :cond_5e
    if-eqz v0, :cond_63

    .line 1952
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1955
    :cond_63
    return v4

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_41
        :pswitch_30
    .end packed-switch
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

    .line 69
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    .line 208
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_f

    .line 209
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 212
    :cond_f
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    .line 213
    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 214
    iput-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mOldSelectedPosition:I

    .line 217
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/GridView;->mOldSelectedRowId:J

    .line 220
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    iget-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_6d

    .line 223
    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    iput p1, p0, Landroid/widget/GridView;->mOldItemCount:I

    .line 224
    iget-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    iput p1, p0, Landroid/widget/GridView;->mItemCount:I

    .line 225
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/GridView;->mDataChanged:Z

    .line 226
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 228
    new-instance v0, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 229
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 231
    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 234
    iget-boolean v0, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    .line 235
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result p1

    goto :goto_63

    .line 237
    :cond_5f
    invoke-virtual {p0, v1, p1}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 239
    :goto_63
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 240
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 241
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 242
    goto :goto_73

    .line 243
    :cond_6d
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 245
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 248
    :goto_73
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 249
    return-void
.end method

.method public whitelist setColumnWidth(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2201
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_9

    .line 2202
    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 2203
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2205
    :cond_9
    return-void
.end method

.method public whitelist setGravity(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2056
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_9

    .line 2057
    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    .line 2058
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2060
    :cond_9
    return-void
.end method

.method public whitelist setHorizontalSpacing(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2085
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_9

    .line 2086
    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 2087
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2089
    :cond_9
    return-void
.end method

.method public whitelist setNumColumns(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2250
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_9

    .line 2251
    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 2252
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2254
    :cond_9
    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .line 198
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 199
    return-void
.end method

.method public whitelist setSelection(I)V
    .registers 3

    .line 1606
    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1607
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    goto :goto_c

    .line 1609
    :cond_a
    iput p1, p0, Landroid/widget/GridView;->mResurrectToPosition:I

    .line 1611
    :goto_c
    const/4 p1, 0x2

    iput p1, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1612
    iget-object p1, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz p1, :cond_18

    .line 1613
    iget-object p1, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1615
    :cond_18
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 1616
    return-void
.end method

.method greylist-max-o setSelectionInt(I)V
    .registers 4

    .line 1625
    iget v0, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    .line 1627
    iget-object v1, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_b

    .line 1628
    iget-object v1, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1631
    :cond_b
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1632
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1634
    iget-boolean p1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz p1, :cond_1d

    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    iget v1, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    sub-int/2addr p1, v1

    goto :goto_1f

    .line 1635
    :cond_1d
    iget p1, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    .line 1636
    :goto_1f
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v1, :cond_2a

    .line 1637
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    goto :goto_2b

    :cond_2a
    nop

    .line 1639
    :goto_2b
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int/2addr p1, v1

    .line 1640
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int/2addr v0, v1

    .line 1642
    if-eq p1, v0, :cond_36

    .line 1643
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1646
    :cond_36
    return-void
.end method

.method public whitelist setStretchMode(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2174
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_9

    .line 2175
    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 2176
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2178
    :cond_9
    return-void
.end method

.method public whitelist setVerticalSpacing(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2144
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_9

    .line 2145
    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 2146
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2148
    :cond_9
    return-void
.end method

.method public whitelist smoothScrollByOffset(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 883
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 884
    return-void
.end method

.method public whitelist smoothScrollToPosition(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 873
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 874
    return-void
.end method
