.class Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;
.super Lcom/android/server/location/contexthub/IContextHubWrapper;
.source "IContextHubWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/IContextHubWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextHubWrapperAidl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;
    }
.end annotation


# instance fields
.field private final mAidlCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHub:Landroid/hardware/contexthub/IContextHub;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method constructor <init>(Landroid/hardware/contexthub/IContextHub;)V
    .registers 5
    .param p1, "hub"    # Landroid/hardware/contexthub/IContextHub;

    .line 403
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper;-><init>()V

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mAidlCallbackMap:Ljava/util/Map;

    .line 347
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Context Hub AIDL callback"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 404
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    .line 405
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 406
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandler:Landroid/os/Handler;

    .line 407
    return-void
.end method

.method private onSettingChanged(BZ)V
    .registers 6
    .param p1, "setting"    # B
    .param p2, "enabled"    # Z

    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/IContextHub;->onSettingChanged(BZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6

    .line 585
    goto :goto_23

    .line 583
    :catch_6
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while sending setting update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IContextHubWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method


# virtual methods
.method public disableNanoapp(IJI)I
    .registers 7
    .param p1, "contextHubId"    # I
    .param p2, "nanoappId"    # J
    .param p4, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/contexthub/IContextHub;->disableNanoapp(IJI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_5} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_7

    .line 551
    const/4 v0, 0x0

    return v0

    .line 554
    :catch_7
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x2

    return v1

    .line 552
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    return v1
.end method

.method public enableNanoapp(IJI)I
    .registers 7
    .param p1, "contextHubId"    # I
    .param p2, "nanoappId"    # J
    .param p4, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/contexthub/IContextHub;->enableNanoapp(IJI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_5} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_7

    .line 538
    const/4 v0, 0x0

    return v0

    .line 541
    :catch_7
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x2

    return v1

    .line 539
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    return v1
.end method

.method public getHubs()Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 411
    .local v0, "supportedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v1, "hubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/ContextHubInfo;>;"
    iget-object v2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    invoke-interface {v2}, Landroid/hardware/contexthub/IContextHub;->getContextHubs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/ContextHubInfo;

    .line 413
    .local v3, "hub":Landroid/hardware/contexthub/ContextHubInfo;
    new-instance v4, Landroid/hardware/location/ContextHubInfo;

    invoke-direct {v4, v3}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/ContextHubInfo;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v4, v3, Landroid/hardware/contexthub/ContextHubInfo;->supportedPermissions:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2c
    if-ge v6, v5, :cond_36

    aget-object v7, v4, v6

    .line 415
    .local v7, "permission":Ljava/lang/String;
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 414
    .end local v7    # "permission":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 417
    .end local v3    # "hub":Landroid/hardware/contexthub/ContextHubInfo;
    :cond_36
    goto :goto_14

    .line 418
    :cond_37
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public loadNanoapp(ILandroid/hardware/location/NanoAppBinary;I)I
    .registers 7
    .param p1, "contextHubId"    # I
    .param p2, "binary"    # Landroid/hardware/location/NanoAppBinary;
    .param p3, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    nop

    .line 509
    invoke-static {p2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createAidlNanoAppBinary(Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/contexthub/NanoappBinary;

    move-result-object v0

    .line 511
    .local v0, "aidlNanoAppBinary":Landroid/hardware/contexthub/NanoappBinary;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    invoke-interface {v1, p1, v0, p3}, Landroid/hardware/contexthub/IContextHub;->loadNanoapp(ILandroid/hardware/contexthub/NanoappBinary;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_f
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_a} :catch_f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_a} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_a} :catch_c

    .line 512
    const/4 v1, 0x0

    return v1

    .line 515
    :catch_c
    move-exception v1

    .line 516
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x2

    return v2

    .line 513
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_f
    move-exception v1

    .line 514
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    return v2
.end method

.method public onAirplaneModeSettingChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 449
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    .line 450
    return-void
.end method

.method public onBtMainSettingChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 465
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    .line 466
    return-void
.end method

.method public onBtScanningSettingChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 469
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    .line 470
    return-void
.end method

.method public onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/hardware/contexthub/HostEndpointInfo;

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    invoke-interface {v0, p1}, Landroid/hardware/contexthub/IContextHub;->onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6

    .line 478
    goto :goto_23

    .line 476
    :catch_6
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in onHostEndpointConnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IContextHubWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public onHostEndpointDisconnected(S)V
    .registers 5
    .param p1, "hostEndpointId"    # S

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Landroid/hardware/contexthub/IContextHub;->onHostEndpointDisconnected(C)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_7

    .line 487
    goto :goto_24

    .line 485
    :catch_7
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in onHostEndpointDisconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IContextHubWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_24
    return-void
.end method

.method public onLocationSettingChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 442
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    .line 443
    return-void
.end method

.method public onMicrophoneSettingChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 453
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    .line 454
    return-void
.end method

.method public onWifiMainSettingChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 457
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    .line 458
    return-void
.end method

.method public onWifiScanningSettingChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 461
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    .line 462
    return-void
.end method

.method public onWifiSettingChanged(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 446
    return-void
.end method

.method public queryNanoapps(I)I
    .registers 4
    .param p1, "contextHubId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    invoke-interface {v0, p1}, Landroid/hardware/contexthub/IContextHub;->queryNanoapps(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_5} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_7

    .line 563
    const/4 v0, 0x0

    return v0

    .line 566
    :catch_7
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x2

    return v1

    .line 564
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    return v1
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

    .line 572
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mAidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    :try_start_e
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    iget-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mAidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/IContextHubCallback;

    invoke-interface {v0, p1, v1}, Landroid/hardware/contexthub/IContextHub;->registerCallback(ILandroid/hardware/contexthub/IContextHubCallback;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1f} :catch_20
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_1f} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_1f} :catch_20

    .line 577
    goto :goto_3d

    .line 575
    :catch_20
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while registering callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IContextHubWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3d
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

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    .line 496
    invoke-static {p1, p3}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createAidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/ContextHubMessage;

    move-result-object v1

    .line 495
    invoke-interface {v0, p2, v1}, Landroid/hardware/contexthub/IContextHub;->sendMessageToHub(ILandroid/hardware/contexthub/ContextHubMessage;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_e
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_9} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_b

    .line 497
    const/4 v0, 0x0

    return v0

    .line 500
    :catch_b
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x2

    return v1

    .line 498
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_e
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    return v1
.end method

.method public supportsAirplaneModeSettingNotifications()Z
    .registers 2

    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBtSettingNotifications()Z
    .registers 2

    .line 438
    const/4 v0, 0x1

    return v0
.end method

.method public supportsLocationSettingNotifications()Z
    .registers 2

    .line 422
    const/4 v0, 0x1

    return v0
.end method

.method public supportsMicrophoneSettingNotifications()Z
    .registers 2

    .line 434
    const/4 v0, 0x1

    return v0
.end method

.method public supportsWifiSettingNotifications()Z
    .registers 2

    .line 426
    const/4 v0, 0x1

    return v0
.end method

.method public unloadNanoapp(IJI)I
    .registers 7
    .param p1, "contextHubId"    # I
    .param p2, "nanoappId"    # J
    .param p4, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/contexthub/IContextHub;->unloadNanoapp(IJI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_5} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_7

    .line 525
    const/4 v0, 0x0

    return v0

    .line 528
    :catch_7
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x2

    return v1

    .line 526
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    return v1
.end method
