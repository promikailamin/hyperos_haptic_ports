.class public Lcom/android/server/wm/MiuiTransformation;
.super Landroid/view/animation/Transformation;
.source "MiuiTransformation.java"


# instance fields
.field protected mRadius:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Landroid/view/animation/Transformation;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 11
    invoke-super {p0}, Landroid/view/animation/Transformation;->clear()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/MiuiTransformation;->mRadius:F

    .line 13
    return-void
.end method

.method public compose(Landroid/view/animation/Transformation;)V
    .registers 4
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .line 25
    invoke-super {p0, p1}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 26
    instance-of v0, p1, Lcom/android/server/wm/MiuiTransformation;

    if-eqz v0, :cond_13

    .line 27
    iget v0, p0, Lcom/android/server/wm/MiuiTransformation;->mRadius:F

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/MiuiTransformation;

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiTransformation;->getRadius()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/MiuiTransformation;->mRadius:F

    .line 29
    :cond_13
    return-void
.end method

.method public getRadius()F
    .registers 2

    .line 36
    iget v0, p0, Lcom/android/server/wm/MiuiTransformation;->mRadius:F

    return v0
.end method

.method public set(Landroid/view/animation/Transformation;)V
    .registers 3
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .line 17
    invoke-super {p0, p1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 18
    instance-of v0, p1, Lcom/android/server/wm/MiuiTransformation;

    if-eqz v0, :cond_10

    .line 19
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/MiuiTransformation;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiTransformation;->getRadius()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MiuiTransformation;->mRadius:F

    .line 21
    :cond_10
    return-void
.end method

.method public setRadius(F)V
    .registers 2
    .param p1, "radius"    # F

    .line 32
    iput p1, p0, Lcom/android/server/wm/MiuiTransformation;->mRadius:F

    .line 33
    return-void
.end method
