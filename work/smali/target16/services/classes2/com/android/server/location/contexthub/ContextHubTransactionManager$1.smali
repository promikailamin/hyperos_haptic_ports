.class public Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;
.super Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.source "ContextHubTransactionManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final synthetic val$contextHubId:I

.field public final synthetic val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

.field public final synthetic val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IIJLjava/lang/String;ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)V
    .registers 10

    .line 181
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iput p7, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    iput-object p8, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    iput-object p9, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    move p1, p2

    move p2, p3

    move-wide p3, p4

    move-object p5, p6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransact()I
    .registers 5

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->-$$Nest$fgetmContextHubProxy(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 186
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionId()I

    move-result v3

    .line 185
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/IContextHubWrapper;->loadNanoapp(ILandroid/hardware/location/NanoAppBinary;I)I

    move-result p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return p0

    :catch_13
    move-exception v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while trying to load nanoapp with ID 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 191
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 188
    const-string v1, "ContextHubTransactionManager"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onTransactionComplete(I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 199
    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 201
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v4

    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 202
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v6

    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 205
    invoke-static {v2, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->-$$Nest$mtoStatsTransactionResult(Lcom/android/server/location/contexthub/ContextHubTransactionManager;I)I

    move-result v8

    const/16 v3, 0x191

    const/4 v7, 0x1

    .line 199
    invoke-static/range {v3 .. v8}, Lcom/android/server/location/contexthub/ContextHubStatsLog;->write(IJIII)V

    .line 207
    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;

    move-result-object v9

    iget v10, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 210
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v11

    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 211
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v13

    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 212
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppBinary;->getBinary()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v14, v2

    if-nez v1, :cond_3c

    const/4 v2, 0x1

    :goto_39
    move/from16 v16, v2

    goto :goto_3e

    :cond_3c
    const/4 v2, 0x0

    goto :goto_39

    .line 208
    :goto_3e
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->logNanoappLoad(IJIJZ)V

    if-nez v1, :cond_5a

    .line 219
    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-static {v2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->-$$Nest$fgetmNanoAppStateManager(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/NanoAppStateManager;

    move-result-object v2

    iget v3, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    iget-object v4, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 221
    invoke-virtual {v4}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v4

    iget-object v6, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 222
    invoke-virtual {v6}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v6

    .line 219
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/location/contexthub/NanoAppStateManager;->addNanoAppInstance(IJI)V

    .line 225
    :cond_5a
    :try_start_5a
    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {v2, v1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    if-nez v1, :cond_72

    .line 227
    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-static {v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->-$$Nest$fgetmClientManager(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/ContextHubClientManager;

    move-result-object v1

    iget v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {v0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onNanoAppLoaded(IJ)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_72} :catch_73

    :cond_72
    return-void

    :catch_73
    move-exception v0

    .line 230
    const-string v1, "ContextHubTransactionManager"

    const-string v2, "RemoteException while calling client onTransactionComplete"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
