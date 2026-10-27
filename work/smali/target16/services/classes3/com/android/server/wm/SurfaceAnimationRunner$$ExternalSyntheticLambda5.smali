.class public final synthetic Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

.field public final synthetic f$1:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

.field public final synthetic f$2:Landroid/animation/ValueAnimator;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;J)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;->f$2:Landroid/animation/ValueAnimator;

    iput-wide p4, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;->f$3:J

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;->f$2:Landroid/animation/ValueAnimator;

    iget-wide v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;->f$3:J

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/SurfaceAnimationRunner;->$r8$lambda$J8qWK9viBOQD6AtnEBV_FDPC-NA(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator;)V

    return-void
.end method
