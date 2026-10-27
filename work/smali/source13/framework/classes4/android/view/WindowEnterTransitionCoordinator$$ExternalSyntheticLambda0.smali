.class public final synthetic Landroid/view/WindowEnterTransitionCoordinator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/WindowEnterTransitionCoordinator;

.field public final synthetic blacklist f$1:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/WindowEnterTransitionCoordinator;Landroid/util/ArrayMap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/WindowEnterTransitionCoordinator$$ExternalSyntheticLambda0;->f$0:Landroid/view/WindowEnterTransitionCoordinator;

    iput-object p2, p0, Landroid/view/WindowEnterTransitionCoordinator$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$$ExternalSyntheticLambda0;->f$0:Landroid/view/WindowEnterTransitionCoordinator;

    iget-object v1, p0, Landroid/view/WindowEnterTransitionCoordinator$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/view/WindowEnterTransitionCoordinator;->lambda$triggerViewsReady$0$android-view-WindowEnterTransitionCoordinator(Landroid/util/ArrayMap;)V

    return-void
.end method
