.class public Lcom/miui/autoui/policy/view/ViewAutoUIEvent;
.super Lcom/miui/autoui/policy/def/DefaultAutoUIEvent;
.source "ViewAutoUIEvent.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/miui/autoui/policy/def/DefaultAutoUIEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist pointInView(Landroid/view/View;FF)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "localX"    # F
    .param p3, "localY"    # F

    .line 32
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 33
    return v0

    .line 35
    :cond_4
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 36
    .local v1, "info":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v2

    .line 37
    .local v2, "parentInfo":Lcom/miui/autoui/ViewExtras;
    const/4 v3, 0x0

    if-eqz v2, :cond_47

    invoke-virtual {v2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v4

    if-nez v4, :cond_47

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 38
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->getDrawOffsetX()F

    move-result v4

    add-float/2addr v4, p2

    .line 39
    .local v4, "newLocalX":F
    cmpl-float v5, v4, v3

    if-ltz v5, :cond_45

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v6

    div-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_45

    cmpl-float v3, p3, v3

    if-ltz v3, :cond_45

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gez v3, :cond_45

    const/4 v0, 0x1

    goto :goto_46

    :cond_45
    nop

    .line 39
    :goto_46
    return v0

    .line 42
    .end local v4    # "newLocalX":F
    :cond_47
    invoke-virtual {p1, p2, p3, v3}, Landroid/view/View;->pointInView(FFF)Z

    move-result v0

    return v0
.end method

.method public blacklist postDispatchTouch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;

    .line 58
    if-eqz p1, :cond_4a

    if-nez p2, :cond_5

    goto :goto_4a

    .line 61
    :cond_5
    invoke-static {p2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 62
    .local v0, "childInfo":Lcom/miui/autoui/ViewExtras;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedOriginalLayout()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 63
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    neg-float v3, v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    sub-float v4, v2, v4

    mul-float/2addr v3, v4

    invoke-virtual {p3, v3, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 66
    :cond_23
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v3

    .line 67
    .local v3, "parentInfo":Lcom/miui/autoui/ViewExtras;
    if-eqz v3, :cond_49

    if-eqz v0, :cond_49

    invoke-virtual {v3}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v4

    if-nez v4, :cond_49

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 68
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v5

    sub-float/2addr v2, v5

    mul-float/2addr v4, v2

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getDrawOffsetX()F

    move-result v2

    sub-float/2addr v4, v2

    .line 69
    .local v4, "offsetX":F
    invoke-virtual {p3, v4, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 71
    .end local v4    # "offsetX":F
    :cond_49
    return-void

    .line 59
    .end local v0    # "childInfo":Lcom/miui/autoui/ViewExtras;
    .end local v3    # "parentInfo":Lcom/miui/autoui/ViewExtras;
    :cond_4a
    :goto_4a
    return-void
.end method

.method public blacklist preDispatchTouch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;

    .line 15
    if-eqz p1, :cond_4c

    if-eqz p2, :cond_4c

    if-nez p3, :cond_7

    goto :goto_4c

    .line 18
    :cond_7
    invoke-static {p2}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 19
    .local v0, "childInfo":Lcom/miui/autoui/ViewExtras;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedOriginalLayout()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 20
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    sub-float v4, v2, v4

    mul-float/2addr v3, v4

    invoke-virtual {p3, v3, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 23
    :cond_24
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v3

    .line 24
    .local v3, "parentInfo":Lcom/miui/autoui/ViewExtras;
    if-eqz v3, :cond_4b

    if-eqz v0, :cond_4b

    invoke-virtual {v3}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v4

    if-nez v4, :cond_4b

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 25
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    neg-float v4, v4

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v5

    sub-float/2addr v2, v5

    mul-float/2addr v4, v2

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getDrawOffsetX()F

    move-result v2

    add-float/2addr v4, v2

    .line 26
    .local v4, "offsetX":F
    invoke-virtual {p3, v4, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 28
    .end local v4    # "offsetX":F
    :cond_4b
    return-void

    .line 16
    .end local v0    # "childInfo":Lcom/miui/autoui/ViewExtras;
    .end local v3    # "parentInfo":Lcom/miui/autoui/ViewExtras;
    :cond_4c
    :goto_4c
    return-void
.end method

.method public blacklist processPointerEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 47
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_31

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_31

    .line 48
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "firstChild":Landroid/view/View;
    invoke-static {v0}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 50
    .local v1, "childInfo":Lcom/miui/autoui/ViewExtras;
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 54
    .end local v0    # "firstChild":Landroid/view/View;
    .end local v1    # "childInfo":Lcom/miui/autoui/ViewExtras;
    :cond_31
    return-void
.end method
