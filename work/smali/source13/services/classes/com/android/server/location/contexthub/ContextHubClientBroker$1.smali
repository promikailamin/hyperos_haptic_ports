.class Lcom/android/server/location/contexthub/ContextHubClientBroker$1;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "ContextHubClientBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/ContextHubClientBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 242
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-direct {p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryResponse(ILjava/util/List;)V
    .registers 10
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .line 248
    .local p2, "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->-$$Nest$fgetmIsPermQueryIssued(Lcom/android/server/location/contexthub/ContextHubClientBroker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 249
    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    .line 250
    const-string v0, "ContextHubClientBroker"

    const-string v1, "Permissions query failed, but still received nanoapp state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 251
    :cond_16
    if-eqz p2, :cond_4a

    .line 252
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/NanoAppState;

    .line 253
    .local v2, "state":Landroid/hardware/location/NanoAppState;
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-static {v3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->-$$Nest$fgetmMessageChannelNanoappIdMap(Lcom/android/server/location/contexthub/ContextHubClientBroker;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/location/NanoAppState;->getNanoAppId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 254
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppState;->getNanoAppPermissions()Ljava/util/List;

    move-result-object v3

    .line 255
    .local v3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-virtual {v2}, Landroid/hardware/location/NanoAppState;->getNanoAppId()J

    move-result-wide v5

    invoke-static {v4, v5, v6, v3, v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->-$$Nest$mupdateNanoAppAuthState(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLjava/util/List;Z)I

    .line 258
    .end local v2    # "state":Landroid/hardware/location/NanoAppState;
    .end local v3    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_49
    goto :goto_1c

    .line 260
    :cond_4a
    :goto_4a
    return-void
.end method

.method public onTransactionComplete(I)V
    .registers 2
    .param p1, "result"    # I

    .line 244
    return-void
.end method
