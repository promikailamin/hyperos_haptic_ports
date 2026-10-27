.class public Lcom/android/server/wm/MiuiFreeformRotationAnimation;
.super Landroid/view/animation/Animation;
.source "MiuiFreeformRotationAnimation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiFreeformRotationAnimation"


# instance fields
.field mCamDegree:F

.field mFromRotDegrees:[F

.field mRotCenterOffsets:[F

.field mSpaceDepth:F

.field mToRotDegrees:[F


# direct methods
.method public constructor <init>([F[F)V
    .registers 4
    .param p1, "fromRotDegrees"    # [F
    .param p2, "toRotDegrees"    # [F

    .line 21
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 22
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiFreeformRotationAnimation;->mFromRotDegrees:[F

    .line 23
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiFreeformRotationAnimation;->mToRotDegrees:[F

    .line 24
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 9
    .param p1, "interpolatedTime"    # F
    .param p2, "transformation"    # Landroid/view/animation/Transformation;

    .line 40
    instance-of v0, p2, Lcom/android/server/wm/MiuiFreeFormTransformation;

    if-eqz v0, :cond_4a

    .line 41
    iget-object v0, p0, Lcom/android/server/wm/MiuiFreeformRotationAnimation;->mFromRotDegrees:[F

    array-length v0, v0

    new-array v0, v0, [F

    .line 42
    .local v0, "rotDegrees":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_2b

    .line 43
    iget-object v2, p0, Lcom/android/server/wm/MiuiFreeformRotationAnimation;->mFromRotDegrees:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/server/wm/MiuiFreeformRotationAnimation;->mToRotDegrees:[F

    aget v3, v3, v1

    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 45
    .end local v1    # "i":I
    :cond_2b
    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/MiuiFreeFormTransformation;->setRotDegrees([F)V

    .line 46
    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/MiuiFreeFormTransformation;

    iget-object v2, p0, Lcom/android/server/wm/MiuiFreeformRotationAnimation;->mRotCenterOffsets:[F

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MiuiFreeFormTransformation;->setRotCenterOffsets([F)V

    .line 47
    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/MiuiFreeFormTransformation;

    iget v2, p0, Lcom/android/server/wm/MiuiFreeformRotationAnimation;->mCamDegree:F

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MiuiFreeFormTransformation;->setCamDegree(F)V

    .line 48
    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/MiuiFreeFormTransformation;

    iget v2, p0, Lcom/android/server/wm/MiuiFreeformRotationAnimation;->mSpaceDepth:F

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MiuiFreeFormTransformation;->setSpaceDepth(F)V

    .line 49
    .end local v0    # "rotDegrees":[F
    goto :goto_51

    .line 50
    :cond_4a
    const-string v0, "MiuiFreeformRotationAnimation"

    const-string v1, "MiuiFreeformRotationAnimation must use for MiuiFreeFormTransformation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_51
    return-void
.end method

.method public setmCamDegree(F)V
    .registers 2
    .param p1, "mCamDegree"    # F

    .line 27
    iput p1, p0, Lcom/android/server/wm/MiuiFreeformRotationAnimation;->mCamDegree:F

    .line 28
    return-void
.end method

.method public setmSpaceDepth(F)V
    .registers 2
    .param p1, "mSpaceDepth"    # F

    .line 31
    iput p1, p0, Lcom/android/server/wm/MiuiFreeformRotationAnimation;->mSpaceDepth:F

    .line 32
    return-void
.end method

.method public setmToRotCenterOffsets([F)V
    .registers 3
    .param p1, "rotCenterOffsets"    # [F

    .line 35
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiFreeformRotationAnimation;->mRotCenterOffsets:[F

    .line 36
    return-void
.end method
