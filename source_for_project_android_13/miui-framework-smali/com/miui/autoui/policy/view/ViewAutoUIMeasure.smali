.class public Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;
.super Lcom/miui/autoui/policy/def/DefaultAutoUIMeasure;
.source "ViewAutoUIMeasure.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ViewAutoUIMeasure"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/miui/autoui/policy/def/DefaultAutoUIMeasure;-><init>()V

    return-void
.end method

.method private blacklist adjustCommonViewStatus(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 683
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 684
    .local v0, "parentInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 685
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 686
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isIgnoreWithoutBlur()Z

    move-result v4

    invoke-virtual {p2, v2, v4}, Lcom/miui/autoui/ViewExtras;->setIgnoreWithoutBlur(ZZ)V

    .line 687
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    goto :goto_42

    .line 688
    :cond_21
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v4

    if-nez v4, :cond_35

    :cond_29
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 689
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v5

    if-ne v4, v5, :cond_3c

    .line 690
    :cond_35
    invoke-direct {p0, p1, p2, v2}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->changeStretchState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Z)V

    .line 691
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    goto :goto_42

    .line 693
    :cond_3c
    invoke-direct {p0, p1, p2, v3}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->changeStretchState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Z)V

    .line 694
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 696
    :goto_42
    return-void
.end method

.method private blacklist changeStretchState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Z)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "needStretch"    # Z

    .line 752
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    xor-int/2addr v0, p3

    if-eqz v0, :cond_a

    .line 753
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 755
    :cond_a
    invoke-virtual {p2, p3}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 756
    return-void
.end method

.method private blacklist compressMeasureWidth(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 295
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 296
    .local v0, "viewExtras":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v2

    if-ne v1, v2, :cond_15

    goto :goto_40

    .line 299
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autoui/ViewExtras;->setWidth(I)V

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 301
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 302
    .local v1, "widthMeasureSpec":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 303
    .local v2, "heightMeasureSpec":I
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 304
    return-void

    .line 297
    .end local v1    # "widthMeasureSpec":I
    .end local v2    # "heightMeasureSpec":I
    :cond_40
    :goto_40
    return-void
.end method

.method private blacklist findPagerParent(Landroid/view/View;)Ljava/util/Optional;
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Optional<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation

    .line 597
    if-nez p1, :cond_7

    .line 598
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 600
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 601
    .local v0, "parent":Ljava/lang/Object;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_16

    goto :goto_29

    .line 604
    :cond_16
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 605
    .local v1, "parentView":Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/miui/autoui/utils/ViewProcessor;->isViewPager(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    goto :goto_28

    :cond_24
    invoke-direct {p0, v1}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->findPagerParent(Landroid/view/View;)Ljava/util/Optional;

    move-result-object v2

    :goto_28
    return-object v2

    .line 602
    .end local v1    # "parentView":Landroid/view/ViewGroup;
    :cond_29
    :goto_29
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method private blacklist fullWidthTextureInViewPager(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "measuredSize"    # [I

    .line 581
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->findPagerParent(Landroid/view/View;)Ljava/util/Optional;

    move-result-object v0

    .line 582
    .local v0, "viewPager":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/view/ViewGroup;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_b

    .line 583
    return-void

    .line 585
    :cond_b
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 586
    .local v1, "pager":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    .line 587
    .local v2, "pagerHeight":I
    const/4 v3, 0x1

    if-lez v2, :cond_28

    aget v4, p3, v3

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    sub-int v4, v2, v4

    int-to-float v5, v2

    const v6, 0x3d4ccccd    # 0.05f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-gt v4, v5, :cond_2e

    :cond_28
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ne v4, v3, :cond_2f

    .line 588
    :cond_2e
    return-void

    .line 591
    :cond_2f
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 592
    invoke-direct {p0, v1}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->ignoreTargetView(Landroid/view/View;)V

    .line 593
    invoke-direct {p0, p2, p3}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->fullWidthTextureView(Lcom/miui/autoui/ViewExtras;[I)V

    .line 594
    return-void
.end method

.method private blacklist fullWidthTextureView(Lcom/miui/autoui/ViewExtras;[I)V
    .registers 8
    .param p1, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p2, "measuredSize"    # [I

    .line 567
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setNeedOriginalLayout(Z)V

    .line 568
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 569
    aget v1, p2, v0

    .line 570
    .local v1, "widthMeasureSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 571
    .local v2, "measureSpecWidth":I
    invoke-virtual {p1, v2}, Lcom/miui/autoui/ViewExtras;->setWidth(I)V

    .line 572
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v3

    if-gt v2, v3, :cond_22

    .line 574
    int-to-float v3, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 576
    :cond_22
    invoke-virtual {p1, v2}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 577
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v3

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    aput v3, p2, v0

    .line 578
    return-void
.end method

.method private blacklist getTextureViewAreaHeight(Landroid/view/View;I)I
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "heightMeasureSpec"    # I

    .line 550
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 551
    .local v0, "measureHeight":I
    if-lez v0, :cond_7

    .line 552
    return v0

    .line 554
    :cond_7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 555
    .local v1, "measureMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 556
    .local v2, "measureSize":I
    if-eqz v1, :cond_14

    if-lez v2, :cond_14

    .line 557
    return v2

    .line 559
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 560
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_21

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_21

    .line 561
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v4

    .line 563
    :cond_21
    return v0
.end method

.method private blacklist getTextureViewAreaWidth(Landroid/view/View;I)I
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I

    .line 533
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 534
    .local v0, "measuredWidth":I
    if-lez v0, :cond_7

    .line 535
    return v0

    .line 537
    :cond_7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 538
    .local v1, "measureMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 539
    .local v2, "measureSize":I
    if-eqz v1, :cond_14

    if-lez v2, :cond_14

    .line 540
    return v2

    .line 542
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 543
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_21

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v4, :cond_21

    .line 544
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v4

    .line 546
    :cond_21
    return v0
.end method

.method private blacklist ignoreTargetView(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 609
    if-nez p1, :cond_3

    .line 610
    return-void

    .line 612
    :cond_3
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 613
    .local v0, "viewExtras":Lcom/miui/autoui/ViewExtras;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/autoui/ViewExtras;->setNeedOriginalLayout(Z)V

    .line 614
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 615
    invoke-virtual {v0, v1}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 616
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-nez v1, :cond_17

    .line 617
    return-void

    .line 619
    :cond_17
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 620
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 621
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_2b

    .line 622
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 623
    .local v4, "child":Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->ignoreTargetView(Landroid/view/View;)V

    .line 621
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 625
    .end local v3    # "i":I
    :cond_2b
    return-void
.end method

.method private blacklist isChildrenCompressed(Landroid/view/ViewGroup;)Z
    .registers 8
    .param p1, "group"    # Landroid/view/ViewGroup;

    .line 280
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 281
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_35

    .line 282
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 283
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_32

    .line 284
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_32

    .line 285
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_32

    .line 286
    invoke-static {v2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v3

    move-object v4, v3

    .local v4, "info":Lcom/miui/autoui/ViewExtras;
    if-eqz v3, :cond_32

    .line 287
    invoke-virtual {v4}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v3, v5, :cond_32

    invoke-virtual {v4}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 288
    const/4 v3, 0x1

    return v3

    .line 281
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "info":Lcom/miui/autoui/ViewExtras;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 291
    .end local v1    # "i":I
    :cond_35
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isChildrenNeedStretch(Landroid/view/View;)Z
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .line 239
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 240
    return v1

    .line 242
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 243
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 244
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_29

    .line 245
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 246
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_26

    .line 247
    invoke-static {v4}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v5

    .line 248
    .local v5, "childInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v5}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 249
    const/4 v1, 0x1

    return v1

    .line 244
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childInfo":Lcom/miui/autoui/ViewExtras;
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 253
    .end local v3    # "i":I
    :cond_29
    return v1
.end method

.method private blacklist isNeedCompress(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 257
    const/4 v0, 0x0

    if-eqz p1, :cond_52

    if-nez p2, :cond_6

    goto :goto_52

    .line 260
    :cond_6
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 261
    return v2

    .line 263
    :cond_e
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-ne v1, v3, :cond_1f

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 264
    return v2

    .line 266
    :cond_1f
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_51

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 268
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_51

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v4

    if-gt v3, v4, :cond_51

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_51

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->isChildrenCompressed(Landroid/view/ViewGroup;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 272
    return v2

    .line 275
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_51
    return v0

    .line 258
    :cond_52
    :goto_52
    return v0
.end method

.method private blacklist isNeedStretch(Landroid/view/View;)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .line 227
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 228
    .local v0, "viewExtras":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 229
    return v2

    .line 231
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 232
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->isChildrenNeedStretch(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2f

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2f

    move v3, v2

    goto :goto_30

    :cond_2f
    move v3, v4

    .line 233
    .local v3, "isNeedStretch":Z
    :goto_30
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v5

    if-nez v5, :cond_3f

    if-eqz v1, :cond_3f

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3f

    move v5, v2

    goto :goto_40

    :cond_3f
    move v5, v4

    .line 234
    .local v5, "isFirstSituation":Z
    :goto_40
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getWidth()I

    move-result v6

    if-lez v6, :cond_58

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getWidth()I

    move-result v7

    if-eq v6, v7, :cond_58

    move v6, v2

    goto :goto_59

    :cond_58
    move v6, v4

    .line 235
    .local v6, "isSecondSituation":Z
    :goto_59
    if-eqz v3, :cond_60

    if-nez v5, :cond_5f

    if-eqz v6, :cond_60

    :cond_5f
    goto :goto_61

    :cond_60
    move v2, v4

    :goto_61
    return v2
.end method

.method private blacklist measureCompScreenWidthView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "measuredSize"    # [I

    .line 629
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 630
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 631
    return v2

    .line 633
    :cond_a
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 634
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v4

    if-eq v3, v4, :cond_20

    .line 635
    return v2

    .line 637
    :cond_20
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 638
    .local v3, "parent":Landroid/view/ViewParent;
    instance-of v4, v3, Landroid/view/View;

    if-nez v4, :cond_29

    .line 639
    return v2

    .line 641
    :cond_29
    move-object v4, v3

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v4

    .line 642
    .local v4, "parentInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v4}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-virtual {v4}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 643
    return v2

    .line 645
    :cond_3d
    move-object v5, v3

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 646
    .local v5, "parentLp":Landroid/view/ViewGroup$LayoutParams;
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6f

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v7, :cond_6f

    .line 647
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 648
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v7

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v7, v8

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v7, v8

    invoke-virtual {p2, v7}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 649
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 650
    .local v7, "widthSpec":I
    aput v7, p3, v2

    .line 651
    return v6

    .line 653
    .end local v7    # "widthSpec":I
    :cond_6f
    return v2
.end method

.method private blacklist measureFloatView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "measuredSize"    # [I

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 398
    .local v0, "rootView":Landroid/view/View;
    if-ne p1, v0, :cond_b

    invoke-static {v0}, Lcom/miui/autoui/utils/ViewProcessor;->isFloatView(Landroid/view/View;)Z

    move-result v1

    goto :goto_13

    :cond_b
    invoke-static {v0}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isFloat()Z

    move-result v1

    :goto_13
    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setFloat(Z)V

    .line 400
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isFloat()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4b

    if-ne v0, p1, :cond_4b

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4b

    .line 402
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v1

    .line 403
    .local v1, "realWidth":I
    int-to-float v4, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 404
    .local v4, "expectedWidth":I
    aget v5, p3, v2

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    if-ne v5, v4, :cond_4b

    .line 405
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setFloat(Z)V

    .line 409
    .end local v1    # "realWidth":I
    .end local v4    # "expectedWidth":I
    :cond_4b
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isFloat()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 410
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->performMeasureFloatView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)V

    .line 411
    return v3

    .line 414
    :cond_55
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    aget v4, p3, v2

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 415
    .local v1, "rootWidth":I
    if-lez v1, :cond_73

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v4

    if-ge v1, v4, :cond_73

    .line 416
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setFloat(Z)V

    .line 417
    return v3

    .line 419
    :cond_73
    return v2
.end method

.method private blacklist measurePolicyView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "measuredSize"    # [I

    .line 443
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isRecyclerView(Landroid/view/View;)Z

    move-result v0

    .line 444
    .local v0, "isRecyclerView":Z
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v1

    if-nez v1, :cond_f

    if-eqz v0, :cond_f

    .line 445
    invoke-static {p1, p2}, Lcom/miui/autoui/utils/ViewProcessor;->stretchSpanForHorizontalRecycler(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 447
    :cond_f
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getViewPolicy()I

    move-result v1

    .line 448
    .local v1, "viewPolicy":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_33

    .line 449
    invoke-direct {p0, p1, p2, v3}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->changeStretchState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Z)V

    .line 450
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 451
    aget v4, p3, v2

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aget v5, p3, v2

    invoke-static {v4, v5}, Lcom/miui/autoui/utils/ViewProcessor;->makeMeasureSpec(II)I

    move-result v4

    .line 452
    .local v4, "fixWidthMeasureSpec":I
    aput v4, p3, v2

    .line 453
    return v3

    .line 454
    .end local v4    # "fixWidthMeasureSpec":I
    :cond_33
    const/4 v4, 0x2

    const/4 v5, -0x1

    if-ne v1, v4, :cond_4f

    .line 455
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v4

    if-nez v4, :cond_48

    if-eqz v0, :cond_48

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getRecyclerViewModifyState()I

    move-result v4

    if-ne v4, v5, :cond_48

    .line 456
    invoke-static {p1, p2}, Lcom/miui/autoui/utils/ViewProcessor;->stretchSpanForVerticalRecycler(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 458
    :cond_48
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getRecyclerViewModifyState()I

    move-result v4

    if-ne v4, v3, :cond_7e

    .line 459
    return v3

    .line 461
    :cond_4f
    const/4 v4, 0x3

    if-ne v1, v4, :cond_59

    .line 462
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 463
    invoke-virtual {p2, v2}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 464
    return v3

    .line 465
    :cond_59
    const/16 v4, 0xf

    if-ne v1, v4, :cond_7e

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 467
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v6, v5, :cond_7e

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_7e

    .line 468
    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v5

    div-float/2addr v2, v5

    float-to-int v2, v2

    aget v5, p3, v3

    invoke-static {v2, v5}, Lcom/miui/autoui/utils/ViewProcessor;->makeMeasureSpec(II)I

    move-result v2

    .line 469
    .local v2, "fixHeightMeasureSpec":I
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 470
    aput v2, p3, v3

    .line 471
    return v3

    .line 474
    .end local v2    # "fixHeightMeasureSpec":I
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7e
    return v2
.end method

.method private blacklist measureReactRootView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "measuredSize"    # [I

    .line 478
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isReactRootView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 479
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 480
    return v0

    .line 482
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist measureRootStretchView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "measuredSize"    # [I

    .line 657
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 658
    .local v0, "parent":Landroid/view/ViewParent;
    invoke-static {v0}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 659
    .local v1, "parentInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_65

    if-eqz v1, :cond_65

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-nez v2, :cond_65

    .line 660
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->needRefreshCompressStatus(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 661
    invoke-direct {p0, p2}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->resetCompressStatus(Lcom/miui/autoui/ViewExtras;)V

    .line 663
    :cond_20
    aget v2, p3, v3

    .line 665
    .local v2, "widthMeasureSpec":I
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 666
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 667
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v4

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    if-eq v4, v5, :cond_57

    .line 668
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v4

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-eq v4, v5, :cond_57

    .line 670
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 672
    :cond_57
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v4

    invoke-static {v4, v2}, Lcom/miui/autoui/utils/ViewProcessor;->makeMeasureSpec(II)I

    move-result v4

    .local v4, "widthSpec":I
    goto :goto_61

    .line 674
    .end local v4    # "widthSpec":I
    :cond_60
    move v4, v2

    .line 676
    .restart local v4    # "widthSpec":I
    :goto_61
    aput v4, p3, v3

    .line 677
    const/4 v3, 0x1

    return v3

    .line 679
    .end local v2    # "widthMeasureSpec":I
    .end local v4    # "widthSpec":I
    :cond_65
    return v3
.end method

.method private blacklist measureSpecialView(Ljava/lang/CharSequence;Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z
    .registers 7
    .param p1, "windowTitle"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p4, "measuredSize"    # [I

    .line 376
    invoke-virtual {p3}, Lcom/miui/autoui/ViewExtras;->getViewPolicy()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 377
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/autoui/AutoPolicyUtils;->getViewPolicy(Ljava/lang/String;Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/miui/autoui/ViewExtras;->setViewPolicy(I)V

    .line 380
    :cond_16
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->measureFloatView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z

    move-result v0

    .line 381
    .local v0, "handled":Z
    if-nez v0, :cond_20

    .line 382
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->measurePolicyView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z

    move-result v0

    .line 384
    :cond_20
    if-nez v0, :cond_26

    .line 385
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->measureReactRootView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z

    move-result v0

    .line 387
    :cond_26
    if-nez v0, :cond_2c

    .line 388
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->measureTextureView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z

    move-result v0

    .line 390
    :cond_2c
    if-nez v0, :cond_32

    .line 391
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->measureCompScreenWidthView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z

    move-result v0

    .line 393
    :cond_32
    return v0
.end method

.method private blacklist measureTextureView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "measuredSize"    # [I

    .line 486
    instance-of v0, p1, Landroid/view/TextureView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 487
    return v1

    .line 489
    :cond_6
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 490
    return v1

    .line 492
    :cond_d
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedOriginalLayout()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 494
    aget v0, p3, v1

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 495
    .local v0, "width":I
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getWidth()I

    move-result v2

    if-eq v0, v2, :cond_3c

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v2

    if-eq v0, v2, :cond_3c

    .line 496
    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setWidth(I)V

    .line 497
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v2

    if-gt v0, v2, :cond_39

    .line 499
    int-to-float v2, v0

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 501
    :cond_39
    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 503
    :cond_3c
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v2

    aget v3, p3, v1

    invoke-static {v2, v3}, Lcom/miui/autoui/utils/ViewProcessor;->makeMeasureSpec(II)I

    move-result v2

    .line 504
    .local v2, "widthSpec":I
    aput v2, p3, v1

    .line 505
    .end local v0    # "width":I
    .end local v2    # "widthSpec":I
    goto :goto_4c

    .line 507
    :cond_49
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->stretchTextureView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)V

    .line 509
    :goto_4c
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist needRefreshCompressStatus(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 761
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6b

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_e

    goto :goto_6b

    .line 764
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 765
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_6a

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    move-object v3, v2

    .local v3, "parentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v4, v2

    .local v4, "parentLp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_22

    goto :goto_6a

    .line 768
    :cond_22
    const/4 v2, 0x0

    .line 769
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 770
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v6, :cond_36

    .line 771
    if-eqz v5, :cond_35

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v6, :cond_32

    goto :goto_35

    .line 774
    :cond_32
    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5a

    .line 772
    :cond_35
    :goto_35
    return v1

    .line 776
    :cond_36
    if-eqz v5, :cond_69

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3e

    goto :goto_69

    .line 779
    :cond_3e
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int v2, v6, v7

    .line 780
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_5a

    .line 781
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 782
    .local v6, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v7, v2, v7

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v2, v7, v8

    .line 785
    .end local v6    # "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5a
    :goto_5a
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v6

    int-to-float v7, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    if-eq v6, v7, :cond_68

    const/4 v1, 0x1

    :cond_68
    return v1

    .line 777
    :cond_69
    :goto_69
    return v1

    .line 766
    .end local v2    # "width":I
    .end local v3    # "parentView":Landroid/view/View;
    .end local v4    # "parentLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6a
    :goto_6a
    return v1

    .line 762
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_6b
    :goto_6b
    return v1
.end method

.method private blacklist performMeasureFloatView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "measuredSize"    # [I

    .line 423
    invoke-direct {p0, p2}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->processedLargeBitmapGroup(Lcom/miui/autoui/ViewExtras;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 424
    return-void

    .line 427
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 428
    aget v1, p3, v0

    .line 429
    .local v1, "widthMeasureSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 430
    .local v2, "widthSize":I
    move v3, v1

    .line 432
    .local v3, "newMeasureSpec":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ne v2, v4, :cond_38

    .line 434
    invoke-virtual {p2, v2}, Lcom/miui/autoui/ViewExtras;->setWidth(I)V

    .line 435
    int-to-float v4, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 437
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v4

    invoke-static {v4, v1}, Lcom/miui/autoui/utils/ViewProcessor;->makeMeasureSpec(II)I

    move-result v3

    .line 439
    :cond_38
    aput v3, p3, v0

    .line 440
    return-void
.end method

.method private blacklist preProcessLargeBitmapGroup(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 140
    move-object v0, p1

    .line 141
    .local v0, "targetView":Landroid/view/View;
    :goto_1
    invoke-static {v0}, Lcom/miui/autoui/utils/ViewProcessor;->isRecyclerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-static {v0}, Lcom/miui/autoui/utils/ViewProcessor;->isViewPager(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, "parentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 144
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_19

    .line 145
    move-object v1, v2

    check-cast v1, Landroid/view/View;

    .line 147
    :cond_19
    if-eqz v1, :cond_32

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-ne v3, v4, :cond_32

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-eq v3, v4, :cond_30

    .line 150
    goto :goto_32

    .line 152
    :cond_30
    move-object v0, v1

    .line 153
    .end local v1    # "parentView":Landroid/view/View;
    .end local v2    # "parent":Landroid/view/ViewParent;
    goto :goto_1

    .line 154
    :cond_32
    :goto_32
    invoke-static {v0}, Lcom/miui/autoui/utils/ViewProcessor;->isRecyclerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 155
    invoke-static {v0}, Lcom/miui/autoui/utils/ViewProcessor;->isViewPager(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 156
    :cond_3e
    invoke-static {v0}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 157
    .local v1, "targetViewExtras":Lcom/miui/autoui/ViewExtras;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/miui/autoui/ViewExtras;->setIgnoreWithoutBlur(ZZ)V

    .line 158
    invoke-virtual {v1, v2}, Lcom/miui/autoui/ViewExtras;->setLargeBitmap(Z)V

    .line 159
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 160
    invoke-virtual {p2, v2}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 161
    invoke-direct {p0, v0}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->compressMeasureWidth(Landroid/view/View;)V

    .line 163
    .end local v1    # "targetViewExtras":Lcom/miui/autoui/ViewExtras;
    :cond_53
    return-void
.end method

.method private blacklist processLargeBitmapGroup(Landroid/view/View;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;

    .line 166
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    .line 167
    return-void

    .line 169
    :cond_5
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 170
    .local v0, "viewExtras":Lcom/miui/autoui/ViewExtras;
    invoke-direct {p0, v0}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->processedLargeBitmapGroup(Lcom/miui/autoui/ViewExtras;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 171
    return-void

    .line 173
    :cond_10
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 174
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 175
    .local v2, "childCount":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_1d

    move v5, v4

    goto :goto_1e

    :cond_1d
    move v5, v3

    .line 176
    .local v5, "isLargeBitmapGroup":Z
    :goto_1e
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1f
    if-ge v6, v2, :cond_3a

    .line 177
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 178
    .local v7, "child":Landroid/view/View;
    invoke-static {v7}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v8

    .line 179
    .local v8, "childInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v8}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v9

    if-eqz v9, :cond_39

    invoke-virtual {v8}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v9

    if-nez v9, :cond_36

    goto :goto_39

    .line 176
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childInfo":Lcom/miui/autoui/ViewExtras;
    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 180
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "childInfo":Lcom/miui/autoui/ViewExtras;
    :cond_39
    :goto_39
    const/4 v5, 0x0

    .line 184
    .end local v6    # "i":I
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childInfo":Lcom/miui/autoui/ViewExtras;
    :cond_3a
    if-eqz v5, :cond_7d

    .line 185
    const/4 v6, 0x0

    .local v6, "i2":I
    :goto_3d
    if-ge v6, v2, :cond_53

    .line 186
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 187
    .local v7, "child2":Landroid/view/View;
    invoke-static {v7}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v8

    .line 188
    .local v8, "childInfo2":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v8, v3}, Lcom/miui/autoui/ViewExtras;->setLargeBitmap(Z)V

    .line 189
    invoke-virtual {v8, v3}, Lcom/miui/autoui/ViewExtras;->setAutoUIGroup(Z)V

    .line 190
    invoke-virtual {v8, v3}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 185
    .end local v7    # "child2":Landroid/view/View;
    .end local v8    # "childInfo2":Lcom/miui/autoui/ViewExtras;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    .line 192
    .end local v6    # "i2":I
    :cond_53
    move-object v3, p1

    .line 193
    .local v3, "target":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 194
    .local v6, "parent":Landroid/view/ViewParent;
    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_6a

    .line 195
    move-object v7, v6

    check-cast v7, Landroid/view/View;

    .line 196
    .local v7, "parentView":Landroid/view/View;
    instance-of v8, v7, Landroid/widget/RelativeLayout;

    .line 197
    .local v8, "isMultiMeasureView":Z
    if-eqz v8, :cond_6a

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-lez v9, :cond_6a

    .line 198
    move-object v3, v7

    .line 201
    .end local v7    # "parentView":Landroid/view/View;
    .end local v8    # "isMultiMeasureView":Z
    :cond_6a
    invoke-static {v3}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v7

    .line 202
    .local v7, "targetInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v7, v4}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 203
    invoke-virtual {v7, v4}, Lcom/miui/autoui/ViewExtras;->setLargeBitmap(Z)V

    .line 204
    invoke-virtual {v7, v4}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 205
    invoke-virtual {v7, v4}, Lcom/miui/autoui/ViewExtras;->setAutoUIGroup(Z)V

    .line 206
    invoke-direct {p0, v3}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->compressMeasureWidth(Landroid/view/View;)V

    .line 208
    .end local v3    # "target":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/ViewParent;
    .end local v7    # "targetInfo":Lcom/miui/autoui/ViewExtras;
    :cond_7d
    return-void
.end method

.method private blacklist processLargeBitmapImageView(Landroid/view/View;)Z
    .registers 20
    .param p1, "view"    # Landroid/view/View;

    .line 51
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 52
    return v2

    .line 54
    :cond_a
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v1

    .line 55
    .local v1, "screenRealWidth":I
    invoke-static/range {p1 .. p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v3

    .line 56
    .local v3, "viewExtras":Lcom/miui/autoui/ViewExtras;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 57
    .local v4, "measuredWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 58
    .local v5, "measuredHeight":I
    int-to-float v6, v1

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    if-lt v4, v6, :cond_34

    if-lez v5, :cond_34

    .line 59
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenHeight()I

    move-result v6

    if-ge v5, v6, :cond_34

    const/4 v6, 0x1

    goto :goto_35

    :cond_34
    move v6, v2

    .line 60
    .local v6, "expectedWidthHeight":Z
    :goto_35
    if-eqz v6, :cond_c3

    instance-of v8, v0, Landroid/widget/ImageView;

    if-eqz v8, :cond_c3

    invoke-static/range {p1 .. p1}, Lcom/miui/autoui/utils/ViewProcessor;->isReactImageView(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_c3

    .line 61
    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    .line 62
    .local v8, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 63
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v9, :cond_4f

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_50

    :cond_4f
    move-object v10, v9

    .line 64
    .local v10, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :goto_50
    const/4 v11, 0x0

    .line 65
    .local v11, "drawableWidth":I
    const/4 v12, 0x0

    .line 66
    .local v12, "drawableHeight":I
    if-eqz v10, :cond_5c

    .line 67
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 68
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 71
    :cond_5c
    if-lez v4, :cond_64

    if-lez v11, :cond_64

    if-lez v12, :cond_64

    const/4 v13, 0x1

    goto :goto_65

    :cond_64
    move v13, v2

    .line 72
    .local v13, "isSizeAvailable":Z
    :goto_65
    if-eqz v13, :cond_ad

    .line 73
    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v14

    .line 74
    .local v14, "scaleType":Landroid/widget/ImageView$ScaleType;
    sget-object v15, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-eq v14, v15, :cond_7a

    sget-object v15, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq v14, v15, :cond_7a

    sget-object v15, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    if-ne v14, v15, :cond_78

    goto :goto_7a

    :cond_78
    move v15, v2

    goto :goto_7b

    :cond_7a
    :goto_7a
    const/4 v15, 0x1

    .line 77
    .local v15, "isFitScale":Z
    :goto_7b
    if-ne v4, v1, :cond_80

    const/16 v16, 0x1

    goto :goto_82

    :cond_80
    move/from16 v16, v2

    .line 78
    .local v16, "isViewWidthFillScreen":Z
    :goto_82
    if-eqz v15, :cond_89

    if-nez v16, :cond_87

    goto :goto_89

    :cond_87
    const/4 v7, 0x1

    goto :goto_ae

    .line 79
    :cond_89
    :goto_89
    mul-int v2, v4, v12

    int-to-float v2, v2

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v2, v2, v17

    mul-int v7, v11, v5

    int-to-float v7, v7

    mul-float v7, v7, v17

    div-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    .line 80
    .local v2, "viewDrawableRatio":F
    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_ab

    .line 81
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/miui/autoui/ViewExtras;->setLargeBitmap(Z)V

    .line 82
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 83
    const/4 v7, 0x1

    return v7

    .line 80
    :cond_ab
    const/4 v7, 0x1

    goto :goto_ae

    .line 72
    .end local v2    # "viewDrawableRatio":F
    .end local v14    # "scaleType":Landroid/widget/ImageView$ScaleType;
    .end local v15    # "isFitScale":Z
    .end local v16    # "isViewWidthFillScreen":Z
    :cond_ad
    const/4 v7, 0x1

    .line 87
    :goto_ae
    move-object/from16 v2, p0

    invoke-direct {v2, v0, v3, v7}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->changeStretchState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Z)V

    .line 88
    invoke-virtual {v3, v7}, Lcom/miui/autoui/ViewExtras;->setLargeBitmap(Z)V

    .line 89
    invoke-virtual {v3, v7}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 90
    invoke-virtual {v3, v7}, Lcom/miui/autoui/ViewExtras;->setAutoUIGroup(Z)V

    .line 91
    invoke-virtual {v3, v4}, Lcom/miui/autoui/ViewExtras;->setWidth(I)V

    .line 92
    invoke-direct/range {p0 .. p1}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->compressMeasureWidth(Landroid/view/View;)V

    .line 93
    return v7

    .line 60
    .end local v8    # "imageView":Landroid/widget/ImageView;
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v10    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "drawableWidth":I
    .end local v12    # "drawableHeight":I
    .end local v13    # "isSizeAvailable":Z
    :cond_c3
    move-object/from16 v2, p0

    .line 95
    const/4 v7, 0x0

    return v7
.end method

.method private blacklist processLargeBitmapViews(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 116
    return-void

    .line 118
    :cond_9
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 119
    .local v0, "viewExtras":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_4d

    .line 123
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_31

    .line 124
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v1

    if-nez v1, :cond_31

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->preProcessLargeBitmapGroup(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 128
    :cond_31
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_49

    .line 129
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 130
    .local v1, "group":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_39
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_49

    .line 131
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 132
    .local v3, "child":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->processLargeBitmapViews(Landroid/view/View;)V

    .line 130
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 136
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_49
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->processLargeBitmapGroup(Landroid/view/View;)V

    .line 137
    return-void

    .line 120
    :cond_4d
    :goto_4d
    return-void
.end method

.method private blacklist processedLargeBitmapGroup(Lcom/miui/autoui/ViewExtras;)Z
    .registers 3
    .param p1, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 797
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 798
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->isAutoUIGroup()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 797
    :goto_1b
    return v0
.end method

.method private blacklist reMeasureNeedStretchCompressView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 216
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->isNeedStretch(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 217
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->changeStretchState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Z)V

    .line 218
    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setAutoUIGroup(Z)V

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->isNeedCompress(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 220
    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 221
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->compressMeasureWidth(Landroid/view/View;)V

    .line 224
    :cond_19
    return-void
.end method

.method private blacklist reMeasureRecyclerItemView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 309
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_9

    .line 310
    return-void

    .line 312
    :cond_9
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 313
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v2

    .line 314
    .local v2, "parentInfo":Lcom/miui/autoui/ViewExtras;
    if-nez v2, :cond_13

    .line 315
    return-void

    .line 317
    :cond_13
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 318
    .local v3, "parentLp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_1a

    .line 319
    return-void

    .line 322
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 323
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v4, :cond_21

    .line 324
    return-void

    .line 326
    :cond_21
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a5

    .line 327
    invoke-static {v1}, Lcom/miui/autoui/utils/ViewProcessor;->isRecyclerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_a5

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/miui/autoui/ViewExtras;->isRecyclerInOtherModify(I)Z

    move-result v7

    if-nez v7, :cond_a5

    .line 328
    invoke-virtual {v2}, Lcom/miui/autoui/ViewExtras;->getColumnCount()I

    move-result v7

    if-gtz v7, :cond_40

    .line 329
    invoke-static {v1}, Lcom/miui/autoui/utils/ViewProcessor;->getColumnCount(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/miui/autoui/ViewExtras;->setColumnCount(I)V

    .line 331
    :cond_40
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v7

    if-nez v7, :cond_a5

    invoke-virtual {v2}, Lcom/miui/autoui/ViewExtras;->getColumnCount()I

    move-result v7

    if-lez v7, :cond_a5

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v7, v6, :cond_a5

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_a5

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/miui/autoui/ViewExtras;->getColumnCount()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v7

    if-le v6, v7, :cond_a5

    .line 336
    invoke-virtual {v2, v5}, Lcom/miui/autoui/ViewExtras;->setRecyclerViewModifyState(I)V

    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p2, v5}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 338
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 339
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 340
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 341
    .local v5, "widthMeasureSpec":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v6

    .line 342
    .local v6, "heightMeasureSpec":I
    invoke-virtual {p1, v5, v6}, Landroid/view/View;->measure(II)V

    .line 345
    .end local v5    # "widthMeasureSpec":I
    .end local v6    # "heightMeasureSpec":I
    :cond_a5
    return-void
.end method

.method private blacklist resetCompressStatus(Lcom/miui/autoui/ViewExtras;)V
    .registers 3
    .param p1, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 789
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 790
    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 791
    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setLargeBitmap(Z)V

    .line 792
    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setAutoUIGroup(Z)V

    .line 793
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 794
    return-void
.end method

.method private blacklist stretchTextureView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "measuredSize"    # [I

    .line 514
    const/4 v0, 0x0

    aget v1, p3, v0

    invoke-direct {p0, p1, v1}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->getTextureViewAreaWidth(Landroid/view/View;I)I

    move-result v1

    .line 515
    .local v1, "widthArea":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 516
    .local v2, "widthLowThreshold":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v4

    .line 517
    .local v4, "widthUpperThreshold":I
    const/4 v5, 0x1

    if-lt v1, v2, :cond_24

    if-gt v1, v4, :cond_24

    move v6, v5

    goto :goto_25

    :cond_24
    move v6, v0

    .line 518
    .local v6, "isFullScreenWidth":Z
    :goto_25
    if-nez v6, :cond_28

    .line 519
    return-void

    .line 522
    :cond_28
    aget v7, p3, v5

    invoke-direct {p0, p1, v7}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->getTextureViewAreaHeight(Landroid/view/View;I)I

    move-result v7

    .line 523
    .local v7, "heightArea":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v3, v8

    .line 524
    .local v3, "heightLowThreshold":I
    if-lt v7, v3, :cond_3c

    move v0, v5

    .line 525
    .local v0, "isFullScreenHeight":Z
    :cond_3c
    if-eqz v0, :cond_42

    .line 526
    invoke-direct {p0, p2, p3}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->fullWidthTextureView(Lcom/miui/autoui/ViewExtras;[I)V

    goto :goto_45

    .line 528
    :cond_42
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->fullWidthTextureInViewPager(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)V

    .line 530
    :goto_45
    return-void
.end method

.method private blacklist tryIgnoreLinearLayoutChileViews(Landroid/view/View;I)V
    .registers 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I

    .line 701
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-nez v1, :cond_7

    .line 702
    return-void

    .line 704
    :cond_7
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout;

    .line 705
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v2

    .line 706
    .local v2, "screenWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 707
    .local v3, "viewWidth":I
    int-to-float v4, v2

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-lt v3, v4, :cond_81

    .line 708
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    move v5, v4

    .local v5, "childCount":I
    const/4 v6, 0x1

    if-le v4, v6, :cond_81

    .line 709
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v4

    if-ne v4, v6, :cond_2d

    goto :goto_81

    .line 712
    :cond_2d
    const/4 v4, 0x1

    .line 713
    .local v4, "isDivided":Z
    const/4 v7, 0x0

    .line 714
    .local v7, "baseChildWeight":F
    move v8, v5

    .line 715
    .local v8, "validChildCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_31
    if-ge v9, v5, :cond_6d

    .line 716
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 717
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_45

    .line 718
    add-int/lit8 v8, v8, -0x1

    .line 719
    if-gt v8, v6, :cond_45

    .line 720
    const/4 v4, 0x0

    .line 721
    goto :goto_6d

    .line 724
    :cond_45
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 725
    .local v11, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v12, v11, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v12, :cond_4e

    .line 726
    return-void

    .line 728
    :cond_4e
    move-object v12, v11

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 729
    .local v12, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v13, 0x0

    if-nez v9, :cond_5c

    .line 730
    iget v7, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 731
    cmpg-float v14, v7, v13

    if-gtz v14, :cond_5c

    .line 732
    const/4 v4, 0x0

    .line 733
    goto :goto_6d

    .line 736
    :cond_5c
    iget v14, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v13, v14, v13

    if-lez v13, :cond_6a

    iget v13, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v13, v7, v13

    if-eqz v13, :cond_6a

    .line 737
    const/4 v4, 0x0

    .line 738
    goto :goto_6d

    .line 715
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v12    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6a
    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    .line 741
    .end local v9    # "i":I
    :cond_6d
    :goto_6d
    if-eqz v4, :cond_80

    .line 742
    const/4 v9, 0x0

    .local v9, "i2":I
    :goto_70
    if-ge v9, v5, :cond_80

    .line 743
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 744
    .local v10, "child2":Landroid/view/View;
    invoke-static {v10}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v11

    .line 745
    .local v11, "childInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v11, v6, v6}, Lcom/miui/autoui/ViewExtras;->setIgnoreWithoutBlur(ZZ)V

    .line 742
    .end local v10    # "child2":Landroid/view/View;
    .end local v11    # "childInfo":Lcom/miui/autoui/ViewExtras;
    add-int/lit8 v9, v9, 0x1

    goto :goto_70

    .line 748
    .end local v9    # "i2":I
    :cond_80
    return-void

    .line 710
    .end local v4    # "isDivided":Z
    .end local v5    # "childCount":I
    .end local v7    # "baseChildWeight":F
    .end local v8    # "validChildCount":I
    :cond_81
    :goto_81
    return-void
.end method

.method private blacklist tryReMeasureSpecialView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->reMeasureNeedStretchCompressView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->reMeasureRecyclerItemView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 213
    return-void
.end method

.method private blacklist updateStretchAndCompressState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 100
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_59

    .line 101
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_21

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v2

    if-ne v1, v2, :cond_21

    .line 102
    invoke-direct {p0, p1, p2, v4}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->changeStretchState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Z)V

    .line 103
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 105
    :cond_21
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v2

    if-le v1, v2, :cond_59

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v2

    if-ge v1, v2, :cond_59

    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_59

    .line 107
    invoke-direct {p0, p1, p2, v4}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->changeStretchState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Z)V

    .line 108
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v2

    int-to-float v2, v2

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v5

    cmpl-float v1, v1, v2

    if-lez v1, :cond_55

    move v3, v4

    :cond_55
    move v1, v3

    .line 109
    .local v1, "nNeedCompress":Z
    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 112
    .end local v1    # "nNeedCompress":Z
    :cond_59
    return-void
.end method


# virtual methods
.method public blacklist postViewMeasure(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 27
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 28
    .local v0, "viewExtras":Lcom/miui/autoui/ViewExtras;
    if-eqz v0, :cond_3d

    .line 29
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isFloat()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 30
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 31
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 32
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_3d

    .line 35
    :cond_1f
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->processLargeBitmapImageView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 36
    return-void

    .line 39
    :cond_26
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->updateStretchAndCompressState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_36

    instance-of v1, p1, Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_36

    .line 42
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->processLargeBitmapViews(Landroid/view/View;)V

    .line 45
    :cond_36
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->tryReMeasureSpecialView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->processLargeBitmapGroup(Landroid/view/View;)V

    .line 48
    return-void

    .line 33
    :cond_3d
    :goto_3d
    return-void
.end method

.method public blacklist preViewMeasure(Landroid/view/View;II)[I
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 349
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 351
    .local v0, "measuredSize":[I
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 352
    .local v1, "viewExtras":Lcom/miui/autoui/ViewExtras;
    if-nez v1, :cond_10

    .line 353
    return-object v0

    .line 355
    :cond_10
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getWindowTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 356
    .local v2, "windowTitle":Ljava/lang/CharSequence;
    if-eqz v2, :cond_3a

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/autoui/AutoPolicyUtils;->needStretch(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_3a

    .line 360
    :cond_25
    invoke-direct {p0, v2, p1, v1, v0}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->measureSpecialView(Ljava/lang/CharSequence;Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 361
    return-object v0

    .line 364
    :cond_2c
    invoke-direct {p0, p1, v1, v0}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->measureRootStretchView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 365
    return-object v0

    .line 368
    :cond_33
    invoke-direct {p0, p1, v1}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->adjustCommonViewStatus(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 369
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;->tryIgnoreLinearLayoutChileViews(Landroid/view/View;I)V

    .line 371
    return-object v0

    .line 357
    :cond_3a
    :goto_3a
    return-object v0
.end method
