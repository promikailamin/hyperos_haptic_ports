.class public Landroid/net/wifi/SlaveWifiManager;
.super Ljava/lang/Object;
.source "SlaveWifiManager.java"


# static fields
.field public static final blacklist ACTION_WIFI_CONNECTION_FAILURE:Ljava/lang/String; = "miui.intent.action.wifi.WIFI_SLAVE_CONNECTION_FAILURE"

.field public static final blacklist ENABLE_AUTO_DISABLE:Ljava/lang/String; = "wifi_slave_auto_disable"

.field public static final blacklist EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final blacklist EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final blacklist EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final blacklist EXTRA_WIFI_CURRENT_NETWORK:Ljava/lang/String; = "wifi_current_network"

.field public static final blacklist EXTRA_WIFI_INFO:Ljava/lang/String; = "wifiInfo"

.field public static final blacklist EXTRA_WIFI_NETWORK_INFO:Ljava/lang/String; = "wifi_network_info"

.field public static final blacklist EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field public static final blacklist FAILED:I = 0x2

.field public static final blacklist LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.SLAVE_LINK_CONFIGURATION_CHANGED"

.field public static final blacklist NETWORK_SLAVE_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.SLAVE_STATE_CHANGE"

.field public static final blacklist RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.SLAVE_RSSI_CHANGED"

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "SlaveWifiService"

.field public static final blacklist SUCCESS:I = 0x1

.field public static final blacklist SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.SLAVE_CONNECTION_CHANGE"

.field private static final blacklist TAG:Ljava/lang/String; = "SlaveWifiManager"

.field public static final blacklist TENCENT_NETWORK_SLAVE_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.vicewifi.STATE_CHANGE"

.field public static final blacklist TENCENT_RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.vicewifi.RSSI_CHANGED"

.field public static final blacklist WIFI_SLAVE_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_SLAVE_STATE_CHANGED"

.field public static final blacklist WIFI_SLAVE_STATE_DISABLED:I = 0xf

.field public static final blacklist WIFI_SLAVE_STATE_DISABLING:I = 0xe

.field public static final blacklist WIFI_SLAVE_STATE_ENABLED:I = 0x11

.field public static final blacklist WIFI_SLAVE_STATE_ENABLING:I = 0x10

.field public static final blacklist WIFI_SLAVE_STATE_UNKNOWN:I = 0x12


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field blacklist mService:Landroid/net/wifi/ISlaveWifiManager;


# direct methods
.method public constructor blacklist <init>(Landroid/net/wifi/ISlaveWifiManager;)V
    .registers 4
    .param p1, "service"    # Landroid/net/wifi/ISlaveWifiManager;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-eqz p1, :cond_8

    .line 93
    iput-object p1, p0, Landroid/net/wifi/SlaveWifiManager;->mService:Landroid/net/wifi/ISlaveWifiManager;

    .line 94
    return-void

    .line 91
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing ISlaveWifiManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getAutoDisableDefault(Landroid/content/Context;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 240
    const/4 v0, 0x0

    .line 242
    .local v0, "value":I
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "config_slave_wifi_auto_disable_default"

    const-string v4, "integer"

    const-string v5, "android.miui"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 242
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1a

    move v0, v1

    .line 247
    nop

    .line 248
    return v0

    .line 245
    :catch_1a
    move-exception v1

    .line 246
    .local v1, "exception":Ljava/lang/Exception;
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public blacklist connectToPrimaryApWithBssid(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)V
    .registers 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netId"    # I
    .param p3, "targetBssid"    # Ljava/lang/String;

    .line 178
    const-string v0, "SlaveWifiManager"

    const-string v1, "connectToPrimaryApWithBssid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :try_start_7
    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mService:Landroid/net/wifi/ISlaveWifiManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/ISlaveWifiManager;->connectToPrimaryApWithBssid(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 183
    nop

    .line 184
    return-void

    .line 181
    :catch_e
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist connectToSlaveAp(I)V
    .registers 4
    .param p1, "netid"    # I

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as a slave wifi network"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlaveWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :try_start_1e
    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mService:Landroid/net/wifi/ISlaveWifiManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/net/wifi/ISlaveWifiManager;->connectToSlaveAp(Landroid/net/wifi/WifiConfiguration;I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_26

    .line 156
    nop

    .line 157
    return-void

    .line 154
    :catch_26
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist connectToSlaveAp(Landroid/net/wifi/WifiConfiguration;)V
    .registers 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 160
    const-string v0, "SlaveWifiManager"

    const-string v1, "connectToSlaveAp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :try_start_7
    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mService:Landroid/net/wifi/ISlaveWifiManager;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/ISlaveWifiManager;->connectToSlaveAp(Landroid/net/wifi/WifiConfiguration;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_f

    .line 165
    nop

    .line 166
    return-void

    .line 163
    :catch_f
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist connectToSlaveApWithBssid(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)V
    .registers 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netId"    # I
    .param p3, "targetBssid"    # Ljava/lang/String;

    .line 169
    const-string v0, "SlaveWifiManager"

    const-string v1, "connectToSlaveAp with bssid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :try_start_7
    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mService:Landroid/net/wifi/ISlaveWifiManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/ISlaveWifiManager;->connectToSlaveApWithBssid(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 174
    nop

    .line 175
    return-void

    .line 172
    :catch_e
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist disconnectSlaveWifi()Z
    .registers 3

    .line 142
    const-string v0, "SlaveWifiManager"

    const-string v1, "disconnectSlaveWifi "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :try_start_7
    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mService:Landroid/net/wifi/ISlaveWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/ISlaveWifiManager;->disconnectSlaveWifi()Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return v0

    .line 145
    :catch_e
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSlaveDhcpInfo()Landroid/net/DhcpInfo;
    .registers 3

    .line 124
    const-string v0, "SlaveWifiManager"

    const-string v1, "getSlaveDhcpInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_7
    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mService:Landroid/net/wifi/ISlaveWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/ISlaveWifiManager;->getSlaveDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    .line 127
    :catch_e
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSlaveWifiCurrentNetwork()Landroid/net/Network;
    .registers 3

    .line 115
    const-string v0, "SlaveWifiManager"

    const-string v1, "getSlaveWifiCurrentNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :try_start_7
    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mService:Landroid/net/wifi/ISlaveWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/ISlaveWifiManager;->getSlaveWifiCurrentNetwork()Landroid/net/Network;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    .line 118
    :catch_e
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSlaveWifiState()I
    .registers 3

    .line 187
    const-string v0, "SlaveWifiManager"

    const-string v1, "getSlaveWifiState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :try_start_7
    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mService:Landroid/net/wifi/ISlaveWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/ISlaveWifiManager;->getSlaveWifiState()I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return v0

    .line 190
    :catch_e
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 3

    .line 106
    const-string v0, "SlaveWifiManager"

    const-string v1, "getWifiSlaveConnectionInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_7
    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mService:Landroid/net/wifi/ISlaveWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/ISlaveWifiManager;->getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    .line 109
    :catch_e
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isBusySlaveWifi()Z
    .registers 3

    .line 253
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mService:Landroid/net/wifi/ISlaveWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/ISlaveWifiManager;->isBusySlaveWifi()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 254
    :catch_7
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isCombineBandHbsSupport(II)Z
    .registers 5
    .param p1, "freq1"    # I
    .param p2, "freq2"    # I

    .line 233
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mService:Landroid/net/wifi/ISlaveWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/ISlaveWifiManager;->isCombineBandHbsSupport(II)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 234
    :catch_7
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isMloBothActive()Z
    .registers 3

    .line 225
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mService:Landroid/net/wifi/ISlaveWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/ISlaveWifiManager;->isMloBothActive()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 226
    :catch_7
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSlaveWifiEnabled()Z
    .registers 3

    .line 196
    invoke-virtual {p0}, Landroid/net/wifi/SlaveWifiManager;->getSlaveWifiState()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist reconnectSlaveWifi()Z
    .registers 3

    .line 133
    const-string v0, "SlaveWifiManager"

    const-string v1, "reconnectSlaveWifi "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :try_start_7
    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mService:Landroid/net/wifi/ISlaveWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/ISlaveWifiManager;->reconnectSlaveWifi()Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return v0

    .line 136
    :catch_e
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiSlaveEnabled(Z)Z
    .registers 4
    .param p1, "enabled"    # Z

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiSlaveEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlaveWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :try_start_18
    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mService:Landroid/net/wifi/ISlaveWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/ISlaveWifiManager;->setWifiSlaveEnabled(Z)Z

    move-result v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1e} :catch_1f

    return v0

    .line 100
    :catch_1f
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist supportDbsDualWifi()Z
    .registers 3

    .line 209
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mService:Landroid/net/wifi/ISlaveWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/ISlaveWifiManager;->supportDbsDualWifi()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 210
    :catch_7
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist supportDualWifi()Z
    .registers 3

    .line 201
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mService:Landroid/net/wifi/ISlaveWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/ISlaveWifiManager;->supportDualWifi()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 202
    :catch_7
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist supportHbsDualWifi()Z
    .registers 3

    .line 217
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mService:Landroid/net/wifi/ISlaveWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/ISlaveWifiManager;->supportHbsDualWifi()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 218
    :catch_7
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
