.class public Lcom/miui/autoui/policy/padactivity/PadActivityAutoUILayout;
.super Lcom/miui/autoui/policy/def/DefaultAutoUILayout;
.source "PadActivityAutoUILayout.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/miui/autoui/policy/def/DefaultAutoUILayout;-><init>()V

    return-void
.end method

.method private blacklist checkAlignment(Landroid/widget/LinearLayout;Landroid/view/View;)Lcom/miui/autoui/ViewExtras$Alignment;
    .registers 12
    .param p1, "group"    # Landroid/widget/LinearLayout;
    .param p2, "child"    # Landroid/view/View;

    .line 72
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    .line 73
    .local v0, "alignment":Lcom/miui/autoui/ViewExtras$Alignment;
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    .line 74
    .local v1, "orientation":I
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getGravity()I

    move-result v2

    const v3, 0x800007

    and-int/2addr v2, v3

    .line 75
    .local v2, "hgrav":I
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v3

    .line 76
    .local v3, "layoutDirection":I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_41

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_41

    .line 77
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 78
    .local v5, "childLp":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v6, :cond_29

    move v6, v2

    goto :goto_2b

    :cond_29
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 79
    .local v6, "childGravity":I
    :goto_2b
    invoke-static {v6, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    .line 80
    .local v7, "absoluteGravity":I
    and-int/lit8 v8, v7, 0x7

    if-ne v8, v4, :cond_36

    .line 81
    sget-object v4, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    return-object v4

    .line 83
    :cond_36
    and-int/lit8 v4, v7, 0x7

    const/4 v8, 0x5

    if-ne v4, v8, :cond_3e

    .line 84
    sget-object v4, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    return-object v4

    .line 86
    :cond_3e
    sget-object v4, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    return-object v4

    .line 88
    .end local v5    # "childLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "childGravity":I
    .end local v7    # "absoluteGravity":I
    :cond_41
    return-object v0
.end method

.method private blacklist relayoutHorizontalList(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 11
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;

    .line 52
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    .line 53
    .local v0, "alignment":Lcom/miui/autoui/ViewExtras$Alignment;
    instance-of v1, p1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_d

    .line 54
    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, p2}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUILayout;->checkAlignment(Landroid/widget/LinearLayout;Landroid/view/View;)Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v0

    .line 56
    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 57
    .local v1, "left":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 58
    .local v2, "groupRealWidth":I
    sget-object v3, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v0, v3, :cond_45

    .line 59
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x2

    .line 60
    .local v3, "childLeft":I
    int-to-float v5, v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v7

    sub-float/2addr v4, v7

    mul-float/2addr v6, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v5, v4

    float-to-int v1, v5

    .end local v3    # "childLeft":I
    goto :goto_64

    .line 61
    :cond_45
    sget-object v3, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v0, v3, :cond_64

    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    .line 63
    .restart local v3    # "childLeft":I
    int-to-float v5, v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v7

    sub-float/2addr v4, v7

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v5, v4

    float-to-int v1, v5

    goto :goto_65

    .line 61
    .end local v3    # "childLeft":I
    :cond_64
    :goto_64
    nop

    .line 65
    :goto_65
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p2, v1, v3, v4, v5}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v3

    .line 67
    .local v3, "renderNode":Landroid/graphics/RenderNode;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/RenderNode;->setLeft(I)Z

    .line 68
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/RenderNode;->setRight(I)Z

    .line 69
    return-void
.end method


# virtual methods
.method public blacklist postViewLayout(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .line 21
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 22
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 23
    .local v1, "parentInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isContainsHorizontalList()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v2

    .line 26
    .local v2, "renderNode":Landroid/graphics/RenderNode;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/RenderNode;->setLeft(I)Z

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/RenderNode;->setRight(I)Z

    .line 28
    .end local v2    # "renderNode":Landroid/graphics/RenderNode;
    goto :goto_a1

    .line 29
    :cond_3d
    if-eqz v1, :cond_49

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 30
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 32
    :cond_49
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_7f

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isFloatIcon()Z

    move-result v2

    if-nez v2, :cond_7f

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v2

    .line 34
    .restart local v2    # "renderNode":Landroid/graphics/RenderNode;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/RenderNode;->setLeft(I)Z

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/RenderNode;->setRight(I)Z

    .line 37
    .end local v2    # "renderNode":Landroid/graphics/RenderNode;
    :cond_7f
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_a1

    .line 38
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    .line 39
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 40
    .local v3, "childCnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8b
    if-ge v4, v3, :cond_a1

    .line 41
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 42
    .local v5, "child":Landroid/view/View;
    invoke-static {v5}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v6

    .line 43
    .local v6, "childInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v6}, Lcom/miui/autoui/ViewExtras;->isContainsHorizontalList()Z

    move-result v7

    if-eqz v7, :cond_9e

    .line 44
    invoke-direct {p0, v2, v5}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUILayout;->relayoutHorizontalList(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 40
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childInfo":Lcom/miui/autoui/ViewExtras;
    :cond_9e
    add-int/lit8 v4, v4, 0x1

    goto :goto_8b

    .line 49
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "childCnt":I
    .end local v4    # "i":I
    :cond_a1
    :goto_a1
    return-void
.end method

.method public blacklist preViewLayout(Landroid/view/View;IIII)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 93
    invoke-super/range {p0 .. p5}, Lcom/miui/autoui/policy/def/DefaultAutoUILayout;->preViewLayout(Landroid/view/View;IIII)V

    .line 94
    return-void
.end method
