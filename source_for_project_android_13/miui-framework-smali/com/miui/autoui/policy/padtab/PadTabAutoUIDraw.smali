.class public Lcom/miui/autoui/policy/padtab/PadTabAutoUIDraw;
.super Lcom/miui/autoui/policy/def/DefaultAutoUIDraw;
.source "PadTabAutoUIDraw.java"


# static fields
.field private static final blacklist INVALIDATE_COUNT:I = -0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/miui/autoui/policy/def/DefaultAutoUIDraw;-><init>()V

    return-void
.end method

.method private blacklist drawBitmap(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 141
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 142
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_14

    .line 145
    :try_start_c
    invoke-static {p1, p2, v0, p4}, Lcom/miui/autoui/utils/BitmapUtils;->obtainMergeBlurBitmap(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Bitmap;Lcom/miui/autoui/AutoUIParams;)Landroid/graphics/Bitmap;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_10

    .line 148
    goto :goto_14

    .line 146
    :catch_10
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_14
    :goto_14
    return-void
.end method

.method private blacklist drawRect(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 193
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isTopTab()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 194
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 195
    .local v0, "rectF":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    .line 199
    .end local v0    # "rectF":Landroid/graphics/RectF;
    :cond_14
    return-void
.end method

.method private blacklist drawRoundRect(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 174
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getLeft()F

    move-result v0

    .line 175
    .local v0, "left":F
    invoke-virtual {p4}, Lcom/miui/autoui/AutoUIParams;->getRight()F

    move-result v1

    .line 176
    .local v1, "right":F
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedBlur()Z

    move-result v2

    if-nez v2, :cond_63

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v2

    if-nez v2, :cond_63

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getClipToOutline()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {p1}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 178
    new-instance v2, Landroid/graphics/Outline;

    invoke-direct {v2}, Landroid/graphics/Outline;-><init>()V

    .line 179
    .local v2, "outline":Landroid/graphics/Outline;
    invoke-virtual {p1}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    .line 180
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 181
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2, v3}, Landroid/graphics/Outline;->getRect(Landroid/graphics/Rect;)Z

    .line 182
    invoke-virtual {v2}, Landroid/graphics/Outline;->getRadius()F

    move-result v4

    .line 183
    .local v4, "radius":F
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v5

    mul-float/2addr v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v5

    .line 185
    .local v5, "renderNode":Landroid/graphics/RenderNode;
    invoke-virtual {v5, v2}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 187
    .end local v2    # "outline":Landroid/graphics/Outline;
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "radius":F
    .end local v5    # "renderNode":Landroid/graphics/RenderNode;
    :cond_47
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 188
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v2

    div-float v2, v0, v2

    invoke-virtual {p4, v2}, Lcom/miui/autoui/AutoUIParams;->setLeft(F)Lcom/miui/autoui/AutoUIParams;

    move-result-object v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v3

    div-float v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/miui/autoui/AutoUIParams;->setRight(F)Lcom/miui/autoui/AutoUIParams;

    .line 190
    :cond_63
    return-void
.end method

.method private blacklist isTopOrBottom(Lcom/miui/autoui/ViewExtras;)Z
    .registers 4
    .param p1, "info"    # Lcom/miui/autoui/ViewExtras;

    .line 95
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 96
    return v0

    .line 98
    :cond_4
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->isBottomTab()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->isTopTab()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private blacklist preViewDrawRootView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 58
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isFloatIcon()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_35

    .line 59
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setSaveCount(I)V

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v2

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    .line 61
    .local v0, "translateX":F
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v1

    sget-object v2, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v1, v2, :cond_28

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 64
    :cond_28
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setDrawOffsetX(F)V

    .line 66
    .end local v0    # "translateX":F
    goto :goto_43

    .line 67
    :cond_35
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setSaveCount(I)V

    .line 68
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v0

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 70
    :goto_43
    return-void
.end method

.method private blacklist preViewDrawView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 80
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v0

    if-nez v0, :cond_69

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 81
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setSaveCount(I)V

    .line 82
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

    if-ne v2, v3, :cond_44

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

    goto :goto_5d

    .line 86
    :cond_44
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v2

    sget-object v3, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v2, v3, :cond_5d

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
    :cond_5d
    :goto_5d
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setDrawOffsetX(F)V

    .line 92
    .end local v0    # "translateX":F
    :cond_69
    return-void
.end method

.method public static blacklist saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 8
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 155
    :try_start_0
    const-string v0, "/data/autoui/"

    .line 156
    .local v0, "subForder":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, "foder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 160
    :cond_10
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v2, "myCaptureFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 162
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 164
    :cond_1e
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 165
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x50

    invoke-virtual {p0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 166
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 167
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    .line 170
    .end local v0    # "subForder":Ljava/lang/String;
    .end local v1    # "foder":Ljava/io/File;
    .end local v2    # "myCaptureFile":Ljava/io/File;
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_3a

    .line 168
    :catch_36
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3a
    return-void
.end method


# virtual methods
.method public blacklist getCanvasSize(Landroid/view/View;II)[I
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 103
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 104
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    move v1, p2

    .line 105
    .local v1, "expectedWidth":I
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 106
    int-to-float v2, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 108
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

    .line 208
    invoke-super {p0, p1, p2}, Lcom/miui/autoui/policy/def/DefaultAutoUIDraw;->getDrawLocation(Landroid/view/View;[I)V

    .line 209
    return-void
.end method

.method public blacklist hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 113
    if-eqz p1, :cond_5a

    if-eqz p2, :cond_5a

    if-nez p3, :cond_7

    goto :goto_5a

    .line 116
    :cond_7
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 117
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p3}, Lcom/miui/autoui/AutoUIParams;->getName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "paramName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 119
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v2

    if-nez v2, :cond_59

    .line 120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_59

    .line 123
    :cond_22
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_5c

    :cond_2a
    goto :goto_48

    :sswitch_2b
    const-string v3, "drawRoundRect"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v2, 0x1

    goto :goto_48

    :sswitch_35
    const-string v3, "drawBitmap"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v2, 0x0

    goto :goto_48

    :sswitch_3f
    const-string v3, "drawRect"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v2, 0x2

    :goto_48
    packed-switch v2, :pswitch_data_6a

    goto :goto_58

    .line 131
    :pswitch_4c
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIDraw;->drawRect(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V

    .line 132
    goto :goto_58

    .line 128
    :pswitch_50
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIDraw;->drawRoundRect(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V

    .line 129
    goto :goto_58

    .line 125
    :pswitch_54
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIDraw;->drawBitmap(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)V

    .line 126
    nop

    .line 136
    :goto_58
    return-object p3

    .line 121
    :cond_59
    :goto_59
    return-object p3

    .line 114
    .end local v0    # "viewInfo":Lcom/miui/autoui/ViewExtras;
    .end local v1    # "paramName":Ljava/lang/String;
    :cond_5a
    :goto_5a
    return-object p3

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x314a46b8 -> :sswitch_3f
        -0x22e0f86d -> :sswitch_35
        0x839a7ae -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_54
        :pswitch_50
        :pswitch_4c
    .end packed-switch
.end method

.method public blacklist onViewDetached(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 204
    return-void
.end method

.method public blacklist postViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 32
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 33
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getSaveCount()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    if-eqz p2, :cond_19

    .line 34
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getSaveCount()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 35
    invoke-virtual {v0, v2}, Lcom/miui/autoui/ViewExtras;->setSaveCount(I)V

    .line 37
    :cond_19
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
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "drawingTime"    # J

    .line 46
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 47
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 49
    if-ne p3, v1, :cond_14

    .line 50
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIDraw;->preViewDrawRootView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)V

    goto :goto_17

    .line 52
    :cond_14
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIDraw;->preViewDrawView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Canvas;)V

    .line 55
    :cond_17
    :goto_17
    return-void
.end method
