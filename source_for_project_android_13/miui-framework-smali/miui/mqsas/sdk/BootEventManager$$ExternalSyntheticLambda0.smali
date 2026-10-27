.class public final synthetic Lmiui/mqsas/sdk/BootEventManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lmiui/mqsas/sdk/event/BootEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Lmiui/mqsas/sdk/event/BootEvent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/mqsas/sdk/BootEventManager$$ExternalSyntheticLambda0;->f$0:Lmiui/mqsas/sdk/event/BootEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/BootEventManager$$ExternalSyntheticLambda0;->f$0:Lmiui/mqsas/sdk/event/BootEvent;

    invoke-static {v0}, Lmiui/mqsas/sdk/BootEventManager;->lambda$reportBootEvent$0(Lmiui/mqsas/sdk/event/BootEvent;)V

    return-void
.end method
