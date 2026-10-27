.class Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;
.super Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.source "ContextHubTransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field final synthetic val$contextHubId:I

.field final synthetic val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

.field final synthetic val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IIJLjava/lang/String;ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)V
    .registers 16
    .param p1, "this$0"    # Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    .param p2, "id"    # I
    .param p3, "type"    # I
    .param p4, "nanoAppId"    # J
    .param p6, "packageName"    # Ljava/lang/String;

    .line 140
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iput p7, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    iput-object p8, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    iput-object p9, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method onTransact()I
    .registers 5

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->-$$Nest$fgetmContextHubProxy(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 145
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->getTransactionId()I

    move-result v3

    .line 144
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/IContextHubWrapper;->loadNanoapp(ILandroid/hardware/location/NanoAppBinary;I)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    .line 146
    :catch_13
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while trying to load nanoapp with ID 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 148
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string v2, "ContextHubTransactionManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/4 v1, 0x1

    return v1
.end method

.method onTransactionComplete(I)V
    .registers 9
    .param p1, "result"    # I

    .line 155
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 157
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 158
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v4

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 161
    invoke-static {v0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->-$$Nest$mtoStatsTransactionResult(Lcom/android/server/location/contexthub/ContextHubTransactionManager;I)I

    move-result v6

    .line 155
    const/16 v1, 0x191

    const/4 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubStatsLog;->write(IJIII)V

    .line 163
    if-nez p1, :cond_31

    .line 167
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->-$$Nest$fgetmNanoAppStateManager(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/NanoAppStateManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 168
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 169
    invoke-virtual {v4}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v4

    .line 167
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/location/contexthub/NanoAppStateManager;->addNanoAppInstance(IJI)V

    .line 172
    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    .line 173
    if-nez p1, :cond_49

    .line 174
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->-$$Nest$fgetmClientManager(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/ContextHubClientManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {v2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onNanoAppLoaded(IJ)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_49} :catch_4a

    .line 178
    :cond_49
    goto :goto_52

    .line 176
    :catch_4a
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ContextHubTransactionManager"

    const-string v2, "RemoteException while calling client onTransactionComplete"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_52
    return-void
.end method
