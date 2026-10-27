.class Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;
.super Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;
.source "IContextHubWrapper.java"

# interfaces
.implements Landroid/hardware/contexthub/V1_2/IContexthub$getHubs_1_2Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/IContextHubWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextHubWrapperV1_2"
.end annotation


# instance fields
.field private final mHub:Landroid/hardware/contexthub/V1_2/IContexthub;

.field private mHubInfo:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/hardware/contexthub/V1_2/IContexthub;)V
    .registers 5
    .param p1, "hub"    # Landroid/hardware/contexthub/V1_2/IContexthub;

    .line 828
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;)V

    .line 824
    new-instance v0, Landroid/util/Pair;

    .line 825
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHubInfo:Landroid/util/Pair;

    .line 829
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHub:Landroid/hardware/contexthub/V1_2/IContexthub;

    .line 830
    return-void
.end method

.method private sendSettingChanged(BB)V
    .registers 6
    .param p1, "setting"    # B
    .param p2, "newValue"    # B

    .line 890
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHub:Landroid/hardware/contexthub/V1_2/IContexthub;

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/V1_2/IContexthub;->onSettingChanged_1_2(BB)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 893
    goto :goto_e

    .line 891
    :catch_6
    move-exception v0

    .line 892
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IContextHubWrapper"

    const-string v2, "Failed to send setting change to Contexthub"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method


# virtual methods
.method public getHubs()Landroid/util/Pair;
    .registers 2
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

    .line 842
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHub:Landroid/hardware/contexthub/V1_2/IContexthub;

    invoke-interface {v0, p0}, Landroid/hardware/contexthub/V1_2/IContexthub;->getHubs_1_2(Landroid/hardware/contexthub/V1_2/IContexthub$getHubs_1_2Callback;)V

    .line 843
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHubInfo:Landroid/util/Pair;

    return-object v0
.end method

.method public onAirplaneModeSettingChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 873
    nop

    .line 874
    nop

    .line 873
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->sendSettingChanged(BB)V

    .line 875
    return-void
.end method

.method public onLocationSettingChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 863
    nop

    .line 864
    nop

    .line 863
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->sendSettingChanged(BB)V

    .line 865
    return-void
.end method

.method public onMicrophoneSettingChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 878
    nop

    .line 879
    nop

    .line 878
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->sendSettingChanged(BB)V

    .line 880
    return-void
.end method

.method public onValues(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_0/ContextHub;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 834
    .local p1, "hubs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    .local p2, "supportedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v0, "hubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/ContextHubInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/V1_0/ContextHub;

    .line 836
    .local v2, "hub":Landroid/hardware/contexthub/V1_0/ContextHub;
    new-instance v3, Landroid/hardware/location/ContextHubInfo;

    invoke-direct {v3, v2}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/V1_0/ContextHub;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    .end local v2    # "hub":Landroid/hardware/contexthub/V1_0/ContextHub;
    goto :goto_9

    .line 838
    :cond_1e
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHubInfo:Landroid/util/Pair;

    .line 839
    return-void
.end method

.method public onWifiSettingChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 868
    nop

    .line 869
    nop

    .line 868
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->sendSettingChanged(BB)V

    .line 870
    return-void
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

    .line 883
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHub:Landroid/hardware/contexthub/V1_2/IContexthub;

    iget-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/V1_2/IContexthubCallback;

    invoke-interface {v0, p1, v1}, Landroid/hardware/contexthub/V1_2/IContexthub;->registerCallback_1_2(ILandroid/hardware/contexthub/V1_2/IContexthubCallback;)I

    .line 886
    return-void
.end method

.method public supportsAirplaneModeSettingNotifications()Z
    .registers 2

    .line 855
    const/4 v0, 0x1

    return v0
.end method

.method public supportsLocationSettingNotifications()Z
    .registers 2

    .line 847
    const/4 v0, 0x1

    return v0
.end method

.method public supportsMicrophoneSettingNotifications()Z
    .registers 2

    .line 859
    const/4 v0, 0x1

    return v0
.end method

.method public supportsWifiSettingNotifications()Z
    .registers 2

    .line 851
    const/4 v0, 0x1

    return v0
.end method
