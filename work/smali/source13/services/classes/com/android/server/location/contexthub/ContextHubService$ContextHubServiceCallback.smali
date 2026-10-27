.class Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;
.super Ljava/lang/Object;
.source "ContextHubService.java"

# interfaces
.implements Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/ContextHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextHubServiceCallback"
.end annotation


# instance fields
.field private final mContextHubId:I

.field final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;I)V
    .registers 3
    .param p2, "contextHubId"    # I

    .line 179
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    .line 181
    return-void
.end method


# virtual methods
.method public handleContextHubEvent(I)V
    .registers 4
    .param p1, "eventType"    # I

    .line 190
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleHubEventCallback(Lcom/android/server/location/contexthub/ContextHubService;II)V

    .line 191
    return-void
.end method

.method public handleNanoappAbort(JI)V
    .registers 6
    .param p1, "nanoappId"    # J
    .param p3, "abortCode"    # I

    .line 195
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleAppAbortCallback(Lcom/android/server/location/contexthub/ContextHubService;IJI)V

    .line 196
    return-void
.end method

.method public handleNanoappInfo(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .line 200
    .local p1, "nanoappStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleQueryAppsCallback(Lcom/android/server/location/contexthub/ContextHubService;ILjava/util/List;)V

    .line 201
    return-void
.end method

.method public handleNanoappMessage(SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .param p1, "hostEndpointId"    # S
    .param p2, "message"    # Landroid/hardware/location/NanoAppMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Landroid/hardware/location/NanoAppMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p3, "nanoappPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "messagePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleClientMessageCallback(Lcom/android/server/location/contexthub/ContextHubService;ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    .line 208
    return-void
.end method

.method public handleTransactionResult(IZ)V
    .registers 5
    .param p1, "transactionId"    # I
    .param p2, "success"    # Z

    .line 185
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleTransactionResultCallback(Lcom/android/server/location/contexthub/ContextHubService;IIZ)V

    .line 186
    return-void
.end method
