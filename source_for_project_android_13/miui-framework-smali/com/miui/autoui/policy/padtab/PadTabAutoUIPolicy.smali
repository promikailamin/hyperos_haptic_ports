.class public Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;
.super Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;
.source "PadTabAutoUIPolicy.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 35
    new-instance v0, Lcom/miui/autoui/policy/padtab/PadTabAutoUIMeasure;

    invoke-direct {v0}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIMeasure;-><init>()V

    new-instance v1, Lcom/miui/autoui/policy/padtab/PadTabAutoUILayout;

    invoke-direct {v1}, Lcom/miui/autoui/policy/padtab/PadTabAutoUILayout;-><init>()V

    new-instance v2, Lcom/miui/autoui/policy/padtab/PadTabAutoUIDraw;

    invoke-direct {v2}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIDraw;-><init>()V

    new-instance v3, Lcom/miui/autoui/policy/padtab/PadTabAutoUIEvent;

    invoke-direct {v3}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIEvent;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;-><init>(Lcom/miui/autoui/policy/api/IAutoUIMeasure;Lcom/miui/autoui/policy/api/IAutoUILayout;Lcom/miui/autoui/policy/api/IAutoUIDraw;Lcom/miui/autoui/policy/api/IAutoUIEvent;)V

    .line 37
    return-void
.end method

.method private blacklist afterAnalyzeBackground(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 329
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isBackgroundImage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 330
    return-void

    .line 332
    :cond_7
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isBackgroundImage(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    .line 334
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 335
    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setNeedBlur(Z)V

    .line 336
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setBackgroundImage(Z)V

    .line 338
    :cond_1d
    return-void
.end method

.method private blacklist afterAnalyzeImageView(Landroid/widget/ImageView;Lcom/miui/autoui/ViewExtras;)V
    .registers 6
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 308
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_28

    .line 309
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v2, :cond_1f

    .line 310
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v2, :cond_1f

    .line 311
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v2, :cond_28

    .line 312
    :cond_1f
    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    .line 313
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_3c

    .line 314
    :cond_28
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isFloatIcon()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 315
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_3c

    .line 317
    :cond_34
    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    .line 318
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 320
    :goto_3c
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isBottomTab()Z

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isTopTab()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 321
    :cond_48
    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    .line 322
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setNeedBlur(Z)V

    .line 326
    :cond_54
    return-void
.end method

.method private blacklist afterAnalyzeTextView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 227
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getTextLayout(Landroid/view/View;)Landroid/text/Layout;

    move-result-object v0

    .line 228
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_fe

    .line 229
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 231
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v3

    .line 232
    .local v3, "parentInfo":Lcom/miui/autoui/ViewExtras;
    const/4 v4, 0x0

    if-eqz v3, :cond_3d

    .line 233
    invoke-virtual {v3}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 234
    invoke-virtual {v3}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 235
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3d

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v5, :cond_3d

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v6, 0x5

    if-ge v5, v6, :cond_3d

    .line 237
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    goto/16 :goto_fe

    .line 238
    :cond_3d
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4c

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_fe

    .line 239
    :cond_4c
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    if-ne v5, v1, :cond_fe

    .line 240
    invoke-direct {p0, v0, p1}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;->isMatchParent(Landroid/text/Layout;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 242
    .local v4, "group":Landroid/view/ViewGroup;
    if-eqz v4, :cond_83

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    if-eq v5, v6, :cond_83

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v1, :cond_83

    .line 244
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 247
    .end local v4    # "group":Landroid/view/ViewGroup;
    :cond_83
    goto/16 :goto_fe

    :cond_85
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_b9

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 249
    .local v4, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v5

    if-ne v5, v1, :cond_b8

    .line 250
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9a
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_b8

    .line 251
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 252
    .local v5, "child":Landroid/view/View;
    invoke-static {v5}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v6

    .line 253
    .local v6, "info":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v6}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v7

    sget-object v8, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v7, v8, :cond_b5

    .line 254
    sget-object v7, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v7}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 250
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "info":Lcom/miui/autoui/ViewExtras;
    :cond_b5
    add-int/lit8 v1, v1, 0x1

    goto :goto_9a

    .line 258
    .end local v1    # "i":I
    .end local v4    # "ll":Landroid/widget/LinearLayout;
    :cond_b8
    goto :goto_fe

    .line 259
    :cond_b9
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v5

    .line 260
    .local v5, "paragraphAlignment":Landroid/text/Layout$Alignment;
    sget-object v6, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v5}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_100

    goto :goto_fe

    .line 282
    :pswitch_c9
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_fe

    .line 279
    :pswitch_cf
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 280
    goto :goto_fe

    .line 276
    :pswitch_d5
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 277
    goto :goto_fe

    .line 269
    :pswitch_db
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    if-ne v4, v1, :cond_e7

    .line 270
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_fe

    .line 272
    :cond_e7
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 274
    goto :goto_fe

    .line 262
    :pswitch_ed
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    if-ne v4, v1, :cond_f9

    .line 263
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_fe

    .line 265
    :cond_f9
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 288
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "parentInfo":Lcom/miui/autoui/ViewExtras;
    .end local v5    # "paragraphAlignment":Landroid/text/Layout$Alignment;
    :cond_fe
    :goto_fe
    return-void

    nop

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_ed
        :pswitch_db
        :pswitch_d5
        :pswitch_cf
        :pswitch_c9
    .end packed-switch
.end method

.method private blacklist afterAnalyzeView(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 108
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 109
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isTextView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;->afterAnalyzeTextView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 111
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_5d

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    goto :goto_5d

    .line 114
    :cond_16
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isAtomic()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_50

    .line 115
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v1

    .line 116
    .local v1, "realWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_4f

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4f

    .line 118
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    .line 119
    sget-object v2, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v0, v2}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 121
    .end local v1    # "realWidth":I
    :cond_4f
    goto :goto_5d

    .line 122
    :cond_50
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_5a

    .line 123
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;->afterAnalyzeImageView(Landroid/widget/ImageView;Lcom/miui/autoui/ViewExtras;)V

    .line 125
    :cond_5a
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;->afterAnalyzeBackground(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 127
    :cond_5d
    :goto_5d
    return-void
.end method

.method private blacklist analyzeView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 81
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;->beforeAnalyze(Landroid/view/View;)V

    .line 82
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    .line 83
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 84
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 86
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;->analyzeView(Landroid/view/View;)V

    .line 84
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 89
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_1b
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;->afterAnalyzeView(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method private blacklist beforeAnalyze(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 93
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 94
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 95
    .local v1, "parentInfo":Lcom/miui/autoui/ViewExtras;
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;->beforeAnalyzeTopOrBottom(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 96
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_19

    .line 97
    move-object v2, p1

    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;->beforeAnalyzeImageView(Landroid/widget/ImageView;)V

    .line 100
    :cond_19
    if-eqz v1, :cond_2b

    .line 101
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 102
    :cond_27
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 105
    :cond_2b
    return-void
.end method

.method private blacklist beforeAnalyzeImageView(Landroid/widget/ImageView;)V
    .registers 6
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 130
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 131
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_35

    .line 135
    :cond_d
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isTopTab()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isBottomTab()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 136
    return-void

    .line 139
    :cond_1a
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_34

    .line 140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/autoui/ViewExtras;->setLargeBitmap(Z)V

    .line 142
    :cond_34
    return-void

    .line 132
    :cond_35
    :goto_35
    return-void
.end method

.method private blacklist beforeAnalyzeTopOrBottom(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/miui/autoui/ViewExtras;

    .line 145
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 146
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 147
    .local v1, "parentInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v2

    .line 148
    .local v2, "rootViewExtras":Lcom/miui/autoui/ViewExtras;
    const/4 v3, 0x1

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isTopTab()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 149
    invoke-virtual {v0, v3}, Lcom/miui/autoui/ViewExtras;->setTopTab(Z)V

    .line 150
    return-void

    .line 153
    :cond_21
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isBottomTab()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 154
    invoke-virtual {v0, v3}, Lcom/miui/autoui/ViewExtras;->setBottomTab(Z)V

    .line 155
    return-void

    .line 158
    :cond_2d
    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isMidGroup()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 159
    invoke-virtual {v0, v3}, Lcom/miui/autoui/ViewExtras;->setInMid(Z)V

    .line 160
    invoke-virtual {v0, v3}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 161
    return-void

    .line 164
    :cond_3c
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isTopTab()Z

    move-result v4

    if-nez v4, :cond_78

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isMidGroup()Z

    move-result v4

    if-nez v4, :cond_78

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isBottomTab()Z

    move-result v4

    if-eqz v4, :cond_4f

    goto :goto_78

    .line 168
    :cond_4f
    invoke-virtual {v2}, Lcom/miui/autoui/ViewExtras;->hasRuleTopTab()Z

    move-result v4

    if-nez v4, :cond_65

    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;->isTopTab(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 169
    invoke-virtual {v0, v3}, Lcom/miui/autoui/ViewExtras;->setTopTab(Z)V

    .line 170
    invoke-virtual {v2, v3}, Lcom/miui/autoui/ViewExtras;->setHasTopTab(Z)V

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;->tryFindMidGroup(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    goto :goto_77

    .line 172
    :cond_65
    invoke-virtual {v2}, Lcom/miui/autoui/ViewExtras;->hasRuleBottomTab()Z

    move-result v4

    if-nez v4, :cond_77

    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;->isBottomTab(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 173
    invoke-virtual {v0, v3}, Lcom/miui/autoui/ViewExtras;->setBottomTab(Z)V

    .line 174
    invoke-virtual {v2, v3}, Lcom/miui/autoui/ViewExtras;->setHasBottomTab(Z)V

    .line 176
    :cond_77
    :goto_77
    return-void

    .line 165
    :cond_78
    :goto_78
    return-void
.end method

.method private blacklist checkTopOrBottomPolicy(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .line 49
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 50
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 51
    .local v1, "rootViewExtras":Lcom/miui/autoui/ViewExtras;
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getWindowTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/miui/autoui/AutoPolicyUtils;->getViewPolicy(Ljava/lang/String;Landroid/view/View;)I

    move-result v2

    .line 52
    .local v2, "policy":I
    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ne v2, v4, :cond_36

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->hasRuleTopTab()Z

    move-result v4

    if-nez v4, :cond_69

    .line 54
    invoke-virtual {v0, v3}, Lcom/miui/autoui/ViewExtras;->setTopTab(Z)V

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;->tryFindMidGroup(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 56
    invoke-virtual {v1, v3}, Lcom/miui/autoui/ViewExtras;->setHasRuleTopTab(Z)V

    goto :goto_69

    .line 58
    :cond_36
    const/4 v4, 0x5

    if-ne v2, v4, :cond_40

    .line 59
    invoke-virtual {v0, v3}, Lcom/miui/autoui/ViewExtras;->setBottomTab(Z)V

    .line 60
    invoke-virtual {v1, v3}, Lcom/miui/autoui/ViewExtras;->setHasRuleBottomTab(Z)V

    goto :goto_69

    .line 61
    :cond_40
    const/4 v4, 0x6

    if-ne v2, v4, :cond_47

    .line 62
    invoke-virtual {v0, v3}, Lcom/miui/autoui/ViewExtras;->setBottomTab(Z)V

    goto :goto_69

    .line 63
    :cond_47
    const/4 v4, 0x7

    if-ne v2, v4, :cond_69

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v4

    .line 65
    .local v4, "parentInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v4, v3}, Lcom/miui/autoui/ViewExtras;->setTopTab(Z)V

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_66

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v5, v4}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;->tryFindMidGroup(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 69
    :cond_66
    invoke-virtual {v1, v3}, Lcom/miui/autoui/ViewExtras;->setHasRuleTopTab(Z)V

    .line 71
    .end local v4    # "parentInfo":Lcom/miui/autoui/ViewExtras;
    :cond_69
    :goto_69
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_81

    .line 72
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    .line 73
    .local v3, "group":Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_71
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_81

    .line 74
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 75
    .local v5, "child":Landroid/view/View;
    invoke-direct {p0, v5}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;->checkTopOrBottomPolicy(Landroid/view/View;)V

    .line 73
    .end local v5    # "child":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    .line 78
    .end local v3    # "group":Landroid/view/ViewGroup;
    .end local v4    # "i":I
    :cond_81
    return-void
.end method

.method private blacklist isBottomTab(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/miui/autoui/ViewExtras;

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "isBottom":Z
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 214
    .local v1, "navigationBar":Landroid/view/View;
    if-nez v1, :cond_10

    const/4 v2, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 216
    .local v2, "navigationHeight":I
    :goto_14
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    int-to-float v4, v2

    add-float/2addr v3, v4

    .line 217
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5c

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5c

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-double v3, v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x3fee666666666666L    # 0.95

    mul-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-lez v3, :cond_5c

    .line 220
    const/4 v0, 0x1

    .line 223
    :cond_5c
    return v0
.end method

.method private blacklist isMatchParent(Landroid/text/Layout;Landroid/view/View;)Z
    .registers 9
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "view"    # Landroid/view/View;

    .line 292
    const/4 v0, 0x1

    .line 293
    .local v0, "isMatchParent":Z
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 294
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1b

    const/4 v2, 0x1

    .line 295
    .local v2, "isMatchView":Z
    :cond_1b
    instance-of v3, v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    if-eqz v3, :cond_30

    .line 296
    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2e

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v4, :cond_35

    .line 297
    :cond_2e
    const/4 v0, 0x0

    goto :goto_35

    .line 300
    :cond_30
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v4, :cond_35

    .line 301
    const/4 v0, 0x0

    .line 304
    :cond_35
    :goto_35
    or-int v3, v0, v2

    return v3
.end method

.method private blacklist isTopTab(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/miui/autoui/ViewExtras;

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "isTop":Z
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 201
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 202
    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_4c

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4c

    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 203
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4c

    .line 204
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v2, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fee666666666666L    # 0.95

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4c

    .line 205
    const/4 v0, 0x1

    .line 208
    :cond_4c
    return v0
.end method

.method private blacklist tryFindMidGroup(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/miui/autoui/ViewExtras;

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4e

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 181
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 182
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_4e

    .line 183
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 184
    .local v3, "child":Landroid/view/View;
    if-eq v3, p1, :cond_4b

    .line 185
    invoke-static {v3}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v4

    .line 186
    .local v4, "childInfo":Lcom/miui/autoui/ViewExtras;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 187
    .local v5, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3, v5}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 188
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-double v6, v6

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x3fee666666666666L    # 0.95

    mul-double/2addr v8, v10

    cmpl-double v6, v6, v8

    if-lez v6, :cond_4b

    .line 189
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/miui/autoui/ViewExtras;->setMidGroup(Z)V

    .line 190
    invoke-virtual {v4, v6}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    .line 191
    sget-object v6, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v4, v6}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 182
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childInfo":Lcom/miui/autoui/ViewExtras;
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 196
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_4e
    return-void
.end method


# virtual methods
.method public blacklist onUpdateDirtyDisplayList(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 41
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_19

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 43
    .local v0, "rootViewExtras":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->reset()V

    .line 44
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;->checkTopOrBottomPolicy(Landroid/view/View;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;->analyzeView(Landroid/view/View;)V

    .line 47
    .end local v0    # "rootViewExtras":Lcom/miui/autoui/ViewExtras;
    :cond_19
    return-void
.end method
