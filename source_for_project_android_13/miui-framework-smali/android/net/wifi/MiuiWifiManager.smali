.class public Landroid/net/wifi/MiuiWifiManager;
.super Ljava/lang/Object;
.source "MiuiWifiManager.java"


# static fields
.field private static final blacklist BASE:I = 0x25fa0

.field public static final blacklist CMD_IGNORE_OBSERVED_AP:I = 0x25fa1

.field public static final blacklist EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final blacklist EXTRA_DIAG_RESULTS:Ljava/lang/String; = "EXTRA_DIAG_RESULT"

.field public static final blacklist EXTRA_SSID:Ljava/lang/String; = "ssid"

.field public static final blacklist FAILED:I = 0x2

.field private static final blacklist MAX_RSSI:I = -0x41

.field private static final blacklist MIN_RSSI:I = -0x64

.field public static final blacklist NETWORK_ISSUE_TYPE_IPV4_ADDR_CONFLICT:I = 0x1

.field public static final blacklist NETWORK_ISSUE_TYPE_MULTI_DHCP_SERVER:I = 0x3

.field public static final blacklist NETWORK_ISSUE_TYPE_MULTI_GATE_WAY_MAC:I = 0x2

.field public static final blacklist NETWORK_ISSUE_TYPE_MULTI_GWM_AND_DS:I = 0x4

.field public static final blacklist NETWORK_ISSUE_TYPE_UNKNOW:I = 0x0

.field public static final blacklist OBSERVED_ACCESSPOINTS_CHANGED:Ljava/lang/String; = "android.net.wifi.observed_accesspionts_changed"

.field private static final blacklist PROPERTY_ANT_HALF_SUPPORT:Ljava/lang/String; = "persist.wifi.anthalf"

.field private static final blacklist PROPERTY_ANT_SWAP_SUPPORT:Ljava/lang/String; = "persist.wifi.antswap"

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "MiuiWifiService"

.field public static final blacklist SUCCESS:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiWifiManager"


# instance fields
.field blacklist mService:Landroid/net/wifi/IMiuiWifiManager;


# direct methods
.method public constructor blacklist <init>(Landroid/net/wifi/IMiuiWifiManager;)V
    .registers 4
    .param p1, "service"    # Landroid/net/wifi/IMiuiWifiManager;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-eqz p1, :cond_8

    .line 80
    iput-object p1, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    .line 81
    return-void

    .line 78
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing IMiuiWifiManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist calculateSignalLevel(II)I
    .registers 5
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .line 314
    const/16 v0, -0x64

    if-gt p0, v0, :cond_6

    .line 315
    const/4 v0, 0x0

    return v0

    .line 316
    :cond_6
    const/16 v0, -0x41

    if-lt p0, v0, :cond_d

    .line 317
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 319
    :cond_d
    const/high16 v0, 0x420c0000    # 35.0f

    .line 320
    .local v0, "inputRange":F
    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    .line 321
    .local v1, "outputRange":F
    add-int/lit8 v2, p0, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    float-to-int v2, v2

    return v2
.end method


# virtual methods
.method public blacklist addHotSpotMacBlackListOffload(Ljava/lang/String;)Z
    .registers 4
    .param p1, "macSet"    # Ljava/lang/String;

    .line 208
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->addHotSpotMacBlackListOffload(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 209
    :catch_7
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist addMSCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "up_bitmap"    # Ljava/lang/String;
    .param p3, "up_limit"    # Ljava/lang/String;
    .param p4, "stream_timeout"    # Ljava/lang/String;
    .param p5, "frame_classifier"    # Ljava/lang/String;

    .line 483
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/net/wifi/IMiuiWifiManager;->addMSCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_27
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    .line 486
    :catch_c
    move-exception v0

    .line 487
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add MSCS fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiWifiManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v1, -0x1

    return v1

    .line 484
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_27
    move-exception v0

    .line 485
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist changeMSCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "up_bitmap"    # Ljava/lang/String;
    .param p3, "up_limit"    # Ljava/lang/String;
    .param p4, "stream_timeout"    # Ljava/lang/String;
    .param p5, "frame_classifier"    # Ljava/lang/String;

    .line 494
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/net/wifi/IMiuiWifiManager;->changeMSCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_27
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    .line 497
    :catch_c
    move-exception v0

    .line 498
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change MSCS fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiWifiManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v1, -0x1

    return v1

    .line 495
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_27
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist clearHotSpotMacBlackListOffload()Z
    .registers 3

    .line 200
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IMiuiWifiManager;->clearHotSpotMacBlackListOffload()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 201
    :catch_7
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist delHotSpotMacBlackListOffload(Ljava/lang/String;)Z
    .registers 4
    .param p1, "macSet"    # Ljava/lang/String;

    .line 216
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->delHotSpotMacBlackListOffload(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 217
    :catch_7
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist discoverPeersOnTheFixedFreq(I)V
    .registers 4
    .param p1, "freq"    # I

    .line 109
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->discoverPeersOnTheFixedFreq(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 112
    nop

    .line 113
    return-void

    .line 110
    :catch_7
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist doNetworkAnls(Landroid/net/Network;)I
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 443
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->doNetworkAnls(Landroid/net/Network;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 444
    :catch_7
    move-exception v0

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist enableDataStallDetection()Z
    .registers 3

    .line 272
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IMiuiWifiManager;->enableDataStallDetection()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 273
    :catch_7
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist enablePowerSave(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 117
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->enablePowerSave(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 120
    nop

    .line 121
    return-void

    .line 118
    :catch_7
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist forceRecovery(Landroid/net/Network;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "extra"    # Landroid/os/Bundle;

    .line 556
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IMiuiWifiManager;->forceRecovery(Landroid/net/Network;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 557
    :catch_7
    move-exception v0

    .line 558
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getConnectedWifiClient()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;"
        }
    .end annotation

    .line 280
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IMiuiWifiManager;->getConnectedWifiClient()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 281
    :catch_7
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMatchingPasspointConfigsForPasspointR1Providers(Ljava/util/Set;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/wifi/hotspot2/PasspointR1Provider;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/net/wifi/hotspot2/PasspointR1Provider;",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    .line 371
    .local p1, "passpointR1Providers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/wifi/hotspot2/PasspointR1Provider;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/IMiuiWifiManager;->getMatchingPasspointConfigsForPasspointR1Providers(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 372
    :catch_c
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMatchingPasspointR1Providers(Ljava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/net/wifi/hotspot2/PasspointR1Provider;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation

    .line 350
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->getMatchingPasspointR1Providers(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 351
    :catch_7
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getObservedAccessPionts()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IMiuiWifiManager;->getObservedAccessPionts()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 249
    :catch_7
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getQoEByAvailableIfaceName(Ljava/lang/String;)Landroid/net/wifi/WlanLinkLayerQoE;
    .registers 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 516
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->getQoEByAvailableIfaceName(Ljava/lang/String;)Landroid/net/wifi/WlanLinkLayerQoE;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 517
    :catch_7
    move-exception v0

    .line 518
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist hasAvailableNetwork()I
    .registers 3

    .line 435
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IMiuiWifiManager;->hasAvailableNetwork()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 436
    :catch_7
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist ignoreApsForScanObserver(Ljava/util/List;Z)V
    .registers 5
    .param p2, "ignore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 232
    .local p1, "bssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IMiuiWifiManager;->ignoreApsForScanObserver(Ljava/util/List;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 235
    nop

    .line 236
    return-void

    .line 233
    :catch_7
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isCurrentAPLowRssi()Z
    .registers 3

    .line 296
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IMiuiWifiManager;->isCurrentAPLowRssi()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 297
    :catch_7
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isGameMode()Z
    .registers 3

    .line 141
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IMiuiWifiManager;->isGameMode()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 142
    :catch_7
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isNetDiagEnabled()Z
    .registers 3

    .line 467
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IMiuiWifiManager;->isNetDiagEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 468
    :catch_7
    move-exception v0

    .line 469
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isRecoveryOngoing(Landroid/net/Network;)Z
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 451
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->isRecoveryOngoing(Landroid/net/Network;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 452
    :catch_7
    move-exception v0

    .line 453
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSapBlacklistOffloadSupport()Z
    .registers 3

    .line 184
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IMiuiWifiManager;->isSapBlacklistOffloadSupport()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 185
    :catch_7
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSapSupportedBand(I)Z
    .registers 4
    .param p1, "band"    # I

    .line 379
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->isSapSupportedBand(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 380
    :catch_7
    move-exception v0

    .line 381
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSupportForceRecovery()Z
    .registers 3

    .line 564
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IMiuiWifiManager;->isSupportForceRecovery()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 565
    :catch_7
    move-exception v0

    .line 566
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWpa3SaeSupported()Z
    .registers 3

    .line 387
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IMiuiWifiManager;->isWpa3SaeSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 388
    :catch_7
    move-exception v0

    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist netSDKConnectPrimaryWithBssid(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "networkId"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 532
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IMiuiWifiManager;->netSDKConnectPrimaryWithBssid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 533
    :catch_7
    move-exception v0

    .line 534
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist netSDKGetAvailableNetworkIdAndBssid()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 524
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IMiuiWifiManager;->netSDKGetAvailableNetworkIdAndBssid()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 525
    :catch_7
    move-exception v0

    .line 526
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist netSDKSetIsDisableRoam(ZI)Z
    .registers 5
    .param p1, "isOpen"    # Z
    .param p2, "type"    # I

    .line 540
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IMiuiWifiManager;->netSDKSetIsDisableRoam(ZI)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 541
    :catch_7
    move-exception v0

    .line 542
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerMiTransferListener(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 419
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->registerMiTransferListener(Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 422
    nop

    .line 423
    return-void

    .line 420
    :catch_7
    move-exception v0

    .line 421
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeMSCS(Ljava/lang/String;)I
    .registers 5
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 505
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->removeMSCS(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_22
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 508
    :catch_7
    move-exception v0

    .line 509
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove MSCS fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiWifiManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v1, -0x1

    return v1

    .line 506
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_22
    move-exception v0

    .line 507
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist sendCurrentWifiDigestInfo()Z
    .registers 3

    .line 331
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IMiuiWifiManager;->sendCurrentWifiDigestInfo()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 332
    :catch_7
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAntHalf(I)V
    .registers 4
    .param p1, "enable"    # I

    .line 162
    const-string v0, "persist.wifi.anthalf"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    .line 163
    const-string v0, "MiuiWifiManager"

    const-string v1, "disable wifi ant_half"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void

    .line 168
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->setAntHalf(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_18

    .line 171
    nop

    .line 172
    return-void

    .line 169
    :catch_18
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAntSwap(I)V
    .registers 4
    .param p1, "enable"    # I

    .line 149
    const-string v0, "persist.wifi.antswap"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    .line 150
    const-string v0, "MiuiWifiManager"

    const-string v1, "disable wifi ant_swap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 155
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->setAntSwap(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_18

    .line 158
    nop

    .line 159
    return-void

    .line 156
    :catch_18
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setApGcMode(Z)Z
    .registers 4
    .param p1, "enabled"    # Z

    .line 395
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->setApGcMode(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 396
    :catch_7
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setCompatibleMode(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 240
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->setCompatibleMode(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 243
    nop

    .line 244
    return-void

    .line 241
    :catch_7
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setHotSpotMacBlackListOffloadEnabled(I)Z
    .registers 4
    .param p1, "enable"    # I

    .line 192
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->setHotSpotMacBlackListOffloadEnabled(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 193
    :catch_7
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setLatencyLevel(I)V
    .registers 4
    .param p1, "level"    # I

    .line 125
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->setLatencyLevel(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 128
    nop

    .line 129
    return-void

    .line 126
    :catch_7
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setLatencyLevelForP2pInterface(I)Z
    .registers 4
    .param p1, "level"    # I

    .line 411
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->setLatencyLevelForP2pInterface(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 412
    :catch_7
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setObservedAccessPionts(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 256
    .local p1, "observedAPs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->setObservedAccessPionts(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 259
    nop

    .line 260
    return-void

    .line 257
    :catch_7
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setP2PHCEnable(I)V
    .registers 4
    .param p1, "enable"    # I

    .line 548
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->setP2PHCEnable(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 551
    nop

    .line 552
    return-void

    .line 549
    :catch_7
    move-exception v0

    .line 550
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setP2pPowerSave(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 403
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IMiuiWifiManager;->setP2pPowerSave(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 404
    :catch_7
    move-exception v0

    .line 405
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setPhyMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 224
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->setPhyMode(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 227
    nop

    .line 228
    return-void

    .line 225
    :catch_7
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSARLimit(I)V
    .registers 4
    .param p1, "set"    # I

    .line 264
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->setSARLimit(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 267
    nop

    .line 268
    return-void

    .line 265
    :catch_7
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSapAntHalf(I)V
    .registers 4
    .param p1, "enable"    # I

    .line 176
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->setSapAntHalf(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 179
    nop

    .line 180
    return-void

    .line 177
    :catch_7
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSlaveCandidatesRssiThreshold(Z)Z
    .registers 4
    .param p1, "useThreshold"    # Z

    .line 572
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->setSlaveCandidatesRssiThreshold(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 573
    :catch_7
    move-exception v0

    .line 574
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSoftApEnable80211ax(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 288
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->setSoftApEnable80211ax(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 291
    nop

    .line 292
    return-void

    .line 289
    :catch_7
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiThermalLevel(I)V
    .registers 4
    .param p1, "level"    # I

    .line 133
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->setWifiThermalLevel(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 136
    nop

    .line 137
    return-void

    .line 134
    :catch_7
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startNetDiag(I)V
    .registers 4
    .param p1, "mask"    # I

    .line 475
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IMiuiWifiManager;->startNetDiag(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 478
    nop

    .line 479
    return-void

    .line 476
    :catch_7
    move-exception v0

    .line 477
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist systemReady()V
    .registers 3

    .line 85
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IMiuiWifiManager;->systemReady()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 88
    nop

    .line 89
    return-void

    .line 86
    :catch_7
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist tryRecoveryNetwork(Landroid/net/Network;Z)Z
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "valid"    # Z

    .line 459
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IMiuiWifiManager;->tryRecoveryNetwork(Landroid/net/Network;Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 460
    :catch_7
    move-exception v0

    .line 461
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unRegisterMiTransferListener()V
    .registers 3

    .line 427
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IMiuiWifiManager;->unRegisterMiTransferListener()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 430
    nop

    .line 431
    return-void

    .line 428
    :catch_7
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist updateLatencyLevel()V
    .registers 3

    .line 101
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IMiuiWifiManager;->updateLatencyLevel()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 104
    nop

    .line 105
    return-void

    .line 102
    :catch_7
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist updateScanResults()V
    .registers 3

    .line 93
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mService:Landroid/net/wifi/IMiuiWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IMiuiWifiManager;->updateScanResults()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 96
    nop

    .line 97
    return-void

    .line 94
    :catch_7
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
