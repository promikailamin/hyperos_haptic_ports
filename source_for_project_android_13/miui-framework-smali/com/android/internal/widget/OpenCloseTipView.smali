.class public Lcom/android/internal/widget/OpenCloseTipView;
.super Landroid/widget/LinearLayout;
.source "OpenCloseTipView.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OpenCloseTipView"


# instance fields
.field private blacklist mCurrentOrientaion:I

.field private final blacklist mTipRect:Landroid/graphics/Rect;

.field private blacklist mTipView:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/OpenCloseTipView;->mTipRect:Landroid/graphics/Rect;

    .line 27
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/OpenCloseTipView;->mTipRect:Landroid/graphics/Rect;

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/OpenCloseTipView;->mTipRect:Landroid/graphics/Rect;

    .line 35
    return-void
.end method

.method private blacklist dipToPx(F)F
    .registers 4
    .param p1, "dip"    # F

    .line 104
    nop

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/widget/OpenCloseTipView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 104
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private blacklist inflateResource()V
    .registers 5

    .line 38
    invoke-virtual {p0}, Lcom/android/internal/widget/OpenCloseTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 39
    .local v0, "oritation":I
    iput v0, p0, Lcom/android/internal/widget/OpenCloseTipView;->mCurrentOrientaion:I

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/widget/OpenCloseTipView;->removeAllViews()V

    .line 41
    invoke-virtual {p0}, Lcom/android/internal/widget/OpenCloseTipView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 42
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 43
    const v2, 0x110c0012

    invoke-static {v1, v2, p0}, Lcom/android/internal/widget/OpenCloseTipView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_2a

    .line 45
    :cond_24
    const v2, 0x110c0011

    invoke-static {v1, v2, p0}, Lcom/android/internal/widget/OpenCloseTipView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    :goto_2a
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/OpenCloseTipView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/internal/widget/OpenCloseTipView;->mTipView:Landroid/view/View;

    .line 49
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tipView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/OpenCloseTipView;->mTipView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpenCloseTipView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v2, p0, Lcom/android/internal/widget/OpenCloseTipView;->mTipView:Landroid/view/View;

    const v3, 0x110a0001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 53
    .local v2, "tip_close_button":Landroid/view/View;
    new-instance v3, Lcom/android/internal/widget/OpenCloseTipView$1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/OpenCloseTipView$1;-><init>(Lcom/android/internal/widget/OpenCloseTipView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method


# virtual methods
.method public blacklist hideTipView()V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/internal/widget/OpenCloseTipView;->mTipView:Landroid/view/View;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/OpenCloseTipView;->mTipView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    const-string v0, "OpenCloseTipView"

    const-string v1, "tipview has been hidden"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_18
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/OpenCloseTipView;->mTipView:Landroid/view/View;

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/internal/widget/OpenCloseTipView;->mCurrentOrientaion:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_14

    .line 89
    invoke-direct {p0}, Lcom/android/internal/widget/OpenCloseTipView;->inflateResource()V

    .line 90
    const-string v0, "OpenCloseTipView"

    const-string v1, "tipview has been reinflated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_14
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 19
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 110
    move-object v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/OpenCloseTipView;->mTipView:Landroid/view/View;

    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_6f

    .line 111
    iget-object v1, v0, Lcom/android/internal/widget/OpenCloseTipView;->mTipView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 112
    .local v1, "tipHeight":I
    iget-object v2, v0, Lcom/android/internal/widget/OpenCloseTipView;->mTipView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 113
    .local v2, "tipWidth":I
    sub-int v3, p5, p3

    .line 114
    .local v3, "windowHeight":I
    sub-int v4, p4, p2

    .line 115
    .local v4, "windowWidth":I
    const/4 v5, 0x0

    .line 116
    .local v5, "mTipMarginBottom":I
    invoke-virtual {p0}, Lcom/android/internal/widget/OpenCloseTipView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 117
    .local v6, "context":Landroid/content/Context;
    invoke-static {v6}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/widget/OpenCloseTipView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x110700c8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    float-to-int v5, v7

    goto :goto_41

    .line 120
    :cond_35
    invoke-virtual {p0}, Lcom/android/internal/widget/OpenCloseTipView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x110700c7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    float-to-int v5, v7

    .line 122
    :goto_41
    invoke-virtual {p0}, Lcom/android/internal/widget/OpenCloseTipView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 123
    .local v7, "mBottomCaption":Landroid/view/View;
    sub-int v8, v3, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v9, v5

    invoke-direct {p0, v9}, Lcom/android/internal/widget/OpenCloseTipView;->dipToPx(F)F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v8, v9

    .line 124
    .local v8, "tip_top":I
    sub-int v9, v4, v2

    div-int/lit8 v9, v9, 0x2

    .line 125
    .local v9, "tip_left":I
    iget-object v10, v0, Lcom/android/internal/widget/OpenCloseTipView;->mTipView:Landroid/view/View;

    add-int v11, v9, v2

    add-int v12, v8, v1

    invoke-virtual {v10, v9, v8, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 126
    iget-object v10, v0, Lcom/android/internal/widget/OpenCloseTipView;->mTipView:Landroid/view/View;

    iget-object v11, v0, Lcom/android/internal/widget/OpenCloseTipView;->mTipRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 127
    .end local v1    # "tipHeight":I
    .end local v2    # "tipWidth":I
    .end local v3    # "windowHeight":I
    .end local v4    # "windowWidth":I
    .end local v5    # "mTipMarginBottom":I
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "mBottomCaption":Landroid/view/View;
    .end local v8    # "tip_top":I
    .end local v9    # "tip_left":I
    goto :goto_74

    .line 128
    :cond_6f
    iget-object v1, v0, Lcom/android/internal/widget/OpenCloseTipView;->mTipRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 130
    :goto_74
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 96
    iget-object v0, p0, Lcom/android/internal/widget/OpenCloseTipView;->mTipView:Landroid/view/View;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_16

    .line 97
    iget-object v3, p0, Lcom/android/internal/widget/OpenCloseTipView;->mTipView:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/OpenCloseTipView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 99
    :cond_16
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 100
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/OpenCloseTipView;->setMeasuredDimension(II)V

    .line 101
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 135
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 136
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 137
    .local v2, "y":I
    packed-switch v0, :pswitch_data_36

    goto :goto_34

    .line 139
    :pswitch_12
    iget-object v3, p0, Lcom/android/internal/widget/OpenCloseTipView;->mTipView:Landroid/view/View;

    if-eqz v3, :cond_34

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_34

    .line 141
    :try_start_1c
    iget-object v3, p0, Lcom/android/internal/widget/OpenCloseTipView;->mTipRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/widget/OpenCloseTipView;->hideTipView()V

    .line 143
    const-string v3, "OpenCloseTipView"

    const-string v4, "tipview is hidden because of touch in freeform window"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2e} :catch_30

    .line 145
    :cond_2e
    const/4 v3, 0x1

    return v3

    .line 146
    :catch_30
    move-exception v3

    .line 147
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_34
    :goto_34
    const/4 v3, 0x0

    return v3

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method

.method public blacklist showTipView()V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/OpenCloseTipView;->mTipView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 72
    invoke-direct {p0}, Lcom/android/internal/widget/OpenCloseTipView;->inflateResource()V

    .line 76
    :cond_7
    const-string v0, "OpenCloseTipView"

    const-string v1, "tipview has been shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method
