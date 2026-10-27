.class Landroid/view/WindowExitTransitionCoordinator$2;
.super Landroid/transition/TransitionListenerAdapter;
.source "WindowExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowExitTransitionCoordinator;->startSharedElementExit(Landroid/view/ViewGroup;)V
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

    .line 143
    iput-object p1, p0, Landroid/view/WindowExitTransitionCoordinator$2;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 146
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 147
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$2;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/view/WindowExitTransitionCoordinator;->isViewsTransitionComplete()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 148
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$2;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    invoke-static {v0}, Landroid/view/WindowExitTransitionCoordinator;->-$$Nest$mdelayCancel(Landroid/view/WindowExitTransitionCoordinator;)V

    .line 150
    :cond_10
    return-void
.end method
