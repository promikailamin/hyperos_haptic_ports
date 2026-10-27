.class abstract Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;
.super Lcom/android/server/location/contexthub/IContextHubWrapper;
.source "IContextHubWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/IContextHubWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ContextHubWrapperHidl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;
    }
.end annotation


# instance fields
.field protected mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

.field protected final mHidlCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHub:Landroid/hardware/contexthub/V1_0/IContexthub;


# direct methods
.method constructor <init>(Landroid/hardware/contexthub/V1_0/IContexthub;)V
    .registers 3
    .param p1, "hub"    # Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 658
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper;-><init>()V

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    .line 597
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHidlCallbackMap:Ljava/util/Map;

    .line 659
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 660
    return-void
.end method


# virtual methods
.method public disableNanoapp(IJI)I
    .registers 6
    .param p1, "contextHubId"    # I
    .param p2, "nanoappId"    # J
    .param p4, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/contexthub/V1_0/IContexthub;->disableNanoApp(IJI)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result v0

    return v0
.end method

.method public enableNanoapp(IJI)I
    .registers 6
    .param p1, "contextHubId"    # I
    .param p2, "nanoappId"    # J
    .param p4, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/contexthub/V1_0/IContexthub;->enableNanoApp(IJI)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result v0

    return v0
.end method

.method public loadNanoapp(ILandroid/hardware/location/NanoAppBinary;I)I
    .registers 6
    .param p1, "contextHubId"    # I
    .param p2, "binary"    # Landroid/hardware/location/NanoAppBinary;
    .param p3, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 675
    nop

    .line 676
    invoke-static {p2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createHidlNanoAppBinary(Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    move-result-object v0

    .line 677
    .local v0, "hidlNanoAppBinary":Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    iget-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {v1, p1, v0, p3}, Landroid/hardware/contexthub/V1_0/IContexthub;->loadNanoApp(ILandroid/hardware/contexthub/V1_0/NanoAppBinary;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result v1

    return v1
.end method

.method public onBtMainSettingChanged(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 720
    return-void
.end method

.method public onBtScanningSettingChanged(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 721
    return-void
.end method

.method public onWifiMainSettingChanged(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 718
    return-void
.end method

.method public onWifiScanningSettingChanged(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 719
    return-void
.end method

.method public queryNanoapps(I)I
    .registers 3
    .param p1, "contextHubId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 704
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 705
    invoke-interface {v0, p1}, Landroid/hardware/contexthub/V1_0/IContexthub;->queryApps(I)I

    move-result v0

    .line 704
    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result v0

    return v0
.end method

.method public registerCallback(ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V
    .registers 6
    .param p1, "contextHubId"    # I
    .param p2, "callback"    # Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    iget-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/V1_0/IContexthubCallback;

    invoke-interface {v0, p1, v1}, Landroid/hardware/contexthub/V1_0/IContexthub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I

    .line 712
    return-void
.end method

.method public sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I
    .registers 6
    .param p1, "hostEndpointId"    # S
    .param p2, "contextHubId"    # I
    .param p3, "message"    # Landroid/hardware/location/NanoAppMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 666
    nop

    .line 667
    invoke-static {p1, p3}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createHidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    move-result-object v0

    .line 668
    .local v0, "messageToNanoApp":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    iget-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 669
    invoke-interface {v1, p2, v0}, Landroid/hardware/contexthub/V1_0/IContexthub;->sendMessageToHub(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)I

    move-result v1

    .line 668
    invoke-static {v1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result v1

    return v1
.end method

.method public supportsBtSettingNotifications()Z
    .registers 2

    .line 715
    const/4 v0, 0x0

    return v0
.end method

.method public unloadNanoapp(IJI)I
    .registers 6
    .param p1, "contextHubId"    # I
    .param p2, "nanoappId"    # J
    .param p4, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/contexthub/V1_0/IContexthub;->unloadNanoApp(IJI)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result v0

    return v0
.end method
