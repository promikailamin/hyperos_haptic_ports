.class public Landroid/net/NetworkMonitorManager;
.super Ljava/lang/Object;
.source "NetworkMonitorManager.java"


# instance fields
.field private final mNetworkMonitor:Landroid/net/INetworkMonitor;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/INetworkMonitor;)V
    .registers 3
    .param p1, "networkMonitorManager"    # Landroid/net/INetworkMonitor;

    .line 53
    const-class v0, Landroid/net/NetworkMonitorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/net/NetworkMonitorManager;-><init>(Landroid/net/INetworkMonitor;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/net/INetworkMonitor;Ljava/lang/String;)V
    .registers 3
    .param p1, "networkMonitorManager"    # Landroid/net/INetworkMonitor;
    .param p2, "tag"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    .line 49
    iput-object p2, p0, Landroid/net/NetworkMonitorManager;->mTag:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 57
    iget-object v0, p0, Landroid/net/NetworkMonitorManager;->mTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    return-void
.end method


# virtual methods
.method public forceReevaluation(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 117
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->forceReevaluation(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 118
    const/4 v2, 0x1

    .line 123
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    return v2

    .line 123
    :catchall_e
    move-exception v2

    goto :goto_1b

    .line 119
    :catch_10
    move-exception v2

    .line 120
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_11
    const-string v3, "Error in forceReevaluation"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 121
    const/4 v3, 0x0

    .line 123
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    return v3

    .line 123
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    throw v2
.end method

.method public launchCaptivePortalApp()Z
    .registers 5

    .line 76
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 78
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->launchCaptivePortalApp()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 79
    const/4 v2, 0x1

    .line 84
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    return v2

    .line 84
    :catchall_e
    move-exception v2

    goto :goto_1b

    .line 80
    :catch_10
    move-exception v2

    .line 81
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_11
    const-string v3, "Error in launchCaptivePortalApp"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 82
    const/4 v3, 0x0

    .line 84
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    return v3

    .line 84
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    throw v2
.end method

.method public notifyCaptivePortalAppFinished(I)Z
    .registers 6
    .param p1, "response"    # I

    .line 89
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 91
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyCaptivePortalAppFinished(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 92
    const/4 v2, 0x1

    .line 97
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    return v2

    .line 97
    :catchall_e
    move-exception v2

    goto :goto_1b

    .line 93
    :catch_10
    move-exception v2

    .line 94
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_11
    const-string v3, "Error in notifyCaptivePortalAppFinished"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 95
    const/4 v3, 0x0

    .line 97
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    return v3

    .line 97
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    throw v2
.end method

.method public notifyDnsResponse(I)Z
    .registers 6
    .param p1, "returnCode"    # I

    .line 141
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 143
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyDnsResponse(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 144
    const/4 v2, 0x1

    .line 149
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    return v2

    .line 149
    :catchall_e
    move-exception v2

    goto :goto_1b

    .line 145
    :catch_10
    move-exception v2

    .line 146
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_11
    const-string v3, "Error in notifyDnsResponse"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 147
    const/4 v3, 0x0

    .line 149
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    return v3

    .line 149
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    throw v2
.end method

.method public notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)Z
    .registers 6
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .line 185
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 187
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 188
    const/4 v2, 0x1

    .line 193
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    return v2

    .line 193
    :catchall_e
    move-exception v2

    goto :goto_1b

    .line 189
    :catch_10
    move-exception v2

    .line 190
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_11
    const-string v3, "Error in notifyLinkPropertiesChanged"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 191
    const/4 v3, 0x0

    .line 193
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    return v3

    .line 193
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    throw v2
.end method

.method public notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)Z
    .registers 6
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 200
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 201
    const/4 v2, 0x1

    .line 206
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 201
    return v2

    .line 206
    :catchall_e
    move-exception v2

    goto :goto_1b

    .line 202
    :catch_10
    move-exception v2

    .line 203
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_11
    const-string v3, "Error in notifyNetworkCapabilitiesChanged"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 204
    const/4 v3, 0x0

    .line 206
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    return v3

    .line 206
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    throw v2
.end method

.method public notifyNetworkConnected(Landroid/net/networkstack/aidl/NetworkMonitorParameters;)Z
    .registers 7
    .param p1, "params"    # Landroid/net/networkstack/aidl/NetworkMonitorParameters;

    .line 154
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 156
    .local v0, "token":J
    :try_start_4
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 157
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyNetworkConnectedParcel(Landroid/net/networkstack/aidl/NetworkMonitorParameters;)V

    goto :goto_19

    .line 159
    :cond_10
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    iget-object v3, p1, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

    iget-object v4, p1, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-interface {v2, v3, v4}, Landroid/net/INetworkMonitor;->notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_20
    .catchall {:try_start_4 .. :try_end_19} :catchall_1e

    .line 162
    :goto_19
    const/4 v2, 0x1

    .line 167
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    return v2

    .line 167
    :catchall_1e
    move-exception v2

    goto :goto_2b

    .line 163
    :catch_20
    move-exception v2

    .line 164
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_21
    const-string v3, "Error in notifyNetworkConnected"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    .line 165
    const/4 v3, 0x0

    .line 167
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    return v3

    .line 167
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    throw v2
.end method

.method public notifyNetworkDisconnected()Z
    .registers 5

    .line 172
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 174
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->notifyNetworkDisconnected()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 175
    const/4 v2, 0x1

    .line 180
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    return v2

    .line 180
    :catchall_e
    move-exception v2

    goto :goto_1b

    .line 176
    :catch_10
    move-exception v2

    .line 177
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_11
    const-string v3, "Error in notifyNetworkDisconnected"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 178
    const/4 v3, 0x0

    .line 180
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    return v3

    .line 180
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    throw v2
.end method

.method public notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)Z
    .registers 6
    .param p1, "config"    # Landroid/net/PrivateDnsConfigParcel;

    .line 128
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 130
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 131
    const/4 v2, 0x1

    .line 136
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    return v2

    .line 136
    :catchall_e
    move-exception v2

    goto :goto_1b

    .line 132
    :catch_10
    move-exception v2

    .line 133
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_11
    const-string v3, "Error in notifyPrivateDnsChanged"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 134
    const/4 v3, 0x0

    .line 136
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    return v3

    .line 136
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    throw v2
.end method

.method public setAcceptPartialConnectivity()Z
    .registers 5

    .line 102
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 104
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->setAcceptPartialConnectivity()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 105
    const/4 v2, 0x1

    .line 110
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    return v2

    .line 110
    :catchall_e
    move-exception v2

    goto :goto_1b

    .line 106
    :catch_10
    move-exception v2

    .line 107
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_11
    const-string v3, "Error in setAcceptPartialConnectivity"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 108
    const/4 v3, 0x0

    .line 110
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    return v3

    .line 110
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    throw v2
.end method

.method public start()Z
    .registers 5

    .line 63
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 65
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->start()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 66
    const/4 v2, 0x1

    .line 71
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    return v2

    .line 71
    :catchall_e
    move-exception v2

    goto :goto_1b

    .line 67
    :catch_10
    move-exception v2

    .line 68
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_11
    const-string v3, "Error in start"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 69
    const/4 v3, 0x0

    .line 71
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    return v3

    .line 71
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    throw v2
.end method
