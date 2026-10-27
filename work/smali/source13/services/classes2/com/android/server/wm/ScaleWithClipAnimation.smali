.class public Lcom/android/server/wm/ScaleWithClipAnimation;
.super Landroid/view/animation/Animation;
.source "ScaleWithClipAnimation.java"


# instance fields
.field private final mFromRect:Landroid/graphics/Rect;

.field private final mOriginRect:Landroid/graphics/Rect;

.field private final mToRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "fromClip"    # Landroid/graphics/Rect;
    .param p2, "toClip"    # Landroid/graphics/Rect;

    .line 15
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    .line 12
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mToRect:Landroid/graphics/Rect;

    .line 16
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 17
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 18
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 19
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 21
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 22
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 23
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 24
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 26
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-gt v2, v3, :cond_48

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v2, v3, :cond_48

    .line 27
    iput-object v1, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    goto :goto_4a

    .line 29
    :cond_48
    iput-object v0, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    .line 31
    :goto_4a
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 13
    .param p1, "interpolatedTime"    # F
    .param p2, "transformation"    # Landroid/view/animation/Transformation;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mToRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 36
    .local v0, "currentLeft":F
    iget-object v1, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mToRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 37
    .local v1, "currentTop":F
    iget-object v2, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mToRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    .line 38
    .local v2, "currentRight":F
    iget-object v3, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mToRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    .line 39
    .local v3, "currentBottom":F
    sub-float v4, v3, v1

    iget-object v5, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 40
    .local v4, "sy":F
    sub-float v5, v2, v0

    iget-object v6, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 44
    .local v5, "sx":F
    cmpl-float v6, v5, v4

    if-lez v6, :cond_68

    .line 45
    move v6, v5

    .line 46
    .local v6, "currentScale":F
    iget-object v7, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 47
    .local v7, "clipRight":I
    sub-float v8, v3, v1

    div-float/2addr v8, v6

    float-to-int v8, v8

    .local v8, "clipBottom":I
    goto :goto_73

    .line 49
    .end local v6    # "currentScale":F
    .end local v7    # "clipRight":I
    .end local v8    # "clipBottom":I
    :cond_68
    move v6, v4

    .line 50
    .restart local v6    # "currentScale":F
    sub-float v7, v2, v0

    div-float/2addr v7, v6

    float-to-int v7, v7

    .line 51
    .restart local v7    # "clipRight":I
    iget-object v8, p0, Lcom/android/server/wm/ScaleWithClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 53
    .restart local v8    # "clipBottom":I
    :goto_73
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 54
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v6, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 55
    const/4 v9, 0x0

    invoke-virtual {p2, v9, v9, v7, v8}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    .line 56
    return-void
.end method
