.class public Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIMeasure;
.super Lcom/miui/autoui/policy/def/DefaultAutoUIMeasure;
.source "PadActivityAutoUIMeasure.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/miui/autoui/policy/def/DefaultAutoUIMeasure;-><init>()V

    return-void
.end method

.method private blacklist measureFloatingWindow(Lcom/miui/autoui/ViewExtras;II)[I
    .registers 10
    .param p1, "viewInfo"    # Lcom/miui/autoui/ViewExtras;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 66
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 67
    .local v1, "widthSize":I
    move v2, p2

    .line 68
    .local v2, "newMeasureSpec":I
    int-to-float v3, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-nez v3, :cond_31

    .line 69
    invoke-virtual {p1, v1}, Lcom/miui/autoui/ViewExtras;->setWidth(I)V

    .line 70
    int-to-float v3, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1, v3}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 71
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v3

    invoke-static {v3, p2}, Lcom/miui/autoui/utils/ViewProcessor;->makeMeasureSpec(II)I

    move-result v2

    .line 73
    :cond_31
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v0

    const/4 v0, 0x1

    aput p3, v3, v0

    return-object v3
.end method

.method private blacklist measureRootView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;II)[I
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInfo"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "widthMeasureSpec"    # I
    .param p4, "heightMeasureSpec"    # I

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "rootView":Landroid/view/View;
    move v1, p3

    .line 79
    .local v1, "processedMeasureSpec":I
    instance-of v2, v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_a8

    .line 80
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 81
    .local v2, "rootViewGroup":Landroid/view/ViewGroup;
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v5

    .line 82
    .local v5, "realWidth":I
    int-to-float v6, v5

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 83
    .local v6, "expectedWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 84
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-ne v8, v0, :cond_3b

    .line 85
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    if-ne v8, v5, :cond_3b

    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3b

    .line 87
    invoke-static {v6, v1}, Lcom/miui/autoui/utils/Utils;->makeMeasureSpec(II)I

    move-result v1

    .line 88
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    goto/16 :goto_a8

    .line 89
    :cond_3b
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    if-ne p1, v8, :cond_4f

    .line 90
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    if-ne v8, v6, :cond_4f

    .line 91
    invoke-static {v5, v1}, Lcom/miui/autoui/utils/Utils;->makeMeasureSpec(II)I

    move-result v1

    .line 92
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    goto :goto_a8

    .line 93
    :cond_4f
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    if-eq p1, v8, :cond_77

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    if-eq v8, v9, :cond_77

    .line 94
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_a8

    .line 95
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 96
    .local v8, "child0":Landroid/view/View;
    invoke-static {v8}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v9

    .line 97
    .local v9, "child0Info":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v9}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v10

    if-eqz v10, :cond_76

    .line 98
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 100
    .end local v8    # "child0":Landroid/view/View;
    .end local v9    # "child0Info":Lcom/miui/autoui/ViewExtras;
    :cond_76
    goto :goto_a8

    .line 101
    :cond_77
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isFloatImageView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_a8

    .line 102
    instance-of v8, v7, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v8, :cond_a8

    .line 103
    move-object v8, v7

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 104
    .local v8, "fLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v9, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-ltz v9, :cond_a2

    iget v9, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 105
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v10

    if-ge v9, v10, :cond_a2

    iget v9, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-nez v9, :cond_a2

    .line 107
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setFloatIcon(Z)V

    .line 108
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 109
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    goto :goto_a8

    .line 111
    :cond_a2
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setFloatIcon(Z)V

    .line 112
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 117
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

    .line 122
    invoke-super {p0, p1}, Lcom/miui/autoui/policy/def/DefaultAutoUIMeasure;->postViewMeasure(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method public blacklist preViewMeasure(Landroid/view/View;II)[I
    .registers 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 19
    .local v4, "title":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    if-eqz v4, :cond_1f

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v7

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/autoui/AutoPolicyUtils;->needStretch(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const/4 v7, 0x1

    goto :goto_20

    :cond_1f
    move v7, v5

    .line 20
    .local v7, "needStretch":Z
    :goto_20
    const/4 v8, 0x2

    if-eqz v7, :cond_109

    .line 21
    invoke-static/range {p1 .. p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v9

    .line 22
    .local v9, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .line 23
    .local v10, "rootView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    invoke-static {v11}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v11

    .line 24
    .local v11, "parentInfo":Lcom/miui/autoui/ViewExtras;
    invoke-static {v10}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v12

    .line 25
    .local v12, "rootInfo":Lcom/miui/autoui/ViewExtras;
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v13

    .line 26
    .local v13, "realWidth":I
    int-to-float v14, v13

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v15

    mul-float/2addr v14, v15

    float-to-int v14, v14

    .line 27
    .local v14, "expectedWidth":I
    move/from16 v15, p2

    .line 29
    .local v15, "processedMeasureSpec":I
    if-ne v1, v10, :cond_4f

    invoke-static {v10}, Lcom/miui/autoui/utils/ViewProcessor;->isFloatView(Landroid/view/View;)Z

    move-result v16

    goto :goto_57

    :cond_4f
    invoke-static {v10}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/miui/autoui/ViewExtras;->isFloat()Z

    move-result v16

    :goto_57
    move/from16 v6, v16

    invoke-virtual {v9, v6}, Lcom/miui/autoui/ViewExtras;->setFloat(Z)V

    .line 30
    invoke-virtual {v9}, Lcom/miui/autoui/ViewExtras;->isFloat()Z

    move-result v6

    if-eqz v6, :cond_67

    .line 31
    invoke-direct {v0, v9, v2, v3}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIMeasure;->measureFloatingWindow(Lcom/miui/autoui/ViewExtras;II)[I

    move-result-object v5

    return-object v5

    .line 33
    :cond_67
    invoke-virtual {v12}, Lcom/miui/autoui/ViewExtras;->isReactRootView()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 34
    invoke-virtual {v9, v5}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 35
    new-array v6, v8, [I

    aput v15, v6, v5

    const/4 v5, 0x1

    aput v3, v6, v5

    return-object v6

    .line 36
    :cond_78
    const/4 v6, 0x1

    if-eqz v11, :cond_8b

    invoke-virtual {v11}, Lcom/miui/autoui/ViewExtras;->isContainsHorizontalList()Z

    move-result v16

    if-eqz v16, :cond_8b

    .line 37
    invoke-virtual {v9, v6}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 38
    new-array v8, v8, [I

    aput v15, v8, v5

    aput v3, v8, v6

    return-object v8

    .line 39
    :cond_8b
    if-eqz v11, :cond_104

    invoke-virtual {v11}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v6

    if-nez v6, :cond_95

    goto/16 :goto_104

    .line 41
    :cond_95
    if-eq v1, v10, :cond_a2

    invoke-static {v15}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    if-ne v6, v13, :cond_a2

    .line 42
    invoke-static {v14, v15}, Lcom/miui/autoui/utils/Utils;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_bf

    .line 44
    :cond_a2
    invoke-virtual {v11}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v6

    if-nez v6, :cond_f7

    invoke-virtual {v11}, Lcom/miui/autoui/ViewExtras;->isWebView()Z

    move-result v6

    if-eqz v6, :cond_b2

    move/from16 v16, v5

    const/4 v5, 0x1

    goto :goto_fa

    .line 48
    :cond_b2
    invoke-static {v1, v9}, Lcom/miui/autoui/utils/ViewProcessor;->handleWebView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z

    move-result v6

    if-nez v6, :cond_c7

    .line 49
    invoke-static {v1, v15, v9}, Lcom/miui/autoui/utils/ViewProcessor;->handleHorizontalList(Landroid/view/View;ILcom/miui/autoui/ViewExtras;)Z

    move-result v6

    if-eqz v6, :cond_bf

    goto :goto_c7

    .line 59
    :cond_bf
    :goto_bf
    new-array v6, v8, [I

    aput v15, v6, v5

    const/4 v5, 0x1

    aput v3, v6, v5

    return-object v6

    .line 50
    :cond_c7
    :goto_c7
    invoke-static {v15}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 51
    .local v6, "measuredWidth":I
    invoke-virtual {v9}, Lcom/miui/autoui/ViewExtras;->getWidth()I

    move-result v5

    if-eq v6, v5, :cond_e5

    invoke-virtual {v9}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v5

    if-eq v6, v5, :cond_e5

    .line 52
    invoke-virtual {v9, v6}, Lcom/miui/autoui/ViewExtras;->setWidth(I)V

    .line 53
    int-to-float v5, v6

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v17

    div-float v5, v5, v17

    float-to-int v5, v5

    invoke-virtual {v9, v5}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 55
    :cond_e5
    invoke-virtual {v9}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v5

    invoke-static {v5, v15}, Lcom/miui/autoui/utils/Utils;->makeMeasureSpec(II)I

    move-result v5

    .line 56
    .end local v15    # "processedMeasureSpec":I
    .local v5, "processedMeasureSpec":I
    new-array v8, v8, [I

    const/16 v16, 0x0

    aput v5, v8, v16

    const/4 v15, 0x1

    aput v3, v8, v15

    return-object v8

    .line 44
    .end local v5    # "processedMeasureSpec":I
    .end local v6    # "measuredWidth":I
    .restart local v15    # "processedMeasureSpec":I
    :cond_f7
    move/from16 v16, v5

    const/4 v5, 0x1

    .line 45
    :goto_fa
    invoke-virtual {v9, v5}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 46
    new-array v6, v8, [I

    aput v15, v6, v16

    aput v3, v6, v5

    return-object v6

    .line 40
    :cond_104
    :goto_104
    invoke-direct {v0, v1, v9, v15, v3}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIMeasure;->measureRootView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;II)[I

    move-result-object v5

    return-object v5

    .line 61
    .end local v9    # "viewInfo":Lcom/miui/autoui/ViewExtras;
    .end local v10    # "rootView":Landroid/view/View;
    .end local v11    # "parentInfo":Lcom/miui/autoui/ViewExtras;
    .end local v12    # "rootInfo":Lcom/miui/autoui/ViewExtras;
    .end local v13    # "realWidth":I
    .end local v14    # "expectedWidth":I
    .end local v15    # "processedMeasureSpec":I
    :cond_109
    move/from16 v16, v5

    const/4 v5, 0x1

    new-array v6, v8, [I

    aput v2, v6, v16

    aput v3, v6, v5

    return-object v6
.end method
