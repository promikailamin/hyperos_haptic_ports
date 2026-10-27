.class public Landroid/widget/TouchPanelLayout;
.super Landroid/widget/LinearLayout;
.source "TouchPanelLayout.java"


# instance fields
.field private blacklist mTemRect:Landroid/graphics/Rect;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TouchPanelLayout;->mTemRect:Landroid/graphics/Rect;

    .line 22
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TouchPanelLayout;->mTemRect:Landroid/graphics/Rect;

    .line 26
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TouchPanelLayout;->mTemRect:Landroid/graphics/Rect;

    .line 30
    return-void
.end method

.method private blacklist checkChildState(II)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 69
    invoke-virtual {p0}, Landroid/widget/TouchPanelLayout;->getChildCount()I

    move-result v0

    .line 70
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_28

    .line 71
    invoke-virtual {p0, v1}, Landroid/widget/TouchPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 72
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 73
    iget-object v3, p0, Landroid/widget/TouchPanelLayout;->mTemRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 74
    iget-object v3, p0, Landroid/widget/TouchPanelLayout;->mTemRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 70
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 77
    .end local v1    # "i":I
    .end local v2    # "child":Landroid/view/View;
    :cond_28
    return-void
.end method

.method private blacklist resetChildState(Z)V
    .registers 6
    .param p1, "performClick"    # Z

    .line 54
    invoke-virtual {p0}, Landroid/widget/TouchPanelLayout;->getChildCount()I

    move-result v0

    .line 55
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_24

    .line 56
    invoke-virtual {p0, v1}, Landroid/widget/TouchPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 57
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_12

    .line 58
    goto :goto_21

    .line 60
    :cond_12
    if-eqz p1, :cond_1d

    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 61
    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 63
    :cond_1d
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 55
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 65
    .end local v1    # "i":I
    .end local v2    # "child":Landroid/view/View;
    :cond_24
    return-void
.end method


# virtual methods
.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 35
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 36
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 37
    .local v2, "y":I
    const/4 v3, 0x0

    .line 38
    .local v3, "performClick":Z
    packed-switch v0, :pswitch_data_1e

    goto :goto_19

    .line 44
    :pswitch_13
    const/4 v3, 0x1

    goto :goto_19

    .line 41
    :pswitch_15
    invoke-direct {p0, v1, v2}, Landroid/widget/TouchPanelLayout;->checkChildState(II)V

    .line 42
    goto :goto_1c

    .line 46
    :goto_19
    invoke-direct {p0, v3}, Landroid/widget/TouchPanelLayout;->resetChildState(Z)V

    .line 49
    :goto_1c
    const/4 v4, 0x1

    return v4

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_13
        :pswitch_15
    .end packed-switch
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 2

    .line 81
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TouchPanelLayout;->setFitsSystemWindows(Z)V

    .line 83
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 87
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/TouchPanelLayout;->resetChildState(Z)V

    .line 89
    return-void
.end method
