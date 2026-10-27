.class public Lcom/miui/autoui/policy/activity/ActivityAutoUIMeasure;
.super Lcom/miui/autoui/policy/def/DefaultAutoUIMeasure;
.source "ActivityAutoUIMeasure.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/miui/autoui/policy/def/DefaultAutoUIMeasure;-><init>()V

    return-void
.end method

.method private blacklist measureFloatingWindow(Lcom/miui/autoui/ViewExtras;II)[I
    .registers 10
    .param p1, "viewInfo"    # Lcom/miui/autoui/ViewExtras;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 97
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 98
    .local v1, "widthSize":I
    move v2, p2

    .line 99
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

    .line 100
    invoke-virtual {p1, v1}, Lcom/miui/autoui/ViewExtras;->setWidth(I)V

    .line 101
    int-to-float v3, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1, v3}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 102
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v3

    invoke-static {v3, p2}, Lcom/miui/autoui/utils/ViewProcessor;->makeMeasureSpec(II)I

    move-result v2

    .line 104
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

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "rootView":Landroid/view/View;
    move v1, p3

    .line 110
    .local v1, "processedMeasureSpec":I
    instance-of v2, v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_a8

    .line 111
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 112
    .local v2, "rootViewGroup":Landroid/view/ViewGroup;
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v5

    .line 113
    .local v5, "realWidth":I
    int-to-float v6, v5

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 114
    .local v6, "expectedWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 115
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-ne v8, v0, :cond_3b

    .line 116
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    if-ne v8, v5, :cond_3b

    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3b

    .line 118
    invoke-static {v6, v1}, Lcom/miui/autoui/utils/Utils;->makeMeasureSpec(II)I

    move-result v1

    .line 119
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    goto/16 :goto_a8

    .line 120
    :cond_3b
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    if-ne p1, v8, :cond_4f

    .line 121
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    if-ne v8, v6, :cond_4f

    .line 122
    invoke-static {v5, v1}, Lcom/miui/autoui/utils/Utils;->makeMeasureSpec(II)I

    move-result v1

    .line 123
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    goto :goto_a8

    .line 124
    :cond_4f
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    if-eq p1, v8, :cond_77

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    if-eq v8, v9, :cond_77

    .line 125
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_a8

    .line 126
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 127
    .local v8, "child0":Landroid/view/View;
    invoke-static {v8}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v9

    .line 128
    .local v9, "child0Info":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v9}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v10

    if-eqz v10, :cond_76

    .line 129
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 131
    .end local v8    # "child0":Landroid/view/View;
    .end local v9    # "child0Info":Lcom/miui/autoui/ViewExtras;
    :cond_76
    goto :goto_a8

    .line 132
    :cond_77
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isFloatImageView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_a8

    .line 133
    instance-of v8, v7, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v8, :cond_a8

    .line 134
    move-object v8, v7

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 135
    .local v8, "fLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v9, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-ltz v9, :cond_a2

    iget v9, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 136
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v10

    if-ge v9, v10, :cond_a2

    iget v9, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-nez v9, :cond_a2

    .line 138
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setFloatIcon(Z)V

    .line 139
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 140
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    goto :goto_a8

    .line 142
    :cond_a2
    invoke-virtual {p2, v4}, Lcom/miui/autoui/ViewExtras;->setFloatIcon(Z)V

    .line 143
    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 148
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

.method private blacklist preMeasureSpecifiedPolicyView(Lcom/miui/autoui/ViewExtras;)V
    .registers 6
    .param p1, "viewInfo"    # Lcom/miui/autoui/ViewExtras;

    .line 83
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->getViewPolicy()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_12

    .line 84
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 85
    invoke-virtual {p1, v1}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    goto :goto_2f

    .line 86
    :cond_12
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->getViewPolicy()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_21

    .line 87
    invoke-virtual {p1, v1}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 88
    invoke-virtual {p1, v3}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    goto :goto_2f

    .line 89
    :cond_21
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->getViewPolicy()I

    move-result v0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_2f

    .line 90
    invoke-virtual {p1, v1}, Lcom/miui/autoui/ViewExtras;->setContainsHorizontalList(Z)V

    .line 91
    invoke-virtual {p1, v3}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 93
    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public blacklist postViewMeasure(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 153
    invoke-super {p0, p1}, Lcom/miui/autoui/policy/def/DefaultAutoUIMeasure;->postViewMeasure(Landroid/view/View;)V

    .line 154
    return-void
.end method

.method public blacklist preViewMeasure(Landroid/view/View;II)[I
    .registers 21
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 18
    .local v4, "title":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_20

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v7

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/autoui/AutoPolicyUtils;->needStretch(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    move v7, v6

    goto :goto_21

    :cond_20
    move v7, v5

    .line 19
    .local v7, "needStretch":Z
    :goto_21
    const/4 v8, 0x2

    if-nez v7, :cond_2b

    .line 20
    new-array v8, v8, [I

    aput v2, v8, v5

    aput v3, v8, v6

    return-object v8

    .line 23
    :cond_2b
    invoke-static/range {p1 .. p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v9

    .line 24
    .local v9, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .line 25
    .local v10, "rootView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    invoke-static {v11}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v11

    .line 26
    .local v11, "parentInfo":Lcom/miui/autoui/ViewExtras;
    invoke-static {v10}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v12

    .line 27
    .local v12, "rootInfo":Lcom/miui/autoui/ViewExtras;
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v13

    .line 28
    .local v13, "realWidth":I
    int-to-float v14, v13

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v15

    mul-float/2addr v14, v15

    float-to-int v14, v14

    .line 29
    .local v14, "expectedWidth":I
    move/from16 v15, p2

    .line 32
    .local v15, "processedMeasureSpec":I
    invoke-virtual {v9}, Lcom/miui/autoui/ViewExtras;->getViewPolicy()I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_66

    .line 33
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v6

    .line 34
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Lcom/miui/autoui/AutoPolicyUtils;->getViewPolicy(Ljava/lang/String;Landroid/view/View;)I

    move-result v6

    .line 33
    invoke-virtual {v9, v6}, Lcom/miui/autoui/ViewExtras;->setViewPolicy(I)V

    .line 38
    :cond_66
    invoke-direct {v0, v9}, Lcom/miui/autoui/policy/activity/ActivityAutoUIMeasure;->preMeasureSpecifiedPolicyView(Lcom/miui/autoui/ViewExtras;)V

    .line 40
    if-ne v1, v10, :cond_70

    invoke-static {v10}, Lcom/miui/autoui/utils/ViewProcessor;->isFloatView(Landroid/view/View;)Z

    move-result v6

    goto :goto_74

    :cond_70
    invoke-virtual {v12}, Lcom/miui/autoui/ViewExtras;->isFloat()Z

    move-result v6

    :goto_74
    invoke-virtual {v9, v6}, Lcom/miui/autoui/ViewExtras;->setFloat(Z)V

    .line 41
    invoke-virtual {v9}, Lcom/miui/autoui/ViewExtras;->isFloat()Z

    move-result v6

    if-eqz v6, :cond_82

    .line 42
    invoke-direct {v0, v9, v2, v3}, Lcom/miui/autoui/policy/activity/ActivityAutoUIMeasure;->measureFloatingWindow(Lcom/miui/autoui/ViewExtras;II)[I

    move-result-object v5

    return-object v5

    .line 45
    :cond_82
    invoke-virtual {v12}, Lcom/miui/autoui/ViewExtras;->isReactRootView()Z

    move-result v6

    if-eqz v6, :cond_94

    .line 46
    invoke-virtual {v9, v5}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 47
    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v15, v6, v5

    const/4 v8, 0x1

    aput v3, v6, v8

    return-object v6

    .line 48
    :cond_94
    const/4 v8, 0x1

    if-eqz v11, :cond_a8

    invoke-virtual {v11}, Lcom/miui/autoui/ViewExtras;->isContainsHorizontalList()Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 49
    invoke-virtual {v9, v8}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 50
    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v15, v6, v5

    aput v3, v6, v8

    return-object v6

    .line 51
    :cond_a8
    if-eqz v11, :cond_12a

    invoke-virtual {v11}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v6

    if-nez v6, :cond_b2

    goto/16 :goto_12a

    .line 53
    :cond_b2
    if-eq v1, v10, :cond_bf

    invoke-static {v15}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    if-ne v6, v13, :cond_bf

    .line 54
    invoke-static {v14, v15}, Lcom/miui/autoui/utils/Utils;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_e3

    .line 56
    :cond_bf
    invoke-virtual {v11}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v6

    if-nez v6, :cond_11e

    invoke-virtual {v11}, Lcom/miui/autoui/ViewExtras;->isWebView()Z

    move-result v6

    if-eqz v6, :cond_ce

    const/4 v6, 0x2

    const/4 v8, 0x1

    goto :goto_120

    .line 60
    :cond_ce
    invoke-virtual {v9}, Lcom/miui/autoui/ViewExtras;->getViewPolicy()I

    move-result v6

    const/16 v8, 0x13

    if-eq v6, v8, :cond_ef

    .line 61
    invoke-static {v1, v9}, Lcom/miui/autoui/utils/ViewProcessor;->handleWebView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z

    move-result v6

    if-nez v6, :cond_ef

    .line 62
    invoke-static {v1, v15, v9}, Lcom/miui/autoui/utils/ViewProcessor;->handleHorizontalList(Landroid/view/View;ILcom/miui/autoui/ViewExtras;)Z

    move-result v6

    if-eqz v6, :cond_e3

    goto :goto_ef

    .line 73
    :cond_e3
    :goto_e3
    const/4 v6, 0x1

    invoke-virtual {v9, v6}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 74
    const/4 v8, 0x2

    new-array v8, v8, [I

    aput v15, v8, v5

    aput v3, v8, v6

    return-object v8

    .line 63
    :cond_ef
    :goto_ef
    invoke-static {v15}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 64
    .local v6, "measuredWidth":I
    invoke-virtual {v9}, Lcom/miui/autoui/ViewExtras;->getWidth()I

    move-result v8

    if-eq v6, v8, :cond_10d

    invoke-virtual {v9}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v8

    if-eq v6, v8, :cond_10d

    .line 65
    invoke-virtual {v9, v6}, Lcom/miui/autoui/ViewExtras;->setWidth(I)V

    .line 66
    int-to-float v8, v6

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v16

    div-float v8, v8, v16

    float-to-int v8, v8

    invoke-virtual {v9, v8}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 68
    :cond_10d
    invoke-virtual {v9}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v8

    invoke-static {v8, v15}, Lcom/miui/autoui/utils/Utils;->makeMeasureSpec(II)I

    move-result v8

    .line 69
    .end local v15    # "processedMeasureSpec":I
    .local v8, "processedMeasureSpec":I
    const/4 v15, 0x2

    new-array v15, v15, [I

    aput v8, v15, v5

    const/4 v5, 0x1

    aput v3, v15, v5

    return-object v15

    .line 56
    .end local v6    # "measuredWidth":I
    .end local v8    # "processedMeasureSpec":I
    .restart local v15    # "processedMeasureSpec":I
    :cond_11e
    const/4 v6, 0x2

    const/4 v8, 0x1

    .line 57
    :goto_120
    invoke-virtual {v9, v8}, Lcom/miui/autoui/ViewExtras;->setIgnore(Z)V

    .line 58
    new-array v6, v6, [I

    aput v15, v6, v5

    aput v3, v6, v8

    return-object v6

    .line 52
    :cond_12a
    :goto_12a
    invoke-direct {v0, v1, v9, v15, v3}, Lcom/miui/autoui/policy/activity/ActivityAutoUIMeasure;->measureRootView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;II)[I

    move-result-object v5

    return-object v5
.end method
