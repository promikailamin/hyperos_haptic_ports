.class public Lcom/android/server/wm/MiuiFreeFormPositionZAnimation;
.super Landroid/view/animation/Animation;
.source "MiuiFreeFormPositionZAnimation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiFreeFormPositionZAnimation"


# instance fields
.field mFromLayerOffsets:[F

.field mToLayerOffsets:[F


# direct methods
.method public constructor <init>([F[F)V
    .registers 4
    .param p1, "fromLayerOffsets"    # [F
    .param p2, "toLayerOffsets"    # [F

    .line 20
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 21
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiFreeFormPositionZAnimation;->mFromLayerOffsets:[F

    .line 22
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiFreeFormPositionZAnimation;->mToLayerOffsets:[F

    .line 23
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 7
    .param p1, "interpolatedTime"    # F
    .param p2, "transformation"    # Landroid/view/animation/Transformation;

    .line 27
    instance-of v0, p2, Lcom/android/server/wm/MiuiFreeFormTransformation;

    if-eqz v0, :cond_24

    .line 28
    iget-object v0, p0, Lcom/android/server/wm/MiuiFreeFormPositionZAnimation;->mFromLayerOffsets:[F

    array-length v0, v0

    new-array v0, v0, [F

    .line 29
    .local v0, "layerOffsets":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_1d

    .line 30
    iget-object v2, p0, Lcom/android/server/wm/MiuiFreeFormPositionZAnimation;->mFromLayerOffsets:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/server/wm/MiuiFreeFormPositionZAnimation;->mToLayerOffsets:[F

    aget v3, v3, v1

    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 32
    .end local v1    # "i":I
    :cond_1d
    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/MiuiFreeFormTransformation;->setLayerOffsets([F)V

    .line 33
    .end local v0    # "layerOffsets":[F
    goto :goto_2b

    .line 34
    :cond_24
    const-string v0, "MiuiFreeFormPositionZAnimation"

    const-string v1, "MiuiFreeFormPositionZAnimation must use for MiuiFreeFormTransformation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_2b
    return-void
.end method
