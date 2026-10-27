.class Lcom/android/server/location/contexthub/ContextHubService$6;
.super Landroid/hardware/location/IContextHubClientCallback$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/contexthub/ContextHubService;->createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;

.field final synthetic val$contextHubId:I


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/location/contexthub/ContextHubService;

    .line 370
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->val$contextHubId:I

    invoke-direct {p0}, Landroid/hardware/location/IContextHubClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientAuthorizationChanged(JI)V
    .registers 4
    .param p1, "nanoAppId"    # J
    .param p3, "authorization"    # I

    .line 409
    return-void
.end method

.method public onHubReset()V
    .registers 6

    .line 383
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 384
    .local v0, "data":[B
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->val$contextHubId:I

    const/4 v3, 0x7

    const/4 v4, -0x1

    invoke-static {v1, v3, v2, v4, v0}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$monMessageReceiptOldApi(Lcom/android/server/location/contexthub/ContextHubService;III[B)I

    .line 385
    return-void
.end method

.method public onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V
    .registers 7
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 373
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$fgetmNanoAppStateManager(Lcom/android/server/location/contexthub/ContextHubService;)Lcom/android/server/location/contexthub/NanoAppStateManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->val$contextHubId:I

    .line 374
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v2

    .line 373
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result v0

    .line 376
    .local v0, "nanoAppHandle":I
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 377
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result v2

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->val$contextHubId:I

    .line 378
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object v4

    .line 376
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$monMessageReceiptOldApi(Lcom/android/server/location/contexthub/ContextHubService;III[B)I

    .line 379
    return-void
.end method

.method public onNanoAppAborted(JI)V
    .registers 4
    .param p1, "nanoAppId"    # J
    .param p3, "abortCode"    # I

    .line 389
    return-void
.end method

.method public onNanoAppDisabled(J)V
    .registers 3
    .param p1, "nanoAppId"    # J

    .line 405
    return-void
.end method

.method public onNanoAppEnabled(J)V
    .registers 3
    .param p1, "nanoAppId"    # J

    .line 401
    return-void
.end method

.method public onNanoAppLoaded(J)V
    .registers 3
    .param p1, "nanoAppId"    # J

    .line 393
    return-void
.end method

.method public onNanoAppUnloaded(J)V
    .registers 3
    .param p1, "nanoAppId"    # J

    .line 397
    return-void
.end method
