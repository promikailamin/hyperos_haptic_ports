.class public Lcom/miui/autoui/policy/padview/PadViewAutoUIDraw;
.super Lcom/miui/autoui/policy/def/DefaultAutoUIDraw;
.source "PadViewAutoUIDraw.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PadViewAutoUIDraw"


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

    .line 291
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isBackgroundImage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 292
    return-void

    .line 295
    :cond_7
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 296
    .local v0, "matrix":Landroid/graphics/Matrix;
    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 297
    .local v1, "values":[F
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 298
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 299
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

    .line 300
    .local v2, "translationX":F
    const/4 v4, 0x0

    aget v5, v1, v4

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_3c

    .line 301
    aget v3, v1, v4

    div-float/2addr v2, v3

    .line 303
    :cond_3c
    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 304
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

    .line 353
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 354
    return-void

    .line 356
    :cond_7
    invoke-virtual {p3}, Lcom/miui/autoui/AutoUIParams;->getCx()F

    move-result v0

    .line 357
    .local v0, "cx":F
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 358
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v1

    mul-float/2addr v1, v0

    sub-float/2addr v1, v0

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 359
    return-void
.end method

.method private blacklist drawCommonView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "parentViewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .line 153
    invoke-virtual {p3}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 154
    invoke-direct {p0, p1, p2, p4}, Lcom/miui/autoui/policy/padview/PadViewAutoUIDraw;->drawProgressBar(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/padview/PadViewAutoUIDraw;->preViewDrawText(Landroid/view/View;)V

    .line 156
    const/4 v0, 0x1

    return v0

    .line 158
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

    .line 144
    invoke-virtual {p3}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedOriginalLayout()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 145
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setSaveCount(I)V

    .line 146
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 147
    const/4 v0, 0x1

    return v0

    .line 149
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist drawOval(Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V
    .registers 10
    .param p1, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 341
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 342
    return-void

    .line 344
    :cond_7
    invoke-virtual {p3}, Lcom/miui/autoui/AutoUIParams;->getLeft()F

    move-result v0

    .line 345
    .local v0, "left":F
    invoke-virtual {p3}, Lcom/miui/autoui/AutoUIParams;->getRight()F

    move-result v1

    .line 346
    .local v1, "right":F
    sub-float v2, v1, v0

    .line 347
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

    .line 348
    .local v3, "translationX":F
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 349
    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 350
    return-void
.end method

.method private blacklist drawProgressBar(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 162
    instance-of v0, p1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4b

    move-object v0, p1

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-direct {p0, v0}, Lcom/miui/autoui/policy/padview/PadViewAutoUIDraw;->hasRotateDrawable(Landroid/widget/ProgressBar;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_4b

    .line 165
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 166
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setSaveCount(I)V

    .line 167
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 168
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

    .line 169
    .local v0, "translationX":F
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 170
    return-void

    .line 163
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

    if-nez v0, :cond_93

    invoke-virtual {p4}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 85
    invoke-virtual {p5}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/miui/autoui/ViewExtras;->setSaveCount(I)V

    .line 86
    invoke-direct {p0, p1, p3, p4}, Lcom/miui/autoui/policy/padview/PadViewAutoUIDraw;->updateAlignmentInfo(Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

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
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 90
    .local v2, "viewSpaceX":F
    invoke-virtual {p4}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v3

    sget-object v4, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-ne v3, v4, :cond_5b

    .line 91
    move v3, v0

    .line 92
    .local v3, "translateX":F
    neg-float v4, v3

    invoke-virtual {p4, v4}, Lcom/miui/autoui/ViewExtras;->setDrawOffsetX(F)V

    .line 93
    invoke-virtual {p5, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v4

    invoke-virtual {p5, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 95
    .end local v3    # "translateX":F
    goto :goto_91

    :cond_5b
    invoke-virtual {p4}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v3

    sget-object v4, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v3, v4, :cond_77

    .line 96
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, v0

    .line 97
    .restart local v3    # "translateX":F
    neg-float v4, v3

    invoke-virtual {p4, v4}, Lcom/miui/autoui/ViewExtras;->setDrawOffsetX(F)V

    .line 98
    invoke-virtual {p5, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v4

    invoke-virtual {p5, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .end local v3    # "translateX":F
    goto :goto_90

    .line 100
    :cond_77
    invoke-virtual {p4}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v3

    sget-object v4, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v3, v4, :cond_90

    .line 101
    add-float v3, v0, v1

    .line 102
    .restart local v3    # "translateX":F
    neg-float v4, v3

    invoke-virtual {p4, v4}, Lcom/miui/autoui/ViewExtras;->setDrawOffsetX(F)V

    .line 103
    invoke-virtual {p5, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v4

    invoke-virtual {p5, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_91

    .line 100
    .end local v3    # "translateX":F
    :cond_90
    :goto_90
    nop

    .line 106
    :goto_91
    const/4 v3, 0x1

    return v3

    .line 108
    .end local v0    # "translationBaseX":F
    .end local v1    # "canvasSpaceX":F
    .end local v2    # "viewSpaceX":F
    :cond_93
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist drawText(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 307
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_35

    .line 308
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_34

    .line 309
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v0

    invoke-virtual {p3, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 310
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 311
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_33

    .line 312
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 313
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getTextStart()I

    move-result v3

    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getTextEnd()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    .line 314
    .local v3, "translateX":F
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    mul-float/2addr v4, v3

    invoke-virtual {p3, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 315
    return-void

    .line 317
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v3    # "translateX":F
    :cond_33
    return-void

    .line 319
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_34
    return-void

    .line 321
    :cond_35
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getX()F

    move-result v0

    .line 322
    .local v0, "paramsX":F
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v3

    sget-object v4, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v3, v4, :cond_72

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 324
    .local v3, "viewWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    float-to-int v4, v4

    .line 325
    .local v4, "margin":I
    mul-int/lit8 v5, v4, 0x2

    sub-int v5, v3, v5

    .line 326
    .local v5, "textWidth":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v6

    invoke-virtual {p3, v6, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 327
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v2

    div-float v2, v0, v2

    sub-float/2addr v2, v0

    int-to-float v6, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v2, v6

    invoke-virtual {p3, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 328
    .end local v3    # "viewWidth":I
    .end local v4    # "margin":I
    .end local v5    # "textWidth":I
    goto :goto_b9

    :cond_72
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v3

    sget-object v4, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v3, v4, :cond_a8

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 330
    .local v3, "viewWidth2":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    float-to-int v4, v4

    .line 331
    .local v4, "margin2":I
    mul-int/lit8 v5, v4, 0x2

    sub-int v5, v3, v5

    .line 332
    .local v5, "textWidth2":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v6

    invoke-virtual {p3, v6, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 333
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v2

    div-float v2, v0, v2

    sub-float/2addr v2, v0

    int-to-float v6, v5

    add-float/2addr v2, v6

    invoke-virtual {p3, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 334
    .end local v3    # "viewWidth2":I
    .end local v4    # "margin2":I
    .end local v5    # "textWidth2":I
    goto :goto_b9

    .line 335
    :cond_a8
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v3

    invoke-virtual {p3, v3, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 336
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v2

    div-float v2, v0, v2

    sub-float/2addr v2, v0

    invoke-virtual {p3, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 338
    :goto_b9
    return-void
.end method

.method private blacklist hasRotateDrawable(Landroid/widget/ProgressBar;)Z
    .registers 3
    .param p1, "progressBar"    # Landroid/widget/ProgressBar;

    .line 173
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

    .line 240
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawBitmap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15a

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isBackgroundImage()Z

    move-result v0

    if-nez v0, :cond_15a

    instance-of v0, p1, Landroid/widget/ImageView;

    if-nez v0, :cond_19

    goto/16 :goto_15a

    .line 243
    :cond_19
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_20

    .line 245
    return v1

    .line 247
    :cond_20
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_159

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v2, :cond_159

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eqz v2, :cond_159

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-nez v2, :cond_3a

    goto/16 :goto_159

    .line 251
    :cond_3a
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4a

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v2

    if-eqz v2, :cond_48

    goto :goto_4a

    :cond_48
    move v2, v1

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v2, v3

    .line 252
    .local v2, "isChangedView":Z
    :goto_4b
    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v2, :cond_bb

    move-object v5, p1

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_bb

    .line 253
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

    if-ltz v5, :cond_ba

    .line 254
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

    if-ltz v5, :cond_ba

    .line 255
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

    if-lez v5, :cond_ba

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_aa

    goto :goto_ba

    .line 259
    :cond_aa
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p2, v5}, Lcom/miui/autoui/ViewExtras;->setCenterCropRate(F)V

    goto :goto_bb

    .line 257
    :cond_ba
    :goto_ba
    return v1

    .line 262
    :cond_bb
    :goto_bb
    const v5, 0x3f11eb85    # 0.57f

    .line 263
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

    if-gez v6, :cond_d2

    .line 264
    return v1

    .line 266
    :cond_d2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 267
    .local v6, "viewRatio":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v7, v4

    .line 268
    .local v7, "bitmapRatio":F
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v4

    if-nez v4, :cond_ff

    sub-float v4, v6, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v8, 0x3e4ccccd    # 0.2f

    cmpg-float v4, v4, v8

    if-gtz v4, :cond_ff

    move v4, v3

    goto :goto_100

    :cond_ff
    move v4, v1

    .line 269
    .local v4, "isBitmapFilledCanvas":Z
    :goto_100
    if-eqz v4, :cond_103

    .line 270
    return v1

    .line 272
    :cond_103
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_149

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    instance-of v8, v8, Landroid/graphics/drawable/ColorDrawable;

    if-nez v8, :cond_149

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v9

    if-ge v8, v9, :cond_149

    .line 275
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v8

    if-nez v8, :cond_134

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v9

    if-ge v8, v9, :cond_134

    .line 276
    return v1

    .line 278
    :cond_134
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v8

    if-eqz v8, :cond_149

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v9

    if-ge v8, v9, :cond_149

    .line 279
    return v1

    .line 283
    :cond_149
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v0, v8, v9}, Lcom/miui/autoui/utils/BitmapUtils;->isTransParentBitmap(Landroid/graphics/Bitmap;II)Z

    move-result v8

    if-eqz v8, :cond_158

    .line 285
    return v1

    .line 287
    :cond_158
    return v3

    .line 248
    .end local v2    # "isChangedView":Z
    .end local v4    # "isBitmapFilledCanvas":Z
    .end local v5    # "mainAreaRatio":F
    .end local v6    # "viewRatio":F
    .end local v7    # "bitmapRatio":F
    :cond_159
    :goto_159
    return v1

    .line 241
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_15a
    :goto_15a
    return v1
.end method

.method private blacklist preViewDrawText(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 177
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isTextView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 178
    return-void

    .line 180
    :cond_7
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    .line 181
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getTextLayout(Landroid/view/View;)Landroid/text/Layout;

    move-result-object v0

    .line 182
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p1, v0}, Lcom/miui/autoui/utils/ViewProcessor;->needStretchTextLayout(Landroid/view/View;Landroid/text/Layout;)Z

    move-result v1

    .line 183
    .local v1, "needStretch":Z
    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    .line 184
    invoke-static {p1, v0}, Lcom/miui/autoui/utils/ViewProcessor;->createStretchedTextLayout(Landroid/view/View;Landroid/text/Layout;)Landroid/text/Layout;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/miui/autoui/utils/ViewProcessor;->setTextLayout(Landroid/view/View;Landroid/text/Layout;)V

    .line 186
    :cond_1d
    return-void
.end method

.method private blacklist updateAlignmentByViewPos(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 13
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .line 124
    invoke-static {p2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 125
    .local v0, "viewExtras":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 126
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

    .line 127
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

    .line 129
    .local v3, "rightSpace":I
    const/4 v4, 0x5

    .line 130
    .local v4, "diff":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    .line 131
    .local v5, "lowerCompScreenWidth":F
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v5

    if-ltz v6, :cond_5f

    .line 132
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

    .line 134
    :cond_5f
    if-lez v1, :cond_6f

    sub-int v6, v1, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v4, :cond_6f

    .line 135
    sget-object v6, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v0, v6}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_80

    .line 136
    :cond_6f
    if-lez v1, :cond_7b

    sub-int v6, v1, v3

    if-lt v6, v4, :cond_7b

    .line 137
    sget-object v6, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v0, v6}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_80

    .line 139
    :cond_7b
    sget-object v6, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v0, v6}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 141
    :goto_80
    return-void
.end method

.method private blacklist updateAlignmentInfo(Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 113
    invoke-static {p1, p2}, Lcom/miui/autoui/utils/ViewProcessor;->getHorizontalGravity(Landroid/view/ViewGroup;Landroid/view/View;)I

    move-result v0

    .line 114
    .local v0, "horizontalGravity":I
    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_c

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/padview/PadViewAutoUIDraw;->updateAlignmentByViewPos(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_21

    .line 116
    :cond_c
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 117
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p3, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_21

    .line 118
    :cond_17
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x5

    if-ne v1, v2, :cond_21

    .line 119
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p3, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 121
    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public blacklist getCanvasSize(Landroid/view/View;II)[I
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 190
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

    .line 195
    if-eqz p1, :cond_b4

    if-eqz p2, :cond_b4

    if-nez p3, :cond_8

    goto/16 :goto_b4

    .line 198
    :cond_8
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 199
    .local v0, "viewExtras":Lcom/miui/autoui/ViewExtras;
    if-eqz v0, :cond_b3

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isFloat()Z

    move-result v1

    if-nez v1, :cond_b3

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto/16 :goto_b3

    .line 202
    :cond_1c
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isReactImageView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 203
    return-object p3

    .line 205
    :cond_23
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/autoui/policy/padview/PadViewAutoUIDraw;->isImageViewNeedBlur(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 206
    invoke-virtual {p3}, Lcom/miui/autoui/AutoUIParams;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 207
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_66

    .line 208
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getCenterCropRate()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_63

    .line 209
    new-instance v2, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v2}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    move-object v8, v2

    .line 210
    .local v8, "targetParams":Lcom/miui/autoui/AutoUIParams;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getCenterCropRate()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v9, v2

    .line 211
    .local v9, "dstWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 212
    .local v10, "dstBlurWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 213
    .local v11, "dstBlurHeight":I
    move-object v2, p1

    move-object v3, v1

    move v4, v9

    move v5, v10

    move v6, v11

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lcom/miui/autoui/utils/BitmapUtils;->obtainMergeBlurBitmap(Landroid/view/View;Landroid/graphics/Bitmap;IIILcom/miui/autoui/AutoUIParams;)Landroid/graphics/Bitmap;

    .line 214
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 215
    return-object v8

    .line 217
    .end local v8    # "targetParams":Lcom/miui/autoui/AutoUIParams;
    .end local v9    # "dstWidth":I
    .end local v10    # "dstBlurWidth":I
    .end local v11    # "dstBlurHeight":I
    :cond_63
    invoke-static {p1, v0, v1, p3}, Lcom/miui/autoui/utils/BitmapUtils;->obtainMergeBlurBitmap(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Bitmap;Lcom/miui/autoui/AutoUIParams;)Landroid/graphics/Bitmap;

    .line 220
    :cond_66
    return-object p3

    .line 222
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_67
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v1

    if-nez v1, :cond_6e

    .line 223
    return-object p3

    .line 225
    :cond_6e
    invoke-virtual {p3}, Lcom/miui/autoui/AutoUIParams;->getName()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "methodName":Ljava/lang/String;
    const-string v2, "drawBitmap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 227
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/autoui/policy/padview/PadViewAutoUIDraw;->drawBitmap(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V

    goto :goto_b2

    .line 228
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

    .line 230
    :cond_97
    const-string v2, "drawOval"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 231
    invoke-direct {p0, v0, p2, p3}, Lcom/miui/autoui/policy/padview/PadViewAutoUIDraw;->drawOval(Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V

    goto :goto_b2

    .line 232
    :cond_a3
    const-string v2, "drawCircle"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 233
    invoke-direct {p0, v0, p2, p3}, Lcom/miui/autoui/policy/padview/PadViewAutoUIDraw;->drawCircle(Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V

    goto :goto_b2

    .line 229
    :cond_af
    :goto_af
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/autoui/policy/padview/PadViewAutoUIDraw;->drawText(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V

    .line 235
    :cond_b2
    :goto_b2
    return-object p3

    .line 200
    .end local v1    # "methodName":Ljava/lang/String;
    :cond_b3
    :goto_b3
    return-object p3

    .line 196
    .end local v0    # "viewExtras":Lcom/miui/autoui/ViewExtras;
    :cond_b4
    :goto_b4
    return-object p3
.end method

.method public blacklist onViewDetached(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 363
    invoke-super {p0, p1}, Lcom/miui/autoui/policy/def/DefaultAutoUIDraw;->onViewDetached(Landroid/view/View;)V

    .line 364
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
    invoke-direct {p0, p1, v6, v7, p2}, Lcom/miui/autoui/policy/padview/PadViewAutoUIDraw;->drawByParent(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)Z

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

    invoke-direct/range {v0 .. v5}, Lcom/miui/autoui/policy/padview/PadViewAutoUIDraw;->drawRootStretchView(Landroid/view/ViewGroup;Lcom/miui/autoui/ViewExtras;Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)Z

    move-result v8

    .line 59
    :cond_2c
    if-nez v8, :cond_32

    .line 60
    invoke-direct {p0, p1, v6, v7, p2}, Lcom/miui/autoui/policy/padview/PadViewAutoUIDraw;->drawNeedOriginalView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)Z

    move-result v8

    .line 62
    :cond_32
    if-nez v8, :cond_37

    .line 63
    invoke-direct {p0, p1, v6, v7, p2}, Lcom/miui/autoui/policy/padview/PadViewAutoUIDraw;->drawCommonView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)Z

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
