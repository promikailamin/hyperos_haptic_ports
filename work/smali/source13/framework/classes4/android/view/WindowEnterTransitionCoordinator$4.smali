.class Landroid/view/WindowEnterTransitionCoordinator$4;
.super Landroid/transition/TransitionListenerAdapter;
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


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowEnterTransitionCoordinator;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/WindowEnterTransitionCoordinator;

    .line 475
    iput-object p1, p0, Landroid/view/WindowEnterTransitionCoordinator$4;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 483
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 484
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$4;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/view/WindowEnterTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 485
    return-void
.end method

.method public whitelist onTransitionStart(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 478
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$4;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-static {v0}, Landroid/view/WindowEnterTransitionCoordinator;->-$$Nest$msharedElementTransitionStarted(Landroid/view/WindowEnterTransitionCoordinator;)V

    .line 479
    return-void
.end method
