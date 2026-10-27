.class public Lcom/android/server/wm/MiuiFreeFormTransformation;
.super Landroid/view/animation/Transformation;
.source "MiuiFreeFormTransformation.java"


# instance fields
.field mCamDegree:F

.field mLayerOffsets:[F

.field mRotCenterOffsets:[F

.field mRotDegrees:[F

.field mSpaceDepth:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Landroid/view/animation/Transformation;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 18
    invoke-super {p0}, Landroid/view/animation/Transformation;->clear()V

    .line 19
    iget-object v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mRotDegrees:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 20
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 22
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mLayerOffsets:[F

    if-eqz v0, :cond_12

    .line 23
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 25
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mRotCenterOffsets:[F

    if-eqz v0, :cond_19

    .line 26
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 28
    :cond_19
    iput v1, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mCamDegree:F

    .line 29
    iput v1, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mSpaceDepth:F

    .line 30
    return-void
.end method

.method public compose(Landroid/view/animation/Transformation;)V
    .registers 6
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .line 46
    invoke-super {p0, p1}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 47
    instance-of v0, p1, Lcom/android/server/wm/MiuiFreeFormTransformation;

    if-eqz v0, :cond_64

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mRotDegrees:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1e

    .line 49
    aget v2, v1, v0

    move-object v3, p1

    check-cast v3, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v3}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getRotDegrees()[F

    move-result-object v3

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 51
    .end local v0    # "i":I
    :cond_1e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1f
    iget-object v1, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mLayerOffsets:[F

    array-length v2, v1

    if-ge v0, v2, :cond_35

    .line 52
    aget v2, v1, v0

    move-object v3, p1

    check-cast v3, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v3}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getLayerOffsets()[F

    move-result-object v3

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 54
    .end local v0    # "i":I
    :cond_35
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_36
    iget-object v1, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mRotCenterOffsets:[F

    array-length v2, v1

    if-ge v0, v2, :cond_4c

    .line 55
    aget v2, v1, v0

    move-object v3, p1

    check-cast v3, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v3}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getRotCenterOffsets()[F

    move-result-object v3

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 57
    .end local v0    # "i":I
    :cond_4c
    iget v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mCamDegree:F

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getCamDegree()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mCamDegree:F

    .line 58
    iget v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mSpaceDepth:F

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getSpaceDepth()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mSpaceDepth:F

    .line 60
    :cond_64
    return-void
.end method

.method public getCamDegree()F
    .registers 2

    .line 88
    iget v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mCamDegree:F

    return v0
.end method

.method public getLayerOffsets()[F
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mLayerOffsets:[F

    return-object v0
.end method

.method public getRotCenterOffsets()[F
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mRotCenterOffsets:[F

    return-object v0
.end method

.method public getRotDegrees()[F
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mRotDegrees:[F

    return-object v0
.end method

.method public getSpaceDepth()F
    .registers 2

    .line 92
    iget v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mSpaceDepth:F

    return v0
.end method

.method public hasFreeformRotation()Z
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mRotDegrees:[F

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mLayerOffsets:[F

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mRotCenterOffsets:[F

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mCamDegree:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mSpaceDepth:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public postCompose(Landroid/view/animation/Transformation;)V
    .registers 4
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .line 64
    invoke-super {p0, p1}, Landroid/view/animation/Transformation;->postCompose(Landroid/view/animation/Transformation;)V

    .line 65
    instance-of v0, p1, Lcom/android/server/wm/MiuiFreeFormTransformation;

    if-eqz v0, :cond_58

    .line 66
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getRotDegrees()[F

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getRotDegrees()[F

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mRotDegrees:[F

    .line 67
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getLayerOffsets()[F

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getLayerOffsets()[F

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mLayerOffsets:[F

    .line 68
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getRotCenterOffsets()[F

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getRotCenterOffsets()[F

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mRotCenterOffsets:[F

    .line 69
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getCamDegree()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mCamDegree:F

    .line 70
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getSpaceDepth()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mSpaceDepth:F

    .line 72
    :cond_58
    return-void
.end method

.method public set(Landroid/view/animation/Transformation;)V
    .registers 4
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .line 34
    invoke-super {p0, p1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 35
    instance-of v0, p1, Lcom/android/server/wm/MiuiFreeFormTransformation;

    if-eqz v0, :cond_58

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getRotDegrees()[F

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getRotDegrees()[F

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mRotDegrees:[F

    .line 37
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getLayerOffsets()[F

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getLayerOffsets()[F

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mLayerOffsets:[F

    .line 38
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getRotCenterOffsets()[F

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getRotCenterOffsets()[F

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mRotCenterOffsets:[F

    .line 39
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getCamDegree()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mCamDegree:F

    .line 40
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormTransformation;->getSpaceDepth()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mSpaceDepth:F

    .line 42
    :cond_58
    return-void
.end method

.method public setCamDegree(F)V
    .registers 2
    .param p1, "camDegree"    # F

    .line 108
    iput p1, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mCamDegree:F

    .line 109
    return-void
.end method

.method public setLayerOffsets([F)V
    .registers 3
    .param p1, "layerOffsets"    # [F

    .line 100
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mLayerOffsets:[F

    .line 101
    return-void
.end method

.method public setRotCenterOffsets([F)V
    .registers 3
    .param p1, "rotCenterOffsets"    # [F

    .line 104
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mRotCenterOffsets:[F

    .line 105
    return-void
.end method

.method public setRotDegrees([F)V
    .registers 3
    .param p1, "rotDegrees"    # [F

    .line 96
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mRotDegrees:[F

    .line 97
    return-void
.end method

.method public setSpaceDepth(F)V
    .registers 2
    .param p1, "spaceDepth"    # F

    .line 112
    iput p1, p0, Lcom/android/server/wm/MiuiFreeFormTransformation;->mSpaceDepth:F

    .line 113
    return-void
.end method
