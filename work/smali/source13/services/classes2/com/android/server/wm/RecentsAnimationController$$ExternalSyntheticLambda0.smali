.class public final synthetic Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RecentsAnimationController;

.field public final synthetic f$1:Landroid/util/SparseBooleanArray;

.field public final synthetic f$2:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentsAnimationController;Landroid/util/SparseBooleanArray;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RecentsAnimationController;

    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseBooleanArray;

    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    iput p4, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RecentsAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseBooleanArray;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    iget v3, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;->f$3:I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/wm/RecentsAnimationController;->lambda$collectTaskRemoteAnimations$6$com-android-server-wm-RecentsAnimationController(Landroid/util/SparseBooleanArray;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;ILcom/android/server/wm/Task;)V

    return-void
.end method
