.class public Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;
.super Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;
.source "ActivityAutoUIPolicy.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "AutoUI_ActivityAutoUIPolicy"


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 46
    new-instance v0, Lcom/miui/autoui/policy/activity/ActivityAutoUIMeasure;

    invoke-direct {v0}, Lcom/miui/autoui/policy/activity/ActivityAutoUIMeasure;-><init>()V

    new-instance v1, Lcom/miui/autoui/policy/activity/ActivityAutoUILayout;

    invoke-direct {v1}, Lcom/miui/autoui/policy/activity/ActivityAutoUILayout;-><init>()V

    new-instance v2, Lcom/miui/autoui/policy/activity/ActivityAutoUIDraw;

    invoke-direct {v2}, Lcom/miui/autoui/policy/activity/ActivityAutoUIDraw;-><init>()V

    new-instance v3, Lcom/miui/autoui/policy/activity/ActivityAutoUIEvent;

    invoke-direct {v3}, Lcom/miui/autoui/policy/activity/ActivityAutoUIEvent;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;-><init>(Lcom/miui/autoui/policy/api/IAutoUIMeasure;Lcom/miui/autoui/policy/api/IAutoUILayout;Lcom/miui/autoui/policy/api/IAutoUIDraw;Lcom/miui/autoui/policy/api/IAutoUIEvent;)V

    .line 48
    return-void
.end method

.method private blacklist afterAnalyzeBackground(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 417
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isBackgroundImage()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 418
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isBackgroundImage(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 419
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    .line 420
    sget-object v2, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v2}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 421
    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setNeedBlur(Z)V

    .line 422
    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setBackgroundImage(Z)V

    .line 424
    :cond_1c
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isIcon(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 425
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 426
    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setIcon(Z)V

    .line 427
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->checkBrotherView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 429
    :cond_2d
    return-void
.end method

.method private blacklist afterAnalyzeImageView(Landroid/widget/ImageView;Lcom/miui/autoui/ViewExtras;)V
    .registers 5
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 399
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v0

    if-nez v0, :cond_30

    .line 400
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_26

    .line 401
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_26

    .line 402
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_26

    .line 403
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_30

    .line 404
    :cond_26
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    .line 405
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_4f

    .line 406
    :cond_30
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isFloatIcon()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 407
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 408
    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setNeedBlur(Z)V

    goto :goto_4f

    .line 410
    :cond_40
    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    .line 411
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 412
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->isNeedBlur(Landroid/widget/ImageView;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setNeedBlur(Z)V

    .line 414
    :goto_4f
    return-void
.end method

.method private blacklist afterAnalyzeLinearLayout(Landroid/widget/LinearLayout;Lcom/miui/autoui/ViewExtras;)V
    .registers 4
    .param p1, "view"    # Landroid/widget/LinearLayout;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 216
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    .line 217
    .local v0, "orientation":I
    if-nez v0, :cond_a

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->checkLinearHorizontal(Landroid/widget/LinearLayout;Lcom/miui/autoui/ViewExtras;)V

    goto :goto_d

    .line 220
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->checkLinearVertical(Landroid/widget/LinearLayout;Lcom/miui/autoui/ViewExtras;)V

    .line 222
    :goto_d
    return-void
.end method

.method private blacklist afterAnalyzeRelativeLayout(Landroid/widget/RelativeLayout;Lcom/miui/autoui/ViewExtras;)V
    .registers 8
    .param p1, "group"    # Landroid/widget/RelativeLayout;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 168
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 169
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 170
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1b

    .line 171
    invoke-static {v1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v3

    .line 172
    .local v3, "childInfo":Lcom/miui/autoui/ViewExtras;
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->checkRelativeChildAlign(Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Lcom/miui/autoui/ViewExtras;)V

    .line 167
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "childInfo":Lcom/miui/autoui/ViewExtras;
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    .end local v0    # "i":I
    :cond_1e
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->afterAnalyzeBackground(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 176
    return-void
.end method

.method private blacklist afterAnalyzeTextView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 293
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getTextLayout(Landroid/view/View;)Landroid/text/Layout;

    move-result-object v0

    .line 294
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_101

    .line 295
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 297
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v3

    .line 298
    .local v3, "parentInfo":Lcom/miui/autoui/ViewExtras;
    const/4 v4, 0x0

    if-eqz v3, :cond_3d

    .line 299
    invoke-virtual {v3}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 300
    invoke-virtual {v3}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 301
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

    .line 303
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    goto/16 :goto_101

    .line 304
    :cond_3d
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4c

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_101

    .line 305
    :cond_4c
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    if-ne v5, v1, :cond_101

    .line 306
    invoke-direct {p0, v0, p1}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->isMatchParent(Landroid/text/Layout;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 308
    .local v4, "group":Landroid/view/ViewGroup;
    if-eqz v4, :cond_86

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    if-eq v5, v6, :cond_86

    .line 309
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

    .line 310
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 312
    :cond_83
    invoke-direct {p0, p1, v2, v4}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->hookConstraintLayoutAlignment(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/ViewGroup;)V

    .line 314
    .end local v4    # "group":Landroid/view/ViewGroup;
    :cond_86
    goto/16 :goto_101

    :cond_88
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_bc

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 316
    .local v4, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v5

    if-ne v5, v1, :cond_bb

    .line 317
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9d
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_bb

    .line 318
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 319
    .local v5, "child":Landroid/view/View;
    invoke-static {v5}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v6

    .line 320
    .local v6, "info":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v6}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v7

    sget-object v8, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v7, v8, :cond_b8

    .line 321
    sget-object v7, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v7}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 317
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "info":Lcom/miui/autoui/ViewExtras;
    :cond_b8
    add-int/lit8 v1, v1, 0x1

    goto :goto_9d

    .line 325
    .end local v1    # "i":I
    .end local v4    # "ll":Landroid/widget/LinearLayout;
    :cond_bb
    goto :goto_101

    .line 326
    :cond_bc
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v5

    .line 327
    .local v5, "paragraphAlignment":Landroid/text/Layout$Alignment;
    sget-object v6, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v5}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_102

    goto :goto_101

    .line 349
    :pswitch_cc
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_101

    .line 346
    :pswitch_d2
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 347
    goto :goto_101

    .line 343
    :pswitch_d8
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 344
    goto :goto_101

    .line 336
    :pswitch_de
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    if-ne v4, v1, :cond_ea

    .line 337
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_101

    .line 339
    :cond_ea
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 341
    goto :goto_101

    .line 329
    :pswitch_f0
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    if-ne v4, v1, :cond_fc

    .line 330
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_101

    .line 332
    :cond_fc
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 355
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "parentInfo":Lcom/miui/autoui/ViewExtras;
    .end local v5    # "paragraphAlignment":Landroid/text/Layout$Alignment;
    :cond_101
    :goto_101
    return-void

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_f0
        :pswitch_de
        :pswitch_d8
        :pswitch_d2
        :pswitch_cc
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
    invoke-direct {p0, v0}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->needAnalyze(Lcom/miui/autoui/ViewExtras;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 110
    return-void

    .line 112
    :cond_b
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_13

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->afterAnalyzeViewGroup(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z

    goto :goto_6d

    .line 114
    :cond_13
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isTextView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 115
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->afterAnalyzeTextView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    goto :goto_6d

    .line 116
    :cond_1d
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isAtomic()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_57

    .line 117
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v1

    .line 118
    .local v1, "realWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_56

    .line 119
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

    .line 120
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    .line 121
    sget-object v2, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v0, v2}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 123
    .end local v1    # "realWidth":I
    :cond_56
    goto :goto_6d

    :cond_57
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_60

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    goto :goto_6d

    .line 126
    :cond_60
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_6a

    .line 127
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->afterAnalyzeImageView(Landroid/widget/ImageView;Lcom/miui/autoui/ViewExtras;)V

    .line 129
    :cond_6a
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->afterAnalyzeBackground(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 131
    :goto_6d
    return-void
.end method

.method private blacklist afterAnalyzeViewGroup(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 154
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    .line 155
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 156
    .local v0, "group":Landroid/view/ViewGroup;
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_12

    .line 157
    move-object v1, p1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, p2}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->afterAnalyzeRelativeLayout(Landroid/widget/RelativeLayout;Lcom/miui/autoui/ViewExtras;)V

    goto :goto_1c

    .line 158
    :cond_12
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1c

    .line 159
    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, p2}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->afterAnalyzeLinearLayout(Landroid/widget/LinearLayout;Lcom/miui/autoui/ViewExtras;)V

    .line 161
    :cond_1c
    :goto_1c
    const/4 v1, 0x1

    return v1

    .line 163
    .end local v0    # "group":Landroid/view/ViewGroup;
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist analyzeView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 63
    return-void

    .line 65
    :cond_9
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->beforeAnalyze(Landroid/view/View;)V

    .line 66
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_24

    .line 67
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 68
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->analyzeView(Landroid/view/View;)V

    .line 68
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 73
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_24
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->afterAnalyzeView(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method private blacklist beforeAnalyze(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .line 77
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 78
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 80
    .local v1, "parentInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isFloatIcon()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 82
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_29

    .line 83
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 84
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gtz v4, :cond_24

    sget-object v4, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    goto :goto_26

    .line 85
    :cond_24
    sget-object v4, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    .line 84
    :goto_26
    invoke-virtual {v0, v4}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 89
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 90
    .local v2, "rootView":Landroid/view/View;
    invoke-static {v2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v3

    .line 92
    .local v3, "rootInfo":Lcom/miui/autoui/ViewExtras;
    instance-of v4, p1, Landroid/widget/ImageView;

    if-eqz v4, :cond_3b

    .line 93
    move-object v4, p1

    check-cast v4, Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->beforeAnalyzeImageView(Landroid/widget/ImageView;)V

    .line 96
    :cond_3b
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isReactRootView(Landroid/view/View;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_45

    .line 97
    invoke-virtual {v3, v5}, Lcom/miui/autoui/ViewExtras;->setReactRootView(I)V

    .line 100
    :cond_45
    if-eqz v1, :cond_56

    .line 101
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v4

    if-nez v4, :cond_53

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 102
    :cond_53
    invoke-virtual {v0, v5}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 105
    :cond_56
    return-void
.end method

.method private blacklist beforeAnalyzeImageView(Landroid/widget/ImageView;)V
    .registers 6
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 140
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 141
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_28

    .line 144
    :cond_d
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->getRealWidth(Landroid/widget/ImageView;)I

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

    .line 145
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/autoui/ViewExtras;->setLargeBitmap(Z)V

    .line 147
    :cond_27
    return-void

    .line 142
    :cond_28
    :goto_28
    return-void
.end method

.method private blacklist checkBrotherView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 433
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_5b

    .line 434
    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 435
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

    .line 436
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    .line 437
    .local v2, "childCount":I
    const/4 v3, 0x2

    if-le v2, v3, :cond_27

    .line 438
    return-void

    .line 440
    :cond_27
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    if-ge v3, v2, :cond_5b

    .line 441
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 442
    .local v4, "child":Landroid/view/View;
    if-ne v4, p1, :cond_31

    .line 443
    goto :goto_58

    .line 445
    :cond_31
    invoke-static {v4}, Lcom/miui/autoui/utils/ViewProcessor;->isRedDot(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 446
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 447
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v5, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v6, :cond_58

    .line 448
    move-object v6, v5

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 449
    .local v6, "rll":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v7

    if-eqz v7, :cond_58

    .line 450
    invoke-static {v4}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v7

    .line 451
    .local v7, "childInfo":Lcom/miui/autoui/ViewExtras;
    sget-object v8, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v8}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 452
    sget-object v8, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v7, v8}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 440
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "rll":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "childInfo":Lcom/miui/autoui/ViewExtras;
    :cond_58
    :goto_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 459
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

    .line 225
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 226
    .local v1, "childCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getGravity()I

    move-result v2

    const v3, 0x800007

    and-int/2addr v2, v3

    .line 227
    .local v2, "hgrav":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 228
    .local v3, "realWidth":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v1, v5, :cond_24

    if-lez v3, :cond_24

    move v6, v5

    goto :goto_25

    :cond_24
    move v6, v4

    .line 229
    .local v6, "isItemChildren":Z
    :goto_25
    const/4 v7, 0x0

    .line 230
    .local v7, "totalChildWidth":I
    const/4 v8, 0x1

    .line 231
    .local v8, "needRecheck":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_28
    if-ge v9, v1, :cond_cc

    .line 232
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 233
    .local v10, "child":Landroid/view/View;
    invoke-static {v10}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v11

    .line 234
    .local v11, "childInfo":Lcom/miui/autoui/ViewExtras;
    invoke-static {v10}, Lcom/miui/autoui/utils/ViewProcessor;->isTextView(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_3d

    invoke-static {v10}, Lcom/miui/autoui/utils/ViewProcessor;->getTextLayout(Landroid/view/View;)Landroid/text/Layout;

    move-result-object v12

    goto :goto_3e

    :cond_3d
    const/4 v12, 0x0

    .line 235
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

    .line 236
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

    .line 237
    const/4 v8, 0x0

    goto :goto_c8

    .line 239
    :cond_70
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v7, v13

    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v13

    invoke-static {v2, v13}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v13

    .line 241
    .local v13, "absoluteGravity":I
    if-ne v13, v5, :cond_85

    .line 242
    sget-object v14, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v11, v14}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_b4

    .line 243
    :cond_85
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_9d

    .line 244
    const/4 v14, 0x3

    if-ne v13, v14, :cond_97

    .line 245
    sget-object v14, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v11, v14}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_b4

    .line 247
    :cond_97
    sget-object v14, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v11, v14}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_b4

    .line 249
    :cond_9d
    const/4 v14, 0x5

    if-eq v13, v14, :cond_af

    invoke-virtual {v11}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v14

    sget-object v15, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v14, v15, :cond_a9

    goto :goto_af

    .line 252
    :cond_a9
    sget-object v14, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v11, v14}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_b4

    .line 250
    :cond_af
    :goto_af
    sget-object v14, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v11, v14}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 254
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

    .line 231
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childInfo":Lcom/miui/autoui/ViewExtras;
    .end local v12    # "layout":Landroid/text/Layout;
    .end local v13    # "absoluteGravity":I
    :goto_c8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_28

    .line 257
    .end local v9    # "i":I
    :cond_cc
    if-eqz v8, :cond_f1

    .line 258
    if-nez v6, :cond_de

    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    sub-int v4, v7, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_f1

    .line 259
    :cond_de
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_df
    if-ge v4, v1, :cond_f1

    .line 260
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v5

    sget-object v9, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v5, v9}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_df

    .line 264
    .end local v4    # "i":I
    :cond_f1
    return-void
.end method

.method private blacklist checkLinearVertical(Landroid/widget/LinearLayout;Lcom/miui/autoui/ViewExtras;)V
    .registers 14
    .param p1, "view"    # Landroid/widget/LinearLayout;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 267
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getGravity()I

    move-result v0

    const v1, 0x800007

    and-int/2addr v0, v1

    .line 268
    .local v0, "hgrav":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6a

    .line 269
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 270
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v3

    .line 271
    .local v3, "childInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 272
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_67

    .line 273
    move-object v5, v4

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 274
    .local v5, "ll":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_29

    move v6, v0

    goto :goto_2b

    :cond_29
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 275
    .local v6, "gravity":I
    :goto_2b
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v8

    invoke-static {v6, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    .line 276
    .local v8, "absoluteGravity":I
    and-int/lit8 v9, v8, 0x7

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3e

    .line 277
    sget-object v9, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v3, v9}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_48

    .line 278
    :cond_3e
    and-int/lit8 v9, v8, 0x7

    const/4 v10, 0x5

    if-ne v9, v10, :cond_48

    .line 279
    sget-object v9, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v3, v9}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 281
    :cond_48
    :goto_48
    instance-of v9, v2, Landroid/widget/Button;

    if-eqz v9, :cond_67

    iget v9, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v9, v7, :cond_67

    .line 283
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 284
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v7

    if-nez v7, :cond_67

    .line 285
    invoke-virtual {v3}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 286
    sget-object v7, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v3, v7}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 268
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childInfo":Lcom/miui/autoui/ViewExtras;
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "ll":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "gravity":I
    .end local v8    # "absoluteGravity":I
    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 290
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

    .line 179
    instance-of v0, p3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_c5

    .line 180
    move-object v0, p3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 181
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

    .line 188
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

    .line 189
    :cond_2f
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p4, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto/16 :goto_c5

    .line 190
    :cond_36
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    if-nez v2, :cond_9d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v1

    if-eqz v1, :cond_45

    goto :goto_9d

    .line 192
    :cond_45
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v1

    if-eqz v1, :cond_52

    .line 193
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p4, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto/16 :goto_c5

    .line 194
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

    .line 206
    :cond_65
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, "targetView":Landroid/view/View;
    if-eqz v1, :cond_c5

    .line 208
    invoke-static {v1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v2

    .line 209
    .local v2, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v2}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_c5

    .line 195
    .end local v1    # "targetView":Landroid/view/View;
    .end local v2    # "viewInfo":Lcom/miui/autoui/ViewExtras;
    :cond_7b
    :goto_7b
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    if-eqz v2, :cond_c5

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v1

    .line 197
    .local v1, "targetViewId":I
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 198
    .local v2, "targetView":Landroid/view/View;
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_9c

    .line 199
    invoke-static {v2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v4

    .line 200
    .local v4, "info":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v4}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v5

    sget-object v6, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v5, v6, :cond_9c

    .line 201
    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 204
    .end local v1    # "targetViewId":I
    .end local v2    # "targetView":Landroid/view/View;
    .end local v4    # "info":Lcom/miui/autoui/ViewExtras;
    :cond_9c
    goto :goto_c5

    .line 191
    :cond_9d
    :goto_9d
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p4, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_c5

    .line 182
    :cond_a3
    :goto_a3
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p4, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 183
    invoke-static {p2}, Lcom/miui/autoui/utils/ViewProcessor;->getTextLayout(Landroid/view/View;)Landroid/text/Layout;

    move-result-object v1

    .line 184
    .local v1, "layout":Landroid/text/Layout;
    instance-of v3, p2, Landroid/widget/TextView;

    if-eqz v3, :cond_c5

    iget v3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_c5

    if-eqz v1, :cond_c5

    .line 185
    invoke-virtual {v1}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-eq v3, v4, :cond_c5

    .line 186
    move-object v3, p2

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 213
    .end local v0    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "layout":Landroid/text/Layout;
    :cond_c5
    :goto_c5
    return-void
.end method

.method private blacklist getRealWidth(Landroid/widget/ImageView;)I
    .registers 4
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 150
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

.method private blacklist hookConstraintLayoutAlignment(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/ViewGroup;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .line 358
    invoke-static {p3}, Lcom/miui/autoui/utils/ViewProcessor;->isConstraintLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 359
    const-string v0, "startToEnd"

    invoke-static {p2, v0}, Lcom/miui/autoui/utils/ReflectUtils;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 360
    .local v0, "startToEndId":I
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_51

    if-lez v0, :cond_51

    .line 362
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 363
    .local v1, "leftView":Landroid/view/View;
    invoke-static {v1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v2

    .line 364
    .local v2, "leftInfo":Lcom/miui/autoui/ViewExtras;
    if-eqz v2, :cond_51

    invoke-virtual {v2}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v3

    sget-object v4, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v3, v4, :cond_51

    .line 365
    invoke-virtual {v2}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 366
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v4

    mul-float/2addr v3, v4

    .line 367
    .local v3, "leftViewDrawRight":F
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v5

    mul-float/2addr v4, v5

    .line 373
    .local v4, "viewLeftAlignLeft":F
    cmpl-float v5, v3, v4

    if-lez v5, :cond_51

    .line 374
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v5

    sget-object v6, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v5, v6}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 379
    .end local v0    # "startToEndId":I
    .end local v1    # "leftView":Landroid/view/View;
    .end local v2    # "leftInfo":Lcom/miui/autoui/ViewExtras;
    .end local v3    # "leftViewDrawRight":F
    .end local v4    # "viewLeftAlignLeft":F
    :cond_51
    return-void
.end method

.method private blacklist isMatchParent(Landroid/text/Layout;Landroid/view/View;)Z
    .registers 9
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "view"    # Landroid/view/View;

    .line 383
    const/4 v0, 0x1

    .line 384
    .local v0, "isMatchParent":Z
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 385
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

    .line 386
    .local v2, "isMatchView":Z
    :cond_1b
    instance-of v3, v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    if-eqz v3, :cond_30

    .line 387
    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2e

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v4, :cond_35

    .line 388
    :cond_2e
    const/4 v0, 0x0

    goto :goto_35

    .line 391
    :cond_30
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v4, :cond_35

    .line 392
    const/4 v0, 0x0

    .line 395
    :cond_35
    :goto_35
    or-int v3, v0, v2

    return v3
.end method

.method private blacklist isNeedBlur(Landroid/widget/ImageView;)Z
    .registers 6
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 462
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 463
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 464
    return v2

    .line 466
    :cond_c
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 467
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_13

    .line 468
    return v2

    .line 470
    :cond_13
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isBackgroundImage()Z

    move-result v3

    if-nez v3, :cond_21

    .line 471
    const/4 v2, 0x1

    return v2

    .line 473
    :cond_21
    return v2
.end method

.method private blacklist needAnalyze(Lcom/miui/autoui/ViewExtras;)Z
    .registers 3
    .param p1, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 134
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 135
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->isFloatIcon()Z

    move-result v0

    if-nez v0, :cond_14

    .line 136
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 134
    :goto_15
    return v0
.end method


# virtual methods
.method public blacklist onUpdateDirtyDisplayList(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 52
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_19

    .line 53
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 54
    .local v0, "rootInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getReactRootView()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    .line 55
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->reset()V

    .line 57
    :cond_16
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;->analyzeView(Landroid/view/View;)V

    .line 59
    .end local v0    # "rootInfo":Lcom/miui/autoui/ViewExtras;
    :cond_19
    return-void
.end method
