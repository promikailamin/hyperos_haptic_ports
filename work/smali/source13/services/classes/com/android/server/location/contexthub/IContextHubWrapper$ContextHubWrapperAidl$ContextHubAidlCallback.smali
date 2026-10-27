.class Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;
.super Landroid/hardware/contexthub/IContextHubCallback$Stub;
.source "IContextHubWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextHubAidlCallback"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

.field private final mContextHubId:I

.field final synthetic this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V
    .registers 4
    .param p2, "contextHubId"    # I
    .param p3, "callback"    # Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    .line 356
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    invoke-direct {p0}, Landroid/hardware/contexthub/IContextHubCallback$Stub;-><init>()V

    .line 357
    iput p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mContextHubId:I

    .line 358
    iput-object p3, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    .line 359
    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 394
    const-string v0, "10abe2e5202d9b80ccebf5f6376d711a9a212b27"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method public handleContextHubAsyncEvent(I)V
    .registers 4
    .param p1, "evt"    # I

    .line 381
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    invoke-static {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->-$$Nest$fgetmHandler(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 385
    return-void
.end method

.method public handleContextHubMessage(Landroid/hardware/contexthub/ContextHubMessage;[Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Landroid/hardware/contexthub/ContextHubMessage;
    .param p2, "msgContentPerms"    # [Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    invoke-static {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->-$$Nest$fgetmHandler(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;Landroid/hardware/contexthub/ContextHubMessage;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    return-void
.end method

.method public handleNanoappInfo([Landroid/hardware/contexthub/NanoappInfo;)V
    .registers 5
    .param p1, "appInfo"    # [Landroid/hardware/contexthub/NanoappInfo;

    .line 362
    nop

    .line 363
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createNanoAppStateList([Landroid/hardware/contexthub/NanoappInfo;)Ljava/util/List;

    move-result-object v0

    .line 364
    .local v0, "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    iget-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    invoke-static {v1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->-$$Nest$fgetmHandler(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    return-void
.end method

.method public handleTransactionResult(IZ)V
    .registers 5
    .param p1, "transactionId"    # I
    .param p2, "success"    # Z

    .line 388
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    invoke-static {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->-$$Nest$fgetmHandler(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void
.end method

.method synthetic lambda$handleContextHubAsyncEvent$2$com-android-server-location-contexthub-IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback(I)V
    .registers 4
    .param p1, "evt"    # I

    .line 382
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    .line 383
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toContextHubEventFromAidl(I)I

    move-result v1

    .line 382
    invoke-interface {v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleContextHubEvent(I)V

    .line 384
    return-void
.end method

.method synthetic lambda$handleContextHubMessage$1$com-android-server-location-contexthub-IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback(Landroid/hardware/contexthub/ContextHubMessage;[Ljava/lang/String;)V
    .registers 9
    .param p1, "msg"    # Landroid/hardware/contexthub/ContextHubMessage;
    .param p2, "msgContentPerms"    # [Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    iget-char v1, p1, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    int-to-short v1, v1

    .line 374
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createNanoAppMessage(Landroid/hardware/contexthub/ContextHubMessage;)Landroid/hardware/location/NanoAppMessage;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/hardware/contexthub/ContextHubMessage;->permissions:[Ljava/lang/String;

    .line 375
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 376
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 372
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleNanoappMessage(SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    .line 377
    return-void
.end method

.method synthetic lambda$handleNanoappInfo$0$com-android-server-location-contexthub-IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback(Ljava/util/List;)V
    .registers 3
    .param p1, "nanoAppStateList"    # Ljava/util/List;

    .line 365
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    invoke-interface {v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleNanoappInfo(Ljava/util/List;)V

    .line 366
    return-void
.end method

.method synthetic lambda$handleTransactionResult$3$com-android-server-location-contexthub-IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback(IZ)V
    .registers 4
    .param p1, "transactionId"    # I
    .param p2, "success"    # Z

    .line 389
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleTransactionResult(IZ)V

    .line 390
    return-void
.end method
