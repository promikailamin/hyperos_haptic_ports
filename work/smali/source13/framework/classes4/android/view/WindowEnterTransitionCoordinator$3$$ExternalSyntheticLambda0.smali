.class public final synthetic Landroid/view/WindowEnterTransitionCoordinator$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/WindowEnterTransitionCoordinator$3;

.field public final synthetic blacklist f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/WindowEnterTransitionCoordinator$3;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/WindowEnterTransitionCoordinator$3$$ExternalSyntheticLambda0;->f$0:Landroid/view/WindowEnterTransitionCoordinator$3;

    iput-object p2, p0, Landroid/view/WindowEnterTransitionCoordinator$3$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$3$$ExternalSyntheticLambda0;->f$0:Landroid/view/WindowEnterTransitionCoordinator$3;

    iget-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator$3$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/view/WindowEnterTransitionCoordinator$3;->lambda$onSharedElementsReady$1$android-view-WindowEnterTransitionCoordinator$3(Landroid/os/Bundle;)V

    return-void
.end method
