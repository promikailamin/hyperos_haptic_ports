.class public Landroid/widget/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuView$OnMenuItemClickListener;,
        Landroid/widget/ActionMenuView$LayoutParams;,
        Landroid/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/widget/ActionMenuView$ActionMenuChildView;
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

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 82
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    .line 83
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 84
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 85
    iput p2, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    .line 86
    return-void
.end method

.method static greylist-max-o measureChildForCells(Landroid/view/View;IIII)I
    .registers 10

    .line 402
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/ActionMenuView$LayoutParams;

    .line 404
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    .line 406
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 407
    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 409
    instance-of p4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz p4, :cond_1b

    .line 410
    move-object p4, p0

    check-cast p4, Lcom/android/internal/view/menu/ActionMenuItemView;

    goto :goto_1c

    :cond_1b
    const/4 p4, 0x0

    .line 411
    :goto_1c
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_28

    invoke-virtual {p4}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result p4

    if-eqz p4, :cond_28

    move p4, v1

    goto :goto_29

    :cond_28
    move p4, v2

    .line 413
    :goto_29
    nop

    .line 414
    if-lez p2, :cond_4d

    const/4 v3, 0x2

    if-eqz p4, :cond_31

    if-lt p2, v3, :cond_4d

    .line 415
    :cond_31
    mul-int/2addr p2, p1

    const/high16 v4, -0x80000000

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 417
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 419
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 420
    div-int v4, p2, p1

    .line 421
    rem-int/2addr p2, p1

    if-eqz p2, :cond_46

    add-int/lit8 v4, v4, 0x1

    .line 422
    :cond_46
    if-eqz p4, :cond_4b

    if-ge v4, v3, :cond_4b

    goto :goto_4e

    .line 425
    :cond_4b
    move v3, v4

    goto :goto_4e

    :cond_4d
    move v3, v2

    :goto_4e
    iget-boolean p2, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez p2, :cond_55

    if-eqz p4, :cond_55

    goto :goto_56

    :cond_55
    move v1, v2

    .line 426
    :goto_56
    iput-boolean v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 428
    iput v3, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 429
    mul-int/2addr p1, v3

    .line 430
    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    .line 432
    return v3
.end method

.method private greylist-max-o onMeasureExactFormat(II)V
    .registers 32

    .line 176
    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 177
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 178
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 180
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 181
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 183
    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Landroid/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    .line 186
    sub-int/2addr v2, v4

    .line 189
    iget v4, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    div-int v4, v2, v4

    .line 190
    iget v7, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    rem-int v7, v2, v7

    .line 192
    const/4 v8, 0x0

    if-nez v4, :cond_37

    .line 194
    invoke-virtual {v0, v2, v8}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 195
    return-void

    .line 198
    :cond_37
    iget v9, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    div-int/2addr v7, v4

    add-int/2addr v9, v7

    .line 200
    nop

    .line 201
    nop

    .line 202
    nop

    .line 203
    nop

    .line 204
    nop

    .line 205
    nop

    .line 208
    nop

    .line 210
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v7

    .line 211
    move v10, v8

    move v12, v10

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    const-wide/16 p1, 0x0

    const-wide/16 v17, 0x0

    :goto_51
    if-ge v12, v7, :cond_d5

    .line 212
    invoke-virtual {v0, v12}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 213
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v8

    move/from16 v20, v3

    const/16 v3, 0x8

    if-ne v8, v3, :cond_63

    goto/16 :goto_ce

    .line 215
    :cond_63
    instance-of v3, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 216
    add-int/lit8 v14, v14, 0x1

    .line 218
    if-eqz v3, :cond_76

    .line 221
    iget v8, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v21, v3

    iget v3, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v22, v4

    const/4 v4, 0x0

    invoke-virtual {v11, v8, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_7b

    .line 218
    :cond_76
    move/from16 v21, v3

    move/from16 v22, v4

    const/4 v4, 0x0

    .line 224
    :goto_7b
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/ActionMenuView$LayoutParams;

    .line 225
    iput-boolean v4, v3, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 226
    iput v4, v3, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 227
    iput v4, v3, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 228
    iput-boolean v4, v3, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 229
    iput v4, v3, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 230
    iput v4, v3, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 231
    if-eqz v21, :cond_9a

    move-object v4, v11

    check-cast v4, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v4

    if-eqz v4, :cond_9a

    const/4 v4, 0x1

    goto :goto_9b

    :cond_9a
    const/4 v4, 0x0

    :goto_9b
    iput-boolean v4, v3, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 234
    iget-boolean v4, v3, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_a3

    const/4 v4, 0x1

    goto :goto_a5

    :cond_a3
    move/from16 v4, v22

    .line 236
    :goto_a5
    invoke-static {v11, v9, v4, v6, v5}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v4

    .line 239
    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 240
    iget-boolean v8, v3, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v8, :cond_b3

    add-int/lit8 v16, v16, 0x1

    .line 241
    :cond_b3
    iget-boolean v3, v3, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_b8

    const/4 v13, 0x1

    .line 243
    :cond_b8
    sub-int v3, v22, v4

    .line 244
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 245
    const/4 v8, 0x1

    if-ne v4, v8, :cond_cc

    shl-int v4, v8, v12

    move v8, v3

    int-to-long v3, v4

    or-long v17, v17, v3

    goto :goto_cd

    :cond_cc
    move v8, v3

    :goto_cd
    move v4, v8

    .line 211
    :goto_ce
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v20

    const/4 v8, 0x0

    goto/16 :goto_51

    .line 250
    :cond_d5
    move/from16 v20, v3

    move/from16 v22, v4

    const/4 v3, 0x2

    if-eqz v13, :cond_e0

    if-ne v14, v3, :cond_e0

    const/4 v4, 0x1

    goto :goto_e1

    :cond_e0
    const/4 v4, 0x0

    .line 255
    :goto_e1
    move/from16 v5, v22

    const/4 v8, 0x0

    .line 256
    :goto_e4
    if-lez v16, :cond_18e

    if-lez v5, :cond_18e

    .line 257
    nop

    .line 258
    nop

    .line 259
    nop

    .line 260
    const v11, 0x7fffffff

    move-wide/from16 v22, p1

    move/from16 v21, v3

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_f4
    if-ge v3, v7, :cond_12f

    .line 261
    invoke-virtual {v0, v3}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 262
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move/from16 v25, v3

    move-object/from16 v3, v24

    check-cast v3, Landroid/widget/ActionMenuView$LayoutParams;

    .line 265
    move/from16 v24, v4

    iget-boolean v4, v3, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v4, :cond_10b

    goto :goto_12a

    .line 268
    :cond_10b
    iget v4, v3, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v4, v11, :cond_11c

    .line 269
    iget v3, v3, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 270
    const/16 v19, 0x1

    shl-int v4, v19, v25

    int-to-long v11, v4

    .line 271
    move-wide/from16 v22, v11

    move/from16 v12, v19

    move v11, v3

    goto :goto_12a

    .line 272
    :cond_11c
    const/16 v19, 0x1

    iget v3, v3, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v3, v11, :cond_12a

    .line 273
    shl-int v3, v19, v25

    int-to-long v3, v3

    or-long v22, v22, v3

    .line 274
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    .line 260
    :cond_12a
    :goto_12a
    add-int/lit8 v3, v25, 0x1

    move/from16 v4, v24

    goto :goto_f4

    .line 279
    :cond_12f
    move/from16 v24, v4

    or-long v17, v17, v22

    .line 281
    if-le v12, v5, :cond_13a

    move/from16 v25, v9

    move/from16 v26, v10

    goto :goto_194

    .line 284
    :cond_13a
    add-int/lit8 v11, v11, 0x1

    .line 286
    const/4 v4, 0x0

    :goto_13d
    if-ge v4, v7, :cond_183

    .line 287
    invoke-virtual {v0, v4}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 288
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/ActionMenuView$LayoutParams;

    .line 289
    const/16 v19, 0x1

    shl-int v12, v19, v4

    move/from16 v25, v9

    move/from16 v26, v10

    int-to-long v9, v12

    and-long v27, v22, v9

    cmp-long v12, v27, p1

    if-nez v12, :cond_15f

    .line 291
    iget v3, v8, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v3, v11, :cond_17c

    or-long v17, v17, v9

    goto :goto_17c

    .line 295
    :cond_15f
    if-eqz v24, :cond_172

    iget-boolean v9, v8, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v9, :cond_172

    const/4 v9, 0x1

    if-ne v5, v9, :cond_172

    .line 297
    iget v9, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int v9, v9, v25

    iget v10, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    const/4 v12, 0x0

    invoke-virtual {v3, v9, v12, v10, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 299
    :cond_172
    iget v3, v8, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v9, 0x1

    add-int/2addr v3, v9

    iput v3, v8, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 300
    iput-boolean v9, v8, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 301
    add-int/lit8 v5, v5, -0x1

    .line 286
    :cond_17c
    :goto_17c
    add-int/lit8 v4, v4, 0x1

    move/from16 v9, v25

    move/from16 v10, v26

    goto :goto_13d

    .line 304
    :cond_183
    move/from16 v25, v9

    move/from16 v26, v10

    .line 305
    move/from16 v3, v21

    move/from16 v4, v24

    const/4 v8, 0x1

    goto/16 :goto_e4

    .line 256
    :cond_18e
    move/from16 v21, v3

    move/from16 v25, v9

    move/from16 v26, v10

    .line 310
    :goto_194
    if-nez v13, :cond_19b

    const/4 v9, 0x1

    if-ne v14, v9, :cond_19b

    const/4 v3, 0x1

    goto :goto_19c

    :cond_19b
    const/4 v3, 0x0

    .line 311
    :goto_19c
    if-lez v5, :cond_24f

    cmp-long v4, v17, p1

    if-eqz v4, :cond_24f

    const/4 v9, 0x1

    sub-int/2addr v14, v9

    if-lt v5, v14, :cond_1ae

    if-nez v3, :cond_1ae

    if-le v15, v9, :cond_1ab

    goto :goto_1ae

    :cond_1ab
    const/4 v12, 0x0

    goto/16 :goto_250

    .line 313
    :cond_1ae
    :goto_1ae
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    int-to-float v4, v4

    .line 315
    if-nez v3, :cond_1ee

    .line 317
    const-wide/16 v9, 0x1

    and-long v9, v17, v9

    cmp-long v3, v9, p1

    const/high16 v9, 0x3f000000    # 0.5f

    if-eqz v3, :cond_1d0

    .line 318
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/ActionMenuView$LayoutParams;

    .line 319
    iget-boolean v3, v3, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v3, :cond_1d1

    sub-float/2addr v4, v9

    goto :goto_1d1

    .line 317
    :cond_1d0
    const/4 v12, 0x0

    .line 321
    :cond_1d1
    :goto_1d1
    add-int/lit8 v3, v7, -0x1

    const/16 v19, 0x1

    shl-int v10, v19, v3

    int-to-long v10, v10

    and-long v10, v17, v10

    cmp-long v10, v10, p1

    if-eqz v10, :cond_1ef

    .line 322
    invoke-virtual {v0, v3}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/ActionMenuView$LayoutParams;

    .line 323
    iget-boolean v3, v3, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v3, :cond_1ef

    sub-float/2addr v4, v9

    goto :goto_1ef

    .line 315
    :cond_1ee
    const/4 v12, 0x0

    .line 327
    :cond_1ef
    :goto_1ef
    const/4 v3, 0x0

    cmpl-float v3, v4, v3

    if-lez v3, :cond_1fa

    .line 328
    mul-int v5, v5, v25

    int-to-float v3, v5

    div-float/2addr v3, v4

    float-to-int v4, v3

    goto :goto_1fb

    :cond_1fa
    move v4, v12

    .line 330
    :goto_1fb
    move v3, v12

    :goto_1fc
    if-ge v3, v7, :cond_24e

    .line 331
    const/16 v19, 0x1

    shl-int v5, v19, v3

    int-to-long v9, v5

    and-long v9, v17, v9

    cmp-long v5, v9, p1

    if-nez v5, :cond_20b

    const/4 v5, 0x1

    goto :goto_24b

    .line 333
    :cond_20b
    invoke-virtual {v0, v3}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 334
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/ActionMenuView$LayoutParams;

    .line 335
    instance-of v5, v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v5, :cond_22c

    .line 337
    iput v4, v9, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 338
    const/4 v8, 0x1

    iput-boolean v8, v9, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 339
    if-nez v3, :cond_229

    iget-boolean v5, v9, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v5, :cond_229

    .line 342
    neg-int v5, v4

    div-int/lit8 v5, v5, 0x2

    iput v5, v9, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 344
    :cond_229
    const/4 v5, 0x1

    const/4 v8, 0x1

    goto :goto_24b

    .line 345
    :cond_22c
    iget-boolean v5, v9, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_23c

    .line 346
    iput v4, v9, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 347
    const/4 v5, 0x1

    iput-boolean v5, v9, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 348
    neg-int v8, v4

    div-int/lit8 v8, v8, 0x2

    iput v8, v9, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 349
    move v8, v5

    goto :goto_24b

    .line 354
    :cond_23c
    const/4 v5, 0x1

    if-eqz v3, :cond_243

    .line 355
    div-int/lit8 v10, v4, 0x2

    iput v10, v9, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 357
    :cond_243
    add-int/lit8 v10, v7, -0x1

    if-eq v3, v10, :cond_24b

    .line 358
    div-int/lit8 v10, v4, 0x2

    iput v10, v9, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 330
    :cond_24b
    :goto_24b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1fc

    .line 363
    :cond_24e
    goto :goto_250

    .line 311
    :cond_24f
    const/4 v12, 0x0

    .line 367
    :goto_250
    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v8, :cond_277

    .line 368
    move v8, v12

    :goto_255
    if-ge v8, v7, :cond_277

    .line 369
    invoke-virtual {v0, v8}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 370
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/ActionMenuView$LayoutParams;

    .line 372
    iget-boolean v9, v5, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v9, :cond_266

    goto :goto_274

    .line 374
    :cond_266
    iget v9, v5, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v9, v9, v25

    iget v5, v5, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v9, v5

    .line 375
    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 368
    :goto_274
    add-int/lit8 v8, v8, 0x1

    goto :goto_255

    .line 380
    :cond_277
    if-eq v1, v3, :cond_27c

    .line 381
    move/from16 v3, v26

    goto :goto_27e

    .line 380
    :cond_27c
    move/from16 v3, v20

    .line 384
    :goto_27e
    invoke-virtual {v0, v2, v3}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 385
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 608
    if-eqz p1, :cond_8

    instance-of p1, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public whitelist dismissPopupMenus()V
    .registers 2

    .line 714
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_9

    .line 715
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 717
    :cond_9
    return-void
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    .line 742
    const/4 p1, 0x0

    return p1
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;
    .registers 4

    .line 589
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;
    .registers 3

    .line 594
    if-eqz p1, :cond_1c

    .line 595
    instance-of v0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_e

    .line 596
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    check-cast p1, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/widget/ActionMenuView$LayoutParams;)V

    goto :goto_13

    .line 597
    :cond_e
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    :goto_13
    iget p1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz p1, :cond_1b

    .line 599
    const/16 p1, 0x10

    iput p1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 601
    :cond_1b
    return-object v0

    .line 603
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

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
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 615
    return-object v0
.end method

.method public whitelist getMenu()Landroid/view/Menu;
    .registers 5

    .line 642
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_46

    .line 643
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 644
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 645
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v2, Landroid/widget/ActionMenuView$MenuBuilderCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView-IA;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 646
    new-instance v1, Landroid/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 647
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 648
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_30

    .line 649
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    goto :goto_35

    :cond_30
    new-instance v1, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView-IA;)V

    .line 648
    :goto_35
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 650
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 651
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 654
    :cond_46
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

    .line 725
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 726
    return v0

    .line 728
    :cond_4
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 729
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 730
    nop

    .line 731
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_20

    instance-of v3, v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_20

    .line 732
    check-cast v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v1}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v1

    or-int/2addr v0, v1

    .line 734
    :cond_20
    if-lez p1, :cond_2d

    instance-of p1, v2, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz p1, :cond_2d

    .line 735
    check-cast v2, Landroid/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v2}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result p1

    or-int/2addr v0, p1

    .line 737
    :cond_2d
    return v0
.end method

.method public whitelist hideOverflowMenu()Z
    .registers 2

    .line 691
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2

    .line 630
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 631
    return-void
.end method

.method public greylist-max-o invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4

    .line 620
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public greylist isOverflowMenuShowPending()Z
    .registers 2

    .line 707
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isOverflowMenuShowing()Z
    .registers 2

    .line 701
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist isOverflowReserved()Z
    .registers 2

    .line 571
    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 126
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 128
    iget-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz p1, :cond_1f

    .line 129
    iget-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 131
    iget-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 132
    iget-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 133
    iget-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 136
    :cond_1f
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
    .registers 23

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
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 443
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    .line 444
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getDividerWidth()I

    move-result v3

    .line 445
    nop

    .line 446
    nop

    .line 447
    nop

    .line 448
    sub-int v4, p4, p2

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    .line 449
    nop

    .line 450
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isLayoutRtl()Z

    move-result v6

    .line 451
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2e
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v8, v1, :cond_97

    .line 452
    invoke-virtual {v0, v8}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 453
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_3e

    .line 454
    goto :goto_94

    .line 457
    :cond_3e
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuView$LayoutParams;

    .line 458
    iget-boolean v14, v11, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v14, :cond_7f

    .line 459
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 460
    invoke-virtual {v0, v8}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v14

    if-eqz v14, :cond_53

    .line 461
    add-int/2addr v9, v3

    .line 464
    :cond_53
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 467
    if-eqz v6, :cond_63

    .line 468
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v15, v11

    .line 469
    add-int v11, v15, v9

    goto :goto_73

    .line 471
    :cond_63
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v15

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v11, v15, v11

    .line 472
    sub-int v15, v11, v9

    .line 474
    :goto_73
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    .line 475
    add-int/2addr v14, v7

    .line 476
    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    .line 478
    sub-int/2addr v5, v9

    .line 479
    nop

    .line 480
    move v9, v12

    goto :goto_94

    .line 481
    :cond_7f
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v7, v11

    .line 482
    nop

    .line 483
    sub-int/2addr v5, v7

    .line 484
    invoke-virtual {v0, v8}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 485
    nop

    .line 487
    :cond_92
    add-int/lit8 v10, v10, 0x1

    .line 451
    :goto_94
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 491
    :cond_97
    if-ne v1, v12, :cond_b6

    if-nez v9, :cond_b6

    .line 493
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 495
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 496
    div-int/lit8 v4, v4, 0x2

    .line 497
    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    .line 498
    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v2, v5

    .line 499
    add-int/2addr v1, v4

    add-int/2addr v3, v2

    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 500
    return-void

    .line 503
    :cond_b6
    xor-int/lit8 v3, v9, 0x1

    sub-int/2addr v10, v3

    .line 504
    if-lez v10, :cond_be

    div-int v3, v5, v10

    goto :goto_bf

    :cond_be
    const/4 v3, 0x0

    :goto_bf
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 506
    if-eqz v6, :cond_105

    .line 507
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 508
    move v7, v4

    :goto_d0
    if-ge v7, v1, :cond_104

    .line 509
    invoke-virtual {v0, v7}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 510
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/ActionMenuView$LayoutParams;

    .line 511
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_101

    iget-boolean v8, v6, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v8, :cond_e7

    .line 512
    goto :goto_101

    .line 515
    :cond_e7
    iget v8, v6, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v8

    .line 516
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 517
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 518
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    .line 519
    sub-int v12, v5, v8

    add-int/2addr v9, v10

    invoke-virtual {v4, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 520
    iget v4, v6, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    sub-int/2addr v5, v8

    .line 508
    :cond_101
    :goto_101
    add-int/lit8 v7, v7, 0x1

    goto :goto_d0

    .line 522
    :cond_104
    goto :goto_13e

    .line 523
    :cond_105
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v5

    .line 524
    move v7, v4

    :goto_10a
    if-ge v7, v1, :cond_13e

    .line 525
    invoke-virtual {v0, v7}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 526
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/ActionMenuView$LayoutParams;

    .line 527
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_13b

    iget-boolean v8, v6, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v8, :cond_121

    .line 528
    goto :goto_13b

    .line 531
    :cond_121
    iget v8, v6, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v5, v8

    .line 532
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 533
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 534
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    .line 535
    add-int v12, v5, v8

    add-int/2addr v9, v10

    invoke-virtual {v4, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    .line 536
    iget v4, v6, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    add-int/2addr v5, v8

    .line 524
    :cond_13b
    :goto_13b
    add-int/lit8 v7, v7, 0x1

    goto :goto_10a

    .line 539
    :cond_13e
    :goto_13e
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 8

    .line 145
    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    .line 146
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v4

    :goto_f
    iput-boolean v1, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    .line 148
    iget-boolean v1, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eq v0, v1, :cond_17

    .line 149
    iput v4, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 154
    :cond_17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 155
    iget-boolean v1, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_2e

    iget v1, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v0, v1, :cond_2e

    .line 156
    iput v0, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 157
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v3}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 160
    :cond_2e
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v0

    .line 161
    iget-boolean v1, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v1, :cond_3c

    if-lez v0, :cond_3c

    .line 162
    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_53

    .line 165
    :cond_3c
    move v1, v4

    :goto_3d
    if-ge v1, v0, :cond_50

    .line 166
    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView$LayoutParams;

    .line 168
    iput v4, v2, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v4, v2, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 170
    :cond_50
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 172
    :goto_53
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

    .line 748
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 749
    return-void
.end method

.method public greylist setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 3

    .line 663
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 664
    iput-object p2, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 665
    return-void
.end method

.method public whitelist setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V
    .registers 2

    .line 139
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 140
    return-void
.end method

.method public whitelist setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

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

    .line 576
    iput-boolean p1, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    .line 577
    return-void
.end method

.method public whitelist setPopupTheme(I)V
    .registers 4

    .line 96
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_16

    .line 97
    iput p1, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    .line 98
    if-nez p1, :cond_d

    .line 99
    iget-object p1, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

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

    .line 120
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 121
    iget-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 122
    return-void
.end method

.method public whitelist showOverflowMenu()Z
    .registers 2

    .line 682
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
