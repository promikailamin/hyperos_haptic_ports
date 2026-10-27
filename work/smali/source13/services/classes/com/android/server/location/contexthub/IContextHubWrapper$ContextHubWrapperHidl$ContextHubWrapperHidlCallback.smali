.class public Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;
.super Landroid/hardware/contexthub/V1_2/IContexthubCallback$Stub;
.source "IContextHubWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContextHubWrapperHidlCallback"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

.field private final mContextHubId:I

.field final synthetic this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;
    .param p2, "contextHubId"    # I
    .param p3, "callback"    # Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    .line 604
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;

    invoke-direct {p0}, Landroid/hardware/contexthub/V1_2/IContexthubCallback$Stub;-><init>()V

    .line 605
    iput p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mContextHubId:I

    .line 606
    iput-object p3, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    .line 607
    return-void
.end method


# virtual methods
.method public handleAppAbort(JI)V
    .registers 5
    .param p1, "nanoAppId"    # J
    .param p3, "abortCode"    # I

    .line 632
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleNanoappAbort(JI)V

    .line 633
    return-void
.end method

.method public handleAppsInfo(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_0/HubAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 638
    .local p1, "nanoAppInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/HubAppInfo;>;"
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toHubAppInfo_1_2(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->handleAppsInfo_1_2(Ljava/util/ArrayList;)V

    .line 639
    return-void
.end method

.method public handleAppsInfo_1_2(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_2/HubAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 652
    .local p1, "nanoAppInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_2/HubAppInfo;>;"
    nop

    .line 653
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createNanoAppStateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 654
    .local v0, "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    iget-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    invoke-interface {v1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleNanoappInfo(Ljava/util/List;)V

    .line 655
    return-void
.end method

.method public handleClientMsg(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .registers 7
    .param p1, "message"    # Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    .line 611
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    iget-short v1, p1, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    .line 613
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;

    move-result-object v2

    .line 614
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 615
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 611
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleNanoappMessage(SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    .line 616
    return-void
.end method

.method public handleClientMsg_1_2(Landroid/hardware/contexthub/V1_2/ContextHubMsg;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "message"    # Landroid/hardware/contexthub/V1_2/ContextHubMsg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/contexthub/V1_2/ContextHubMsg;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 644
    .local p2, "messagePermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    iget-object v1, p1, Landroid/hardware/contexthub/V1_2/ContextHubMsg;->msg_1_0:Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    iget-short v1, v1, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    iget-object v2, p1, Landroid/hardware/contexthub/V1_2/ContextHubMsg;->msg_1_0:Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    .line 646
    invoke-static {v2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/contexthub/V1_2/ContextHubMsg;->permissions:Ljava/util/ArrayList;

    .line 644
    invoke-interface {v0, v1, v2, v3, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleNanoappMessage(SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    .line 648
    return-void
.end method

.method public handleHubEvent(I)V
    .registers 4
    .param p1, "eventType"    # I

    .line 626
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    .line 627
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toContextHubEvent(I)I

    move-result v1

    .line 626
    invoke-interface {v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleContextHubEvent(I)V

    .line 628
    return-void
.end method

.method public handleTxnResult(II)V
    .registers 5
    .param p1, "transactionId"    # I
    .param p2, "result"    # I

    .line 620
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    if-nez p2, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0, p1, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleTransactionResult(IZ)V

    .line 622
    return-void
.end method
