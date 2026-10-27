.class public Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIDraw;
.super Lcom/miui/autoui/policy/def/DefaultAutoUIDraw;
.source "PadActivityAutoUIDraw.java"


# static fields
.field private static final blacklist INVALIDATE_COUNT:I = -0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/miui/autoui/policy/def/DefaultAutoUIDraw;-><init>()V

    return-void
.end method

.method private blacklist drawBitmap(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIDraw;->isNeedBlur(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 133
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_23

    .line 136
    :try_start_c
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/autoui/utils/BitmapUtils;->isTransParentBitmap(Landroid/graphics/Bitmap;II)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 137
    return-void

    .line 139
    :cond_1b
    invoke-static {p1, p2, v0, p4}, Lcom/miui/autoui/utils/BitmapUtils;->obtainMergeBlurBitmap(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Bitmap;Lcom/miui/autoui/AutoUIParams;)Landroid/graphics/Bitmap;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_1f

    .line 142
    goto :goto_23

    .line 140
    :catch_1f
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_23
    :goto_23
    return-void
.end method

.method private blacklist drawPath(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIDraw;->isNeedBlur(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 175
    const/4 v0, 0x1

    invoke-static {p1, p2, p4, v0}, Lcom/miui/autoui/utils/BitmapUtils;->obtainMergeShaderBitmap(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Lcom/miui/autoui/AutoUIParams;I)V

    .line 178
    :cond_a
    return-void
.end method

.method private blacklist drawRoundRect(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 159
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getRx()F

    move-result v0

    .line 160
    .local v0, "rx":F
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getRy()F

    move-result v1

    .line 161
    .local v1, "ry":F
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {p4, v2}, Lcom/miui/autoui/AutoUIParams;->setRx(F)Lcom/miui/autoui/AutoUIParams;

    .line 162
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {p4, v2}, Lcom/miui/autoui/AutoUIParams;->setRx(F)Lcom/miui/autoui/AutoUIParams;

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIDraw;->isNeedBlur(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 164
    const/4 v2, 0x1

    invoke-static {p1, p2, p4, v2}, Lcom/miui/autoui/utils/BitmapUtils;->obtainMergeShaderBitmap(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Lcom/miui/autoui/AutoUIParams;I)V

    .line 167
    :cond_22
    return-void
.end method

.method private blacklist drawText(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 171
    return-void
.end method

.method private blacklist isNeedBlur(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d99999a    # 0.075f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_18

    .line 148
    return v1

    .line 151
    :cond_18
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedBlur()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_26

    .line 155
    :cond_25
    return v1

    .line 152
    :cond_26
    :goto_26
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist preViewDrawRootView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 64
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isFloatIcon()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_35

    .line 65
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setSaveCount(I)V

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v2

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    .line 67
    .local v0, "translateX":F
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v1

    sget-object v2, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v1, v2, :cond_28

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 70
    :cond_28
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 71
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setDrawOffsetX(F)V

    .line 72
    .end local v0    # "translateX":F
    goto :goto_43

    .line 73
    :cond_35
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setSaveCount(I)V

    .line 74
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v0

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 76
    :goto_43
    return-void
.end method

.method private blacklist preViewDrawView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 79
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isWebView()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isIcon()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 80
    :cond_12
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setSaveCount(I)V

    .line 81
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v2

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    .line 84
    .local v0, "translateX":F
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v2

    sget-object v3, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v2, v3, :cond_4a

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v3

    sub-float/2addr v1, v3

    mul-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    goto :goto_63

    .line 86
    :cond_4a
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v2

    sget-object v3, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v2, v3, :cond_63

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v3

    sub-float/2addr v1, v3

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 89
    :cond_63
    :goto_63
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setDrawOffsetX(F)V

    .line 92
    .end local v0    # "translateX":F
    :cond_6f
    return-void
.end method


# virtual methods
.method public blacklist getCanvasSize(Landroid/view/View;II)[I
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 96
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 97
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    move v1, p2

    .line 98
    .local v1, "expectedWidth":I
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 99
    int-to-float v2, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 101
    :cond_14
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    return-object v2
.end method

.method public blacklist getDrawLocation(Landroid/view/View;[I)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "screenLocation"    # [I

    .line 187
    invoke-super {p0, p1, p2}, Lcom/miui/autoui/policy/def/DefaultAutoUIDraw;->getDrawLocation(Landroid/view/View;[I)V

    .line 188
    return-void
.end method

.method public blacklist hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 106
    if-eqz p1, :cond_64

    if-eqz p2, :cond_64

    if-nez p3, :cond_7

    goto :goto_64

    .line 109
    :cond_7
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 110
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p3}, Lcom/miui/autoui/AutoUIParams;->getName()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "paramName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 112
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v2

    if-nez v2, :cond_63

    .line 113
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_63

    .line 117
    :cond_22
    const-string v2, "drawBitmap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 118
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIDraw;->drawBitmap(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V

    goto :goto_62

    .line 119
    :cond_2e
    const-string v2, "drawRoundRect"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 120
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIDraw;->drawRoundRect(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V

    goto :goto_62

    .line 121
    :cond_3a
    const-string v2, "drawText"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 122
    const-string v2, "drawTextOnPath"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 123
    const-string v2, "drawTextRun"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    goto :goto_5f

    .line 125
    :cond_53
    const-string v2, "drawPath"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 126
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIDraw;->drawPath(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V

    goto :goto_62

    .line 124
    :cond_5f
    :goto_5f
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIDraw;->drawText(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V

    .line 128
    :cond_62
    :goto_62
    return-object p3

    .line 114
    :cond_63
    :goto_63
    return-object p3

    .line 107
    .end local v0    # "viewInfo":Lcom/miui/autoui/ViewExtras;
    .end local v1    # "paramName":Ljava/lang/String;
    :cond_64
    :goto_64
    return-object p3
.end method

.method public blacklist onViewDetached(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 183
    return-void
.end method

.method public blacklist postViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 22
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 23
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getSaveCount()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    if-eqz p2, :cond_19

    .line 24
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getSaveCount()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 25
    invoke-virtual {v0, v2}, Lcom/miui/autoui/ViewExtras;->setSaveCount(I)V

    .line 27
    :cond_19
    return-void
.end method

.method public blacklist preViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 31
    invoke-super {p0, p1, p2}, Lcom/miui/autoui/policy/def/DefaultAutoUIDraw;->preViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 32
    return-void
.end method

.method public blacklist preViewDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "drawingTime"    # J

    .line 36
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 37
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 38
    .local v1, "rootView":Landroid/view/View;
    invoke-static {p3}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v2

    .line 39
    .local v2, "parentInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v3

    if-nez v3, :cond_64

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isContainsHorizontalList()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 40
    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 41
    return-void

    .line 44
    :cond_21
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v4

    if-nez v4, :cond_40

    .line 45
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/miui/autoui/ViewExtras;->setSaveCount(I)V

    .line 46
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v4

    invoke-virtual {p2, v4, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 47
    return-void

    .line 49
    :cond_40
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isTextView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_79

    .line 50
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/miui/autoui/ViewExtras;->setSaveCount(I)V

    .line 51
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    invoke-virtual {p2, v4, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v5

    sub-float/2addr v5, v3

    mul-float/2addr v4, v5

    const/4 v3, 0x0

    invoke-virtual {p2, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_79

    .line 54
    :cond_64
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v3

    if-nez v3, :cond_79

    .line 55
    if-ne p3, v1, :cond_76

    .line 56
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIDraw;->preViewDrawRootView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)V

    goto :goto_79

    .line 58
    :cond_76
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIDraw;->preViewDrawView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)V

    .line 61
    :cond_79
    :goto_79
    return-void
.end method
