.class Lcom/lguplus/Lgu5GNetworkManager$1;
.super Lcom/lguplus/IMiuiFiveGServiceStateCallback$Stub;
.source "Lgu5GNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lguplus/Lgu5GNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/lguplus/Lgu5GNetworkManager;


# direct methods
.method constructor blacklist <init>(Lcom/lguplus/Lgu5GNetworkManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lguplus/Lgu5GNetworkManager;

    .line 40
    iput-object p1, p0, Lcom/lguplus/Lgu5GNetworkManager$1;->this$0:Lcom/lguplus/Lgu5GNetworkManager;

    invoke-direct {p0}, Lcom/lguplus/IMiuiFiveGServiceStateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist on5GAvailable(I)V
    .registers 4
    .param p1, "slotId"    # I

    .line 42
    iget-object v0, p0, Lcom/lguplus/Lgu5GNetworkManager$1;->this$0:Lcom/lguplus/Lgu5GNetworkManager;

    iget-object v0, v0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lguplus/Lgu5GNetworkManager$Callback;

    .line 43
    .local v1, "callback":Lcom/lguplus/Lgu5GNetworkManager$Callback;
    invoke-virtual {v1}, Lcom/lguplus/Lgu5GNetworkManager$Callback;->on5GAvailable()V

    .line 44
    .end local v1    # "callback":Lcom/lguplus/Lgu5GNetworkManager$Callback;
    goto :goto_8

    .line 45
    :cond_18
    return-void
.end method

.method public blacklist on5GBearerAdded(I)V
    .registers 4
    .param p1, "slotId"    # I

    .line 52
    iget-object v0, p0, Lcom/lguplus/Lgu5GNetworkManager$1;->this$0:Lcom/lguplus/Lgu5GNetworkManager;

    iget-object v0, v0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lguplus/Lgu5GNetworkManager$Callback;

    .line 53
    .local v1, "callback":Lcom/lguplus/Lgu5GNetworkManager$Callback;
    invoke-virtual {v1}, Lcom/lguplus/Lgu5GNetworkManager$Callback;->on5GBearerAdded()V

    .line 54
    .end local v1    # "callback":Lcom/lguplus/Lgu5GNetworkManager$Callback;
    goto :goto_8

    .line 55
    :cond_18
    return-void
.end method

.method public blacklist on5GBearerDeleted(I)V
    .registers 4
    .param p1, "slotId"    # I

    .line 57
    iget-object v0, p0, Lcom/lguplus/Lgu5GNetworkManager$1;->this$0:Lcom/lguplus/Lgu5GNetworkManager;

    iget-object v0, v0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lguplus/Lgu5GNetworkManager$Callback;

    .line 58
    .local v1, "callback":Lcom/lguplus/Lgu5GNetworkManager$Callback;
    invoke-virtual {v1}, Lcom/lguplus/Lgu5GNetworkManager$Callback;->on5GBearerDeleted()V

    .line 59
    .end local v1    # "callback":Lcom/lguplus/Lgu5GNetworkManager$Callback;
    goto :goto_8

    .line 60
    :cond_18
    return-void
.end method

.method public blacklist on5GUnavailable(I)V
    .registers 4
    .param p1, "slotId"    # I

    .line 47
    iget-object v0, p0, Lcom/lguplus/Lgu5GNetworkManager$1;->this$0:Lcom/lguplus/Lgu5GNetworkManager;

    iget-object v0, v0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lguplus/Lgu5GNetworkManager$Callback;

    .line 48
    .local v1, "callback":Lcom/lguplus/Lgu5GNetworkManager$Callback;
    invoke-virtual {v1}, Lcom/lguplus/Lgu5GNetworkManager$Callback;->on5GUnavailable()V

    .line 49
    .end local v1    # "callback":Lcom/lguplus/Lgu5GNetworkManager$Callback;
    goto :goto_8

    .line 50
    :cond_18
    return-void
.end method
