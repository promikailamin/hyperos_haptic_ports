.class public Lcom/android/internal/policy/DockedDividerUtils;
.super Ljava/lang/Object;
.source "DockedDividerUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateBoundsForPosition(IILandroid/graphics/Rect;III)V
    .registers 9
    .param p0, "position"    # I
    .param p1, "dockSide"    # I
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I
    .param p5, "dividerSize"    # I

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 38
    packed-switch p1, :pswitch_data_24

    goto :goto_18

    .line 49
    :pswitch_8
    add-int v1, p0, p5

    iput v1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_18

    .line 46
    :pswitch_d
    add-int v1, p0, p5

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 47
    goto :goto_18

    .line 43
    :pswitch_12
    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    .line 44
    goto :goto_18

    .line 40
    :pswitch_15
    iput p0, p2, Landroid/graphics/Rect;->right:I

    .line 41
    nop

    .line 52
    :goto_18
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1e

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1f

    :cond_1e
    move v0, v1

    :cond_1f
    invoke-static {p2, v0}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    .line 53
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_15
        :pswitch_12
        :pswitch_d
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist calculateMiddlePosition(ZLandroid/graphics/Rect;III)I
    .registers 9
    .param p0, "isHorizontalDivision"    # Z
    .param p1, "insets"    # Landroid/graphics/Rect;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "dividerSize"    # I

    .line 102
    if-eqz p0, :cond_5

    iget v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_7

    :cond_5
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 103
    .local v0, "start":I
    :goto_7
    if-eqz p0, :cond_e

    .line 104
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    goto :goto_12

    .line 105
    :cond_e
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v1, p2, v1

    :goto_12
    nop

    .line 106
    .local v1, "end":I
    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    div-int/lit8 v3, p4, 0x2

    sub-int/2addr v2, v3

    return v2
.end method

.method public static blacklist calculatePositionForBounds(Landroid/graphics/Rect;II)I
    .registers 4
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "dockSide"    # I
    .param p2, "dividerSize"    # I

    .line 86
    packed-switch p1, :pswitch_data_14

    .line 96
    const/4 v0, 0x0

    return v0

    .line 94
    :pswitch_5
    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    return v0

    .line 92
    :pswitch_9
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    return v0

    .line 90
    :pswitch_d
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    return v0

    .line 88
    :pswitch_10
    iget v0, p0, Landroid/graphics/Rect;->right:I

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist getDividerInsets(Landroid/content/res/Resources;)I
    .registers 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 126
    const v0, 0x105013b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getDividerSize(Landroid/content/res/Resources;I)I
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "dividerInsets"    # I

    .line 131
    const v0, 0x105013c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 133
    .local v0, "windowWidth":I
    mul-int/lit8 v1, p1, 0x2

    sub-int v1, v0, v1

    return v1
.end method

.method public static blacklist getDockSide(II)I
    .registers 3
    .param p0, "displayWidth"    # I
    .param p1, "displayHeight"    # I

    .line 138
    if-le p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    return v0
.end method

.method public static blacklist invertDockSide(I)I
    .registers 2
    .param p0, "dockSide"    # I

    .line 110
    packed-switch p0, :pswitch_data_e

    .line 120
    const/4 v0, -0x1

    return v0

    .line 118
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 116
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 114
    :pswitch_9
    const/4 v0, 0x4

    return v0

    .line 112
    :pswitch_b
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist sanitizeStackBounds(Landroid/graphics/Rect;Z)V
    .registers 4
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "topLeft"    # Z

    .line 68
    if-eqz p1, :cond_1b

    .line 69
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_e

    .line 70
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 72
    :cond_e
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_33

    .line 73
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_33

    .line 76
    :cond_1b
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_27

    .line 77
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 79
    :cond_27
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_33

    .line 80
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 83
    :cond_33
    :goto_33
    return-void
.end method
