.class public Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;
.super Lcom/miui/autoui/policy/def/DefaultAutoUIMeasure;
.source "PadViewAutoUIMeasure.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/miui/autoui/policy/def/DefaultAutoUIMeasure;-><init>()V

    return-void
.end method

.method private blacklist adjustCommonViewStatus(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 688
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 689
    .local v0, "parentInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 690
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 691
    invoke-virtual {p2, v2}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 692
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    goto :goto_3e

    .line 693
    :cond_1d
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v4

    if-nez v4, :cond_31

    :cond_25
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 694
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v5

    if-ne v4, v5, :cond_38

    .line 695
    :cond_31
    invoke-direct {p0, p1, p2, v2}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->changeStretchState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Z)V

    .line 696
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    goto :goto_3e

    .line 698
    :cond_38
    invoke-direct {p0, p1, p2, v3}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->changeStretchState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Z)V

    .line 699
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 701
    :goto_3e
    return-void
.end method

.method private blacklist changeStretchState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Z)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "needStretch"    # Z

    .line 755
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    xor-int/2addr v0, p3

    if-eqz v0, :cond_a

    .line 756
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 758
    :cond_a
    invoke-virtual {p2, p3}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 759
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

    .line 602
    if-nez p1, :cond_7

    .line 603
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 605
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 606
    .local v0, "parent":Ljava/lang/Object;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_16

    goto :goto_29

    .line 609
    :cond_16
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 610
    .local v1, "parentView":Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/miui/autoui/utils/ViewProcessor;->isViewPager(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    goto :goto_28

    :cond_24
    invoke-direct {p0, v1}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->findPagerParent(Landroid/view/View;)Ljava/util/Optional;

    move-result-object v2

    :goto_28
    return-object v2

    .line 607
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

    .line 586
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->findPagerParent(Landroid/view/View;)Ljava/util/Optional;

    move-result-object v0

    .line 587
    .local v0, "viewPager":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/view/ViewGroup;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_b

    .line 588
    return-void

    .line 590
    :cond_b
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 591
    .local v1, "pager":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    .line 592
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

    .line 593
    :cond_2e
    return-void

    .line 596
    :cond_2f
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 597
    invoke-direct {p0, v1}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->ignoreTargetView(Landroid/view/View;)V

    .line 598
    invoke-direct {p0, p2, p3}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->fullWidthTextureView(Lcom/miui/autoui/ViewExtras;[I)V

    .line 599
    return-void
.end method

.method private blacklist fullWidthTextureView(Lcom/miui/autoui/ViewExtras;[I)V
    .registers 8
    .param p1, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p2, "measuredSize"    # [I

    .line 572
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setNeedOriginalLayout(Z)V

    .line 573
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 574
    aget v1, p2, v0

    .line 575
    .local v1, "widthMeasureSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 576
    .local v2, "measureSpecWidth":I
    invoke-virtual {p1, v2}, Lcom/miui/autoui/ViewExtras;->setWidth(I)V

    .line 577
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v3

    if-gt v2, v3, :cond_22

    .line 579
    int-to-float v3, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 581
    :cond_22
    invoke-virtual {p1, v2}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 582
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v3

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    aput v3, p2, v0

    .line 583
    return-void
.end method

.method private blacklist getTextureViewAreaHeight(Landroid/view/View;I)I
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "heightMeasureSpec"    # I

    .line 555
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 556
    .local v0, "measureHeight":I
    if-lez v0, :cond_7

    .line 557
    return v0

    .line 559
    :cond_7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 560
    .local v1, "measureMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 561
    .local v2, "measureSize":I
    if-eqz v1, :cond_14

    if-lez v2, :cond_14

    .line 562
    return v2

    .line 564
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 565
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_21

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_21

    .line 566
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v4

    .line 568
    :cond_21
    return v0
.end method

.method private blacklist getTextureViewAreaWidth(Landroid/view/View;I)I
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I

    .line 538
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 539
    .local v0, "measuredWidth":I
    if-lez v0, :cond_7

    .line 540
    return v0

    .line 542
    :cond_7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 543
    .local v1, "measureMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 544
    .local v2, "measureSize":I
    if-eqz v1, :cond_14

    if-lez v2, :cond_14

    .line 545
    return v2

    .line 547
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 548
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_21

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v4, :cond_21

    .line 549
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v4

    .line 551
    :cond_21
    return v0
.end method

.method private blacklist ignoreTargetView(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 614
    if-nez p1, :cond_3

    .line 615
    return-void

    .line 617
    :cond_3
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 618
    .local v0, "viewExtras":Lcom/miui/autoui/ViewExtras;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/autoui/ViewExtras;->setNeedOriginalLayout(Z)V

    .line 619
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 620
    invoke-virtual {v0, v1}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 621
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-nez v1, :cond_17

    .line 622
    return-void

    .line 624
    :cond_17
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 625
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 626
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_2b

    .line 627
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 628
    .local v4, "child":Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->ignoreTargetView(Landroid/view/View;)V

    .line 626
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 630
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

    invoke-direct {p0, v3}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->isChildrenCompressed(Landroid/view/ViewGroup;)Z

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
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->isChildrenNeedStretch(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v5

    if-ge v3, v5, :cond_27

    move v3, v2

    goto :goto_28

    :cond_27
    move v3, v4

    .line 233
    .local v3, "isNeedStretch":Z
    :goto_28
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v5

    if-nez v5, :cond_37

    if-eqz v1, :cond_37

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_37

    move v5, v2

    goto :goto_38

    :cond_37
    move v5, v4

    .line 234
    .local v5, "isFirstSituation":Z
    :goto_38
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getWidth()I

    move-result v6

    if-lez v6, :cond_50

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getWidth()I

    move-result v7

    if-eq v6, v7, :cond_50

    move v6, v2

    goto :goto_51

    :cond_50
    move v6, v4

    .line 235
    .local v6, "isSecondSituation":Z
    :goto_51
    if-eqz v3, :cond_58

    if-nez v5, :cond_57

    if-eqz v6, :cond_58

    :cond_57
    goto :goto_59

    :cond_58
    move v2, v4

    :goto_59
    return v2
.end method

.method private blacklist measureCompScreenWidthView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "measuredSize"    # [I

    .line 634
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 635
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 636
    return v2

    .line 638
    :cond_a
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 639
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

    .line 640
    return v2

    .line 642
    :cond_20
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 643
    .local v3, "parent":Landroid/view/ViewParent;
    instance-of v4, v3, Landroid/view/View;

    if-nez v4, :cond_29

    .line 644
    return v2

    .line 646
    :cond_29
    move-object v4, v3

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v4

    .line 647
    .local v4, "parentInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v4}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-virtual {v4}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 648
    return v2

    .line 650
    :cond_3d
    move-object v5, v3

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 651
    .local v5, "parentLp":Landroid/view/ViewGroup$LayoutParams;
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6f

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v7, :cond_6f

    .line 652
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 653
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v7

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v7, v8

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v7, v8

    invoke-virtual {p2, v7}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 654
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 655
    .local v7, "widthSpec":I
    aput v7, p3, v2

    .line 656
    return v6

    .line 658
    .end local v7    # "widthSpec":I
    :cond_6f
    return v2
.end method

.method private blacklist measureFloatView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z
    .registers 9
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

    .line 399
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isFloat()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    .line 400
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->performMeasureFloatView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)V

    .line 401
    return v2

    .line 404
    :cond_21
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/4 v3, 0x0

    aget v4, p3, v3

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 405
    .local v1, "rootWidth":I
    if-lez v1, :cond_40

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v4

    if-ge v1, v4, :cond_40

    .line 406
    invoke-virtual {p2, v2}, Lcom/miui/autoui/ViewExtras;->setFloat(Z)V

    .line 407
    return v2

    .line 409
    :cond_40
    return v3
.end method

.method private blacklist measurePolicyView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "measuredSize"    # [I

    .line 433
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isRecyclerView(Landroid/view/View;)Z

    move-result v0

    .line 434
    .local v0, "isRecyclerView":Z
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v1

    if-nez v1, :cond_f

    if-eqz v0, :cond_f

    .line 435
    invoke-static {p1, p2}, Lcom/miui/autoui/utils/ViewProcessor;->stretchSpanForHorizontalRecycler(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 437
    :cond_f
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getViewPolicy()I

    move-result v1

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_8e

    :pswitch_1a
    goto/16 :goto_8d

    .line 474
    :pswitch_1c
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 475
    goto :goto_8d

    .line 471
    :pswitch_23
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 472
    goto :goto_8d

    .line 467
    :pswitch_2a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 469
    goto :goto_8d

    .line 464
    :pswitch_37
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 465
    goto :goto_8d

    .line 461
    :pswitch_3e
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 462
    goto :goto_8d

    .line 457
    :pswitch_45
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 458
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 459
    goto :goto_8d

    .line 453
    :pswitch_52
    invoke-virtual {p2, v5}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 454
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 455
    return v5

    .line 445
    :pswitch_59
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v1

    if-nez v1, :cond_6a

    if-eqz v0, :cond_6a

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getRecyclerViewModifyState()I

    move-result v1

    if-ne v1, v3, :cond_6a

    .line 446
    invoke-static {p1, p2}, Lcom/miui/autoui/utils/ViewProcessor;->stretchSpanForVerticalRecycler(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 448
    :cond_6a
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getRecyclerViewModifyState()I

    move-result v1

    if-ne v1, v5, :cond_8d

    .line 449
    return v5

    .line 439
    :pswitch_71
    invoke-direct {p0, p1, p2, v5}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->changeStretchState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Z)V

    .line 440
    invoke-virtual {p2, v5}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 441
    aget v1, p3, v4

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    aget v2, p3, v4

    invoke-static {v1, v2}, Lcom/miui/autoui/utils/ViewProcessor;->makeMeasureSpec(II)I

    move-result v1

    .line 442
    .local v1, "fixWidthMeasureSpec":I
    aput v1, p3, v4

    .line 443
    return v5

    .line 479
    .end local v1    # "fixWidthMeasureSpec":I
    :cond_8d
    :goto_8d
    return v4

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_71
        :pswitch_59
        :pswitch_52
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_45
        :pswitch_3e
        :pswitch_37
        :pswitch_2a
        :pswitch_23
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist measureReactRootView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "measuredSize"    # [I

    .line 483
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isReactRootView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 484
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 485
    return v0

    .line 487
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist measureRootStretchView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "measuredSize"    # [I

    .line 662
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 663
    .local v0, "parent":Landroid/view/ViewParent;
    invoke-static {v0}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 664
    .local v1, "parentInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_65

    if-eqz v1, :cond_65

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-nez v2, :cond_65

    .line 665
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->needRefreshCompressStatus(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 666
    invoke-direct {p0, p2}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->resetCompressStatus(Lcom/miui/autoui/ViewExtras;)V

    .line 668
    :cond_20
    aget v2, p3, v3

    .line 670
    .local v2, "widthMeasureSpec":I
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 671
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 672
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v4

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    if-eq v4, v5, :cond_57

    .line 673
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

    .line 675
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 677
    :cond_57
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v4

    invoke-static {v4, v2}, Lcom/miui/autoui/utils/ViewProcessor;->makeMeasureSpec(II)I

    move-result v4

    .local v4, "widthSpec":I
    goto :goto_61

    .line 679
    .end local v4    # "widthSpec":I
    :cond_60
    move v4, v2

    .line 681
    .restart local v4    # "widthSpec":I
    :goto_61
    aput v4, p3, v3

    .line 682
    const/4 v3, 0x1

    return v3

    .line 684
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
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->measureFloatView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z

    move-result v0

    .line 381
    .local v0, "handled":Z
    if-nez v0, :cond_20

    .line 382
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->measurePolicyView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z

    move-result v0

    .line 384
    :cond_20
    if-nez v0, :cond_26

    .line 385
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->measureReactRootView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z

    move-result v0

    .line 387
    :cond_26
    if-nez v0, :cond_2c

    .line 388
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->measureTextureView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z

    move-result v0

    .line 390
    :cond_2c
    if-nez v0, :cond_32

    .line 391
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->measureCompScreenWidthView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z

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

    .line 491
    instance-of v0, p1, Landroid/view/TextureView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 492
    return v1

    .line 494
    :cond_6
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 495
    return v1

    .line 497
    :cond_d
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedOriginalLayout()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 499
    aget v0, p3, v1

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 500
    .local v0, "width":I
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getWidth()I

    move-result v2

    if-eq v0, v2, :cond_3c

    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v2

    if-eq v0, v2, :cond_3c

    .line 501
    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setWidth(I)V

    .line 502
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v2

    if-gt v0, v2, :cond_39

    .line 504
    int-to-float v2, v0

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 506
    :cond_39
    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 508
    :cond_3c
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v2

    aget v3, p3, v1

    invoke-static {v2, v3}, Lcom/miui/autoui/utils/ViewProcessor;->makeMeasureSpec(II)I

    move-result v2

    .line 509
    .local v2, "widthSpec":I
    aput v2, p3, v1

    .line 510
    .end local v0    # "width":I
    .end local v2    # "widthSpec":I
    goto :goto_4c

    .line 512
    :cond_49
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->stretchTextureView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)V

    .line 514
    :goto_4c
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist needRefreshCompressStatus(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 764
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5e

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_e

    goto :goto_5e

    .line 767
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 768
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_5d

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    move-object v3, v2

    .local v3, "parentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v4, v2

    .local v4, "parentLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_5d

    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v2, :cond_26

    goto :goto_5d

    .line 771
    :cond_26
    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    .line 772
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 773
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v5, :cond_5c

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3e

    goto :goto_5c

    .line 776
    :cond_3e
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_4d

    .line 777
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 778
    .local v6, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v7, v2, v7

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v2, v7, v8

    .line 780
    .end local v6    # "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4d
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v6

    int-to-float v7, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    if-eq v6, v7, :cond_5b

    const/4 v1, 0x1

    :cond_5b
    return v1

    .line 774
    :cond_5c
    :goto_5c
    return v1

    .line 769
    .end local v2    # "width":I
    .end local v3    # "parentView":Landroid/view/View;
    .end local v4    # "parentLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5d
    :goto_5d
    return v1

    .line 765
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_5e
    :goto_5e
    return v1
.end method

.method private blacklist performMeasureFloatView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "measuredSize"    # [I

    .line 413
    invoke-direct {p0, p2}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->processedLargeBitmapGroup(Lcom/miui/autoui/ViewExtras;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 414
    return-void

    .line 417
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 418
    aget v1, p3, v0

    .line 419
    .local v1, "widthMeasureSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 420
    .local v2, "widthSize":I
    move v3, v1

    .line 422
    .local v3, "newMeasureSpec":I
    int-to-float v4, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v5

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3a

    .line 424
    invoke-virtual {p2, v2}, Lcom/miui/autoui/ViewExtras;->setWidth(I)V

    .line 425
    int-to-float v4, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 427
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v4

    invoke-static {v4, v1}, Lcom/miui/autoui/utils/ViewProcessor;->makeMeasureSpec(II)I

    move-result v3

    .line 429
    :cond_3a
    aput v3, p3, v0

    .line 430
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

    invoke-virtual {v1, v2}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 158
    invoke-virtual {v1, v2}, Lcom/miui/autoui/ViewExtras;->setLargeBitmap(Z)V

    .line 159
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 160
    invoke-virtual {p2, v2}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 161
    invoke-direct {p0, v0}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->compressMeasureWidth(Landroid/view/View;)V

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
    invoke-direct {p0, v0}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->processedLargeBitmapGroup(Lcom/miui/autoui/ViewExtras;)Z

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
    invoke-direct {p0, v3}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->compressMeasureWidth(Landroid/view/View;)V

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

    invoke-direct {v2, v0, v3, v7}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->changeStretchState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Z)V

    .line 88
    invoke-virtual {v3, v7}, Lcom/miui/autoui/ViewExtras;->setLargeBitmap(Z)V

    .line 89
    invoke-virtual {v3, v7}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 90
    invoke-virtual {v3, v7}, Lcom/miui/autoui/ViewExtras;->setAutoUIGroup(Z)V

    .line 91
    invoke-virtual {v3, v4}, Lcom/miui/autoui/ViewExtras;->setWidth(I)V

    .line 92
    invoke-direct/range {p0 .. p1}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->compressMeasureWidth(Landroid/view/View;)V

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
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->preProcessLargeBitmapGroup(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

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
    invoke-direct {p0, v3}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->processLargeBitmapViews(Landroid/view/View;)V

    .line 130
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 136
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_49
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->processLargeBitmapGroup(Landroid/view/View;)V

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

    .line 791
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 792
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

    .line 791
    :goto_1b
    return v0
.end method

.method private blacklist reMeasureNeedStretchCompressView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 216
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->isNeedStretch(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 217
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->changeStretchState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Z)V

    .line 218
    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setAutoUIGroup(Z)V

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->isNeedCompress(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 220
    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 221
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->compressMeasureWidth(Landroid/view/View;)V

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

    .line 784
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 785
    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 786
    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setLargeBitmap(Z)V

    .line 787
    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setAutoUIGroup(Z)V

    .line 788
    return-void
.end method

.method private blacklist stretchTextureView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "measuredSize"    # [I

    .line 519
    const/4 v0, 0x0

    aget v1, p3, v0

    invoke-direct {p0, p1, v1}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->getTextureViewAreaWidth(Landroid/view/View;I)I

    move-result v1

    .line 520
    .local v1, "widthArea":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 521
    .local v2, "widthLowThreshold":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v4

    .line 522
    .local v4, "widthUpperThreshold":I
    const/4 v5, 0x1

    if-lt v1, v2, :cond_24

    if-gt v1, v4, :cond_24

    move v6, v5

    goto :goto_25

    :cond_24
    move v6, v0

    .line 523
    .local v6, "isFullScreenWidth":Z
    :goto_25
    if-nez v6, :cond_28

    .line 524
    return-void

    .line 527
    :cond_28
    aget v7, p3, v5

    invoke-direct {p0, p1, v7}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->getTextureViewAreaHeight(Landroid/view/View;I)I

    move-result v7

    .line 528
    .local v7, "heightArea":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v3, v8

    .line 529
    .local v3, "heightLowThreshold":I
    if-lt v7, v3, :cond_3c

    move v0, v5

    .line 530
    .local v0, "isFullScreenHeight":Z
    :cond_3c
    if-eqz v0, :cond_42

    .line 531
    invoke-direct {p0, p2, p3}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->fullWidthTextureView(Lcom/miui/autoui/ViewExtras;[I)V

    goto :goto_45

    .line 533
    :cond_42
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->fullWidthTextureInViewPager(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)V

    .line 535
    :goto_45
    return-void
.end method

.method private blacklist tryIgnoreLinearLayoutChileViews(Landroid/view/View;I)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I

    .line 706
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    .line 707
    return-void

    .line 709
    :cond_5
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v0

    .line 710
    .local v0, "screenWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 711
    .local v1, "viewWidth":I
    int-to-float v2, v0

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-lt v1, v2, :cond_74

    move-object v2, p1

    check-cast v2, Landroid/widget/LinearLayout;

    move-object v3, v2

    .line 712
    .local v3, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    move v4, v2

    .local v4, "childCount":I
    const/4 v5, 0x1

    if-gt v2, v5, :cond_26

    goto :goto_74

    .line 715
    :cond_26
    const/4 v2, 0x1

    .line 716
    .local v2, "isDivided":Z
    const/4 v6, 0x0

    .line 717
    .local v6, "baseChildWeight":F
    move v7, v4

    .line 718
    .local v7, "validChildCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2a
    if-ge v8, v4, :cond_60

    .line 719
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 720
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_3e

    .line 721
    add-int/lit8 v7, v7, -0x1

    .line 722
    if-gt v7, v5, :cond_3e

    .line 723
    const/4 v2, 0x0

    .line 724
    goto :goto_60

    .line 727
    :cond_3e
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 728
    .local v10, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v11, v10, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v11, :cond_47

    .line 729
    return-void

    .line 731
    :cond_47
    move-object v11, v10

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 732
    .local v11, "llp":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v8, :cond_55

    .line 733
    iget v6, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 734
    const/4 v12, 0x0

    cmpg-float v12, v6, v12

    if-gtz v12, :cond_55

    .line 735
    const/4 v2, 0x0

    .line 736
    goto :goto_60

    .line 739
    :cond_55
    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v12, v6, v12

    if-eqz v12, :cond_5d

    .line 740
    const/4 v2, 0x0

    .line 741
    goto :goto_60

    .line 718
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5d
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 744
    .end local v8    # "i":I
    :cond_60
    :goto_60
    if-eqz v2, :cond_73

    .line 745
    const/4 v8, 0x0

    .local v8, "i2":I
    :goto_63
    if-ge v8, v4, :cond_73

    .line 746
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 747
    .local v9, "child2":Landroid/view/View;
    invoke-static {v9}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v10

    .line 748
    .local v10, "childInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v10, v5}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 745
    .end local v9    # "child2":Landroid/view/View;
    .end local v10    # "childInfo":Lcom/miui/autoui/ViewExtras;
    add-int/lit8 v8, v8, 0x1

    goto :goto_63

    .line 751
    .end local v8    # "i2":I
    :cond_73
    return-void

    .line 713
    .end local v2    # "isDivided":Z
    .end local v3    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v4    # "childCount":I
    .end local v6    # "baseChildWeight":F
    .end local v7    # "validChildCount":I
    :cond_74
    :goto_74
    return-void
.end method

.method private blacklist tryReMeasureSpecialView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->reMeasureNeedStretchCompressView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->reMeasureRecyclerItemView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

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
    invoke-direct {p0, p1, p2, v4}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->changeStretchState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Z)V

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
    invoke-direct {p0, p1, p2, v4}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->changeStretchState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Z)V

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
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->processLargeBitmapImageView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 36
    return-void

    .line 39
    :cond_26
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->updateStretchAndCompressState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_36

    instance-of v1, p1, Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_36

    .line 42
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->processLargeBitmapViews(Landroid/view/View;)V

    .line 45
    :cond_36
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->tryReMeasureSpecialView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->processLargeBitmapGroup(Landroid/view/View;)V

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
    invoke-direct {p0, v2, p1, v1, v0}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->measureSpecialView(Ljava/lang/CharSequence;Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 361
    return-object v0

    .line 364
    :cond_2c
    invoke-direct {p0, p1, v1, v0}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->measureRootStretchView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;[I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 365
    return-object v0

    .line 368
    :cond_33
    invoke-direct {p0, p1, v1}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->adjustCommonViewStatus(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 369
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/policy/padview/PadViewAutoUIMeasure;->tryIgnoreLinearLayoutChileViews(Landroid/view/View;I)V

    .line 371
    return-object v0

    .line 357
    :cond_3a
    :goto_3a
    return-object v0
.end method
