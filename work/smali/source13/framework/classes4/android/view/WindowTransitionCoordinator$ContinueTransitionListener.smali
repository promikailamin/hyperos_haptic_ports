.class public Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;
.super Landroid/transition/TransitionListenerAdapter;
.source "WindowTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowTransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContinueTransitionListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/WindowTransitionCoordinator;


# direct methods
.method protected constructor blacklist <init>(Landroid/view/WindowTransitionCoordinator;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/WindowTransitionCoordinator;

    .line 890
    iput-object p1, p0, Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/view/WindowTransitionCoordinator;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 903
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 904
    return-void
.end method

.method public whitelist onTransitionStart(Landroid/transition/Transition;)V
    .registers 5
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 893
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/view/WindowTransitionCoordinator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/WindowTransitionCoordinator;->-$$Nest$fputmIsStartingTransition(Landroid/view/WindowTransitionCoordinator;Z)V

    .line 894
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/view/WindowTransitionCoordinator;

    invoke-static {v0}, Landroid/view/WindowTransitionCoordinator;->-$$Nest$fgetmPendingTransition(Landroid/view/WindowTransitionCoordinator;)Ljava/lang/Runnable;

    move-result-object v0

    .line 895
    .local v0, "pending":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/view/WindowTransitionCoordinator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/WindowTransitionCoordinator;->-$$Nest$fputmPendingTransition(Landroid/view/WindowTransitionCoordinator;Ljava/lang/Runnable;)V

    .line 896
    if-eqz v0, :cond_19

    .line 897
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/view/WindowTransitionCoordinator;

    invoke-virtual {v1, v0}, Landroid/view/WindowTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    .line 899
    :cond_19
    return-void
.end method
