.class public Lcom/android/server/wm/RadiusAnimation;
.super Landroid/view/animation/Animation;
.source "RadiusAnimation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadiusAnimation"


# instance fields
.field private mFromRadius:F

.field private mToRadius:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3
    .param p1, "fromRadius"    # F
    .param p2, "toRadius"    # F

    .line 13
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 14
    iput p1, p0, Lcom/android/server/wm/RadiusAnimation;->mFromRadius:F

    .line 15
    iput p2, p0, Lcom/android/server/wm/RadiusAnimation;->mToRadius:F

    .line 16
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 23
    iget v0, p0, Lcom/android/server/wm/RadiusAnimation;->mFromRadius:F

    .line 24
    .local v0, "radius":F
    instance-of v1, p2, Lcom/android/server/wm/MiuiTransformation;

    if-eqz v1, :cond_12

    .line 25
    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/MiuiTransformation;

    iget v2, p0, Lcom/android/server/wm/RadiusAnimation;->mToRadius:F

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MiuiTransformation;->setRadius(F)V

    goto :goto_19

    .line 27
    :cond_12
    const-string v1, "RadiusAnimation"

    const-string v2, "RadiusAnimation must use for MiuiTransformation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :goto_19
    return-void
.end method

.method public willChangeBounds()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .registers 2

    .line 33
    const/4 v0, 0x0

    return v0
.end method
