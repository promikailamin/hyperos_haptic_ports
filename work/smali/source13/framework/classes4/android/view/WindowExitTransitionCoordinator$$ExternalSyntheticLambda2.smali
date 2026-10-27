.class public final synthetic Landroid/view/WindowExitTransitionCoordinator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/WindowExitTransitionCoordinator;

.field public final synthetic blacklist f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/WindowExitTransitionCoordinator;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/WindowExitTransitionCoordinator$$ExternalSyntheticLambda2;->f$0:Landroid/view/WindowExitTransitionCoordinator;

    iput-object p2, p0, Landroid/view/WindowExitTransitionCoordinator$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$$ExternalSyntheticLambda2;->f$0:Landroid/view/WindowExitTransitionCoordinator;

    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/view/WindowExitTransitionCoordinator;->lambda$startSharedElementExit$0$android-view-WindowExitTransitionCoordinator(Ljava/util/ArrayList;)V

    return-void
.end method
