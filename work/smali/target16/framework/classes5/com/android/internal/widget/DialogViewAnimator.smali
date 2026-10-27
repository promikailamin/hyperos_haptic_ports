.class public Lcom/android/internal/widget/DialogViewAnimator;
.super Landroid/widget/ViewAnimator;
.source "DialogViewAnimator.java"


# instance fields
.field private final blacklist mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 39
    return-void
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .registers 21

    .line 43
    move-object/from16 v0, p0

    .line 44
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v1, v8, :cond_14

    .line 45
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v8, :cond_12

    goto :goto_14

    :cond_12
    move v9, v7

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v9, 0x1

    .line 47
    :goto_15
    nop

    .line 48
    nop

    .line 49
    nop

    .line 53
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getChildCount()I

    move-result v10

    .line 54
    move v11, v7

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_20
    const/4 v1, -0x1

    if-ge v11, v10, :cond_ac

    .line 55
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/DialogViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 56
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasureAllChildren()Z

    move-result v3

    if-nez v3, :cond_3c

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_36

    goto :goto_3c

    :cond_36
    move/from16 v2, p1

    move/from16 v4, p2

    goto/16 :goto_a8

    .line 57
    :cond_3c
    :goto_3c
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 58
    iget v3, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v3, v1, :cond_4a

    const/16 v16, 0x1

    goto :goto_4c

    :cond_4a
    move/from16 v16, v7

    .line 59
    :goto_4c
    iget v3, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v3, v1, :cond_53

    const/16 v17, 0x1

    goto :goto_55

    :cond_53
    move/from16 v17, v7

    .line 60
    :goto_55
    if-eqz v9, :cond_60

    if-nez v16, :cond_5b

    if-eqz v17, :cond_60

    .line 61
    :cond_5b
    iget-object v1, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_60
    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v4, p2

    move-object v1, v2

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/DialogViewAnimator;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 68
    nop

    .line 70
    if-eqz v9, :cond_87

    if-nez v16, :cond_87

    .line 71
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v5, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 73
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v5

    const/high16 v12, -0x1000000

    and-int/2addr v5, v12

    or-int/2addr v5, v7

    move v12, v3

    goto :goto_88

    .line 76
    :cond_87
    move v5, v7

    :goto_88
    if-eqz v9, :cond_a4

    if-nez v17, :cond_a4

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v6, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    iget v6, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 79
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v5, v1

    move v13, v3

    .line 83
    :cond_a4
    invoke-static {v14, v5}, Lcom/android/internal/widget/DialogViewAnimator;->combineMeasuredStates(II)I

    move-result v14

    .line 54
    :goto_a8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_20

    .line 88
    :cond_ac
    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v12, v3

    .line 89
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    .line 92
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 93
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 96
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 97
    if-eqz v6, :cond_ea

    .line 98
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 99
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 102
    :cond_ea
    invoke-static {v5, v2, v14}, Lcom/android/internal/widget/DialogViewAnimator;->resolveSizeAndState(III)I

    move-result v5

    shl-int/lit8 v6, v14, 0x10

    .line 103
    invoke-static {v3, v4, v6}, Lcom/android/internal/widget/DialogViewAnimator;->resolveSizeAndState(III)I

    move-result v3

    .line 102
    invoke-virtual {v0, v5, v3}, Lcom/android/internal/widget/DialogViewAnimator;->setMeasuredDimension(II)V

    .line 107
    iget-object v3, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 108
    nop

    :goto_fe
    if-ge v7, v3, :cond_17c

    .line 109
    iget-object v5, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 110
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 113
    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v9, v1, :cond_12c

    .line 114
    nop

    .line 115
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v9, v10

    .line 114
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_142

    .line 119
    :cond_12c
    nop

    .line 120
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 119
    invoke-static {v2, v9, v10}, Lcom/android/internal/widget/DialogViewAnimator;->getChildMeasureSpec(III)I

    move-result v9

    .line 125
    :goto_142
    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v10, v1, :cond_160

    .line 126
    nop

    .line 127
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v10, v11

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v10, v6

    .line 126
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_176

    .line 131
    :cond_160
    nop

    .line 132
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    move-result v10

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 131
    invoke-static {v4, v10, v6}, Lcom/android/internal/widget/DialogViewAnimator;->getChildMeasureSpec(III)I

    move-result v6

    .line 136
    :goto_176
    invoke-virtual {v5, v9, v6}, Landroid/view/View;->measure(II)V

    .line 108
    add-int/lit8 v7, v7, 0x1

    goto :goto_fe

    .line 139
    :cond_17c
    iget-object v0, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    return-void
.end method
