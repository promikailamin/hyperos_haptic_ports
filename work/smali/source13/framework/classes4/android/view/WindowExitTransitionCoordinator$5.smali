.class Landroid/view/WindowExitTransitionCoordinator$5;
.super Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;
.source "WindowExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowExitTransitionCoordinator;->getExitTransition()Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/WindowExitTransitionCoordinator;

.field final synthetic blacklist val$transitioningViews:Ljava/util/ArrayList;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowExitTransitionCoordinator;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/WindowExitTransitionCoordinator;

    .line 288
    iput-object p1, p0, Landroid/view/WindowExitTransitionCoordinator$5;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    iput-object p2, p0, Landroid/view/WindowExitTransitionCoordinator$5;->val$transitioningViews:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/view/WindowTransitionCoordinator;)V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 5
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 291
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$5;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/view/WindowExitTransitionCoordinator;->viewsTransitionComplete()V

    .line 292
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$5;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    invoke-static {v0}, Landroid/view/WindowExitTransitionCoordinator;->-$$Nest$fgetmIsHidden(Landroid/view/WindowExitTransitionCoordinator;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$5;->val$transitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 293
    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator$5;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/WindowExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 294
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$5;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 296
    :cond_1d
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$5;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    invoke-static {v0}, Landroid/view/WindowExitTransitionCoordinator;->-$$Nest$fgetmSharedElementBundle(Landroid/view/WindowExitTransitionCoordinator;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 297
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$5;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    invoke-static {v0}, Landroid/view/WindowExitTransitionCoordinator;->-$$Nest$mdelayCancel(Landroid/view/WindowExitTransitionCoordinator;)V

    .line 299
    :cond_2a
    invoke-super {p0, p1}, Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 300
    return-void
.end method
