.class public Lcom/miui/autoui/policy/view/ViewAutoUIDraw;
.super Lcom/miui/autoui/policy/def/DefaultAutoUIDraw;
.source "ViewAutoUIDraw.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ViewAutoUIDraw"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/miui/autoui/policy/def/DefaultAutoUIDraw;-><init>()V

    return-void
.end method

.method private blacklist drawBitmap(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 296
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isBackgroundImage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 297
    return-void

    .line 300
    :cond_7
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 301
    .local v0, "matrix":Landroid/graphics/Matrix;
    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 302
    .local v1, "values":[F
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 303
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 304
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    div-float/2addr v2, v4

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    const/4 v4, 0x2

    aget v4, v1, v4

    sub-float/2addr v2, v4

    .line 305
    .local v2, "translationX":F
    const/4 v4, 0x0

    aget v5, v1, v4

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_3c

    .line 306
    aget v3, v1, v4

    div-float/2addr v2, v3

    .line 308
    :cond_3c
    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 309
    return-void
.end method

.method private blacklist drawByParent(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "parentViewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .line 68
    invoke-virtual {p3}, Lcom/miui/autoui/ViewExtras;->getRecyclerViewModifyState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_f

    invoke-virtual {p3}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 69
    :cond_f
    invoke-virtual {p2, v2}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 70
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v0

    if-nez v0, :cond_21

    .line 71
    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 74
    :cond_21
    invoke-virtual {p3}, Lcom/miui/autoui/ViewExtras;->getRecyclerViewModifyState()I

    move-result v0

    if-ne v0, v3, :cond_5b

    .line 75
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setSaveCount(I)V

    .line 76
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v3

    sub-float/2addr v3, v1

    mul-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    sub-float/2addr v1, v4

    mul-float/2addr v3, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 78
    return v2

    .line 80
    :cond_5b
    return v1
.end method

.method private blacklist drawCircle(Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V
    .registers 7
    .param p1, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 358
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 359
    return-void

    .line 361
    :cond_7
    invoke-virtual {p3}, Lcom/miui/autoui/AutoUIParams;->getCx()F

    move-result v0

    .line 362
    .local v0, "cx":F
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 363
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v1

    mul-float/2addr v1, v0

    sub-float/2addr v1, v0

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 364
    return-void
.end method

.method private blacklist drawCommonView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "parentViewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .line 155
    invoke-virtual {p3}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 156
    invoke-direct {p0, p1, p2, p4}, Lcom/miui/autoui/policy/view/ViewAutoUIDraw;->drawProgressBar(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/view/ViewAutoUIDraw;->preViewDrawText(Landroid/view/View;)V

    .line 158
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist drawNeedOriginalView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "parentViewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .line 146
    invoke-virtual {p3}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedOriginalLayout()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 147
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setSaveCount(I)V

    .line 148
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 149
    const/4 v0, 0x1

    return v0

    .line 151
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist drawOval(Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V
    .registers 10
    .param p1, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 346
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 347
    return-void

    .line 349
    :cond_7
    invoke-virtual {p3}, Lcom/miui/autoui/AutoUIParams;->getLeft()F

    move-result v0

    .line 350
    .local v0, "left":F
    invoke-virtual {p3}, Lcom/miui/autoui/AutoUIParams;->getRight()F

    move-result v1

    .line 351
    .local v1, "right":F
    sub-float v2, v1, v0

    .line 352
    .local v2, "ovalWidth":F
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v3

    mul-float/2addr v3, v2

    sub-float/2addr v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    sub-float/2addr v3, v0

    .line 353
    .local v3, "translationX":F
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 354
    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 355
    return-void
.end method

.method private blacklist drawProgressBar(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 164
    instance-of v0, p1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4b

    move-object v0, p1

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-direct {p0, v0}, Lcom/miui/autoui/policy/view/ViewAutoUIDraw;->hasRotateDrawable(Landroid/widget/ProgressBar;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_4b

    .line 167
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 168
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setSaveCount(I)V

    .line 169
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 171
    .local v0, "translationX":F
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 172
    return-void

    .line 165
    .end local v0    # "translationX":F
    :cond_4b
    :goto_4b
    return-void
.end method

.method private blacklist drawRootStretchView(Landroid/view/ViewGroup;Lcom/miui/autoui/ViewExtras;Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)Z
    .registers 13
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "parentViewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p5, "canvas"    # Landroid/graphics/Canvas;

    .line 84
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    if-nez v0, :cond_99

    invoke-virtual {p4}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 85
    invoke-virtual {p5}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/miui/autoui/ViewExtras;->setSaveCount(I)V

    .line 86
    invoke-direct {p0, p1, p3, p4}, Lcom/miui/autoui/policy/view/ViewAutoUIDraw;->updateAlignmentInfo(Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 87
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 88
    .local v0, "translationBaseX":F
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 89
    .local v1, "canvasSpaceX":F
    invoke-virtual {p4}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v2

    sget-object v3, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-ne v2, v3, :cond_5b

    .line 90
    cmpg-float v2, v1, v6

    if-gez v2, :cond_4a

    div-float v2, v1, v4

    goto :goto_4b

    :cond_4a
    move v2, v6

    :goto_4b
    add-float/2addr v2, v0

    .line 91
    .local v2, "translateX":F
    neg-float v3, v2

    invoke-virtual {p4, v3}, Lcom/miui/autoui/ViewExtras;->setDrawOffsetX(F)V

    .line 92
    invoke-virtual {p5, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 93
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v3

    invoke-virtual {p5, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 94
    .end local v2    # "translateX":F
    goto :goto_97

    :cond_5b
    invoke-virtual {p4}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v2

    sget-object v3, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v2, v3, :cond_79

    cmpl-float v2, v1, v6

    if-ltz v2, :cond_79

    .line 95
    div-float v2, v1, v4

    add-float/2addr v2, v0

    .line 96
    .restart local v2    # "translateX":F
    neg-float v3, v2

    invoke-virtual {p4, v3}, Lcom/miui/autoui/ViewExtras;->setDrawOffsetX(F)V

    .line 97
    invoke-virtual {p5, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 98
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v3

    invoke-virtual {p5, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .end local v2    # "translateX":F
    goto :goto_96

    .line 99
    :cond_79
    invoke-virtual {p4}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v2

    sget-object v3, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v2, v3, :cond_96

    cmpl-float v2, v1, v6

    if-ltz v2, :cond_96

    .line 100
    add-float v2, v0, v1

    .line 101
    .restart local v2    # "translateX":F
    neg-float v3, v2

    invoke-virtual {p4, v3}, Lcom/miui/autoui/ViewExtras;->setDrawOffsetX(F)V

    .line 102
    invoke-virtual {p5, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v3

    invoke-virtual {p5, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_97

    .line 99
    .end local v2    # "translateX":F
    :cond_96
    :goto_96
    nop

    .line 105
    :goto_97
    const/4 v2, 0x1

    return v2

    .line 107
    .end local v0    # "translationBaseX":F
    .end local v1    # "canvasSpaceX":F
    :cond_99
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist drawText(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 312
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_35

    .line 313
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_34

    .line 314
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v0

    invoke-virtual {p3, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 315
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 316
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_33

    .line 317
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 318
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getTextStart()I

    move-result v3

    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getTextEnd()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    .line 319
    .local v3, "translateX":F
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    mul-float/2addr v4, v3

    invoke-virtual {p3, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 320
    return-void

    .line 322
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v3    # "translateX":F
    :cond_33
    return-void

    .line 324
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_34
    return-void

    .line 326
    :cond_35
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getX()F

    move-result v0

    .line 327
    .local v0, "paramsX":F
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v3

    sget-object v4, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v3, v4, :cond_72

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 329
    .local v3, "viewWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    float-to-int v4, v4

    .line 330
    .local v4, "margin":I
    mul-int/lit8 v5, v4, 0x2

    sub-int v5, v3, v5

    .line 331
    .local v5, "textWidth":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v6

    invoke-virtual {p3, v6, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 332
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v2

    div-float v2, v0, v2

    sub-float/2addr v2, v0

    int-to-float v6, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v2, v6

    invoke-virtual {p3, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 333
    .end local v3    # "viewWidth":I
    .end local v4    # "margin":I
    .end local v5    # "textWidth":I
    goto :goto_b9

    :cond_72
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v3

    sget-object v4, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v3, v4, :cond_a8

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 335
    .local v3, "viewWidth2":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    float-to-int v4, v4

    .line 336
    .local v4, "margin2":I
    mul-int/lit8 v5, v4, 0x2

    sub-int v5, v3, v5

    .line 337
    .local v5, "textWidth2":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v6

    invoke-virtual {p3, v6, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 338
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v2

    div-float v2, v0, v2

    sub-float/2addr v2, v0

    int-to-float v6, v5

    add-float/2addr v2, v6

    invoke-virtual {p3, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 339
    .end local v3    # "viewWidth2":I
    .end local v4    # "margin2":I
    .end local v5    # "textWidth2":I
    goto :goto_b9

    .line 340
    :cond_a8
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v3

    invoke-virtual {p3, v3, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 341
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v2

    div-float v2, v0, v2

    sub-float/2addr v2, v0

    invoke-virtual {p3, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 343
    :goto_b9
    return-void
.end method

.method private blacklist hasRotateDrawable(Landroid/widget/ProgressBar;)Z
    .registers 3
    .param p1, "progressBar"    # Landroid/widget/ProgressBar;

    .line 175
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RotateDrawable;

    return v0
.end method

.method private blacklist isImageViewNeedBlur(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Z
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 242
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isIgnoreWithoutBlur()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v0

    if-nez v0, :cond_14

    .line 243
    return v1

    .line 245
    :cond_14
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "drawBitmap"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16d

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isBackgroundImage()Z

    move-result v0

    if-nez v0, :cond_16d

    instance-of v0, p1, Landroid/widget/ImageView;

    if-nez v0, :cond_2c

    goto/16 :goto_16d

    .line 248
    :cond_2c
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 249
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_33

    .line 250
    return v1

    .line 252
    :cond_33
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_16c

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v2, :cond_16c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eqz v2, :cond_16c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-nez v2, :cond_4d

    goto/16 :goto_16c

    .line 256
    :cond_4d
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5d

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v2

    if-eqz v2, :cond_5b

    goto :goto_5d

    :cond_5b
    move v2, v1

    goto :goto_5e

    :cond_5d
    :goto_5d
    move v2, v3

    .line 257
    .local v2, "isChangedView":Z
    :goto_5e
    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v2, :cond_ce

    move-object v5, p1

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_ce

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_cd

    .line 259
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v8

    mul-float/2addr v6, v8

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_cd

    .line 260
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-lez v5, :cond_cd

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_bd

    goto :goto_cd

    .line 264
    :cond_bd
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p2, v5}, Lcom/miui/autoui/ViewExtras;->setCenterCropRate(F)V

    goto :goto_ce

    .line 262
    :cond_cd
    :goto_cd
    return v1

    .line 267
    :cond_ce
    :goto_ce
    const v5, 0x3f11eb85    # 0.57f

    .line 268
    .local v5, "mainAreaRatio":F
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    cmpg-float v6, v6, v7

    if-gez v6, :cond_e5

    .line 269
    return v1

    .line 271
    :cond_e5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 272
    .local v6, "viewRatio":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v7, v4

    .line 273
    .local v7, "bitmapRatio":F
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v4

    if-nez v4, :cond_112

    sub-float v4, v6, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v8, 0x3e4ccccd    # 0.2f

    cmpg-float v4, v4, v8

    if-gtz v4, :cond_112

    move v4, v3

    goto :goto_113

    :cond_112
    move v4, v1

    .line 274
    .local v4, "isBitmapFilledCanvas":Z
    :goto_113
    if-eqz v4, :cond_116

    .line 275
    return v1

    .line 277
    :cond_116
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_15c

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    instance-of v8, v8, Landroid/graphics/drawable/ColorDrawable;

    if-nez v8, :cond_15c

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v9

    if-ge v8, v9, :cond_15c

    .line 280
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v8

    if-nez v8, :cond_147

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v9

    if-ge v8, v9, :cond_147

    .line 281
    return v1

    .line 283
    :cond_147
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v8

    if-eqz v8, :cond_15c

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v9

    if-ge v8, v9, :cond_15c

    .line 284
    return v1

    .line 288
    :cond_15c
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v0, v8, v9}, Lcom/miui/autoui/utils/BitmapUtils;->isTransParentBitmap(Landroid/graphics/Bitmap;II)Z

    move-result v8

    if-eqz v8, :cond_16b

    .line 290
    return v1

    .line 292
    :cond_16b
    return v3

    .line 253
    .end local v2    # "isChangedView":Z
    .end local v4    # "isBitmapFilledCanvas":Z
    .end local v5    # "mainAreaRatio":F
    .end local v6    # "viewRatio":F
    .end local v7    # "bitmapRatio":F
    :cond_16c
    :goto_16c
    return v1

    .line 246
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_16d
    :goto_16d
    return v1
.end method

.method private blacklist preViewDrawText(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 179
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isTextView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 180
    return-void

    .line 182
    :cond_7
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    .line 183
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getTextLayout(Landroid/view/View;)Landroid/text/Layout;

    move-result-object v0

    .line 184
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p1, v0}, Lcom/miui/autoui/utils/ViewProcessor;->needStretchTextLayout(Landroid/view/View;Landroid/text/Layout;)Z

    move-result v1

    .line 185
    .local v1, "needStretch":Z
    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    .line 186
    invoke-static {p1, v0}, Lcom/miui/autoui/utils/ViewProcessor;->createStretchedTextLayout(Landroid/view/View;Landroid/text/Layout;)Landroid/text/Layout;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/miui/autoui/utils/ViewProcessor;->setTextLayout(Landroid/view/View;Landroid/text/Layout;)V

    .line 188
    :cond_1d
    return-void
.end method

.method private blacklist updateAlignmentByLocation(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 13
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .line 126
    invoke-static {p2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 127
    .local v0, "viewExtras":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 128
    .local v1, "leftSpace":I
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_1e

    :cond_19
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v2

    goto :goto_20

    :cond_1e
    :goto_1e
    const/high16 v2, 0x3f800000    # 1.0f

    .line 129
    .local v2, "rate":F
    :goto_20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 131
    .local v3, "rightSpace":I
    const/4 v4, 0x5

    .line 132
    .local v4, "diff":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    .line 133
    .local v5, "lowerCompScreenWidth":F
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v5

    if-ltz v6, :cond_5f

    .line 134
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v5

    float-to-double v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    double-to-int v4, v6

    .line 136
    :cond_5f
    if-lez v1, :cond_6f

    sub-int v6, v1, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v4, :cond_6f

    .line 137
    sget-object v6, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v0, v6}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_80

    .line 138
    :cond_6f
    if-lez v1, :cond_7b

    sub-int v6, v1, v3

    if-lt v6, v4, :cond_7b

    .line 139
    sget-object v6, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v0, v6}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_80

    .line 141
    :cond_7b
    sget-object v6, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v0, v6}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 143
    :goto_80
    return-void
.end method

.method private blacklist updateAlignmentInfo(Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 112
    invoke-static {p1, p2}, Lcom/miui/autoui/utils/ViewProcessor;->getHorizontalGravity(Landroid/view/ViewGroup;Landroid/view/View;)I

    move-result v0

    .line 113
    .local v0, "horizontalGravity":I
    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_c

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/view/ViewAutoUIDraw;->updateAlignmentByLocation(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_36

    .line 115
    :cond_c
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 116
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p3, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_36

    .line 117
    :cond_17
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x5

    if-ne v1, v2, :cond_22

    .line 118
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p3, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_36

    .line 119
    :cond_22
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_36

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    if-nez v1, :cond_36

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/view/ViewAutoUIDraw;->updateAlignmentByLocation(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 123
    :cond_36
    :goto_36
    return-void
.end method


# virtual methods
.method public blacklist getCanvasSize(Landroid/view/View;II)[I
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    return-object v0
.end method

.method public blacklist hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 197
    if-eqz p1, :cond_b5

    if-eqz p2, :cond_b5

    if-nez p3, :cond_8

    goto/16 :goto_b5

    .line 200
    :cond_8
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 201
    .local v0, "viewExtras":Lcom/miui/autoui/ViewExtras;
    if-eqz v0, :cond_b4

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isFloat()Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_b4

    .line 204
    :cond_16
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isReactImageView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 205
    return-object p3

    .line 207
    :cond_1d
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/autoui/policy/view/ViewAutoUIDraw;->isImageViewNeedBlur(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 208
    invoke-virtual {p3}, Lcom/miui/autoui/AutoUIParams;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 209
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_60

    .line 210
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getCenterCropRate()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5d

    .line 211
    new-instance v2, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v2}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    move-object v8, v2

    .line 212
    .local v8, "targetParams":Lcom/miui/autoui/AutoUIParams;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getCenterCropRate()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v9, v2

    .line 213
    .local v9, "dstWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 214
    .local v10, "dstBlurWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 215
    .local v11, "dstBlurHeight":I
    move-object v2, p1

    move-object v3, v1

    move v4, v9

    move v5, v10

    move v6, v11

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lcom/miui/autoui/utils/BitmapUtils;->obtainMergeBlurBitmap(Landroid/view/View;Landroid/graphics/Bitmap;IIILcom/miui/autoui/AutoUIParams;)Landroid/graphics/Bitmap;

    .line 216
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 217
    return-object v8

    .line 219
    .end local v8    # "targetParams":Lcom/miui/autoui/AutoUIParams;
    .end local v9    # "dstWidth":I
    .end local v10    # "dstBlurWidth":I
    .end local v11    # "dstBlurHeight":I
    :cond_5d
    invoke-static {p1, v0, v1, p3}, Lcom/miui/autoui/utils/BitmapUtils;->obtainMergeBlurBitmap(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Bitmap;Lcom/miui/autoui/AutoUIParams;)Landroid/graphics/Bitmap;

    .line 222
    :cond_60
    return-object p3

    .line 224
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_61
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v1

    if-eqz v1, :cond_6e

    goto :goto_b3

    .line 227
    :cond_6e
    invoke-virtual {p3}, Lcom/miui/autoui/AutoUIParams;->getName()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "methodName":Ljava/lang/String;
    const-string v2, "drawBitmap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 229
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/autoui/policy/view/ViewAutoUIDraw;->drawBitmap(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V

    goto :goto_b2

    .line 230
    :cond_7e
    const-string v2, "drawText"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    const-string v2, "drawTextOnPath"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    const-string v2, "drawTextRun"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    goto :goto_af

    .line 232
    :cond_97
    const-string v2, "drawOval"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 233
    invoke-direct {p0, v0, p2, p3}, Lcom/miui/autoui/policy/view/ViewAutoUIDraw;->drawOval(Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V

    goto :goto_b2

    .line 234
    :cond_a3
    const-string v2, "drawCircle"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 235
    invoke-direct {p0, v0, p2, p3}, Lcom/miui/autoui/policy/view/ViewAutoUIDraw;->drawCircle(Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V

    goto :goto_b2

    .line 231
    :cond_af
    :goto_af
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/autoui/policy/view/ViewAutoUIDraw;->drawText(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V

    .line 237
    :cond_b2
    :goto_b2
    return-object p3

    .line 225
    .end local v1    # "methodName":Ljava/lang/String;
    :cond_b3
    :goto_b3
    return-object p3

    .line 202
    :cond_b4
    :goto_b4
    return-object p3

    .line 198
    .end local v0    # "viewExtras":Lcom/miui/autoui/ViewExtras;
    :cond_b5
    :goto_b5
    return-object p3
.end method

.method public blacklist onViewDetached(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 368
    invoke-super {p0, p1}, Lcom/miui/autoui/policy/def/DefaultAutoUIDraw;->onViewDetached(Landroid/view/View;)V

    .line 369
    return-void
.end method

.method public blacklist postViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 29
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 30
    .local v0, "viewExtras":Lcom/miui/autoui/ViewExtras;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isFloat()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_1f

    .line 33
    :cond_d
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getSaveCount()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 34
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getSaveCount()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 35
    invoke-virtual {v0, v2}, Lcom/miui/autoui/ViewExtras;->setSaveCount(I)V

    .line 37
    :cond_1e
    return-void

    .line 31
    :cond_1f
    :goto_1f
    return-void
.end method

.method public blacklist preViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 41
    invoke-super {p0, p1, p2}, Lcom/miui/autoui/policy/def/DefaultAutoUIDraw;->preViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 42
    return-void
.end method

.method public blacklist preViewDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)V
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "drawingTime"    # J

    .line 46
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v6

    .line 47
    .local v6, "viewExtras":Lcom/miui/autoui/ViewExtras;
    if-eqz p2, :cond_39

    if-eqz v6, :cond_39

    invoke-virtual {v6}, Lcom/miui/autoui/ViewExtras;->isFloat()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_39

    .line 50
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v7

    .line 51
    .local v7, "parentViewExtras":Lcom/miui/autoui/ViewExtras;
    if-eqz p3, :cond_38

    if-nez v7, :cond_1c

    goto :goto_38

    .line 55
    :cond_1c
    invoke-direct {p0, p1, v6, v7, p2}, Lcom/miui/autoui/policy/view/ViewAutoUIDraw;->drawByParent(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)Z

    move-result v8

    .line 56
    .local v8, "handled":Z
    if-nez v8, :cond_2c

    .line 57
    move-object v0, p0

    move-object v1, p3

    move-object v2, v7

    move-object v3, p1

    move-object v4, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/autoui/policy/view/ViewAutoUIDraw;->drawRootStretchView(Landroid/view/ViewGroup;Lcom/miui/autoui/ViewExtras;Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)Z

    move-result v8

    .line 59
    :cond_2c
    if-nez v8, :cond_32

    .line 60
    invoke-direct {p0, p1, v6, v7, p2}, Lcom/miui/autoui/policy/view/ViewAutoUIDraw;->drawNeedOriginalView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)Z

    move-result v8

    .line 62
    :cond_32
    if-nez v8, :cond_37

    .line 63
    invoke-direct {p0, p1, v6, v7, p2}, Lcom/miui/autoui/policy/view/ViewAutoUIDraw;->drawCommonView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)Z

    .line 65
    :cond_37
    return-void

    .line 52
    .end local v8    # "handled":Z
    :cond_38
    :goto_38
    return-void

    .line 48
    .end local v7    # "parentViewExtras":Lcom/miui/autoui/ViewExtras;
    :cond_39
    :goto_39
    return-void
.end method
