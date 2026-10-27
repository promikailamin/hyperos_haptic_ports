.class public Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;
.super Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.source "ContextHubTransactionManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final synthetic val$contextHubId:I

.field public final synthetic val$nanoAppId:J

.field public final synthetic val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IIJLjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V
    .registers 11

    .line 253
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iput p7, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iput-wide p8, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    iput-object p10, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    move p1, p2

    move p2, p3

    move-wide p3, p4

    move-object p5, p6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransact()I
    .registers 6

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->-$$Nest$fgetmContextHubProxy(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    .line 258
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionId()I

    move-result v4

    .line 257
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/location/contexthub/IContextHubWrapper;->unloadNanoapp(IJI)I

    move-result p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return p0

    :catch_13
    move-exception v0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while trying to unload nanoapp with ID 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    .line 263
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 260
    const-string v1, "ContextHubTransactionManager"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onTransactionComplete(I)V
    .registers 8

    .line 271
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 277
    invoke-static {v0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->-$$Nest$mtoStatsTransactionResult(Lcom/android/server/location/contexthub/ContextHubTransactionManager;I)I

    move-result v5

    const/16 v0, 0x191

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 271
    invoke-static/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubStatsLog;->write(IJIII)V

    .line 279
    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    if-nez p1, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    .line 280
    :goto_1c
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->logNanoappUnload(IJZ)V

    if-nez p1, :cond_2e

    .line 286
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->-$$Nest$fgetmNanoAppStateManager(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/NanoAppStateManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/NanoAppStateManager;->removeNanoAppInstance(IJ)V

    .line 289
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    if-nez p1, :cond_42

    .line 291
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->-$$Nest$fgetmClientManager(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/ContextHubClientManager;

    move-result-object p1

    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onNanoAppUnloaded(IJ)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_42} :catch_43

    :cond_42
    return-void

    :catch_43
    move-exception v0

    move-object p0, v0

    .line 294
    const-string p1, "ContextHubTransactionManager"

    const-string v0, "RemoteException while calling client onTransactionComplete"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
