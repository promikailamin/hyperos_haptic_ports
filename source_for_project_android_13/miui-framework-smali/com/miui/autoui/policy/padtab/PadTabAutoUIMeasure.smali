.class public Lcom/miui/autoui/policy/padtab/PadTabAutoUIMeasure;
.super Lcom/miui/autoui/policy/def/DefaultAutoUIMeasure;
.source "PadTabAutoUIMeasure.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/miui/autoui/policy/def/DefaultAutoUIMeasure;-><init>()V

    return-void
.end method

.method private blacklist measureRootView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;II)[I
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "widthMeasureSpec"    # I
    .param p4, "heightMeasureSpec"    # I

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "rootView":Landroid/view/View;
    move v1, p3

    .line 59
    .local v1, "processedMeasureSpec":I
    instance-of v2, v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_a8

    .line 60
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 61
    .local v2, "rootViewGroup":Landroid/view/ViewGroup;
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v5

    .line 62
    .local v5, "realWidth":I
    int-to-float v6, v5

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 63
    .local v6, "expectedWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 64
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-ne v8, v0, :cond_3b

    .line 65
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    if-ne v8, v5, :cond_3b

    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3b

    .line 67
    invoke-static {v6, v1}, Lcom/miui/autoui/utils/Utils;->makeMeasureSpec(II)I

    move-result v1

    .line 68
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    goto/16 :goto_a8

    .line 69
    :cond_3b
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    if-ne p1, v8, :cond_4f

    .line 70
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    if-ne v8, v6, :cond_4f

    .line 71
    invoke-static {v5, v1}, Lcom/miui/autoui/utils/Utils;->makeMeasureSpec(II)I

    move-result v1

    .line 72
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    goto :goto_a8

    .line 73
    :cond_4f
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    if-eq p1, v8, :cond_77

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    if-eq v8, v9, :cond_77

    .line 74
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_a8

    .line 75
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 76
    .local v8, "child0":Landroid/view/View;
    invoke-static {v8}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v9

    .line 77
    .local v9, "child0Info":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v9}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v10

    if-eqz v10, :cond_76

    .line 78
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 80
    .end local v8    # "child0":Landroid/view/View;
    .end local v9    # "child0Info":Lcom/miui/autoui/ViewExtras;
    :cond_76
    goto :goto_a8

    .line 81
    :cond_77
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isFloatImageView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_a8

    .line 82
    instance-of v8, v7, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v8, :cond_a8

    .line 83
    move-object v8, v7

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    .local v8, "fLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v9, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-ltz v9, :cond_a2

    iget v9, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 85
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v10

    if-ge v9, v10, :cond_a2

    iget v9, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-nez v9, :cond_a2

    .line 87
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setFloatIcon(Z)V

    .line 88
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 89
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    goto :goto_a8

    .line 91
    :cond_a2
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setFloatIcon(Z)V

    .line 92
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 97
    .end local v2    # "rootViewGroup":Landroid/view/ViewGroup;
    .end local v5    # "realWidth":I
    .end local v6    # "expectedWidth":I
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "fLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_a8
    :goto_a8
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v3

    aput p4, v2, v4

    return-object v2
.end method


# virtual methods
.method public blacklist postViewMeasure(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 102
    invoke-super {p0, p1}, Lcom/miui/autoui/policy/def/DefaultAutoUIMeasure;->postViewMeasure(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method public blacklist preViewMeasure(Landroid/view/View;II)[I
    .registers 21
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 18
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 19
    .local v3, "title":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1e

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v6

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/autoui/AutoPolicyUtils;->needStretch(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    move v6, v5

    goto :goto_1f

    :cond_1e
    move v6, v4

    .line 20
    .local v6, "needStretch":Z
    :goto_1f
    const/4 v7, 0x2

    if-eqz v6, :cond_b7

    .line 21
    invoke-static/range {p1 .. p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v8

    .line 22
    .local v8, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 23
    .local v9, "rootView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v10

    .line 25
    .local v10, "parentInfo":Lcom/miui/autoui/ViewExtras;
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v11

    .line 26
    .local v11, "realWidth":I
    int-to-float v12, v11

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 27
    .local v12, "expectedWidth":I
    move/from16 v13, p2

    .line 29
    .local v13, "processedMeasureSpec":I
    if-eqz v10, :cond_b0

    invoke-virtual {v10}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v14

    if-nez v14, :cond_4c

    goto :goto_b0

    .line 31
    :cond_4c
    if-eq v0, v9, :cond_59

    invoke-static {v13}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    if-ne v14, v11, :cond_59

    .line 32
    invoke-static {v12, v13}, Lcom/miui/autoui/utils/Utils;->makeMeasureSpec(II)I

    move-result v13

    goto :goto_9f

    .line 34
    :cond_59
    invoke-virtual {v10}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v14

    if-nez v14, :cond_a6

    invoke-virtual {v10}, Lcom/miui/autoui/ViewExtras;->isWebView()Z

    move-result v14

    if-eqz v14, :cond_66

    goto :goto_a6

    .line 38
    :cond_66
    invoke-static {v0, v8}, Lcom/miui/autoui/utils/ViewProcessor;->handleWebView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z

    move-result v14

    if-eqz v14, :cond_9f

    .line 39
    invoke-virtual {v8, v5}, Lcom/miui/autoui/ViewExtras;->setNeedOriginalLayout(Z)V

    .line 40
    invoke-virtual {v8, v4}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 41
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 42
    .local v14, "measuredWidth":I
    invoke-virtual {v8}, Lcom/miui/autoui/ViewExtras;->getWidth()I

    move-result v15

    if-eq v14, v15, :cond_90

    invoke-virtual {v8}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v15

    if-eq v14, v15, :cond_90

    .line 43
    invoke-virtual {v8, v14}, Lcom/miui/autoui/ViewExtras;->setWidth(I)V

    .line 44
    int-to-float v15, v14

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v16

    div-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v8, v15}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 46
    :cond_90
    invoke-virtual {v8}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v15

    invoke-static {v15, v1}, Lcom/miui/autoui/utils/Utils;->makeMeasureSpec(II)I

    move-result v13

    .line 47
    new-array v7, v7, [I

    aput v13, v7, v4

    aput v2, v7, v5

    return-object v7

    .line 51
    .end local v14    # "measuredWidth":I
    :cond_9f
    :goto_9f
    new-array v7, v7, [I

    aput v13, v7, v4

    aput v2, v7, v5

    return-object v7

    .line 35
    :cond_a6
    :goto_a6
    invoke-virtual {v8, v5}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 36
    new-array v7, v7, [I

    aput v13, v7, v4

    aput v2, v7, v5

    return-object v7

    .line 30
    :cond_b0
    :goto_b0
    move-object/from16 v14, p0

    invoke-direct {v14, v0, v8, v13, v2}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIMeasure;->measureRootView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;II)[I

    move-result-object v4

    return-object v4

    .line 53
    .end local v8    # "viewInfo":Lcom/miui/autoui/ViewExtras;
    .end local v9    # "rootView":Landroid/view/View;
    .end local v10    # "parentInfo":Lcom/miui/autoui/ViewExtras;
    .end local v11    # "realWidth":I
    .end local v12    # "expectedWidth":I
    .end local v13    # "processedMeasureSpec":I
    :cond_b7
    move-object/from16 v14, p0

    new-array v7, v7, [I

    aput v1, v7, v4

    aput v2, v7, v5

    return-object v7
.end method
