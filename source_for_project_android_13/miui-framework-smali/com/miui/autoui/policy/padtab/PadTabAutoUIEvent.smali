.class public Lcom/miui/autoui/policy/padtab/PadTabAutoUIEvent;
.super Lcom/miui/autoui/policy/def/DefaultAutoUIEvent;
.source "PadTabAutoUIEvent.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/miui/autoui/policy/def/DefaultAutoUIEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist pointInView(Landroid/view/View;FF)Z
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "localX"    # F
    .param p3, "localY"    # F

    .line 38
    if-nez p1, :cond_4

    .line 39
    const/4 v0, 0x0

    return v0

    .line 41
    :cond_4
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 42
    .local v0, "info":Lcom/miui/autoui/ViewExtras;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 43
    invoke-virtual {p1, p2, p3, v1}, Landroid/view/View;->pointInView(FFF)Z

    move-result v1

    return v1

    .line 45
    :cond_10
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p2

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getDrawOffsetX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 47
    .local v2, "newLocalX":F
    invoke-virtual {p1, v2, p3, v1}, Landroid/view/View;->pointInView(FFF)Z

    move-result v1

    return v1

    .line 48
    .end local v2    # "newLocalX":F
    :cond_31
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isFloatIcon()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-nez v2, :cond_53

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2, p3, v1}, Landroid/view/View;->pointInView(FFF)Z

    move-result v1

    return v1

    .line 51
    :cond_53
    invoke-virtual {p1, p2, p3, v1}, Landroid/view/View;->pointInView(FFF)Z

    move-result v1

    return v1
.end method

.method public blacklist postDispatchTouch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 9
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;

    .line 72
    if-eqz p1, :cond_5a

    if-eqz p2, :cond_5a

    if-nez p3, :cond_7

    goto :goto_5a

    .line 75
    :cond_7
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 76
    .local v0, "info":Lcom/miui/autoui/ViewExtras;
    invoke-static {p2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 77
    .local v1, "childInfo":Lcom/miui/autoui/ViewExtras;
    if-eqz v0, :cond_59

    if-nez v1, :cond_14

    goto :goto_59

    .line 80
    :cond_14
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v2

    if-nez v2, :cond_58

    .line 81
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 82
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v2

    sget-object v3, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3e

    .line 83
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p3, v2, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_58

    .line 84
    :cond_3e
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v2

    sget-object v3, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v2, v3, :cond_58

    .line 85
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p3, v2, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 88
    :cond_58
    :goto_58
    return-void

    .line 78
    :cond_59
    :goto_59
    return-void

    .line 73
    .end local v0    # "info":Lcom/miui/autoui/ViewExtras;
    .end local v1    # "childInfo":Lcom/miui/autoui/ViewExtras;
    :cond_5a
    :goto_5a
    return-void
.end method

.method public blacklist preDispatchTouch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 9
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;

    .line 17
    if-nez p3, :cond_3

    return-void

    .line 18
    :cond_3
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 19
    .local v0, "info":Lcom/miui/autoui/ViewExtras;
    invoke-static {p2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 20
    .local v1, "childInfo":Lcom/miui/autoui/ViewExtras;
    if-eqz v0, :cond_58

    if-nez v1, :cond_10

    goto :goto_58

    .line 23
    :cond_10
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v2

    if-nez v2, :cond_54

    .line 24
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 25
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v2

    sget-object v3, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_39

    .line 26
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p3, v2, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_54

    .line 27
    :cond_39
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v2

    sget-object v3, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    if-ne v2, v3, :cond_54

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p3, v2, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 31
    :cond_54
    :goto_54
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isMidGroup()Z

    .line 34
    return-void

    .line 21
    :cond_58
    :goto_58
    return-void
.end method

.method public blacklist processPointerEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 57
    if-eqz p2, :cond_3a

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3a

    .line 58
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 59
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v3

    .line 62
    .local v3, "info":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_37

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 64
    goto :goto_3a

    .line 59
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "info":Lcom/miui/autoui/ViewExtras;
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 68
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_3a
    :goto_3a
    return-void
.end method
