.class public Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;
.super Landroid/transition/TransitionListenerAdapter;
.source "ActivityTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityTransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContinueTransitionListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityTransitionCoordinator;


# direct methods
.method protected constructor blacklist <init>(Landroid/app/ActivityTransitionCoordinator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 985
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 2

    .line 998
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 999
    return-void
.end method

.method public whitelist onTransitionStart(Landroid/transition/Transition;)V
    .registers 4

    .line 988
    iget-object p1, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/app/ActivityTransitionCoordinator;->-$$Nest$fputmIsStartingTransition(Landroid/app/ActivityTransitionCoordinator;Z)V

    .line 989
    iget-object p1, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    invoke-static {p1}, Landroid/app/ActivityTransitionCoordinator;->-$$Nest$fgetmPendingTransition(Landroid/app/ActivityTransitionCoordinator;)Ljava/lang/Runnable;

    move-result-object p1

    .line 990
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityTransitionCoordinator;->-$$Nest$fputmPendingTransition(Landroid/app/ActivityTransitionCoordinator;Ljava/lang/Runnable;)V

    .line 991
    if-eqz p1, :cond_19

    .line 992
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    .line 994
    :cond_19
    return-void
.end method
