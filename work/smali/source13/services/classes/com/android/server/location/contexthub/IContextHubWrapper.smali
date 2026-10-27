.class public abstract Lcom/android/server/location/contexthub/IContextHubWrapper;
.super Ljava/lang/Object;
.source "IContextHubWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;,
        Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;,
        Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;,
        Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;,
        Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;,
        Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IContextHubWrapper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maybeConnectTo1_0()Lcom/android/server/location/contexthub/IContextHubWrapper;
    .registers 4

    .line 104
    const-string v0, "IContextHubWrapper"

    const/4 v1, 0x0

    .line 106
    .local v1, "proxy":Landroid/hardware/contexthub/V1_0/IContexthub;
    const/4 v2, 0x1

    :try_start_4
    invoke-static {v2}, Landroid/hardware/contexthub/V1_0/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_11
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_8} :catch_a

    move-object v1, v0

    .line 111
    :goto_9
    goto :goto_18

    .line 109
    :catch_a
    move-exception v2

    .line 110
    .local v2, "e":Ljava/util/NoSuchElementException;
    const-string v3, "Context Hub HAL service not found"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 107
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :catch_11
    move-exception v2

    .line 108
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException while attaching to Context Hub HAL proxy"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_9

    .line 113
    :goto_18
    if-nez v1, :cond_1c

    const/4 v0, 0x0

    goto :goto_21

    :cond_1c
    new-instance v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;)V

    :goto_21
    return-object v0
.end method

.method public static maybeConnectTo1_1()Lcom/android/server/location/contexthub/IContextHubWrapper;
    .registers 4

    .line 123
    const-string v0, "IContextHubWrapper"

    const/4 v1, 0x0

    .line 125
    .local v1, "proxy":Landroid/hardware/contexthub/V1_1/IContexthub;
    const/4 v2, 0x1

    :try_start_4
    invoke-static {v2}, Landroid/hardware/contexthub/V1_1/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_1/IContexthub;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_11
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_8} :catch_a

    move-object v1, v0

    .line 130
    :goto_9
    goto :goto_18

    .line 128
    :catch_a
    move-exception v2

    .line 129
    .local v2, "e":Ljava/util/NoSuchElementException;
    const-string v3, "Context Hub HAL service not found"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 126
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :catch_11
    move-exception v2

    .line 127
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException while attaching to Context Hub HAL proxy"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_9

    .line 132
    :goto_18
    if-nez v1, :cond_1c

    const/4 v0, 0x0

    goto :goto_21

    :cond_1c
    new-instance v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;-><init>(Landroid/hardware/contexthub/V1_1/IContexthub;)V

    :goto_21
    return-object v0
.end method

.method public static maybeConnectTo1_2()Lcom/android/server/location/contexthub/IContextHubWrapper;
    .registers 4

    .line 142
    const-string v0, "IContextHubWrapper"

    const/4 v1, 0x0

    .line 144
    .local v1, "proxy":Landroid/hardware/contexthub/V1_2/IContexthub;
    const/4 v2, 0x1

    :try_start_4
    invoke-static {v2}, Landroid/hardware/contexthub/V1_2/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_2/IContexthub;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_11
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_8} :catch_a

    move-object v1, v0

    .line 149
    :goto_9
    goto :goto_18

    .line 147
    :catch_a
    move-exception v2

    .line 148
    .local v2, "e":Ljava/util/NoSuchElementException;
    const-string v3, "Context Hub HAL service not found"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 145
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :catch_11
    move-exception v2

    .line 146
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException while attaching to Context Hub HAL proxy"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_9

    .line 151
    :goto_18
    if-nez v1, :cond_1c

    const/4 v0, 0x0

    goto :goto_21

    :cond_1c
    new-instance v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;-><init>(Landroid/hardware/contexthub/V1_2/IContexthub;)V

    :goto_21
    return-object v0
.end method

.method public static maybeConnectToAidl()Lcom/android/server/location/contexthub/IContextHubWrapper;
    .registers 4

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "proxy":Landroid/hardware/contexthub/IContextHub;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/hardware/contexthub/IContextHub;

    .line 163
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "aidlServiceName":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "IContextHubWrapper"

    if-eqz v2, :cond_33

    .line 165
    nop

    .line 166
    invoke-static {v1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 165
    invoke-static {v2}, Landroid/hardware/contexthub/IContextHub$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 167
    if-nez v0, :cond_38

    .line 168
    const-string v2, "Context Hub AIDL service was declared but was not found"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 171
    :cond_33
    const-string v2, "Context Hub AIDL service is not declared"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_38
    :goto_38
    if-nez v0, :cond_3c

    const/4 v2, 0x0

    goto :goto_41

    :cond_3c
    new-instance v2, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    invoke-direct {v2, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;-><init>(Landroid/hardware/contexthub/IContextHub;)V

    :goto_41
    return-object v2
.end method


# virtual methods
.method public abstract disableNanoapp(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableNanoapp(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHubs()Landroid/util/Pair;
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
.end method

.method public abstract loadNanoapp(ILandroid/hardware/location/NanoAppBinary;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAirplaneModeSettingChanged(Z)V
.end method

.method public abstract onBtMainSettingChanged(Z)V
.end method

.method public abstract onBtScanningSettingChanged(Z)V
.end method

.method public onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/contexthub/HostEndpointInfo;

    .line 266
    return-void
.end method

.method public onHostEndpointDisconnected(S)V
    .registers 2
    .param p1, "hostEndpointId"    # S

    .line 273
    return-void
.end method

.method public abstract onLocationSettingChanged(Z)V
.end method

.method public abstract onMicrophoneSettingChanged(Z)V
.end method

.method public abstract onWifiMainSettingChanged(Z)V
.end method

.method public abstract onWifiScanningSettingChanged(Z)V
.end method

.method public abstract onWifiSettingChanged(Z)V
.end method

.method public abstract queryNanoapps(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract supportsAirplaneModeSettingNotifications()Z
.end method

.method public abstract supportsBtSettingNotifications()Z
.end method

.method public abstract supportsLocationSettingNotifications()Z
.end method

.method public abstract supportsMicrophoneSettingNotifications()Z
.end method

.method public abstract supportsWifiSettingNotifications()Z
.end method

.method public abstract unloadNanoapp(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
