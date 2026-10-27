.class public Landroid/widget/FloatPanelView;
.super Landroid/widget/FrameLayout;
.source "FloatPanelView.java"


# static fields
.field public static final blacklist DOWN_ARROW:I = -0x1

.field public static final blacklist NO_ARROW:I = 0x0

.field public static final blacklist UP_ARROW:I = 0x1


# instance fields
.field private blacklist mContent:Landroid/view/ViewGroup;

.field private blacklist mDirection:I

.field private blacklist mDownArrow:Landroid/widget/ImageView;

.field private blacklist mLeftRoundCorner:I

.field private blacklist mOffset:I

.field private blacklist mRightRoundCorner:I

.field private blacklist mUpArrow:Landroid/widget/ImageView;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0}, Landroid/widget/FloatPanelView;->init()V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Landroid/widget/FloatPanelView;->init()V

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Landroid/widget/FloatPanelView;->init()V

    .line 33
    return-void
.end method

.method private blacklist getImageView(I)Landroid/widget/ImageView;
    .registers 4
    .param p1, "resourceId"    # I

    .line 51
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "i":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    return-object v0
.end method

.method private blacklist init()V
    .registers 2

    .line 46
    const v0, 0x11080251

    invoke-direct {p0, v0}, Landroid/widget/FloatPanelView;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    .line 47
    const v0, 0x11080250

    invoke-direct {p0, v0}, Landroid/widget/FloatPanelView;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    .line 48
    return-void
.end method


# virtual methods
.method public blacklist getContent()Landroid/view/ViewGroup;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 15
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 135
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 136
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_cb

    iget-object v1, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_cb

    iget-object v1, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    if-nez v1, :cond_11

    goto/16 :goto_cb

    .line 141
    :cond_11
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "arrow":Landroid/widget/ImageView;
    iget v1, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    .line 145
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    goto :goto_29

    .line 146
    :cond_24
    const/4 v3, -0x1

    if-ne v1, v3, :cond_29

    .line 147
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    .line 149
    :cond_29
    :goto_29
    if-eqz v0, :cond_a1

    .line 150
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 151
    .local v1, "arrowWidth":I
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 152
    .local v3, "arrowHeight":I
    iget v4, p0, Landroid/widget/FloatPanelView;->mDirection:I

    if-ne v4, v2, :cond_41

    move v2, p3

    goto :goto_48

    :cond_41
    iget-object v2, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    .line 153
    .local v2, "t":I
    :goto_48
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    sub-int v4, p4, p2

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    iget v5, p0, Landroid/widget/FloatPanelView;->mOffset:I

    add-int/2addr v4, v5

    .line 155
    .local v4, "l":I
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    iget v6, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_6b

    .line 156
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    iget v6, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    add-int v4, v5, v6

    goto :goto_76

    .line 157
    :cond_6b
    sub-int v5, p4, v1

    iget v6, p0, Landroid/widget/FloatPanelView;->mRightRoundCorner:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_76

    .line 158
    sub-int v5, p4, v1

    sub-int v4, v5, v6

    .line 160
    :cond_76
    :goto_76
    add-int v5, v4, v1

    add-int v6, v2, v3

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 161
    if-ne v2, p3, :cond_81

    move v5, v3

    goto :goto_82

    :cond_81
    move v5, p3

    :goto_82
    move v2, v5

    .line 162
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    iget-object v7, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    .line 163
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    iget-object v8, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    .line 164
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    .line 162
    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 165
    .end local v1    # "arrowWidth":I
    .end local v2    # "t":I
    .end local v3    # "arrowHeight":I
    .end local v4    # "l":I
    goto :goto_ca

    .line 166
    :cond_a1
    iget-object v1, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iget-object v3, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    .line 167
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    .line 168
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    iget-object v6, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 166
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 170
    :goto_ca
    return-void

    .line 137
    .end local v0    # "arrow":Landroid/widget/ImageView;
    :cond_cb
    :goto_cb
    const-string v0, "FloatPanelView"

    const-string v1, "couldn\'t find view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "arrow":Landroid/widget/ImageView;
    iget v1, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 124
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    goto :goto_e

    .line 125
    :cond_9
    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    .line 126
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    .line 128
    :cond_e
    :goto_e
    if-nez v0, :cond_12

    const/4 v1, 0x0

    goto :goto_1a

    :cond_12
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 129
    .local v1, "arrowHeight":I
    :goto_1a
    iget-object v2, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 130
    iget-object v2, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/widget/FloatPanelView;->setMeasuredDimension(II)V

    .line 132
    return-void
.end method

.method public blacklist setArrow(I)V
    .registers 3
    .param p1, "direction"    # I

    .line 78
    iget v0, p0, Landroid/widget/FloatPanelView;->mDirection:I

    if-eq p1, v0, :cond_9

    .line 79
    iput p1, p0, Landroid/widget/FloatPanelView;->mDirection:I

    .line 80
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    .line 82
    :cond_9
    return-void
.end method

.method public blacklist setContent(Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "v"    # Landroid/view/ViewGroup;

    .line 57
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    if-eq p1, v0, :cond_18

    .line 58
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->removeAllViews()V

    .line 59
    if-eqz p1, :cond_18

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/FloatPanelView;->addView(Landroid/view/View;)V

    .line 61
    iput-object p1, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    .line 62
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FloatPanelView;->addView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FloatPanelView;->addView(Landroid/view/View;)V

    .line 66
    :cond_18
    return-void
.end method

.method public blacklist setLeftCorner(I)V
    .registers 3
    .param p1, "corner"    # I

    .line 102
    iget v0, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    if-eq p1, v0, :cond_9

    .line 103
    iput p1, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    .line 104
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    .line 106
    :cond_9
    return-void
.end method

.method public blacklist setOffset(I)V
    .registers 3
    .param p1, "offset"    # I

    .line 90
    iget v0, p0, Landroid/widget/FloatPanelView;->mOffset:I

    if-eq v0, p1, :cond_9

    .line 91
    iput p1, p0, Landroid/widget/FloatPanelView;->mOffset:I

    .line 92
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    .line 94
    :cond_9
    return-void
.end method

.method public blacklist setRightCorner(I)V
    .registers 3
    .param p1, "corner"    # I

    .line 114
    iget v0, p0, Landroid/widget/FloatPanelView;->mRightRoundCorner:I

    if-eq p1, v0, :cond_9

    .line 115
    iput p1, p0, Landroid/widget/FloatPanelView;->mRightRoundCorner:I

    .line 116
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    .line 118
    :cond_9
    return-void
.end method
