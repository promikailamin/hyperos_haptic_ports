.class public final synthetic Landroid/view/WindowTransitionState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/WindowTransitionState;

.field public final synthetic blacklist f$1:Landroid/view/ViewRootImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/WindowTransitionState;Landroid/view/ViewRootImpl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/WindowTransitionState$$ExternalSyntheticLambda0;->f$0:Landroid/view/WindowTransitionState;

    iput-object p2, p0, Landroid/view/WindowTransitionState$$ExternalSyntheticLambda0;->f$1:Landroid/view/ViewRootImpl;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Landroid/view/WindowTransitionState$$ExternalSyntheticLambda0;->f$0:Landroid/view/WindowTransitionState;

    iget-object v1, p0, Landroid/view/WindowTransitionState$$ExternalSyntheticLambda0;->f$1:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Landroid/view/WindowTransitionState;->lambda$startExitBackTransition$0$android-view-WindowTransitionState(Landroid/view/ViewRootImpl;)V

    return-void
.end method
