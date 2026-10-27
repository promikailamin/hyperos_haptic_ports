.class public Landroid/view/animation/TranslateXWithClipAnimation;
.super Landroid/view/animation/TranslateXAnimation;
.source "TranslateXWithClipAnimation.java"


# instance fields
.field blacklist mSourceRect:Landroid/graphics/Rect;


# direct methods
.method public constructor blacklist <init>(FFLandroid/graphics/Rect;)V
    .registers 4
    .param p1, "fromXDelta"    # F
    .param p2, "toXDelta"    # F
    .param p3, "sourceRect"    # Landroid/graphics/Rect;

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/view/animation/TranslateXAnimation;-><init>(FF)V

    .line 15
    iput-object p3, p0, Landroid/view/animation/TranslateXWithClipAnimation;->mSourceRect:Landroid/graphics/Rect;

    .line 16
    return-void
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 10
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 20
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 21
    .local v0, "m":Landroid/graphics/Matrix;
    iget-object v1, p0, Landroid/view/animation/TranslateXWithClipAnimation;->mTmpValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 22
    iget v1, p0, Landroid/view/animation/TranslateXWithClipAnimation;->mFromXDelta:F

    iget v2, p0, Landroid/view/animation/TranslateXWithClipAnimation;->mToXDelta:F

    iget v3, p0, Landroid/view/animation/TranslateXWithClipAnimation;->mFromXDelta:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 23
    .local v1, "dx":F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Landroid/view/animation/TranslateXWithClipAnimation;->mTmpValues:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 24
    iget-object v2, p0, Landroid/view/animation/TranslateXWithClipAnimation;->mSourceRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_42

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_42

    .line 25
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/animation/TranslateXWithClipAnimation;->mSourceRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    float-to-int v3, v3

    iget-object v4, p0, Landroid/view/animation/TranslateXWithClipAnimation;->mSourceRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/view/animation/TranslateXWithClipAnimation;->mSourceRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/view/animation/TranslateXWithClipAnimation;->mSourceRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v2}, Landroid/view/animation/Transformation;->setClipRect(Landroid/graphics/Rect;)V

    goto :goto_65

    .line 26
    :cond_42
    iget-object v2, p0, Landroid/view/animation/TranslateXWithClipAnimation;->mSourceRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_65

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eqz v2, :cond_65

    .line 27
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/animation/TranslateXWithClipAnimation;->mSourceRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/view/animation/TranslateXWithClipAnimation;->mSourceRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/view/animation/TranslateXWithClipAnimation;->mSourceRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    float-to-int v5, v5

    iget-object v6, p0, Landroid/view/animation/TranslateXWithClipAnimation;->mSourceRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v2}, Landroid/view/animation/Transformation;->setClipRect(Landroid/graphics/Rect;)V

    .line 29
    :cond_65
    :goto_65
    return-void
.end method
