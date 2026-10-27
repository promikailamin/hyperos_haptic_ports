.class public Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIEvent;
.super Lcom/miui/autoui/policy/def/DefaultAutoUIEvent;
.source "PadActivityAutoUIEvent.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/miui/autoui/policy/def/DefaultAutoUIEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist pointInView(Landroid/view/View;FF)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "localX"    # F
    .param p3, "localY"    # F

    .line 39
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 40
    return v0

    .line 42
    :cond_4
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 43
    .local v1, "info":Lcom/miui/autoui/ViewExtras;
    const/4 v2, 0x0

    if-eqz v1, :cond_54

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 44
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 45
    invoke-virtual {p1, p2, p3, v2}, Landroid/view/View;->pointInView(FFF)Z

    move-result v0

    return v0

    .line 47
    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p2

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->getDrawOffsetX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 48
    .local v3, "newLocalX":F
    cmpl-float v4, v3, v2

    if-lez v4, :cond_53

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_53

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p3, v4

    if-gez v4, :cond_53

    cmpl-float v2, p3, v2

    if-lez v2, :cond_53

    const/4 v0, 0x1

    :cond_53
    return v0

    .line 49
    .end local v3    # "newLocalX":F
    :cond_54
    if-eqz v1, :cond_78

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isFloatIcon()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v0

    if-nez v0, :cond_78

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v3

    mul-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p1, v0, p3, v2}, Landroid/view/View;->pointInView(FFF)Z

    move-result v0

    return v0

    .line 52
    :cond_78
    invoke-virtual {p1, p2, p3, v2}, Landroid/view/View;->pointInView(FFF)Z

    move-result v0

    return v0
.end method

.method public blacklist postDispatchTouch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;

    .line 73
    if-eqz p1, :cond_70

    if-eqz p2, :cond_70

    if-nez p3, :cond_7

    goto :goto_70

    .line 76
    :cond_7
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 77
    .local v0, "info":Lcom/miui/autoui/ViewExtras;
    invoke-static {p2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 78
    .local v1, "childInfo":Lcom/miui/autoui/ViewExtras;
    if-eqz v0, :cond_6f

    if-nez v1, :cond_14

    goto :goto_6f

    .line 82
    :cond_14
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isContainsHorizontalList()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2b

    .line 83
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    neg-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v2, v4

    invoke-virtual {p3, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 86
    :cond_2b
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v2

    if-nez v2, :cond_6e

    .line 87
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 88
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v2

    sget-object v4, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v2, v4, :cond_54

    .line 89
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p3, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_6e

    .line 90
    :cond_54
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v2

    sget-object v4, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v2, v4, :cond_6e

    .line 91
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-virtual {p3, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 94
    :cond_6e
    :goto_6e
    return-void

    .line 79
    :cond_6f
    :goto_6f
    return-void

    .line 74
    .end local v0    # "info":Lcom/miui/autoui/ViewExtras;
    .end local v1    # "childInfo":Lcom/miui/autoui/ViewExtras;
    :cond_70
    :goto_70
    return-void
.end method

.method public blacklist preDispatchTouch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;

    .line 16
    if-nez p3, :cond_3

    return-void

    .line 17
    :cond_3
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 18
    .local v0, "info":Lcom/miui/autoui/ViewExtras;
    invoke-static {p2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 19
    .local v1, "childInfo":Lcom/miui/autoui/ViewExtras;
    if-eqz v0, :cond_6a

    if-nez v1, :cond_10

    goto :goto_6a

    .line 23
    :cond_10
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isContainsHorizontalList()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    .line 24
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v2, v4

    invoke-virtual {p3, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 27
    :cond_26
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v2

    if-nez v2, :cond_69

    .line 28
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 29
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v2

    sget-object v4, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v2, v4, :cond_4e

    .line 30
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p3, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_69

    .line 31
    :cond_4e
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v2

    sget-object v4, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v2, v4, :cond_69

    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-virtual {p3, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 35
    :cond_69
    :goto_69
    return-void

    .line 20
    :cond_6a
    :goto_6a
    return-void
.end method

.method public blacklist processPointerEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 58
    if-eqz p2, :cond_3a

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3a

    .line 59
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 60
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 62
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v3

    .line 63
    .local v3, "info":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_37

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 64
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 65
    goto :goto_3a

    .line 60
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "info":Lcom/miui/autoui/ViewExtras;
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 69
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_3a
    :goto_3a
    return-void
.end method
