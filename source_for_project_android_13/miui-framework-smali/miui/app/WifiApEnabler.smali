.class public Lmiui/app/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WifiApEnabler"


# instance fields
.field private final blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDisabledByAirplane:Z

.field private final blacklist mIntentFilter:Landroid/content/IntentFilter;

.field private blacklist mOpen:Z

.field private final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mStatusChanging:Z

.field private blacklist mToggleManager:Lmiui/app/ToggleManager;

.field private blacklist mWaitForWifiStateChange:Z

.field private blacklist mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private blacklist mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmWaitForWifiStateChange(Lmiui/app/WifiApEnabler;)Z
    .registers 1

    iget-boolean p0, p0, Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleWifiApStateChanged(Lmiui/app/WifiApEnabler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/app/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleWifiStateChanged(Lmiui/app/WifiApEnabler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/app/WifiApEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateAirplaneMode(Lmiui/app/WifiApEnabler;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateAirplaneMode()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lmiui/app/ToggleManager;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toggleManager"    # Lmiui/app/ToggleManager;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lmiui/app/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lmiui/app/WifiApEnabler$1;-><init>(Lmiui/app/WifiApEnabler;)V

    iput-object v0, p0, Lmiui/app/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 71
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lmiui/app/WifiApEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 74
    iput-object p2, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    .line 75
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 77
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 78
    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateAirplaneMode()V

    .line 84
    invoke-virtual {p0}, Lmiui/app/WifiApEnabler;->isWifiApOn()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 85
    return-void
.end method

.method private blacklist handleWifiApStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 136
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_26

    .line 161
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 162
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_22

    .line 146
    :pswitch_a
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 148
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    .line 149
    goto :goto_22

    .line 138
    :pswitch_f
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 139
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    .line 140
    goto :goto_22

    .line 155
    :pswitch_14
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 156
    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z

    if-nez v0, :cond_22

    .line 157
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_22

    .line 151
    :pswitch_1d
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 152
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    .line 153
    nop

    .line 164
    :cond_22
    :goto_22
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    .line 165
    return-void

    :pswitch_data_26
    .packed-switch 0xa
        :pswitch_1d
        :pswitch_14
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method private blacklist handleWifiStateChanged(I)V
    .registers 3
    .param p1, "state"    # I

    .line 201
    packed-switch p1, :pswitch_data_e

    goto :goto_d

    .line 204
    :pswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z

    .line 205
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    .line 206
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    .line 207
    nop

    .line 210
    :goto_d
    return-void

    :pswitch_data_e
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private blacklist initWifiTethering()V
    .registers 4

    .line 213
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 214
    if-eqz v0, :cond_2e

    .line 216
    const-string v1, "AndroidAP"

    .line 217
    .local v1, "s":Ljava/lang/String;
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "AndroidAP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 218
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    sget-boolean v2, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v2, :cond_1f

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_25

    .line 219
    :cond_1f
    iget-object v2, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_25
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lmiui/app/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 223
    .end local v1    # "s":Ljava/lang/String;
    :cond_2e
    return-void
.end method

.method private blacklist setSoftapEnabledWithConnectivityManager(Z)V
    .registers 8
    .param p1, "enable"    # Z

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSoftapEnabledWithConnectivityManager() enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiApEnabler"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "result":Z
    const/4 v3, 0x0

    if-eqz p1, :cond_24

    .line 112
    iget-object v4, p0, Lmiui/app/WifiApEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lmiui/app/ConnectivityManagerReflector;->startTethering(Landroid/net/ConnectivityManager;IZ)Z

    move-result v0

    goto :goto_2a

    .line 114
    :cond_24
    iget-object v4, p0, Lmiui/app/WifiApEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v4, v3}, Lmiui/app/ConnectivityManagerReflector;->stopTethering(Landroid/net/ConnectivityManager;I)Z

    move-result v0

    .line 117
    :goto_2a
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    .line 119
    if-nez v0, :cond_4d

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";result="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_4d
    return-void
.end method

.method private blacklist setSoftapEnabledWithWifiManager(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 125
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1, p1}, Lmiui/app/CompatibilityP;->setWifiApEnabled(Landroid/net/wifi/WifiManager;Z)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    .line 130
    iput-boolean p1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 131
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    .line 133
    :cond_16
    return-void
.end method

.method private blacklist updateAirplaneMode()V
    .registers 4

    .line 92
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    iput-boolean v2, p0, Lmiui/app/WifiApEnabler;->mDisabledByAirplane:Z

    .line 94
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    .line 95
    return-void
.end method

.method private blacklist updateToggle()V
    .registers 2

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/app/WifiApEnabler;->updateWifiApToggle(Z)V

    .line 169
    return-void
.end method


# virtual methods
.method blacklist isWifiApDisabled()Z
    .registers 2

    .line 183
    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mDisabledByAirplane:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method blacklist isWifiApOn()Z
    .registers 3

    .line 187
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method blacklist setSoftapEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 98
    if-eqz p1, :cond_5

    .line 99
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->initWifiTethering()V

    .line 101
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_f

    .line 102
    invoke-direct {p0, p1}, Lmiui/app/WifiApEnabler;->setSoftapEnabledWithWifiManager(Z)V

    goto :goto_12

    .line 104
    :cond_f
    invoke-direct {p0, p1}, Lmiui/app/WifiApEnabler;->setSoftapEnabledWithConnectivityManager(Z)V

    .line 106
    :goto_12
    return-void
.end method

.method public blacklist toggleWifiAp()V
    .registers 2

    .line 191
    const/16 v0, 0x18

    invoke-static {v0}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 192
    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    if-eqz v0, :cond_11

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_15

    .line 195
    :cond_11
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/app/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 198
    :cond_15
    :goto_15
    return-void
.end method

.method public blacklist unregisterReceiver()V
    .registers 3

    .line 88
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    return-void
.end method

.method blacklist updateWifiApToggle(Z)V
    .registers 6
    .param p1, "updateMiDrop"    # Z

    .line 172
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    iget-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 173
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    iget-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    const/4 v3, 0x0

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lmiui/app/WifiApEnabler;->mDisabledByAirplane:Z

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    move v1, v3

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    :goto_18
    invoke-virtual {v0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 174
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    iget-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    if-eqz v1, :cond_25

    .line 175
    const v1, 0x1108022a

    goto :goto_28

    .line 176
    :cond_25
    const v1, 0x11080229

    .line 174
    :goto_28
    invoke-virtual {v0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 177
    if-eqz p1, :cond_3a

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 178
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, v3}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    .line 180
    :cond_3a
    return-void
.end method
