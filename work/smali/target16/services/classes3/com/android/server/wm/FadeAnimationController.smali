.class public abstract Lcom/android/server/wm/FadeAnimationController;
.super Ljava/lang/Object;
.source "FadeAnimationController.java"


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public createAdapter(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;ZLcom/android/server/wm/WindowToken;)Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    .registers 5

    .line 105
    new-instance p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;ZLcom/android/server/wm/WindowToken;)V

    return-object p0
.end method

.method public final createAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .registers 3

    .line 111
    new-instance v0, Lcom/android/server/wm/FadeAnimationController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/FadeAnimationController$1;-><init>(Lcom/android/server/wm/FadeAnimationController;Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method public fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V
    .registers 5

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/FadeAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    return-void
.end method

.method public fadeWindowToken(ZLcom/android/server/wm/WindowToken;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 12

    if-eqz p2, :cond_27

    .line 91
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_27

    :cond_9
    if-eqz p1, :cond_10

    .line 95
    invoke-virtual {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_14

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 97
    :goto_14
    invoke-virtual {p0, v0}, Lcom/android/server/wm/FadeAnimationController;->createAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/FadeAnimationController;->createAdapter(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;ZLcom/android/server/wm/WindowToken;)Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;

    move-result-object v3

    .line 98
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    move v4, p1

    move-object v1, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public getFadeInAnimation()Landroid/view/animation/Animation;
    .registers 4

    .line 53
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/16 v1, 0x15e

    .line 54
    invoke-virtual {p0, v1}, Lcom/android/server/wm/FadeAnimationController;->getScaledDuration(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 55
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public getFadeOutAnimation()Landroid/view/animation/Animation;
    .registers 4

    .line 64
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/16 v1, 0xc8

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/server/wm/FadeAnimationController;->getScaledDuration(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 66
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public getScaledDuration(I)J
    .registers 2

    int-to-float p1, p1

    .line 71
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowAnimationScaleLocked()F

    move-result p0

    mul-float/2addr p1, p0

    float-to-long p0, p1

    return-wide p0
.end method
