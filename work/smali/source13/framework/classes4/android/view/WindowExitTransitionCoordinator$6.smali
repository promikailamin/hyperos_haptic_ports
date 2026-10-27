.class Landroid/view/WindowExitTransitionCoordinator$6;
.super Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;
.source "WindowExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;
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

    .line 314
    iput-object p1, p0, Landroid/view/WindowExitTransitionCoordinator$6;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    invoke-direct {p0, p1}, Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/view/WindowTransitionCoordinator;)V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 5
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 317
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$6;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/view/WindowExitTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 318
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$6;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    invoke-static {v0}, Landroid/view/WindowExitTransitionCoordinator;->-$$Nest$fgetmIsHidden(Landroid/view/WindowExitTransitionCoordinator;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 319
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$6;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    iget-object v1, v0, Landroid/view/WindowExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 321
    :cond_15
    invoke-super {p0, p1}, Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 322
    return-void
.end method
