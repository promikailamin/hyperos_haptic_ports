.class Landroid/app/ExitTransitionCoordinator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->fadeOutBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method constructor blacklist <init>(Landroid/app/ExitTransitionCoordinator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 292
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$5;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 295
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$5;->this$0:Landroid/app/ExitTransitionCoordinator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/app/ExitTransitionCoordinator;->-$$Nest$fputmBackgroundAnimator(Landroid/app/ExitTransitionCoordinator;Landroid/animation/ObjectAnimator;)V

    .line 296
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$5;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {p1}, Landroid/app/ExitTransitionCoordinator;->-$$Nest$fgetmIsCanceled(Landroid/app/ExitTransitionCoordinator;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 297
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$5;->this$0:Landroid/app/ExitTransitionCoordinator;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/app/ExitTransitionCoordinator;->-$$Nest$fputmIsBackgroundReady(Landroid/app/ExitTransitionCoordinator;Z)V

    .line 298
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$5;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {p1}, Landroid/app/ExitTransitionCoordinator;->notifyComplete()V

    .line 300
    :cond_19
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$5;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {p1}, Landroid/app/ExitTransitionCoordinator;->backgroundAnimatorComplete()V

    .line 301
    return-void
.end method
