.class Landroid/view/WindowEnterTransitionCoordinator$5;
.super Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;
.source "WindowEnterTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowEnterTransitionCoordinator;->beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/WindowEnterTransitionCoordinator;

.field final synthetic blacklist val$transitioningViews:Ljava/util/ArrayList;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowEnterTransitionCoordinator;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/WindowEnterTransitionCoordinator;

    .line 499
    iput-object p1, p0, Landroid/view/WindowEnterTransitionCoordinator$5;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    iput-object p2, p0, Landroid/view/WindowEnterTransitionCoordinator$5;->val$transitioningViews:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/view/WindowTransitionCoordinator;)V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 511
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$5;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/WindowEnterTransitionCoordinator;->-$$Nest$fputmEnterViewsTransition(Landroid/view/WindowEnterTransitionCoordinator;Landroid/transition/Transition;)V

    .line 512
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 513
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$5;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/view/WindowEnterTransitionCoordinator;->viewsTransitionComplete()V

    .line 514
    invoke-super {p0, p1}, Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 515
    return-void
.end method

.method public whitelist onTransitionStart(Landroid/transition/Transition;)V
    .registers 5
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 502
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$5;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-static {v0, p1}, Landroid/view/WindowEnterTransitionCoordinator;->-$$Nest$fputmEnterViewsTransition(Landroid/view/WindowEnterTransitionCoordinator;Landroid/transition/Transition;)V

    .line 503
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$5;->val$transitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 504
    iget-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator$5;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/WindowEnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 506
    :cond_f
    invoke-super {p0, p1}, Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;->onTransitionStart(Landroid/transition/Transition;)V

    .line 507
    return-void
.end method
