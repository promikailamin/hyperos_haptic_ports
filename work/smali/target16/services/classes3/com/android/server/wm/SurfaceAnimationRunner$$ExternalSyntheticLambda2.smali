.class public final synthetic Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SurfaceAnimationRunner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    return-void
.end method


# virtual methods
.method public final makeAnimator()Landroid/animation/ValueAnimator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->$r8$lambda$DKosM7UOfSJrICBJ81Kf3xA2TMY(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method
