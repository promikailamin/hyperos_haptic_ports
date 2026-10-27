.class public final synthetic Landroid/view/WindowEnterTransitionCoordinator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/WindowEnterTransitionCoordinator;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/WindowEnterTransitionCoordinator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/WindowEnterTransitionCoordinator$$ExternalSyntheticLambda1;->f$0:Landroid/view/WindowEnterTransitionCoordinator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$$ExternalSyntheticLambda1;->f$0:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/view/WindowEnterTransitionCoordinator;->lambda$sendSharedElementDestination$1$android-view-WindowEnterTransitionCoordinator()V

    return-void
.end method
