.class public final synthetic Lmiui/mqsas/sdk/event/UnhandledEventStorage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lmiui/mqsas/sdk/event/ExceptionEvent;

    check-cast p2, Lmiui/mqsas/sdk/event/ExceptionEvent;

    invoke-static {p1, p2}, Lmiui/mqsas/sdk/event/UnhandledEventStorage;->lambda$getUnhandledEvents$0(Lmiui/mqsas/sdk/event/ExceptionEvent;Lmiui/mqsas/sdk/event/ExceptionEvent;)I

    move-result p1

    return p1
.end method
