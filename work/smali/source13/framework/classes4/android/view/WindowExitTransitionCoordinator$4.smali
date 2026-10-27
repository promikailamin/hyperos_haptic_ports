.class Landroid/view/WindowExitTransitionCoordinator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WindowExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowExitTransitionCoordinator;->fadeOutBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/WindowExitTransitionCoordinator;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowExitTransitionCoordinator;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/WindowExitTransitionCoordinator;

    .line 255
    iput-object p1, p0, Landroid/view/WindowExitTransitionCoordinator$4;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 258
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$4;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/WindowExitTransitionCoordinator;->-$$Nest$fputmBackgroundAnimator(Landroid/view/WindowExitTransitionCoordinator;Landroid/animation/ObjectAnimator;)V

    .line 259
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$4;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    invoke-static {v0}, Landroid/view/WindowExitTransitionCoordinator;->-$$Nest$fgetmIsCanceled(Landroid/view/WindowExitTransitionCoordinator;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 260
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$4;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/WindowExitTransitionCoordinator;->-$$Nest$fputmIsBackgroundReady(Landroid/view/WindowExitTransitionCoordinator;Z)V

    .line 261
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$4;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/view/WindowExitTransitionCoordinator;->notifyComplete()V

    .line 263
    :cond_19
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$4;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/view/WindowExitTransitionCoordinator;->backgroundAnimatorComplete()V

    .line 264
    return-void
.end method
