.class public Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;
.super Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;
.source "PadActivityAutoUIPolicy.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "AutoUI_ActivityAutoUIPolicy"


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 49
    new-instance v0, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIMeasure;

    invoke-direct {v0}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIMeasure;-><init>()V

    new-instance v1, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUILayout;

    invoke-direct {v1}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUILayout;-><init>()V

    new-instance v2, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIDraw;

    invoke-direct {v2}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIDraw;-><init>()V

    new-instance v3, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIEvent;

    invoke-direct {v3}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIEvent;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;-><init>(Lcom/miui/autoui/policy/api/IAutoUIMeasure;Lcom/miui/autoui/policy/api/IAutoUILayout;Lcom/miui/autoui/policy/api/IAutoUIDraw;Lcom/miui/autoui/policy/api/IAutoUIEvent;)V

    .line 51
    return-void
.end method

.method private blacklist afterAnalyzeBackground(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 394
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isBackgroundImage()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 395
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isBackgroundImage(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 396
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    .line 397
    sget-object v2, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v2}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 398
    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setNeedBlur(Z)V

    .line 399
    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setBackgroundImage(Z)V

    .line 401
    :cond_1c
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isIcon(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 402
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 403
    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setIcon(Z)V

    .line 404
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->checkBrotherView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 406
    :cond_2d
    return-void
.end method

.method private blacklist afterAnalyzeImageView(Landroid/widget/ImageView;Lcom/miui/autoui/ViewExtras;)V
    .registers 5
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 376
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v0

    if-nez v0, :cond_30

    .line 377
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_26

    .line 378
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_26

    .line 379
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_26

    .line 380
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_30

    .line 381
    :cond_26
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    .line 382
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_4f

    .line 383
    :cond_30
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isFloatIcon()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 384
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 385
    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setNeedBlur(Z)V

    goto :goto_4f

    .line 387
    :cond_40
    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    .line 388
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 389
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->isNeedBlur(Landroid/widget/ImageView;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setNeedBlur(Z)V

    .line 391
    :goto_4f
    return-void
.end method

.method private blacklist afterAnalyzeLinearLayout(Landroid/widget/LinearLayout;Lcom/miui/autoui/ViewExtras;)V
    .registers 4
    .param p1, "view"    # Landroid/widget/LinearLayout;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 207
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    .line 208
    .local v0, "orientation":I
    if-nez v0, :cond_a

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->checkLinearHorizontal(Landroid/widget/LinearLayout;Lcom/miui/autoui/ViewExtras;)V

    goto :goto_d

    .line 211
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->checkLinearVertical(Landroid/widget/LinearLayout;Lcom/miui/autoui/ViewExtras;)V

    .line 213
    :goto_d
    return-void
.end method

.method private blacklist afterAnalyzeRelativeLayout(Landroid/widget/RelativeLayout;Lcom/miui/autoui/ViewExtras;)V
    .registers 8
    .param p1, "group"    # Landroid/widget/RelativeLayout;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 159
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 160
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 161
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1b

    .line 162
    invoke-static {v1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v3

    .line 163
    .local v3, "childInfo":Lcom/miui/autoui/ViewExtras;
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->checkRelativeChildAlign(Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Lcom/miui/autoui/ViewExtras;)V

    .line 158
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "childInfo":Lcom/miui/autoui/ViewExtras;
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    .end local v0    # "i":I
    :cond_1e
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->afterAnalyzeBackground(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 167
    return-void
.end method

.method private blacklist afterAnalyzeTextView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 284
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getTextLayout(Landroid/view/View;)Landroid/text/Layout;

    move-result-object v0

    .line 285
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_131

    .line 286
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 288
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v3

    .line 289
    .local v3, "parentInfo":Lcom/miui/autoui/ViewExtras;
    const/4 v4, 0x0

    if-eqz v3, :cond_3d

    .line 290
    invoke-virtual {v3}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 291
    invoke-virtual {v3}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 292
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

    .line 294
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    goto/16 :goto_131

    .line 295
    :cond_3d
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4c

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_131

    .line 296
    :cond_4c
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    if-ne v5, v1, :cond_131

    .line 297
    invoke-direct {p0, v0, p1}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->isMatchParent(Landroid/text/Layout;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 299
    .local v4, "group":Landroid/view/ViewGroup;
    if-eqz v4, :cond_b6

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    if-eq v5, v6, :cond_b6

    .line 300
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

    .line 301
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 303
    :cond_83
    invoke-static {v4}, Lcom/miui/autoui/utils/ViewProcessor;->isConstraintLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 304
    const-string v1, "startToEnd"

    invoke-static {v2, v1}, Lcom/miui/autoui/utils/ReflectUtils;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 305
    .local v1, "startToEnd":I
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_b6

    if-lez v1, :cond_b6

    .line 307
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 308
    .local v5, "left":Landroid/view/View;
    invoke-static {v5}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v6

    .line 309
    .local v6, "leftInfo":Lcom/miui/autoui/ViewExtras;
    if-eqz v6, :cond_b6

    invoke-virtual {v6}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v7

    sget-object v8, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v7, v8, :cond_b6

    .line 310
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v7

    sget-object v8, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v7, v8}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 315
    .end local v1    # "startToEnd":I
    .end local v4    # "group":Landroid/view/ViewGroup;
    .end local v5    # "left":Landroid/view/View;
    .end local v6    # "leftInfo":Lcom/miui/autoui/ViewExtras;
    :cond_b6
    goto/16 :goto_131

    :cond_b8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_ec

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 317
    .local v4, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v5

    if-ne v5, v1, :cond_eb

    .line 318
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_cd
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_eb

    .line 319
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 320
    .local v5, "child":Landroid/view/View;
    invoke-static {v5}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v6

    .line 321
    .local v6, "info":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v6}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v7

    sget-object v8, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v7, v8, :cond_e8

    .line 322
    sget-object v7, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v7}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 318
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "info":Lcom/miui/autoui/ViewExtras;
    :cond_e8
    add-int/lit8 v1, v1, 0x1

    goto :goto_cd

    .line 326
    .end local v1    # "i":I
    .end local v4    # "ll":Landroid/widget/LinearLayout;
    :cond_eb
    goto :goto_131

    .line 327
    :cond_ec
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v5

    .line 328
    .local v5, "paragraphAlignment":Landroid/text/Layout$Alignment;
    sget-object v6, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v5}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_132

    goto :goto_131

    .line 350
    :pswitch_fc
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_131

    .line 347
    :pswitch_102
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 348
    goto :goto_131

    .line 344
    :pswitch_108
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 345
    goto :goto_131

    .line 337
    :pswitch_10e
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    if-ne v4, v1, :cond_11a

    .line 338
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_131

    .line 340
    :cond_11a
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 342
    goto :goto_131

    .line 330
    :pswitch_120
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    if-ne v4, v1, :cond_12c

    .line 331
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_131

    .line 333
    :cond_12c
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 356
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "parentInfo":Lcom/miui/autoui/ViewExtras;
    .end local v5    # "paragraphAlignment":Landroid/text/Layout$Alignment;
    :cond_131
    :goto_131
    return-void

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_120
        :pswitch_10e
        :pswitch_108
        :pswitch_102
        :pswitch_fc
    .end packed-switch
.end method

.method private blacklist afterAnalyzeView(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 99
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 100
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-direct {p0, v0}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->needAnalyze(Lcom/miui/autoui/ViewExtras;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 101
    return-void

    .line 103
    :cond_b
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_13

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->afterAnalyzeViewGroup(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z

    goto :goto_6d

    .line 105
    :cond_13
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isTextView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 106
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->afterAnalyzeTextView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    goto :goto_6d

    .line 107
    :cond_1d
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isAtomic()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_57

    .line 108
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v1

    .line 109
    .local v1, "realWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_56

    .line 110
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

    if-gez v2, :cond_56

    .line 111
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    .line 112
    sget-object v2, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v0, v2}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 114
    .end local v1    # "realWidth":I
    :cond_56
    goto :goto_6d

    :cond_57
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_60

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    goto :goto_6d

    .line 117
    :cond_60
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_6a

    .line 118
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->afterAnalyzeImageView(Landroid/widget/ImageView;Lcom/miui/autoui/ViewExtras;)V

    .line 120
    :cond_6a
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->afterAnalyzeBackground(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 122
    :goto_6d
    return-void
.end method

.method private blacklist afterAnalyzeViewGroup(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 145
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    .line 146
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 147
    .local v0, "group":Landroid/view/ViewGroup;
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_12

    .line 148
    move-object v1, p1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, p2}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->afterAnalyzeRelativeLayout(Landroid/widget/RelativeLayout;Lcom/miui/autoui/ViewExtras;)V

    goto :goto_1c

    .line 149
    :cond_12
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1c

    .line 150
    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, p2}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->afterAnalyzeLinearLayout(Landroid/widget/LinearLayout;Lcom/miui/autoui/ViewExtras;)V

    .line 152
    :cond_1c
    :goto_1c
    const/4 v1, 0x1

    return v1

    .line 154
    .end local v0    # "group":Landroid/view/ViewGroup;
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist analyzeView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 66
    return-void

    .line 68
    :cond_9
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->beforeAnalyze(Landroid/view/View;)V

    .line 69
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_24

    .line 70
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 71
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 73
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->analyzeView(Landroid/view/View;)V

    .line 71
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 76
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_24
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->afterAnalyzeView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method private blacklist beforeAnalyze(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .line 80
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 81
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 82
    .local v1, "parentInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 83
    .local v2, "rootView":Landroid/view/View;
    invoke-static {v2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v3

    .line 85
    .local v3, "rootInfo":Lcom/miui/autoui/ViewExtras;
    instance-of v4, p1, Landroid/widget/ImageView;

    if-eqz v4, :cond_1e

    .line 86
    move-object v4, p1

    check-cast v4, Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->beforeAnalyzeImageView(Landroid/widget/ImageView;)V

    .line 89
    :cond_1e
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isReactRootView(Landroid/view/View;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_28

    .line 90
    invoke-virtual {v3, v5}, Lcom/miui/autoui/ViewExtras;->setReactRootView(I)V

    .line 93
    :cond_28
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v4

    if-nez v4, :cond_36

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 94
    :cond_36
    invoke-virtual {v0, v5}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 96
    :cond_39
    return-void
.end method

.method private blacklist beforeAnalyzeImageView(Landroid/widget/ImageView;)V
    .registers 6
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 131
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 132
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_28

    .line 135
    :cond_d
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->getRealWidth(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f5eb852    # 0.87f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_27

    .line 136
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/autoui/ViewExtras;->setLargeBitmap(Z)V

    .line 138
    :cond_27
    return-void

    .line 133
    :cond_28
    :goto_28
    return-void
.end method

.method private blacklist checkBrotherView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 409
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 410
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_5b

    .line 411
    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 412
    .local v1, "rl":Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_5b

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_5b

    .line 413
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    .line 414
    .local v2, "childCount":I
    const/4 v3, 0x2

    if-le v2, v3, :cond_27

    .line 415
    return-void

    .line 417
    :cond_27
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    if-ge v3, v2, :cond_5b

    .line 418
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 419
    .local v4, "child":Landroid/view/View;
    if-ne v4, p1, :cond_31

    .line 420
    goto :goto_58

    .line 422
    :cond_31
    invoke-static {v4}, Lcom/miui/autoui/utils/ViewProcessor;->isRedDot(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 423
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 424
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v5, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v6, :cond_58

    .line 425
    move-object v6, v5

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 426
    .local v6, "rll":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v7

    if-eqz v7, :cond_58

    .line 427
    invoke-static {v4}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v7

    .line 428
    .local v7, "childInfo":Lcom/miui/autoui/ViewExtras;
    sget-object v8, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v8}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 429
    sget-object v8, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v7, v8}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 417
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "rll":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "childInfo":Lcom/miui/autoui/ViewExtras;
    :cond_58
    :goto_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 436
    .end local v1    # "rl":Landroid/widget/RelativeLayout;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    :cond_5b
    return-void
.end method

.method private blacklist checkLinearHorizontal(Landroid/widget/LinearLayout;Lcom/miui/autoui/ViewExtras;)V
    .registers 19
    .param p1, "view"    # Landroid/widget/LinearLayout;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 216
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 217
    .local v1, "childCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getGravity()I

    move-result v2

    const v3, 0x800007

    and-int/2addr v2, v3

    .line 218
    .local v2, "hgrav":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 219
    .local v3, "realWidth":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v1, v5, :cond_24

    if-lez v3, :cond_24

    move v6, v5

    goto :goto_25

    :cond_24
    move v6, v4

    .line 220
    .local v6, "isItemChildren":Z
    :goto_25
    const/4 v7, 0x0

    .line 221
    .local v7, "totalChildWidth":I
    const/4 v8, 0x1

    .line 222
    .local v8, "needRecheck":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_28
    if-ge v9, v1, :cond_cc

    .line 223
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 224
    .local v10, "child":Landroid/view/View;
    invoke-static {v10}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v11

    .line 225
    .local v11, "childInfo":Lcom/miui/autoui/ViewExtras;
    invoke-static {v10}, Lcom/miui/autoui/utils/ViewProcessor;->isTextView(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_3d

    invoke-static {v10}, Lcom/miui/autoui/utils/ViewProcessor;->getTextLayout(Landroid/view/View;)Landroid/text/Layout;

    move-result-object v12

    goto :goto_3e

    :cond_3d
    const/4 v12, 0x0

    .line 226
    .local v12, "layout":Landroid/text/Layout;
    :goto_3e
    invoke-static {v10}, Lcom/miui/autoui/utils/ViewProcessor;->isTextView(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_70

    if-eqz v12, :cond_70

    invoke-virtual {v12, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_70

    .line 227
    if-eqz v6, :cond_6c

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v13

    if-lez v13, :cond_6c

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v13

    rem-int v13, v3, v13

    if-nez v13, :cond_6c

    move v13, v5

    goto :goto_6d

    :cond_6c
    move v13, v4

    :goto_6d
    move v6, v13

    .line 228
    const/4 v8, 0x0

    goto :goto_c8

    .line 230
    :cond_70
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v7, v13

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v13

    invoke-static {v2, v13}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v13

    .line 232
    .local v13, "absoluteGravity":I
    if-ne v13, v5, :cond_85

    .line 233
    sget-object v14, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v11, v14}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_b4

    .line 234
    :cond_85
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_9d

    .line 235
    const/4 v14, 0x3

    if-ne v13, v14, :cond_97

    .line 236
    sget-object v14, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v11, v14}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_b4

    .line 238
    :cond_97
    sget-object v14, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v11, v14}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_b4

    .line 240
    :cond_9d
    const/4 v14, 0x5

    if-eq v13, v14, :cond_af

    invoke-virtual {v11}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v14

    sget-object v15, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v14, v15, :cond_a9

    goto :goto_af

    .line 243
    :cond_a9
    sget-object v14, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v11, v14}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_b4

    .line 241
    :cond_af
    :goto_af
    sget-object v14, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v11, v14}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 245
    :goto_b4
    if-eqz v6, :cond_c6

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v14

    if-lez v14, :cond_c6

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v14

    rem-int v14, v3, v14

    if-nez v14, :cond_c6

    move v14, v5

    goto :goto_c7

    :cond_c6
    move v14, v4

    :goto_c7
    move v6, v14

    .line 222
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childInfo":Lcom/miui/autoui/ViewExtras;
    .end local v12    # "layout":Landroid/text/Layout;
    .end local v13    # "absoluteGravity":I
    :goto_c8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_28

    .line 248
    .end local v9    # "i":I
    :cond_cc
    if-eqz v8, :cond_f1

    .line 249
    if-nez v6, :cond_de

    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    sub-int v4, v7, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_f1

    .line 250
    :cond_de
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_df
    if-ge v4, v1, :cond_f1

    .line 251
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v5

    sget-object v9, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v5, v9}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 250
    add-int/lit8 v4, v4, 0x1

    goto :goto_df

    .line 255
    .end local v4    # "i":I
    :cond_f1
    return-void
.end method

.method private blacklist checkLinearVertical(Landroid/widget/LinearLayout;Lcom/miui/autoui/ViewExtras;)V
    .registers 14
    .param p1, "view"    # Landroid/widget/LinearLayout;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 258
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getGravity()I

    move-result v0

    const v1, 0x800007

    and-int/2addr v0, v1

    .line 259
    .local v0, "hgrav":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6a

    .line 260
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 261
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v3

    .line 262
    .local v3, "childInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 263
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_67

    .line 264
    move-object v5, v4

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 265
    .local v5, "ll":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_29

    move v6, v0

    goto :goto_2b

    :cond_29
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 266
    .local v6, "gravity":I
    :goto_2b
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v8

    invoke-static {v6, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    .line 267
    .local v8, "absoluteGravity":I
    and-int/lit8 v9, v8, 0x7

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3e

    .line 268
    sget-object v9, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v3, v9}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_48

    .line 269
    :cond_3e
    and-int/lit8 v9, v8, 0x7

    const/4 v10, 0x5

    if-ne v9, v10, :cond_48

    .line 270
    sget-object v9, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v3, v9}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 272
    :cond_48
    :goto_48
    instance-of v9, v2, Landroid/widget/Button;

    if-eqz v9, :cond_67

    iget v9, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v9, v7, :cond_67

    .line 274
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 275
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v7

    if-nez v7, :cond_67

    .line 276
    invoke-virtual {v3}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 277
    sget-object v7, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v3, v7}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 259
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childInfo":Lcom/miui/autoui/ViewExtras;
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "ll":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "gravity":I
    .end local v8    # "absoluteGravity":I
    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 281
    .end local v1    # "i":I
    :cond_6a
    return-void
.end method

.method private blacklist checkRelativeChildAlign(Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Lcom/miui/autoui/ViewExtras;)V
    .registers 12
    .param p1, "group"    # Landroid/widget/RelativeLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "lp"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "childInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 170
    instance-of v0, p3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_c5

    .line 171
    move-object v0, p3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 172
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v1

    const/16 v2, 0xe

    if-nez v1, :cond_a3

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_a3

    .line 179
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    if-nez v2, :cond_2f

    :cond_27
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    if-eqz v2, :cond_36

    .line 180
    :cond_2f
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p4, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto/16 :goto_c5

    .line 181
    :cond_36
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    if-nez v2, :cond_9d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v1

    if-eqz v1, :cond_45

    goto :goto_9d

    .line 183
    :cond_45
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v1

    if-eqz v1, :cond_52

    .line 184
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p4, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto/16 :goto_c5

    .line 185
    :cond_52
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    const/4 v3, 0x7

    if-eqz v2, :cond_7b

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v4

    if-eq v2, v4, :cond_65

    goto :goto_7b

    .line 197
    :cond_65
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 198
    .local v1, "targetView":Landroid/view/View;
    if-eqz v1, :cond_c5

    .line 199
    invoke-static {v1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v2

    .line 200
    .local v2, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v2}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_c5

    .line 186
    .end local v1    # "targetView":Landroid/view/View;
    .end local v2    # "viewInfo":Lcom/miui/autoui/ViewExtras;
    :cond_7b
    :goto_7b
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    if-eqz v2, :cond_c5

    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v1

    .line 188
    .local v1, "targetViewId":I
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 189
    .local v2, "targetView":Landroid/view/View;
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_9c

    .line 190
    invoke-static {v2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v4

    .line 191
    .local v4, "info":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v4}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v5

    sget-object v6, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v5, v6, :cond_9c

    .line 192
    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 195
    .end local v1    # "targetViewId":I
    .end local v2    # "targetView":Landroid/view/View;
    .end local v4    # "info":Lcom/miui/autoui/ViewExtras;
    :cond_9c
    goto :goto_c5

    .line 182
    :cond_9d
    :goto_9d
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p4, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_c5

    .line 173
    :cond_a3
    :goto_a3
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p4, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 174
    invoke-static {p2}, Lcom/miui/autoui/utils/ViewProcessor;->getTextLayout(Landroid/view/View;)Landroid/text/Layout;

    move-result-object v1

    .line 175
    .local v1, "layout":Landroid/text/Layout;
    instance-of v3, p2, Landroid/widget/TextView;

    if-eqz v3, :cond_c5

    iget v3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_c5

    if-eqz v1, :cond_c5

    .line 176
    invoke-virtual {v1}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-eq v3, v4, :cond_c5

    .line 177
    move-object v3, p2

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 204
    .end local v0    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "layout":Landroid/text/Layout;
    :cond_c5
    :goto_c5
    return-void
.end method

.method private blacklist getRealWidth(Landroid/widget/ImageView;)I
    .registers 4
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 141
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private blacklist isMatchParent(Landroid/text/Layout;Landroid/view/View;)Z
    .registers 9
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "view"    # Landroid/view/View;

    .line 360
    const/4 v0, 0x1

    .line 361
    .local v0, "isMatchParent":Z
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 362
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

    .line 363
    .local v2, "isMatchView":Z
    :cond_1b
    instance-of v3, v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    if-eqz v3, :cond_30

    .line 364
    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2e

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v4, :cond_35

    .line 365
    :cond_2e
    const/4 v0, 0x0

    goto :goto_35

    .line 368
    :cond_30
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v4, :cond_35

    .line 369
    const/4 v0, 0x0

    .line 372
    :cond_35
    :goto_35
    or-int v3, v0, v2

    return v3
.end method

.method private blacklist isNeedBlur(Landroid/widget/ImageView;)Z
    .registers 6
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 439
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 440
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 441
    return v2

    .line 443
    :cond_c
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 444
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_13

    .line 445
    return v2

    .line 447
    :cond_13
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isBackgroundImage()Z

    move-result v3

    if-nez v3, :cond_21

    .line 448
    const/4 v2, 0x1

    return v2

    .line 450
    :cond_21
    return v2
.end method

.method private blacklist needAnalyze(Lcom/miui/autoui/ViewExtras;)Z
    .registers 3
    .param p1, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 125
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 126
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->isFloatIcon()Z

    move-result v0

    if-nez v0, :cond_14

    .line 127
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 125
    :goto_15
    return v0
.end method


# virtual methods
.method public blacklist onUpdateDirtyDisplayList(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 55
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_19

    .line 56
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 57
    .local v0, "rootInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getReactRootView()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    .line 58
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->reset()V

    .line 60
    :cond_16
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;->analyzeView(Landroid/view/View;)V

    .line 62
    .end local v0    # "rootInfo":Lcom/miui/autoui/ViewExtras;
    :cond_19
    return-void
.end method
