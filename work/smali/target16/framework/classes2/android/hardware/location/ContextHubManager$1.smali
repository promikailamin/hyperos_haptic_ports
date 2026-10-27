.class Landroid/hardware/location/ContextHubManager$1;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "ContextHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/location/ContextHubManager;->createQueryCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$transaction:Landroid/hardware/location/ContextHubTransaction;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/location/ContextHubManager;Landroid/hardware/location/ContextHubTransaction;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 533
    iput-object p2, p0, Landroid/hardware/location/ContextHubManager$1;->val$transaction:Landroid/hardware/location/ContextHubTransaction;

    invoke-direct {p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onQueryResponse(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .line 536
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->val$transaction:Landroid/hardware/location/ContextHubTransaction;

    new-instance v1, Landroid/hardware/location/ContextHubTransaction$Response;

    invoke-direct {v1, p1, p2}, Landroid/hardware/location/ContextHubTransaction$Response;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/hardware/location/ContextHubTransaction;->setResponse(Landroid/hardware/location/ContextHubTransaction$Response;)V

    .line 538
    return-void
.end method

.method public blacklist onTransactionComplete(I)V
    .registers 5

    .line 542
    const-string p1, "ContextHubManager"

    const-string v0, "Received a non-query callback on a query request"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object p1, p0, Landroid/hardware/location/ContextHubManager$1;->val$transaction:Landroid/hardware/location/ContextHubTransaction;

    new-instance v0, Landroid/hardware/location/ContextHubTransaction$Response;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/location/ContextHubTransaction$Response;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/hardware/location/ContextHubTransaction;->setResponse(Landroid/hardware/location/ContextHubTransaction$Response;)V

    .line 545
    return-void
.end method
