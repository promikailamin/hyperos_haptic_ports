.class public Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
.super Ljava/lang/Object;
.source "ContextHubEndpointBroker.java"


# instance fields
.field public final mPendingSequenceNumbers:Ljava/util/Set;

.field public final mRemoteEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

.field public final mRemoteInitiated:Z

.field public final mRxMessageHistoryMap:Ljava/util/LinkedHashMap;

.field public mSessionOpenTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

.field public mSessionState:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;


# direct methods
.method public constructor <init>(Landroid/hardware/contexthub/HubEndpointInfo;Z)V
    .registers 4

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget-object v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->PENDING:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mSessionState:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mPendingSequenceNumbers:Ljava/util/Set;

    .line 151
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mRxMessageHistoryMap:Ljava/util/LinkedHashMap;

    .line 154
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mRemoteEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 155
    iput-boolean p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mRemoteInitiated:Z

    return-void
.end method


# virtual methods
.method public addReliableMessageToHistory(Landroid/hardware/contexthub/HubMessage;)V
    .registers 5

    .line 225
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 226
    :cond_7
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mRxMessageHistoryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 227
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mRxMessageHistoryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 228
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message already exists in history (inserted @ "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubEndpointBroker"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 236
    :cond_4a
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mRxMessageHistoryMap:Ljava/util/LinkedHashMap;

    .line 237
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 236
    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelSessionOpenTimeoutFuture()V
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mSessionOpenTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 176
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_8
    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mSessionOpenTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public forEachPendingReliableMessage(Ljava/util/function/Consumer;)V
    .registers 3

    .line 198
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mPendingSequenceNumbers:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 199
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_6

    :cond_19
    return-void
.end method

.method public getRemoteEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mRemoteEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    return-object p0
.end method

.method public isActive()Z
    .registers 2

    .line 182
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mSessionState:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    sget-object v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->ACTIVE:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isInReliableMessageHistory(Landroid/hardware/contexthub/HubMessage;)Z
    .registers 10

    .line 204
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 206
    :cond_8
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mRxMessageHistoryMap:Ljava/util/LinkedHashMap;

    .line 207
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 209
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 211
    sget-object v4, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_DUPLICATE_DETECTION_TIMEOUT:Ljava/time/Duration;

    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    .line 212
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v4

    cmp-long v3, v1, v6

    if-ltz v3, :cond_3b

    .line 213
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_16

    .line 221
    :cond_3b
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mRxMessageHistoryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isReliableMessagePending(I)Z
    .registers 2

    .line 186
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mPendingSequenceNumbers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRemoteInitiated()Z
    .registers 1

    .line 159
    iget-boolean p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mRemoteInitiated:Z

    return p0
.end method

.method public setReliableMessageCompleted(I)V
    .registers 2

    .line 194
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mPendingSequenceNumbers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setReliableMessagePending(I)V
    .registers 2

    .line 190
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mPendingSequenceNumbers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSessionOpenTimeoutFuture(Ljava/util/concurrent/ScheduledFuture;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mSessionOpenTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setSessionState(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mSessionState:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    return-void
.end method
