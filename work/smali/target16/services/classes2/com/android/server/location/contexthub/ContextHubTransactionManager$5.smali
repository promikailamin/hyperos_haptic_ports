.class public Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;
.super Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.source "ContextHubTransactionManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final synthetic val$contextHubId:I

.field public final synthetic val$message:Landroid/hardware/location/NanoAppMessage;

.field public final synthetic val$ownerId:S

.field public final synthetic val$transactionCallback:Landroid/hardware/location/IContextHubTransactionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IILandroid/hardware/location/NanoAppMessage;SILandroid/hardware/location/IContextHubTransactionCallback;)V
    .registers 11

    .line 407
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iput-object p7, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$message:Landroid/hardware/location/NanoAppMessage;

    iput-short p8, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$ownerId:S

    iput p9, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$contextHubId:I

    iput-object p10, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$transactionCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    move p1, p2

    move p2, p3

    move-object p3, p4

    move p4, p5

    move p5, p6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public onTransact()I
    .registers 5

    const/4 v0, 0x1

    .line 411
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$message:Landroid/hardware/location/NanoAppMessage;

    invoke-virtual {v1, v0}, Landroid/hardware/location/NanoAppMessage;->setIsReliable(Z)V

    .line 412
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$message:Landroid/hardware/location/NanoAppMessage;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/location/NanoAppMessage;->setMessageSequenceNumber(I)V

    .line 414
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-static {v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->-$$Nest$fgetmContextHubProxy(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-result-object v1

    iget-short v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$ownerId:S

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$contextHubId:I

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$message:Landroid/hardware/location/NanoAppMessage;

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I

    move-result p0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1f} :catch_20

    return p0

    :catch_20
    move-exception p0

    .line 416
    const-string v1, "ContextHubTransactionManager"

    const-string v2, "RemoteException while trying to send a reliable message"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public onTransactionComplete(I)V
    .registers 3

    .line 424
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$transactionCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {p0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 426
    const-string p1, "ContextHubTransactionManager"

    const-string v0, "RemoteException while calling client onTransactionComplete"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
