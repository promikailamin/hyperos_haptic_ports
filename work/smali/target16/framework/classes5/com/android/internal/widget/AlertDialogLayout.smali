.class public Lcom/android/internal/widget/AlertDialogLayout;
.super Landroid/widget/LinearLayout;
.source "AlertDialogLayout.java"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    return-void
.end method

.method private blacklist forceUniformWidth(II)V
    .registers 12

    .line 227
    nop

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/widget/AlertDialogLayout;->getMeasuredWidth()I

    move-result v0

    .line 227
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 230
    const/4 v0, 0x0

    :goto_c
    if-ge v0, p1, :cond_3e

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 232
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_39

    .line 233
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 234
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_37

    .line 237
    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 238
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 241
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/AlertDialogLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 242
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_3a

    .line 234
    :cond_37
    move v6, p2

    goto :goto_3a

    .line 232
    :cond_39
    move v6, p2

    .line 230
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    move p2, v6

    goto :goto_c

    .line 246
    :cond_3e
    return-void
.end method

.method private blacklist resolveMinimumHeight(Landroid/view/View;)I
    .registers 5

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    .line 259
    if-lez v0, :cond_7

    .line 260
    return v0

    .line 263
    :cond_7
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 264
    check-cast p1, Landroid/view/ViewGroup;

    .line 265
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    .line 266
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result p1

    return p1

    .line 270
    :cond_1e
    return v1
.end method

.method private blacklist setChildFrame(Landroid/view/View;IIII)V
    .registers 6

    .line 358
    add-int/2addr p4, p2

    add-int/2addr p5, p3

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 359
    return-void
.end method

.method private blacklist tryOnMeasure(II)Z
    .registers 19

    .line 78
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 79
    nop

    .line 80
    nop

    .line 82
    invoke-virtual {v0}, Lcom/android/internal/widget/AlertDialogLayout;->getChildCount()I

    move-result v3

    .line 83
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move-object v7, v6

    move v8, v5

    :goto_11
    const/16 v9, 0x8

    if-ge v8, v3, :cond_36

    .line 84
    invoke-virtual {v0, v8}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 85
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v9, :cond_20

    .line 86
    goto :goto_33

    .line 89
    :cond_20
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v9

    .line 90
    sparse-switch v9, :sswitch_data_114

    .line 107
    return v5

    .line 92
    :sswitch_28
    nop

    .line 93
    move-object v4, v10

    goto :goto_33

    .line 99
    :sswitch_2b
    if-eqz v7, :cond_2e

    .line 101
    return v5

    .line 103
    :cond_2e
    nop

    .line 104
    move-object v7, v10

    goto :goto_33

    .line 95
    :sswitch_31
    nop

    .line 96
    move-object v6, v10

    .line 83
    :goto_33
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 111
    :cond_36
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 112
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 113
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 115
    nop

    .line 116
    invoke-virtual {v0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v12

    invoke-virtual {v0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingBottom()I

    move-result v13

    add-int/2addr v12, v13

    .line 118
    if-eqz v4, :cond_5f

    .line 119
    invoke-virtual {v4, v1, v5}, Landroid/view/View;->measure(II)V

    .line 121
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    .line 122
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    invoke-static {v5, v4}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v4

    goto :goto_60

    .line 118
    :cond_5f
    move v4, v5

    .line 125
    :goto_60
    nop

    .line 126
    nop

    .line 127
    if-eqz v6, :cond_7a

    .line 128
    invoke-virtual {v6, v1, v5}, Landroid/view/View;->measure(II)V

    .line 129
    invoke-direct {v0, v6}, Lcom/android/internal/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v13

    .line 130
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v14, v13

    .line 132
    add-int/2addr v12, v13

    .line 133
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v15

    invoke-static {v4, v15}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v4

    goto :goto_7c

    .line 127
    :cond_7a
    move v13, v5

    move v14, v13

    .line 136
    :goto_7c
    nop

    .line 137
    if-eqz v7, :cond_9e

    .line 139
    if-nez v8, :cond_83

    .line 140
    move v15, v5

    goto :goto_8d

    .line 142
    :cond_83
    sub-int v15, v10, v12

    .line 143
    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 142
    invoke-static {v15, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 146
    :goto_8d
    invoke-virtual {v7, v1, v15}, Landroid/view/View;->measure(II)V

    .line 147
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 149
    add-int/2addr v12, v15

    .line 150
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v4

    goto :goto_9f

    .line 137
    :cond_9e
    const/4 v15, 0x0

    .line 153
    :goto_9f
    sub-int/2addr v10, v12

    .line 158
    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v6, :cond_c1

    .line 159
    sub-int/2addr v12, v13

    .line 161
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 162
    if-lez v14, :cond_ad

    .line 163
    sub-int/2addr v10, v14

    .line 164
    add-int/2addr v13, v14

    .line 167
    :cond_ad
    invoke-static {v13, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 169
    invoke-virtual {v6, v1, v13}, Landroid/view/View;->measure(II)V

    .line 171
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    .line 172
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v4, v6}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v4

    .line 177
    :cond_c1
    if-eqz v7, :cond_dd

    if-lez v10, :cond_dd

    .line 178
    sub-int/2addr v12, v15

    .line 180
    nop

    .line 181
    nop

    .line 182
    add-int/2addr v15, v10

    .line 187
    invoke-static {v15, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 189
    invoke-virtual {v7, v1, v6}, Landroid/view/View;->measure(II)V

    .line 191
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v12, v6

    .line 192
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v4, v6}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v4

    .line 196
    :cond_dd
    nop

    .line 197
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_e0
    if-ge v6, v3, :cond_f7

    .line 198
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 199
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v9, :cond_f4

    .line 200
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 197
    :cond_f4
    add-int/lit8 v6, v6, 0x1

    goto :goto_e0

    .line 204
    :cond_f7
    invoke-virtual {v0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v7, v6

    .line 206
    invoke-static {v7, v1, v4}, Lcom/android/internal/widget/AlertDialogLayout;->resolveSizeAndState(III)I

    move-result v1

    .line 207
    const/4 v4, 0x0

    invoke-static {v12, v2, v4}, Lcom/android/internal/widget/AlertDialogLayout;->resolveSizeAndState(III)I

    move-result v4

    .line 208
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/widget/AlertDialogLayout;->setMeasuredDimension(II)V

    .line 212
    if-eq v11, v5, :cond_112

    .line 213
    invoke-direct {v0, v3, v2}, Lcom/android/internal/widget/AlertDialogLayout;->forceUniformWidth(II)V

    .line 216
    :cond_112
    const/4 v0, 0x1

    return v0

    :sswitch_data_114
    .sparse-switch
        0x1020257 -> :sswitch_31
        0x1020294 -> :sswitch_2b
        0x10202bb -> :sswitch_2b
        0x10205ad -> :sswitch_28
    .end sparse-switch
.end method


# virtual methods
.method protected whitelist onLayout(ZIIII)V
    .registers 16

    .line 275
    iget p1, p0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingLeft:I

    .line 278
    sub-int/2addr p4, p2

    .line 279
    iget p2, p0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingRight:I

    sub-int p2, p4, p2

    .line 282
    sub-int/2addr p4, p1

    iget v0, p0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingRight:I

    sub-int/2addr p4, v0

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/widget/AlertDialogLayout;->getMeasuredHeight()I

    move-result v0

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/widget/AlertDialogLayout;->getChildCount()I

    move-result v1

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/widget/AlertDialogLayout;->getGravity()I

    move-result v2

    .line 287
    and-int/lit8 v3, v2, 0x70

    .line 288
    const v4, 0x800007

    and-int/2addr v2, v4

    .line 291
    sparse-switch v3, :sswitch_data_a0

    .line 304
    iget v3, p0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingTop:I

    goto :goto_31

    .line 294
    :sswitch_23
    iget v3, p0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingTop:I

    add-int/2addr v3, p5

    sub-int/2addr v3, p3

    sub-int/2addr v3, v0

    .line 295
    goto :goto_31

    .line 299
    :sswitch_29
    iget v3, p0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingTop:I

    sub-int/2addr p5, p3

    sub-int/2addr p5, v0

    div-int/lit8 p5, p5, 0x2

    add-int/2addr v3, p5

    .line 300
    nop

    .line 308
    :goto_31
    invoke-virtual {p0}, Lcom/android/internal/widget/AlertDialogLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 309
    const/4 p5, 0x0

    if-nez p3, :cond_3a

    .line 310
    move p3, p5

    goto :goto_3e

    :cond_3a
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    .line 312
    :goto_3e
    nop

    :goto_3f
    if-ge p5, v1, :cond_9f

    .line 313
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 314
    if-eqz v5, :cond_9c

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_9c

    .line 315
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 316
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 318
    nop

    .line 319
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 321
    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 322
    if-gez v4, :cond_63

    .line 323
    move v4, v2

    .line 325
    :cond_63
    invoke-virtual {p0}, Lcom/android/internal/widget/AlertDialogLayout;->getLayoutDirection()I

    move-result v6

    .line 326
    invoke-static {v4, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    .line 330
    and-int/lit8 v4, v4, 0x7

    sparse-switch v4, :sswitch_data_aa

    .line 342
    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, p1

    move v6, v4

    goto :goto_88

    .line 337
    :sswitch_75
    sub-int v4, p2, v8

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v6

    .line 338
    move v6, v4

    goto :goto_88

    .line 332
    :sswitch_7c
    sub-int v4, p4, v8

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v6

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v6

    .line 334
    move v6, v4

    .line 346
    :goto_88
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/AlertDialogLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 347
    add-int/2addr v3, p3

    .line 350
    :cond_8f
    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v7, v3, v4

    .line 351
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/widget/AlertDialogLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 352
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v0

    add-int/2addr v7, v9

    move v3, v7

    .line 312
    :cond_9c
    add-int/lit8 p5, p5, 0x1

    goto :goto_3f

    .line 355
    :cond_9f
    return-void

    :sswitch_data_a0
    .sparse-switch
        0x10 -> :sswitch_29
        0x50 -> :sswitch_23
    .end sparse-switch

    :sswitch_data_aa
    .sparse-switch
        0x1 -> :sswitch_7c
        0x5 -> :sswitch_75
    .end sparse-switch
.end method

.method protected whitelist onMeasure(II)V
    .registers 4

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AlertDialogLayout;->tryOnMeasure(II)Z

    move-result v0

    if-nez v0, :cond_9

    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 75
    :cond_9
    return-void
.end method
