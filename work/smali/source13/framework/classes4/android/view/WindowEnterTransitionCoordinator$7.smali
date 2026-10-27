.class Landroid/view/WindowEnterTransitionCoordinator$7;
.super Landroid/transition/TransitionListenerAdapter;
.source "WindowEnterTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowEnterTransitionCoordinator;->startEnterTransition(Landroid/transition/Transition;)V
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

    .line 587
    iput-object p1, p0, Landroid/view/WindowEnterTransitionCoordinator$7;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 590
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 591
    return-void
.end method
