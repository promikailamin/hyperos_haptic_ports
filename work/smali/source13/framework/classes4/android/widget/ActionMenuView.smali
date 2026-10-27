.class public Landroid/widget/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuView$LayoutParams;,
        Landroid/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final greylist-max-o GENERATED_ITEM_PADDING:I = 0x4

.field static final greylist-max-o MIN_CELL_SIZE:I = 0x38

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private greylist-max-o mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private greylist-max-o mFormatItems:Z

.field private greylist-max-o mFormatItemsWidth:I

.field private greylist-max-o mGeneratedItemPadding:I

.field private greylist-max-o mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private greylist-max-o mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private greylist-max-o mMinCellSize:I

.field private greylist-max-o mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private greylist-max-o mPopupContext:Landroid/content/Context;

.field private greylist-max-o mPopupTheme:I

.field private greylist-max-o mPresenter:Landroid/widget/ActionMenuPresenter;

.field private greylist-max-o mReserveOverflow:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMenuBuilderCallback(Landroid/widget/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .registers 1

    iget-object p0, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnMenuItemClickListener(Landroid/widget/ActionMenuView;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 82
    .local v1, "density":F
    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    .line 83
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 84
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 85
    iput v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    .line 86
    return-void
.end method

.method static greylist-max-o measureChildForCells(Landroid/view/View;IIII)I
    .registers 20
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .line 402
    move-object v0, p0

    move/from16 v1, p2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView$LayoutParams;

    .line 404
    .local v2, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int v3, v3, p4

    .line 406
    .local v3, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 407
    .local v4, "childHeightMode":I
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 409
    .local v5, "childHeightSpec":I
    instance-of v6, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_1f

    .line 410
    move-object v6, v0

    check-cast v6, Lcom/android/internal/view/menu/ActionMenuItemView;

    goto :goto_20

    :cond_1f
    const/4 v6, 0x0

    .line 411
    .local v6, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_20
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2c

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v9

    if-eqz v9, :cond_2c

    move v9, v8

    goto :goto_2d

    :cond_2c
    move v9, v7

    .line 413
    .local v9, "hasText":Z
    :goto_2d
    const/4 v10, 0x0

    .line 414
    .local v10, "cellsUsed":I
    if-lez v1, :cond_51

    const/4 v11, 0x2

    if-eqz v9, :cond_35

    if-lt v1, v11, :cond_51

    .line 415
    :cond_35
    mul-int v12, p1, v1

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 417
    .local v12, "childWidthSpec":I
    invoke-virtual {p0, v12, v5}, Landroid/view/View;->measure(II)V

    .line 419
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 420
    .local v13, "measuredWidth":I
    div-int v10, v13, p1

    .line 421
    rem-int v14, v13, p1

    if-eqz v14, :cond_4c

    add-int/lit8 v10, v10, 0x1

    .line 422
    :cond_4c
    if-eqz v9, :cond_51

    if-ge v10, v11, :cond_51

    const/4 v10, 0x2

    .line 425
    .end local v12    # "childWidthSpec":I
    .end local v13    # "measuredWidth":I
    :cond_51
    iget-boolean v11, v2, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_58

    if-eqz v9, :cond_58

    move v7, v8

    .line 426
    .local v7, "expandable":Z
    :cond_58
    iput-boolean v7, v2, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 428
    iput v10, v2, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 429
    mul-int v8, v10, p1

    .line 430
    .local v8, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v5}, Landroid/view/View;->measure(II)V

    .line 432
    return v10
.end method

.method private greylist-max-o onMeasureExactFormat(II)V
    .registers 41
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 176
    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 177
    .local v1, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 178
    .local v2, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 180
    .local v3, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 181
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 183
    .local v5, "heightPadding":I
    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Landroid/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    .line 186
    .local v6, "itemHeightSpec":I
    sub-int/2addr v2, v4

    .line 189
    iget v8, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    div-int v9, v2, v8

    .line 190
    .local v9, "cellCount":I
    rem-int v10, v2, v8

    .line 192
    .local v10, "cellSizeRemaining":I
    const/4 v11, 0x0

    if-nez v9, :cond_35

    .line 194
    invoke-virtual {v0, v2, v11}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 195
    return-void

    .line 198
    :cond_35
    div-int v12, v10, v9

    add-int/2addr v8, v12

    .line 200
    .local v8, "cellSize":I
    move v12, v9

    .line 201
    .local v12, "cellsRemaining":I
    const/4 v13, 0x0

    .line 202
    .local v13, "maxChildHeight":I
    const/4 v14, 0x0

    .line 203
    .local v14, "maxCellsUsed":I
    const/4 v15, 0x0

    .line 204
    .local v15, "expandableItemCount":I
    const/16 v16, 0x0

    .line 205
    .local v16, "visibleItemCount":I
    const/16 v17, 0x0

    .line 208
    .local v17, "hasOverflow":Z
    const-wide/16 v18, 0x0

    .line 210
    .local v18, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v11

    .line 211
    .local v11, "childCount":I
    const/16 v21, 0x0

    move/from16 v36, v16

    move/from16 v16, v3

    move/from16 v3, v36

    move/from16 v37, v21

    move/from16 v21, v4

    move/from16 v4, v37

    .local v3, "visibleItemCount":I
    .local v4, "i":I
    .local v16, "heightSize":I
    .local v21, "widthPadding":I
    :goto_54
    if-ge v4, v11, :cond_e6

    .line 212
    invoke-virtual {v0, v4}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 213
    .local v7, "child":Landroid/view/View;
    move/from16 v23, v9

    .end local v9    # "cellCount":I
    .local v23, "cellCount":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v24, v10

    .end local v10    # "cellSizeRemaining":I
    .local v24, "cellSizeRemaining":I
    const/16 v10, 0x8

    if-ne v9, v10, :cond_68

    goto/16 :goto_dc

    .line 215
    :cond_68
    instance-of v9, v7, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 216
    .local v9, "isGeneratedItem":Z
    add-int/lit8 v3, v3, 0x1

    .line 218
    if-eqz v9, :cond_77

    .line 221
    iget v10, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v25, v3

    const/4 v3, 0x0

    .end local v3    # "visibleItemCount":I
    .local v25, "visibleItemCount":I
    invoke-virtual {v7, v10, v3, v10, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_7a

    .line 218
    .end local v25    # "visibleItemCount":I
    .restart local v3    # "visibleItemCount":I
    :cond_77
    move/from16 v25, v3

    const/4 v3, 0x0

    .line 224
    .end local v3    # "visibleItemCount":I
    .restart local v25    # "visibleItemCount":I
    :goto_7a
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/ActionMenuView$LayoutParams;

    .line 225
    .local v10, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iput-boolean v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 226
    iput v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 227
    iput v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 228
    iput-boolean v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 229
    iput v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 230
    iput v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 231
    if-eqz v9, :cond_99

    move-object v3, v7

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    if-eqz v3, :cond_99

    const/4 v3, 0x1

    goto :goto_9a

    :cond_99
    const/4 v3, 0x0

    :goto_9a
    iput-boolean v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 234
    iget-boolean v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_a2

    const/4 v3, 0x1

    goto :goto_a3

    :cond_a2
    move v3, v12

    .line 236
    .local v3, "cellsAvailable":I
    :goto_a3
    move/from16 v26, v9

    .end local v9    # "isGeneratedItem":Z
    .local v26, "isGeneratedItem":Z
    invoke-static {v7, v8, v3, v6, v5}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 239
    .local v9, "cellsUsed":I
    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 240
    move/from16 v27, v3

    .end local v3    # "cellsAvailable":I
    .local v27, "cellsAvailable":I
    iget-boolean v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v3, :cond_b5

    add-int/lit8 v15, v15, 0x1

    .line 241
    :cond_b5
    iget-boolean v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_bb

    const/16 v17, 0x1

    .line 243
    :cond_bb
    sub-int/2addr v12, v9

    .line 244
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 245
    .end local v13    # "maxChildHeight":I
    .local v3, "maxChildHeight":I
    const/4 v13, 0x1

    if-ne v9, v13, :cond_d5

    shl-int/2addr v13, v4

    move/from16 v28, v9

    move-object/from16 v22, v10

    .end local v9    # "cellsUsed":I
    .end local v10    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .local v22, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .local v28, "cellsUsed":I
    int-to-long v9, v13

    or-long v9, v18, v9

    move v13, v3

    move-wide/from16 v18, v9

    move/from16 v3, v25

    .end local v18    # "smallestItemsAt":J
    .local v9, "smallestItemsAt":J
    goto :goto_dc

    .end local v22    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v28    # "cellsUsed":I
    .local v9, "cellsUsed":I
    .restart local v10    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v18    # "smallestItemsAt":J
    :cond_d5
    move/from16 v28, v9

    move-object/from16 v22, v10

    .end local v9    # "cellsUsed":I
    .end local v10    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v22    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v28    # "cellsUsed":I
    move v13, v3

    move/from16 v3, v25

    .line 211
    .end local v7    # "child":Landroid/view/View;
    .end local v22    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v25    # "visibleItemCount":I
    .end local v26    # "isGeneratedItem":Z
    .end local v27    # "cellsAvailable":I
    .end local v28    # "cellsUsed":I
    .local v3, "visibleItemCount":I
    .restart local v13    # "maxChildHeight":I
    :goto_dc
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, p2

    move/from16 v9, v23

    move/from16 v10, v24

    goto/16 :goto_54

    .end local v23    # "cellCount":I
    .end local v24    # "cellSizeRemaining":I
    .local v9, "cellCount":I
    .local v10, "cellSizeRemaining":I
    :cond_e6
    move/from16 v23, v9

    move/from16 v24, v10

    .line 250
    .end local v4    # "i":I
    .end local v9    # "cellCount":I
    .end local v10    # "cellSizeRemaining":I
    .restart local v23    # "cellCount":I
    .restart local v24    # "cellSizeRemaining":I
    const/4 v4, 0x2

    if-eqz v17, :cond_f1

    if-ne v3, v4, :cond_f1

    const/4 v7, 0x1

    goto :goto_f2

    :cond_f1
    const/4 v7, 0x0

    .line 255
    .local v7, "centerSingleExpandedItem":Z
    :goto_f2
    const/4 v9, 0x0

    .line 256
    .local v9, "needsExpansion":Z
    :goto_f3
    const-wide/16 v25, 0x0

    if-lez v15, :cond_1c1

    if-lez v12, :cond_1c1

    .line 257
    const v10, 0x7fffffff

    .line 258
    .local v10, "minCells":I
    const-wide/16 v27, 0x0

    .line 259
    .local v27, "minCellsAt":J
    const/16 v29, 0x0

    .line 260
    .local v29, "minCellsItemCount":I
    const/16 v30, 0x0

    move/from16 v4, v29

    move/from16 v36, v30

    move/from16 v30, v5

    move/from16 v5, v36

    .end local v29    # "minCellsItemCount":I
    .local v4, "minCellsItemCount":I
    .local v5, "i":I
    .local v30, "heightPadding":I
    :goto_10a
    if-ge v5, v11, :cond_158

    .line 261
    invoke-virtual {v0, v5}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    .line 262
    .local v31, "child":Landroid/view/View;
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    move/from16 v33, v9

    .end local v9    # "needsExpansion":Z
    .local v33, "needsExpansion":Z
    move-object/from16 v9, v32

    check-cast v9, Landroid/widget/ActionMenuView$LayoutParams;

    .line 265
    .local v9, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move/from16 v32, v15

    .end local v15    # "expandableItemCount":I
    .local v32, "expandableItemCount":I
    iget-boolean v15, v9, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v15, :cond_125

    move/from16 v34, v1

    move/from16 v35, v2

    goto :goto_14d

    .line 268
    :cond_125
    iget v15, v9, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v15, v10, :cond_13b

    .line 269
    iget v10, v9, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 270
    move/from16 v22, v10

    const/4 v15, 0x1

    .end local v10    # "minCells":I
    .local v22, "minCells":I
    shl-int v10, v15, v5

    move/from16 v34, v1

    move/from16 v35, v2

    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .local v34, "heightMode":I
    .local v35, "widthSize":I
    int-to-long v1, v10

    .line 271
    .end local v27    # "minCellsAt":J
    .local v1, "minCellsAt":J
    const/4 v4, 0x1

    move-wide/from16 v27, v1

    move/from16 v10, v22

    goto :goto_14d

    .line 272
    .end local v22    # "minCells":I
    .end local v34    # "heightMode":I
    .end local v35    # "widthSize":I
    .local v1, "heightMode":I
    .restart local v2    # "widthSize":I
    .restart local v10    # "minCells":I
    .restart local v27    # "minCellsAt":J
    :cond_13b
    move/from16 v34, v1

    move/from16 v35, v2

    const/4 v15, 0x1

    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .restart local v34    # "heightMode":I
    .restart local v35    # "widthSize":I
    iget v1, v9, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v1, v10, :cond_14d

    .line 273
    shl-int v1, v15, v5

    int-to-long v1, v1

    or-long v1, v27, v1

    .line 274
    .end local v27    # "minCellsAt":J
    .local v1, "minCellsAt":J
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v27, v1

    .line 260
    .end local v1    # "minCellsAt":J
    .end local v9    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v31    # "child":Landroid/view/View;
    .restart local v27    # "minCellsAt":J
    :cond_14d
    :goto_14d
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v32

    move/from16 v9, v33

    move/from16 v1, v34

    move/from16 v2, v35

    goto :goto_10a

    .end local v32    # "expandableItemCount":I
    .end local v33    # "needsExpansion":Z
    .end local v34    # "heightMode":I
    .end local v35    # "widthSize":I
    .local v1, "heightMode":I
    .restart local v2    # "widthSize":I
    .local v9, "needsExpansion":Z
    .restart local v15    # "expandableItemCount":I
    :cond_158
    move/from16 v34, v1

    move/from16 v35, v2

    move/from16 v33, v9

    move/from16 v32, v15

    .line 279
    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .end local v5    # "i":I
    .end local v9    # "needsExpansion":Z
    .end local v15    # "expandableItemCount":I
    .restart local v32    # "expandableItemCount":I
    .restart local v33    # "needsExpansion":Z
    .restart local v34    # "heightMode":I
    .restart local v35    # "widthSize":I
    or-long v18, v18, v27

    .line 281
    if-le v4, v12, :cond_166

    goto/16 :goto_1cb

    .line 284
    :cond_166
    add-int/lit8 v10, v10, 0x1

    .line 286
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_169
    if-ge v1, v11, :cond_1b3

    .line 287
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 288
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/ActionMenuView$LayoutParams;

    .line 289
    .local v5, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    const/4 v9, 0x1

    shl-int v15, v9, v1

    move/from16 v31, v10

    .end local v10    # "minCells":I
    .local v31, "minCells":I
    int-to-long v9, v15

    and-long v9, v27, v9

    cmp-long v9, v9, v25

    if-nez v9, :cond_193

    .line 291
    iget v9, v5, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v10, v31

    .end local v31    # "minCells":I
    .restart local v10    # "minCells":I
    if-ne v9, v10, :cond_190

    const/4 v9, 0x1

    shl-int v15, v9, v1

    move/from16 v31, v10

    .end local v10    # "minCells":I
    .restart local v31    # "minCells":I
    int-to-long v9, v15

    or-long v18, v18, v9

    goto :goto_1ae

    .end local v31    # "minCells":I
    .restart local v10    # "minCells":I
    :cond_190
    move/from16 v31, v10

    .end local v10    # "minCells":I
    .restart local v31    # "minCells":I
    goto :goto_1ae

    .line 295
    :cond_193
    if-eqz v7, :cond_1a4

    iget-boolean v9, v5, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v9, :cond_1a4

    const/4 v9, 0x1

    if-ne v12, v9, :cond_1a4

    .line 297
    iget v9, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int v10, v9, v8

    const/4 v15, 0x0

    invoke-virtual {v2, v10, v15, v9, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 299
    :cond_1a4
    iget v9, v5, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    iput v9, v5, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 300
    iput-boolean v10, v5, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 301
    add-int/lit8 v12, v12, -0x1

    .line 286
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :goto_1ae
    add-int/lit8 v1, v1, 0x1

    move/from16 v10, v31

    goto :goto_169

    .end local v31    # "minCells":I
    .restart local v10    # "minCells":I
    :cond_1b3
    move/from16 v31, v10

    .line 304
    .end local v1    # "i":I
    .end local v10    # "minCells":I
    .restart local v31    # "minCells":I
    const/4 v9, 0x1

    .line 305
    .end local v4    # "minCellsItemCount":I
    .end local v27    # "minCellsAt":J
    .end local v31    # "minCells":I
    .end local v33    # "needsExpansion":Z
    .restart local v9    # "needsExpansion":Z
    move/from16 v5, v30

    move/from16 v15, v32

    move/from16 v1, v34

    move/from16 v2, v35

    const/4 v4, 0x2

    goto/16 :goto_f3

    .line 256
    .end local v30    # "heightPadding":I
    .end local v32    # "expandableItemCount":I
    .end local v34    # "heightMode":I
    .end local v35    # "widthSize":I
    .local v1, "heightMode":I
    .local v2, "widthSize":I
    .local v5, "heightPadding":I
    .restart local v15    # "expandableItemCount":I
    :cond_1c1
    move/from16 v34, v1

    move/from16 v35, v2

    move/from16 v30, v5

    move/from16 v33, v9

    move/from16 v32, v15

    .line 310
    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .end local v5    # "heightPadding":I
    .end local v9    # "needsExpansion":Z
    .end local v15    # "expandableItemCount":I
    .restart local v30    # "heightPadding":I
    .restart local v32    # "expandableItemCount":I
    .restart local v33    # "needsExpansion":Z
    .restart local v34    # "heightMode":I
    .restart local v35    # "widthSize":I
    :goto_1cb
    if-nez v17, :cond_1d2

    const/4 v1, 0x1

    if-ne v3, v1, :cond_1d2

    const/4 v1, 0x1

    goto :goto_1d3

    :cond_1d2
    const/4 v1, 0x0

    .line 311
    .local v1, "singleItem":Z
    :goto_1d3
    if-lez v12, :cond_29a

    cmp-long v2, v18, v25

    if-eqz v2, :cond_29a

    add-int/lit8 v2, v3, -0x1

    if-lt v12, v2, :cond_1e6

    if-nez v1, :cond_1e6

    const/4 v2, 0x1

    if-le v14, v2, :cond_1e3

    goto :goto_1e6

    :cond_1e3
    move v10, v1

    goto/16 :goto_29b

    .line 313
    :cond_1e6
    :goto_1e6
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    int-to-float v2, v2

    .line 315
    .local v2, "expandCount":F
    if-nez v1, :cond_227

    .line 317
    const-wide/16 v4, 0x1

    and-long v4, v18, v4

    cmp-long v4, v4, v25

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_208

    .line 318
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/ActionMenuView$LayoutParams;

    .line 319
    .local v9, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iget-boolean v10, v9, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v10, :cond_209

    sub-float/2addr v2, v5

    goto :goto_209

    .line 317
    .end local v9    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_208
    const/4 v4, 0x0

    .line 321
    :cond_209
    :goto_209
    add-int/lit8 v9, v11, -0x1

    const/4 v10, 0x1

    shl-int v9, v10, v9

    int-to-long v9, v9

    and-long v9, v18, v9

    cmp-long v9, v9, v25

    if-eqz v9, :cond_228

    .line 322
    add-int/lit8 v9, v11, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/ActionMenuView$LayoutParams;

    .line 323
    .restart local v9    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iget-boolean v10, v9, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v10, :cond_228

    sub-float/2addr v2, v5

    goto :goto_228

    .line 315
    .end local v9    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_227
    const/4 v4, 0x0

    .line 327
    :cond_228
    :goto_228
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_233

    .line 328
    mul-int v4, v12, v8

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v4, v4

    goto :goto_234

    :cond_233
    nop

    .line 330
    .local v4, "extraPixels":I
    :goto_234
    const/4 v5, 0x0

    move/from16 v9, v33

    .end local v33    # "needsExpansion":Z
    .local v5, "i":I
    .local v9, "needsExpansion":Z
    :goto_237
    if-ge v5, v11, :cond_295

    .line 331
    const/4 v10, 0x1

    shl-int v15, v10, v5

    move v10, v1

    move/from16 v20, v2

    .end local v1    # "singleItem":Z
    .end local v2    # "expandCount":F
    .local v10, "singleItem":Z
    .local v20, "expandCount":F
    int-to-long v1, v15

    and-long v1, v18, v1

    cmp-long v1, v1, v25

    if-nez v1, :cond_249

    const/16 v27, 0x2

    goto :goto_28f

    .line 333
    :cond_249
    invoke-virtual {v0, v5}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 334
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView$LayoutParams;

    .line 335
    .local v2, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    instance-of v15, v1, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v15, :cond_26d

    .line 337
    iput v4, v2, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 338
    const/4 v15, 0x1

    iput-boolean v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 339
    if-nez v5, :cond_269

    iget-boolean v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v15, :cond_269

    .line 342
    neg-int v15, v4

    const/16 v27, 0x2

    div-int/lit8 v15, v15, 0x2

    iput v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 344
    :cond_269
    const/4 v9, 0x1

    const/16 v27, 0x2

    goto :goto_28f

    .line 345
    :cond_26d
    iget-boolean v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v15, :cond_27f

    .line 346
    iput v4, v2, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 347
    const/4 v15, 0x1

    iput-boolean v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 348
    neg-int v15, v4

    const/16 v27, 0x2

    div-int/lit8 v15, v15, 0x2

    iput v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 349
    const/4 v9, 0x1

    goto :goto_28f

    .line 354
    :cond_27f
    const/16 v27, 0x2

    if-eqz v5, :cond_287

    .line 355
    div-int/lit8 v15, v4, 0x2

    iput v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 357
    :cond_287
    add-int/lit8 v15, v11, -0x1

    if-eq v5, v15, :cond_28f

    .line 358
    div-int/lit8 v15, v4, 0x2

    iput v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 330
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_28f
    :goto_28f
    add-int/lit8 v5, v5, 0x1

    move v1, v10

    move/from16 v2, v20

    goto :goto_237

    .end local v10    # "singleItem":Z
    .end local v20    # "expandCount":F
    .local v1, "singleItem":Z
    .local v2, "expandCount":F
    :cond_295
    move v10, v1

    move/from16 v20, v2

    .line 363
    .end local v1    # "singleItem":Z
    .end local v2    # "expandCount":F
    .end local v5    # "i":I
    .restart local v10    # "singleItem":Z
    .restart local v20    # "expandCount":F
    const/4 v12, 0x0

    goto :goto_29d

    .line 311
    .end local v4    # "extraPixels":I
    .end local v9    # "needsExpansion":Z
    .end local v10    # "singleItem":Z
    .end local v20    # "expandCount":F
    .restart local v1    # "singleItem":Z
    .restart local v33    # "needsExpansion":Z
    :cond_29a
    move v10, v1

    .line 367
    .end local v1    # "singleItem":Z
    .restart local v10    # "singleItem":Z
    :goto_29b
    move/from16 v9, v33

    .end local v33    # "needsExpansion":Z
    .restart local v9    # "needsExpansion":Z
    :goto_29d
    if-eqz v9, :cond_2cc

    .line 368
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a0
    if-ge v2, v11, :cond_2c9

    .line 369
    invoke-virtual {v0, v2}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 370
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/ActionMenuView$LayoutParams;

    .line 372
    .local v5, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iget-boolean v15, v5, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v15, :cond_2b3

    move/from16 v22, v3

    goto :goto_2c4

    .line 374
    :cond_2b3
    iget v15, v5, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr v15, v8

    iget v1, v5, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v15, v1

    .line 375
    .local v15, "width":I
    move/from16 v22, v3

    const/high16 v1, 0x40000000    # 2.0f

    .end local v3    # "visibleItemCount":I
    .local v22, "visibleItemCount":I
    invoke-static {v15, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    .line 368
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v15    # "width":I
    :goto_2c4
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v22

    goto :goto_2a0

    .end local v22    # "visibleItemCount":I
    .restart local v3    # "visibleItemCount":I
    :cond_2c9
    move/from16 v22, v3

    .end local v3    # "visibleItemCount":I
    .restart local v22    # "visibleItemCount":I
    goto :goto_2ce

    .line 367
    .end local v2    # "i":I
    .end local v22    # "visibleItemCount":I
    .restart local v3    # "visibleItemCount":I
    :cond_2cc
    move/from16 v22, v3

    .line 380
    .end local v3    # "visibleItemCount":I
    .restart local v22    # "visibleItemCount":I
    :goto_2ce
    move/from16 v1, v34

    const/high16 v2, 0x40000000    # 2.0f

    .end local v34    # "heightMode":I
    .local v1, "heightMode":I
    if-eq v1, v2, :cond_2d6

    .line 381
    move v3, v13

    .end local v16    # "heightSize":I
    .local v3, "heightSize":I
    goto :goto_2d8

    .line 380
    .end local v3    # "heightSize":I
    .restart local v16    # "heightSize":I
    :cond_2d6
    move/from16 v3, v16

    .line 384
    .end local v16    # "heightSize":I
    .restart local v3    # "heightSize":I
    :goto_2d8
    move/from16 v2, v35

    .end local v35    # "widthSize":I
    .local v2, "widthSize":I
    invoke-virtual {v0, v2, v3}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 385
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 608
    if-eqz p1, :cond_8

    instance-of v0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist dismissPopupMenus()V
    .registers 2

    .line 714
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_7

    .line 715
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 717
    :cond_7
    return-void
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 742
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 49
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .registers 3

    .line 581
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 583
    .local v0, "params":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 584
    return-object v0
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 49
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 589
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 594
    if-eqz p1, :cond_1e

    .line 595
    instance-of v0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_f

    .line 596
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/widget/ActionMenuView$LayoutParams;)V

    goto :goto_14

    .line 597
    :cond_f
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_14
    nop

    .line 598
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    iget v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_1d

    .line 599
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 601
    :cond_1d
    return-object v0

    .line 603
    .end local v0    # "result":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .registers 3

    .line 613
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 614
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 615
    return-object v0
.end method

.method public whitelist getMenu()Landroid/view/Menu;
    .registers 5

    .line 642
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_40

    .line 643
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 644
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 645
    new-instance v2, Landroid/widget/ActionMenuView$MenuBuilderCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$MenuBuilderCallback-IA;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 646
    new-instance v1, Landroid/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 647
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 648
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_2a

    .line 649
    goto :goto_2f

    :cond_2a
    new-instance v2, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$ActionMenuPresenterCallback-IA;)V

    .line 648
    :goto_2f
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 650
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 651
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 654
    .end local v0    # "context":Landroid/content/Context;
    :cond_40
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public whitelist getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 564
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 565
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPopupTheme()I
    .registers 2

    .line 112
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public greylist-max-o getWindowAnimations()I
    .registers 2

    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-r hasDividerBeforeChildAt(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .line 725
    if-nez p1, :cond_4

    .line 726
    const/4 v0, 0x0

    return v0

    .line 728
    :cond_4
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 729
    .local v0, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 730
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 731
    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_21

    instance-of v3, v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_21

    .line 732
    move-object v3, v0

    check-cast v3, Landroid/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 734
    :cond_21
    if-lez p1, :cond_2f

    instance-of v3, v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2f

    .line 735
    move-object v3, v1

    check-cast v3, Landroid/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    .line 737
    :cond_2f
    return v2
.end method

.method public whitelist hideOverflowMenu()Z
    .registers 2

    .line 691
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist-max-o initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 630
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 631
    return-void
.end method

.method public greylist-max-o invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 620
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public greylist isOverflowMenuShowPending()Z
    .registers 2

    .line 707
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist isOverflowMenuShowing()Z
    .registers 2

    .line 701
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist isOverflowReserved()Z
    .registers 2

    .line 571
    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 126
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 128
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_1d

    .line 129
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 131
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 132
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 133
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 136
    :cond_1d
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 1

    .line 543
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 544
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    .line 545
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 27
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 437
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-nez v1, :cond_a

    .line 438
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 439
    return-void

    .line 442
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 443
    .local v1, "childCount":I
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    .line 444
    .local v2, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getDividerWidth()I

    move-result v3

    .line 445
    .local v3, "dividerWidth":I
    const/4 v4, 0x0

    .line 446
    .local v4, "overflowWidth":I
    const/4 v5, 0x0

    .line 447
    .local v5, "nonOverflowWidth":I
    const/4 v6, 0x0

    .line 448
    .local v6, "nonOverflowCount":I
    sub-int v7, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    .line 449
    .local v7, "widthRemaining":I
    const/4 v8, 0x0

    .line 450
    .local v8, "hasOverflow":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->isLayoutRtl()Z

    move-result v9

    .line 451
    .local v9, "isLayoutRtl":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2b
    const/16 v11, 0x8

    if-ge v10, v1, :cond_a3

    .line 452
    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 453
    .local v12, "v":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v11, :cond_3e

    .line 454
    move/from16 v16, v2

    move/from16 v17, v9

    goto :goto_9c

    .line 457
    :cond_3e
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuView$LayoutParams;

    .line 458
    .local v11, "p":Landroid/widget/ActionMenuView$LayoutParams;
    iget-boolean v13, v11, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v13, :cond_83

    .line 459
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 460
    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v13

    if-eqz v13, :cond_53

    .line 461
    add-int/2addr v4, v3

    .line 464
    :cond_53
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 467
    .local v13, "height":I
    if-eqz v9, :cond_63

    .line 468
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v14

    iget v15, v11, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    .line 469
    .local v14, "l":I
    add-int v15, v14, v4

    .local v15, "r":I
    goto :goto_72

    .line 471
    .end local v14    # "l":I
    .end local v15    # "r":I
    :cond_63
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    iget v15, v11, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v15, v14, v15

    .line 472
    .restart local v15    # "r":I
    sub-int v14, v15, v4

    .line 474
    .restart local v14    # "l":I
    :goto_72
    div-int/lit8 v16, v13, 0x2

    move/from16 v17, v9

    .end local v9    # "isLayoutRtl":Z
    .local v17, "isLayoutRtl":Z
    sub-int v9, v2, v16

    .line 475
    .local v9, "t":I
    move/from16 v16, v2

    .end local v2    # "midVertical":I
    .local v16, "midVertical":I
    add-int v2, v9, v13

    .line 476
    .local v2, "b":I
    invoke-virtual {v12, v14, v9, v15, v2}, Landroid/view/View;->layout(IIII)V

    .line 478
    sub-int/2addr v7, v4

    .line 479
    const/4 v2, 0x1

    .line 480
    .end local v8    # "hasOverflow":Z
    .end local v9    # "t":I
    .end local v13    # "height":I
    .end local v14    # "l":I
    .end local v15    # "r":I
    .local v2, "hasOverflow":Z
    move v8, v2

    goto :goto_9c

    .line 481
    .end local v16    # "midVertical":I
    .end local v17    # "isLayoutRtl":Z
    .local v2, "midVertical":I
    .restart local v8    # "hasOverflow":Z
    .local v9, "isLayoutRtl":Z
    :cond_83
    move/from16 v16, v2

    move/from16 v17, v9

    .end local v2    # "midVertical":I
    .end local v9    # "isLayoutRtl":Z
    .restart local v16    # "midVertical":I
    .restart local v17    # "isLayoutRtl":Z
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v9, v11, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v9

    iget v9, v11, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v2, v9

    .line 482
    .local v2, "size":I
    add-int/2addr v5, v2

    .line 483
    sub-int/2addr v7, v2

    .line 484
    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v9

    if-eqz v9, :cond_9a

    .line 485
    add-int/2addr v5, v3

    .line 487
    :cond_9a
    add-int/lit8 v6, v6, 0x1

    .line 451
    .end local v2    # "size":I
    .end local v11    # "p":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v12    # "v":Landroid/view/View;
    :goto_9c
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v16

    move/from16 v9, v17

    goto :goto_2b

    .end local v16    # "midVertical":I
    .end local v17    # "isLayoutRtl":Z
    .local v2, "midVertical":I
    .restart local v9    # "isLayoutRtl":Z
    :cond_a3
    move/from16 v16, v2

    move/from16 v17, v9

    .line 491
    .end local v2    # "midVertical":I
    .end local v9    # "isLayoutRtl":Z
    .end local v10    # "i":I
    .restart local v16    # "midVertical":I
    .restart local v17    # "isLayoutRtl":Z
    const/4 v2, 0x0

    const/4 v9, 0x1

    if-ne v1, v9, :cond_cd

    if-nez v8, :cond_cd

    .line 493
    invoke-virtual {v0, v2}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 494
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 495
    .local v9, "width":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 496
    .local v10, "height":I
    sub-int v11, p4, p2

    div-int/lit8 v11, v11, 0x2

    .line 497
    .local v11, "midHorizontal":I
    div-int/lit8 v12, v9, 0x2

    sub-int v12, v11, v12

    .line 498
    .local v12, "l":I
    div-int/lit8 v13, v10, 0x2

    sub-int v13, v16, v13

    .line 499
    .local v13, "t":I
    add-int v14, v12, v9

    add-int v15, v13, v10

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 500
    return-void

    .line 503
    .end local v2    # "v":Landroid/view/View;
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v11    # "midHorizontal":I
    .end local v12    # "l":I
    .end local v13    # "t":I
    :cond_cd
    xor-int/lit8 v9, v8, 0x1

    sub-int v9, v6, v9

    .line 504
    .local v9, "spacerCount":I
    if-lez v9, :cond_d6

    div-int v10, v7, v9

    goto :goto_d7

    :cond_d6
    move v10, v2

    :goto_d7
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 506
    .local v2, "spacerSize":I
    if-eqz v17, :cond_134

    .line 507
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v10, v12

    .line 508
    .local v10, "startRight":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_e7
    if-ge v12, v1, :cond_12f

    .line 509
    invoke-virtual {v0, v12}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 510
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/ActionMenuView$LayoutParams;

    .line 511
    .local v14, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v11, :cond_122

    iget-boolean v15, v14, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v15, :cond_102

    .line 512
    move/from16 v19, v3

    move/from16 v20, v4

    goto :goto_126

    .line 515
    :cond_102
    iget v15, v14, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v10, v15

    .line 516
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 517
    .local v15, "width":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    .line 518
    .local v18, "height":I
    div-int/lit8 v19, v18, 0x2

    sub-int v11, v16, v19

    .line 519
    .local v11, "t":I
    move/from16 v19, v3

    .end local v3    # "dividerWidth":I
    .local v19, "dividerWidth":I
    sub-int v3, v10, v15

    move/from16 v20, v4

    .end local v4    # "overflowWidth":I
    .local v20, "overflowWidth":I
    add-int v4, v11, v18

    invoke-virtual {v13, v3, v11, v10, v4}, Landroid/view/View;->layout(IIII)V

    .line 520
    iget v3, v14, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v15

    add-int/2addr v3, v2

    sub-int/2addr v10, v3

    goto :goto_126

    .line 511
    .end local v11    # "t":I
    .end local v15    # "width":I
    .end local v18    # "height":I
    .end local v19    # "dividerWidth":I
    .end local v20    # "overflowWidth":I
    .restart local v3    # "dividerWidth":I
    .restart local v4    # "overflowWidth":I
    :cond_122
    move/from16 v19, v3

    move/from16 v20, v4

    .line 508
    .end local v3    # "dividerWidth":I
    .end local v4    # "overflowWidth":I
    .end local v13    # "v":Landroid/view/View;
    .end local v14    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v19    # "dividerWidth":I
    .restart local v20    # "overflowWidth":I
    :goto_126
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v19

    move/from16 v4, v20

    const/16 v11, 0x8

    goto :goto_e7

    .end local v19    # "dividerWidth":I
    .end local v20    # "overflowWidth":I
    .restart local v3    # "dividerWidth":I
    .restart local v4    # "overflowWidth":I
    :cond_12f
    move/from16 v19, v3

    move/from16 v20, v4

    .line 522
    .end local v3    # "dividerWidth":I
    .end local v4    # "overflowWidth":I
    .end local v10    # "startRight":I
    .end local v12    # "i":I
    .restart local v19    # "dividerWidth":I
    .restart local v20    # "overflowWidth":I
    goto :goto_176

    .line 523
    .end local v19    # "dividerWidth":I
    .end local v20    # "overflowWidth":I
    .restart local v3    # "dividerWidth":I
    .restart local v4    # "overflowWidth":I
    :cond_134
    move/from16 v19, v3

    move/from16 v20, v4

    .end local v3    # "dividerWidth":I
    .end local v4    # "overflowWidth":I
    .restart local v19    # "dividerWidth":I
    .restart local v20    # "overflowWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v3

    .line 524
    .local v3, "startLeft":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13d
    if-ge v4, v1, :cond_176

    .line 525
    invoke-virtual {v0, v4}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 526
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuView$LayoutParams;

    .line 527
    .local v11, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_171

    iget-boolean v12, v11, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v12, :cond_156

    .line 528
    goto :goto_171

    .line 531
    :cond_156
    iget v12, v11, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v12

    .line 532
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 533
    .local v12, "width":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 534
    .local v14, "height":I
    div-int/lit8 v15, v14, 0x2

    sub-int v15, v16, v15

    .line 535
    .local v15, "t":I
    add-int v13, v3, v12

    add-int v0, v15, v14

    invoke-virtual {v10, v3, v15, v13, v0}, Landroid/view/View;->layout(IIII)V

    .line 536
    iget v0, v11, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v12

    add-int/2addr v0, v2

    add-int/2addr v3, v0

    .line 524
    .end local v10    # "v":Landroid/view/View;
    .end local v11    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v12    # "width":I
    .end local v14    # "height":I
    .end local v15    # "t":I
    :cond_171
    :goto_171
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_13d

    .line 539
    .end local v3    # "startLeft":I
    .end local v4    # "i":I
    :cond_176
    :goto_176
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 145
    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    .line 146
    .local v0, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    :goto_f
    iput-boolean v1, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    .line 148
    if-eq v0, v1, :cond_15

    .line 149
    iput v3, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 154
    :cond_15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 155
    .local v1, "widthSize":I
    iget-boolean v4, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_2a

    iget-object v4, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_2a

    iget v5, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v1, v5, :cond_2a

    .line 156
    iput v1, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 157
    invoke-virtual {v4, v2}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 160
    :cond_2a
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v2

    .line 161
    .local v2, "childCount":I
    iget-boolean v4, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_38

    if-lez v2, :cond_38

    .line 162
    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_4f

    .line 165
    :cond_38
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_39
    if-ge v4, v2, :cond_4c

    .line 166
    invoke-virtual {p0, v4}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 167
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/ActionMenuView$LayoutParams;

    .line 168
    .local v6, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iput v3, v6, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v3, v6, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 165
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 170
    .end local v4    # "i":I
    :cond_4c
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 172
    :goto_4f
    return-void
.end method

.method public greylist peekMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2

    .line 673
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public greylist setExpandedActionViewsExclusive(Z)V
    .registers 3
    .param p1, "exclusive"    # Z

    .line 748
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 749
    return-void
.end method

.method public greylist setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 3
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 663
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 664
    iput-object p2, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 665
    return-void
.end method

.method public whitelist setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 139
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 140
    return-void
.end method

.method public whitelist setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 553
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 554
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 555
    return-void
.end method

.method public greylist-max-o setOverflowReserved(Z)V
    .registers 2
    .param p1, "reserveOverflow"    # Z

    .line 576
    iput-boolean p1, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    .line 577
    return-void
.end method

.method public whitelist setPopupTheme(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 96
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_16

    .line 97
    iput p1, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    .line 98
    if-nez p1, :cond_d

    .line 99
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_16

    .line 101
    :cond_d
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 104
    :cond_16
    :goto_16
    return-void
.end method

.method public greylist-max-o setPresenter(Landroid/widget/ActionMenuPresenter;)V
    .registers 2
    .param p1, "presenter"    # Landroid/widget/ActionMenuPresenter;

    .line 120
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 121
    invoke-virtual {p1, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 122
    return-void
.end method

.method public whitelist showOverflowMenu()Z
    .registers 2

    .line 682
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
