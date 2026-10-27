.class Landroid/view/WindowEnterTransitionCoordinator$6;
.super Landroid/animation/AnimatorListenerAdapter;
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

    .line 579
    iput-object p1, p0, Landroid/view/WindowEnterTransitionCoordinator$6;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 582
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$6;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/view/WindowEnterTransitionCoordinator;->backgroundAnimatorComplete()V

    .line 583
    return-void
.end method
