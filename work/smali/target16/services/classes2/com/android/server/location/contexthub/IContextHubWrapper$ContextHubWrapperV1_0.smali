.class public Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;
.super Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;
.source "IContextHubWrapper.java"


# instance fields
.field public mHub:Landroid/hardware/contexthub/V1_0/IContexthub;


# direct methods
.method public constructor <init>(Landroid/hardware/contexthub/V1_0/IContexthub;)V
    .registers 2

    .line 1163
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;)V

    .line 1164
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    return-void
.end method


# virtual methods
.method public getContextHubs()Landroid/util/Pair;
    .registers 6

    .line 1168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {p0}, Landroid/hardware/contexthub/V1_0/IContexthub;->getHubs()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_23

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/hardware/contexthub/V1_0/ContextHub;

    .line 1170
    new-instance v4, Landroid/hardware/location/ContextHubInfo;

    invoke-direct {v4, v3}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/V1_0/ContextHub;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1172
    :cond_23
    new-instance p0, Landroid/util/Pair;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public onAirplaneModeSettingChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public onLocationSettingChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public onMicrophoneSettingChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public onWifiSettingChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public supportsAirplaneModeSettingNotifications()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public supportsLocationSettingNotifications()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public supportsMicrophoneSettingNotifications()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public supportsWifiSettingNotifications()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method
