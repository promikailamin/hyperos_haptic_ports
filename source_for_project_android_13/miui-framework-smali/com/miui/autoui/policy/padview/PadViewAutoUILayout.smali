.class public Lcom/miui/autoui/policy/padview/PadViewAutoUILayout;
.super Lcom/miui/autoui/policy/def/DefaultAutoUILayout;
.source "PadViewAutoUILayout.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/miui/autoui/policy/def/DefaultAutoUILayout;-><init>()V

    return-void
.end method

.method private blacklist changeStretchState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Z)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "shouldStretch"    # Z

    .line 139
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    xor-int/2addr v0, p3

    if-eqz v0, :cond_a

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 142
    :cond_a
    invoke-virtual {p2, p3}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 143
    return-void
.end method

.method private blacklist checkImageStretchStateByParent(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 116
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 117
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_69

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_69

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_69

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 119
    .local v2, "viewWidth":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v3

    int-to-float v3, v3

    .line 120
    .local v3, "compressedScreenWidth":F
    const v4, 0x3f4ccccd    # 0.8f

    mul-float v5, v3, v4

    float-to-int v5, v5

    .line 121
    .local v5, "widthLowThreshold":I
    const v6, 0x3f8ccccd    # 1.1f

    mul-float v7, v3, v6

    float-to-int v7, v7

    .line 122
    .local v7, "widthUpperThreshold":I
    const/4 v8, 0x0

    .line 123
    .local v8, "isParentRealScreenWide":Z
    const/4 v9, 0x1

    if-le v2, v5, :cond_35

    if-ge v2, v7, :cond_35

    move v10, v9

    goto :goto_36

    :cond_35
    const/4 v10, 0x0

    .line 124
    .local v10, "isViewCompressedScreenWide":Z
    :goto_36
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 125
    .local v11, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getWidth()I

    move-result v12

    .line 126
    .local v12, "parentWidth":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v13

    int-to-float v13, v13

    .line 127
    .local v13, "screenWidth":F
    mul-float/2addr v4, v13

    float-to-int v4, v4

    .line 128
    .local v4, "parentWidthLowThreshold":I
    mul-float/2addr v6, v13

    float-to-int v6, v6

    .line 129
    .local v6, "parentWidthUpperThreshold":I
    if-lt v12, v4, :cond_52

    if-gt v12, v6, :cond_52

    .line 130
    const/4 v8, 0x1

    .line 132
    :cond_52
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    if-ne v14, v9, :cond_64

    if-eqz v8, :cond_64

    if-eqz v10, :cond_64

    .line 133
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    invoke-direct {v14, v0, v15, v9}, Lcom/miui/autoui/policy/padview/PadViewAutoUILayout;->changeStretchState(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Z)V

    goto :goto_6d

    .line 132
    :cond_64
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    goto :goto_6d

    .line 117
    .end local v2    # "viewWidth":I
    .end local v3    # "compressedScreenWidth":F
    .end local v4    # "parentWidthLowThreshold":I
    .end local v5    # "widthLowThreshold":I
    .end local v6    # "parentWidthUpperThreshold":I
    .end local v7    # "widthUpperThreshold":I
    .end local v8    # "isParentRealScreenWide":Z
    .end local v10    # "isViewCompressedScreenWide":Z
    .end local v11    # "parent":Landroid/view/ViewGroup;
    .end local v12    # "parentWidth":I
    .end local v13    # "screenWidth":F
    :cond_69
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    .line 136
    :goto_6d
    return-void
.end method

.method private blacklist layoutHalfRecyclerView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 63
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_f3

    .line 64
    invoke-static/range {p1 .. p1}, Lcom/miui/autoui/utils/ViewProcessor;->isRecyclerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 65
    invoke-static/range {p1 .. p1}, Lcom/miui/autoui/utils/ViewProcessor;->isAllChildLoaded(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_f3

    .line 68
    :cond_16
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/miui/autoui/ViewExtras;->isRecyclerInOtherModify(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 69
    return-void

    .line 71
    :cond_1e
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 74
    .local v3, "lowerScreenWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 75
    .local v5, "viewWidth":I
    if-lt v5, v3, :cond_f2

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    move-object v7, v6

    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v8, v6

    .local v8, "childCount":I
    const/4 v9, 0x1

    if-gt v6, v9, :cond_40

    goto/16 :goto_f2

    .line 78
    :cond_40
    const/4 v6, 0x0

    .line 79
    .local v6, "minChildLeft":I
    const/4 v10, 0x0

    .line 80
    .local v10, "maxChildRight":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_43
    if-ge v11, v8, :cond_68

    .line 81
    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 82
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_65

    .line 83
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 84
    .local v13, "left":I
    if-eqz v11, :cond_59

    .line 85
    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 87
    :cond_59
    move v6, v13

    .line 88
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v14

    .line 89
    .local v14, "right":I
    if-eqz v11, :cond_64

    .line 90
    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 92
    :cond_64
    move v10, v14

    .line 80
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "left":I
    .end local v14    # "right":I
    :cond_65
    add-int/lit8 v11, v11, 0x1

    goto :goto_43

    .line 95
    .end local v11    # "i":I
    :cond_68
    sub-int v11, v10, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    .line 96
    .local v11, "maxChildLength":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v12

    if-le v11, v12, :cond_85

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v12

    if-nez v12, :cond_85

    .line 97
    return-void

    .line 99
    :cond_85
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v4

    float-to-int v4, v12

    .line 100
    .local v4, "lowerCompScreenWidth":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3f8ccccd    # 1.1f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 101
    .local v12, "upperCompScreenWidth":I
    if-le v11, v4, :cond_f1

    if-gt v11, v12, :cond_f1

    .line 102
    invoke-virtual {v1, v9}, Lcom/miui/autoui/ViewExtras;->setNeedCompress(Z)V

    .line 103
    invoke-virtual {v1, v9}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 104
    invoke-virtual {v1, v9}, Lcom/miui/autoui/ViewExtras;->setAutoUIGroup(Z)V

    .line 105
    invoke-virtual {v1, v2}, Lcom/miui/autoui/ViewExtras;->setRecyclerViewModifyState(I)V

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/autoui/ViewExtras;->setWidth(I)V

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v9

    mul-float/2addr v2, v9

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v2

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 109
    .local v2, "widthMeasureSpec":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-static {v13, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 110
    .local v9, "heightMeasureSpec":I
    invoke-virtual {v0, v2, v9}, Landroid/view/View;->measure(II)V

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/view/View;->layout(IIII)V

    .line 113
    .end local v2    # "widthMeasureSpec":I
    .end local v9    # "heightMeasureSpec":I
    :cond_f1
    return-void

    .line 76
    .end local v4    # "lowerCompScreenWidth":I
    .end local v6    # "minChildLeft":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "childCount":I
    .end local v10    # "maxChildRight":I
    .end local v11    # "maxChildLength":I
    .end local v12    # "upperCompScreenWidth":I
    :cond_f2
    :goto_f2
    return-void

    .line 66
    .end local v3    # "lowerScreenWidth":I
    .end local v5    # "viewWidth":I
    :cond_f3
    :goto_f3
    return-void
.end method

.method private blacklist layoutImageView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 41
    instance-of v0, p1, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    .line 42
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 43
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isAutoUIGroup()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_5c

    .line 46
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 47
    .local v0, "measureWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 48
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_21

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5b

    .line 49
    :cond_21
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eq v0, v3, :cond_5b

    .line 50
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v3

    if-eq v0, v3, :cond_2e

    goto :goto_5b

    .line 53
    :cond_2e
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 54
    .local v1, "compRateWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_45

    if-ge v1, v0, :cond_45

    .line 55
    move v0, v1

    .line 56
    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setCompressWidth(I)V

    .line 58
    :cond_45
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 59
    const/4 v3, 0x1

    return v3

    .line 51
    .end local v1    # "compRateWidth":I
    :cond_5b
    :goto_5b
    return v1

    .line 44
    .end local v0    # "measureWidth":I
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5c
    :goto_5c
    return v1
.end method

.method private blacklist layoutPolicyView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 155
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getViewPolicy()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 156
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getRecyclerViewModifyState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 157
    invoke-static {p1, p2}, Lcom/miui/autoui/utils/ViewProcessor;->stretchSpanForVerticalRecycler(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 159
    :cond_11
    return-void
.end method


# virtual methods
.method public blacklist postViewLayout(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 16
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 18
    .local v0, "viewExtras":Lcom/miui/autoui/ViewExtras;
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isFloat()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_48

    .line 22
    :cond_d
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/padview/PadViewAutoUILayout;->layoutImageView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 23
    return-void

    .line 26
    :cond_14
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_28

    .line 35
    :cond_21
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/padview/PadViewAutoUILayout;->layoutHalfRecyclerView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/padview/PadViewAutoUILayout;->checkImageStretchStateByParent(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 37
    return-void

    .line 27
    :cond_28
    :goto_28
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_47

    .line 28
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-ne v1, v2, :cond_47

    .line 29
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/autoui/ViewExtras;->setNeedOriginalLayout(Z)V

    .line 30
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 32
    :cond_47
    return-void

    .line 19
    :cond_48
    :goto_48
    return-void
.end method

.method public blacklist preViewLayout(Landroid/view/View;IIII)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 147
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 148
    .local v0, "viewExtras":Lcom/miui/autoui/ViewExtras;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isFloat()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_11

    .line 151
    :cond_d
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/padview/PadViewAutoUILayout;->layoutPolicyView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 152
    return-void

    .line 149
    :cond_11
    :goto_11
    return-void
.end method
