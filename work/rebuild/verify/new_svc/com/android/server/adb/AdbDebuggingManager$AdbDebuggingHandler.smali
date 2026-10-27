.class public Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;
.super Landroid/os/Handler;
.source "AdbDebuggingManager.java"


# instance fields
.field final mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

.field public final mAdbNetworkMonitor:Lcom/android/server/adb/AdbNetworkMonitor;

.field public mAdbNotificationShown:Z

.field public mAuthTimeObserver:Landroid/database/ContentObserver;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public final mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

.field public final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;Landroid/os/Looper;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)V
    .registers 8

    .line 596
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 597
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 575
    new-instance p2, Lcom/android/server/adb/AdbKeyStore;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTempKeysFile(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmUserKeyFile(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/io/File;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    move-result-object v3

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/android/server/adb/AdbKeyStore;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Lcom/android/server/adb/AdbDebuggingManager$Ticker;)V

    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    .line 581
    new-instance p2, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;

    invoke-direct {p2, p0, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAuthTimeObserver:Landroid/database/ContentObserver;

    if-nez p3, :cond_2d

    .line 599
    new-instance p3, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    invoke-direct {p3}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;-><init>()V

    .line 600
    invoke-virtual {p3, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->setHandler(Landroid/os/Handler;)V

    .line 602
    :cond_2d
    iput-object p3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 607
    new-instance p2, Lcom/android/server/adb/AdbBroadcastReceiver;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbConnectionInfo;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/android/server/adb/AdbBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/android/server/adb/AdbConnectionInfo;)V

    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNetworkMonitor:Lcom/android/server/adb/AdbNetworkMonitor;

    return-void
.end method


# virtual methods
.method public final cancelJobToUpdateAdbKeyStore()V
    .registers 2

    const/16 v0, 0x9

    .line 1050
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final createPairingCode(I)Ljava/lang/String;
    .registers 5

    .line 1056
    new-instance p0, Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 1057
    const-string v0, ""

    const/4 v1, 0x0

    :goto_8
    if-ge v1, p1, :cond_22

    .line 1058
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_22
    return-object v0
.end method

.method public final ensureAdbDebuggingThreadAlive()V
    .registers 2

    .line 648
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_18

    .line 649
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 651
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->registerForAuthTimeChanges()V

    .line 652
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbKeyStore;->updateKeyStore()V

    .line 653
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    :cond_18
    return-void
.end method

.method public final getCurrentWifiApInfo()Lcom/android/server/adb/AdbConnectionInfo;
    .registers 8

    .line 1091
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 1092
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_87

    .line 1093
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1e

    goto :goto_87

    .line 1099
    :cond_1e
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v2

    if-nez v2, :cond_69

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_69

    .line 1102
    :cond_2b
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 1103
    const-string v3, "<unknown ssid>"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 1105
    :cond_39
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    .line 1106
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_42
    if-ge v4, v3, :cond_5d

    .line 1108
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    if-ne v5, v6, :cond_5a

    .line 1109
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :cond_5d
    if-nez v2, :cond_6d

    .line 1113
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unable to get ssid of the wifi AP."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1100
    :cond_69
    :goto_69
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object v2

    .line 1119
    :cond_6d
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    .line 1120
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1121
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unable to get the wifi ap\'s BSSID."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1124
    :cond_81
    new-instance v0, Lcom/android/server/adb/AdbConnectionInfo;

    invoke-direct {v0, p0, v2}, Lcom/android/server/adb/AdbConnectionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1094
    :cond_87
    :goto_87
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Not connected to any wireless network. Not enabling adbwifi."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 659
    const-string v0, "adbd"

    const/4 v1, 0x1

    .line 800
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 659
    iget v3, p1, Landroid/os/Message;->what:I

    const-string v4, "NO"

    const-string v5, "adb start wireless adb"

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-string v8, "adb_wifi_enabled"

    const/4 v9, 0x0

    packed-switch v3, :pswitch_data_52c

    :pswitch_15
    goto/16 :goto_522

    .line 976
    :pswitch_17
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    invoke-virtual {p0}, Lcom/android/server/adb/AdbKeyStore;->reloadKeyMap()V

    return-void

    .line 968
    :pswitch_1d
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "adbd socket disconnected"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mstopTLSPortPoller(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 970
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result p1

    if-eqz p1, :cond_522

    .line 972
    invoke-virtual {p0, v7}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->onAdbdWifiServerDisconnected(I)V

    return-void

    .line 958
    :pswitch_37
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "adbd socket connected"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result p1

    if-eqz p1, :cond_522

    .line 961
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mstartTLSPortPoller(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 962
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$smwifiLifeCycleOverAdbdauthSupported()Z

    move-result p1

    if-eqz p1, :cond_522

    .line 963
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    const-string p1, "W1"

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    return-void

    .line 950
    :pswitch_5b
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_522

    .line 953
    :cond_65
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 954
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->onAdbdWifiServerDisconnected(I)V

    .line 955
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mstopTLSPortPoller(Lcom/android/server/adb/AdbDebuggingManager;)V

    return-void

    .line 945
    :pswitch_76
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 946
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->onAdbdWifiServerConnected(I)V

    .line 947
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbConnectionInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbConnectionInfo;->setPort(I)V

    return-void

    .line 936
    :pswitch_8b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 937
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmWifiConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_522

    .line 938
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbKeyStore;->getKeys()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mgetPairedDevicesForKeys(Lcom/android/server/adb/AdbDebuggingManager;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    .line 939
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmWifiConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_522

    .line 940
    invoke-virtual {p0, v9}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->showAdbConnectedNotification(Z)V

    return-void

    .line 929
    :pswitch_ba
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 930
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmWifiConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_522

    .line 931
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbKeyStore;->getKeys()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mgetPairedDevicesForKeys(Lcom/android/server/adb/AdbDebuggingManager;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    .line 932
    invoke-virtual {p0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->showAdbConnectedNotification(Z)V

    return-void

    .line 900
    :pswitch_dd
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 901
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairingPortToUI(I)V

    return-void

    .line 894
    :pswitch_e9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 895
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->onPairingResult(Ljava/lang/String;)V

    .line 897
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbKeyStore;->getKeys()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mgetPairedDevicesForKeys(Lcom/android/server/adb/AdbDebuggingManager;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    return-void

    .line 876
    :pswitch_100
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 877
    invoke-virtual {p0, v9, v7}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendServerConnectionState(ZI)V

    return-void

    .line 851
    :pswitch_10d
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result v0

    if-eqz v0, :cond_117

    goto/16 :goto_522

    .line 854
    :cond_117
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 855
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_124

    .line 857
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    invoke-virtual {p1, v0}, Lcom/android/server/adb/AdbKeyStore;->addTrustedNetwork(Ljava/lang/String;)V

    .line 862
    :cond_124
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->getCurrentWifiApInfo()Lcom/android/server/adb/AdbConnectionInfo;

    move-result-object p1

    if-eqz p1, :cond_522

    .line 863
    invoke-virtual {p1}, Lcom/android/server/adb/AdbConnectionInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_136

    goto/16 :goto_522

    .line 866
    :cond_136
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbConnectionInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/adb/AdbConnectionInfo;->copy(Lcom/android/server/adb/AdbConnectionInfo;)V

    .line 867
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v8, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 868
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNetworkMonitor:Lcom/android/server/adb/AdbNetworkMonitor;

    invoke-interface {p1}, Lcom/android/server/adb/AdbNetworkMonitor;->register()V

    .line 869
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->ensureAdbDebuggingThreadAlive()V

    .line 870
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mstartTLSPortPoller(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 871
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->startAdbdWifi()V

    .line 872
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;Z)V

    .line 873
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 880
    :pswitch_165
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 882
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    invoke-virtual {v0, p1}, Lcom/android/server/adb/AdbKeyStore;->findKeyFromFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a3

    .line 883
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_178

    goto :goto_1a3

    .line 887
    :cond_178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DD"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 888
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    invoke-virtual {v1, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    .line 889
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    invoke-virtual {p1, v0}, Lcom/android/server/adb/AdbKeyStore;->removeKey(Ljava/lang/String;)V

    .line 891
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbKeyStore;->getKeys()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mgetPairedDevicesForKeys(Lcom/android/server/adb/AdbDebuggingManager;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    return-void

    .line 884
    :cond_1a3
    :goto_1a3
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a known fingerprint ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 910
    :pswitch_1c1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 911
    const-string/jumbo v0, "serviceName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 912
    const-string/jumbo v1, "password"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 913
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    new-instance v2, Lcom/android/server/adb/AdbPairingThread;

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3, p0}, Lcom/android/server/adb/AdbPairingThread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v1, v2}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmAdbPairingThread(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbPairingThread;)V

    .line 914
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbPairingThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbPairingThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/adb/AdbPairingThread;->start()V

    return-void

    :pswitch_1ed
    const/4 p1, 0x6

    .line 904
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->createPairingCode(I)Ljava/lang/String;

    move-result-object p1

    .line 905
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->updateUIPairCode(Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    new-instance v1, Lcom/android/server/adb/AdbPairingThread;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p1, v6, v2, p0}, Lcom/android/server/adb/AdbPairingThread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmAdbPairingThread(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbPairingThread;)V

    .line 907
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbPairingThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbPairingThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/adb/AdbPairingThread;->start()V

    return-void

    .line 917
    :pswitch_20f
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbPairingThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbPairingThread;

    move-result-object p1

    if-eqz p1, :cond_522

    .line 918
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbPairingThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbPairingThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/adb/AdbPairingThread;->cancelPairing()V

    .line 920
    :try_start_220
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbPairingThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbPairingThread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_229
    .catch Ljava/lang/InterruptedException; {:try_start_220 .. :try_end_229} :catch_22a

    goto :goto_237

    :catch_22a
    move-exception p1

    .line 922
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error while waiting for pairing thread to quit."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 925
    :goto_237
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0, v6}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmAdbPairingThread(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbPairingThread;)V

    goto/16 :goto_522

    .line 841
    :pswitch_23e
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result p1

    if-nez p1, :cond_248

    goto/16 :goto_522

    .line 844
    :cond_248
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1, v9}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;Z)V

    .line 845
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbConnectionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/adb/AdbConnectionInfo;->clear()V

    .line 846
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNetworkMonitor:Lcom/android/server/adb/AdbNetworkMonitor;

    invoke-interface {p1}, Lcom/android/server/adb/AdbNetworkMonitor;->unregister()V

    .line 847
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->stopAdbdWifi()V

    .line 848
    invoke-virtual {p0, v7}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->onAdbdWifiServerDisconnected(I)V

    return-void

    .line 811
    :pswitch_262
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result p1

    if-eqz p1, :cond_26c

    goto/16 :goto_522

    .line 815
    :cond_26c
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->getCurrentWifiApInfo()Lcom/android/server/adb/AdbConnectionInfo;

    move-result-object p1

    if-nez p1, :cond_27c

    .line 817
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    .line 822
    :cond_27c
    invoke-virtual {p1}, Lcom/android/server/adb/AdbConnectionInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/adb/AdbConnectionInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->verifyWifiNetwork(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_294

    .line 826
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    .line 831
    :cond_294
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbConnectionInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/adb/AdbConnectionInfo;->copy(Lcom/android/server/adb/AdbConnectionInfo;)V

    .line 832
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNetworkMonitor:Lcom/android/server/adb/AdbNetworkMonitor;

    invoke-interface {p1}, Lcom/android/server/adb/AdbNetworkMonitor;->register()V

    .line 833
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->ensureAdbDebuggingThreadAlive()V

    .line 834
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mstartTLSPortPoller(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 835
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->startAdbdWifi()V

    .line 836
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;Z)V

    .line 838
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 795
    :pswitch_2ba
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_317

    .line 796
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2c7

    goto :goto_317

    .line 799
    :cond_2c7
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2dd

    .line 800
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2fb

    .line 802
    :cond_2dd
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    :goto_2fb
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/adb/AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    .line 805
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 806
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    const/4 v0, 0x4

    .line 807
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    return-void

    .line 797
    :cond_317
    :goto_317
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Received a connected key message with an empty key"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 782
    :pswitch_321
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_366

    .line 783
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 784
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    .line 785
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    move-result-wide v2

    .line 784
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/adb/AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    goto :goto_33b

    .line 787
    :cond_35d
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 788
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    return-void

    .line 789
    :cond_366
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    invoke-virtual {p1}, Lcom/android/server/adb/AdbKeyStore;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_522

    .line 790
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    invoke-virtual {p1}, Lcom/android/server/adb/AdbKeyStore;->updateKeyStore()V

    .line 791
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    return-void

    .line 777
    :pswitch_377
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    if-eqz p0, :cond_522

    .line 778
    invoke-virtual {p0}, Lcom/android/server/adb/AdbKeyStore;->persistKeyStore()V

    return-void

    .line 755
    :pswitch_37f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3d9

    .line 757
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3d9

    .line 758
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e2

    .line 760
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    if-nez v0, :cond_3cb

    .line 762
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    move-result-object v2

    .line 763
    invoke-interface {v2}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    move-result-wide v2

    .line 762
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/adb/AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    .line 764
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 765
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    .line 766
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e3

    .line 768
    :cond_3cb
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e3

    .line 772
    :cond_3d9
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received a disconnected key message with an empty key"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e2
    move v1, v9

    :goto_3e3
    const/4 v0, 0x7

    .line 774
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    return-void

    .line 716
    :pswitch_3e8
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Received a request to clear the adb authorizations"

    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 718
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmWifiConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 719
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    invoke-virtual {p1}, Lcom/android/server/adb/AdbKeyStore;->deleteKeyStore()V

    .line 720
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->cancelJobToUpdateAdbKeyStore()V

    .line 722
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "adb_disconnect_sessions_on_revoke"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_522

    .line 729
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbUsbEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result p1

    if-eqz p1, :cond_522

    .line 731
    :try_start_421
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 732
    sget-object p1, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetADBD_STATE_CHANGE_TIMEOUT()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Landroid/os/SystemService;->waitForState(Ljava/lang/String;Landroid/os/SystemService$State;J)V

    .line 736
    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 737
    sget-object p1, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetADBD_STATE_CHANGE_TIMEOUT()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Landroid/os/SystemService;->waitForState(Ljava/lang/String;Landroid/os/SystemService$State;J)V
    :try_end_439
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_421 .. :try_end_439} :catch_43a

    return-void

    :catch_43a
    move-exception p1

    .line 742
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timeout occurred waiting for adbd to cycle: "

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 748
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "adb_enabled"

    invoke-static {p0, p1, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_522

    .line 704
    :pswitch_451
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 705
    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 706
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46b

    .line 707
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    invoke-virtual {v0, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 708
    invoke-virtual {p0, p1, v0, v9}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    return-void

    .line 711
    :cond_46b
    invoke-virtual {p0, p1, v1, v9}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    .line 712
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)V

    .line 713
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmFingerprints(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mstartConfirmationForKey(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 699
    :pswitch_47d
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Denying adb confirmation"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    invoke-virtual {p1, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 701
    invoke-virtual {p0, v6, p1, v9}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    return-void

    .line 674
    :pswitch_490
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 675
    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 676
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v4}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmFingerprints(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4cb

    .line 677
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fingerprints do not match. Got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmFingerprints(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 686
    :cond_4cb
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_4d0

    goto :goto_4d1

    :cond_4d0
    move v1, v9

    .line 687
    :goto_4d1
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    const-string v3, "OK"

    invoke-virtual {p1, v3}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    if-eqz v1, :cond_506

    .line 689
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4ef

    .line 690
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :cond_4ef
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/adb/AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    .line 693
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 694
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    :cond_506
    const/4 p1, 0x2

    .line 696
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    return-void

    .line 668
    :pswitch_50b
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbUsbEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result p1

    if-nez p1, :cond_514

    goto :goto_522

    .line 671
    :cond_514
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0, v9}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmAdbUsbEnabled(Lcom/android/server/adb/AdbDebuggingManager;Z)V

    return-void

    .line 661
    :pswitch_51a
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbUsbEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result p1

    if-eqz p1, :cond_523

    :cond_522
    :goto_522
    return-void

    .line 664
    :cond_523
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->ensureAdbDebuggingThreadAlive()V

    .line 665
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmAdbUsbEnabled(Lcom/android/server/adb/AdbDebuggingManager;Z)V

    return-void

    :pswitch_data_52c
    .packed-switch 0x1
        :pswitch_51a
        :pswitch_50b
        :pswitch_490
        :pswitch_47d
        :pswitch_451
        :pswitch_3e8
        :pswitch_37f
        :pswitch_377
        :pswitch_321
        :pswitch_2ba
        :pswitch_262
        :pswitch_23e
        :pswitch_15
        :pswitch_20f
        :pswitch_1ed
        :pswitch_1c1
        :pswitch_165
        :pswitch_10d
        :pswitch_100
        :pswitch_e9
        :pswitch_dd
        :pswitch_ba
        :pswitch_8b
        :pswitch_76
        :pswitch_5b
        :pswitch_37
        :pswitch_1d
        :pswitch_17
    .end packed-switch
.end method

.method public final isTv()Z
    .registers 2

    .line 483
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final logAdbConnectionChanged(Ljava/lang/String;IZ)V
    .registers 12

    .line 987
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    invoke-virtual {v0, p1}, Lcom/android/server/adb/AdbKeyStore;->getLastConnectionTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 988
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    invoke-virtual {p0}, Lcom/android/server/adb/AdbKeyStore;->getAllowedConnectionTime()J

    move-result-wide v4

    .line 989
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logging key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", state = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", alwaysAllow = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", lastConnectionTime = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", authWindow = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x90

    move v6, p2

    move v7, p3

    .line 1001
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJJIZ)V

    return-void
.end method

.method public final onAdbdWifiServerConnected(I)V
    .registers 4

    .line 1077
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    invoke-virtual {v1}, Lcom/android/server/adb/AdbKeyStore;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mgetPairedDevicesForKeys(Lcom/android/server/adb/AdbDebuggingManager;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    const/4 v0, 0x1

    .line 1078
    invoke-virtual {p0, v0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendServerConnectionState(ZI)V

    return-void
.end method

.method public final onAdbdWifiServerDisconnected(I)V
    .registers 3

    .line 1084
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmWifiConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 1085
    invoke-virtual {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->showAdbConnectedNotification(Z)V

    .line 1086
    invoke-virtual {p0, v0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendServerConnectionState(ZI)V

    return-void
.end method

.method public final onPairingResult(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    .line 1139
    const-string/jumbo v1, "status"

    const-string v2, "com.android.server.adb.WIRELESS_DEBUG_PAIRING_RESULT"

    if-nez p1, :cond_1c

    .line 1140
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1142
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 1145
    :cond_1c
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1146
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1148
    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1150
    const-string v4, "\\s+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1151
    array-length v5, v4

    if-le v5, v2, :cond_35

    .line 1152
    aget-object v2, v4, v2

    goto :goto_38

    .line 1151
    :cond_35
    const-string/jumbo v2, "nouser@nohostname"

    .line 1154
    :goto_38
    new-instance v4, Landroid/debug/PairDevice;

    invoke-direct {v4}, Landroid/debug/PairDevice;-><init>()V

    .line 1155
    iput-object v1, v4, Landroid/debug/PairDevice;->name:Ljava/lang/String;

    .line 1156
    iput-object v2, v4, Landroid/debug/PairDevice;->guid:Ljava/lang/String;

    .line 1157
    iput-boolean v0, v4, Landroid/debug/PairDevice;->connected:Z

    .line 1158
    const-string/jumbo v0, "pair_device"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1159
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v0, v3, v1}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1162
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/adb/AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    .line 1163
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1164
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    return-void
.end method

.method public registerForAuthTimeChanges()V
    .registers 4

    .line 982
    const-string v0, "adb_allowed_connection_time"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 983
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAuthTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public scheduleJobToUpdateAdbKeyStore()J
    .registers 6

    .line 1018
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->cancelJobToUpdateAdbKeyStore()V

    .line 1019
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbKeyStore;->getNextExpirationTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    return-wide v2

    :cond_10
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_17

    goto :goto_25

    :cond_17
    const-wide/32 v2, 0x5265c00

    .line 1037
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    .line 1036
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_25
    const/16 v0, 0x9

    .line 1040
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1041
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-wide v2
.end method

.method public final sendPairedDevicesToUI(Ljava/util/Map;)V
    .registers 4

    .line 1176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.adb.WIRELESS_DEBUG_PAIRED_DEVICES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1178
    const-string v1, "devices_map"

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1179
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sendPairingPortToUI(I)V
    .registers 5

    .line 1169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.adb.WIRELESS_DEBUG_PAIRING_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1170
    const-string/jumbo v1, "status"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1171
    const-string v1, "adb_port"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1172
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sendServerConnectionState(ZI)V
    .registers 5

    .line 1065
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.adb.WIRELESS_DEBUG_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_b

    const/4 p1, 0x4

    goto :goto_c

    :cond_b
    const/4 p1, 0x5

    .line 1066
    :goto_c
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1071
    const-string p1, "adb_port"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1072
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final setupNotifications()V
    .registers 5

    .line 487
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_5

    goto :goto_43

    .line 490
    :cond_5
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "notification"

    .line 491
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_22

    .line 493
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unable to setup notifications for wireless debugging"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 498
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->isTv()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 500
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p0

    const v2, 0x1040141

    .line 503
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    const-string/jumbo v3, "usbdevicemanager.adb.tv"

    invoke-direct {v1, v3, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 500
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public showAdbConnectedNotification(Z)V
    .registers 5

    .line 614
    iget-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNotificationShown:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 617
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->setupNotifications()V

    .line 618
    iget-boolean p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNotificationShown:Z

    const/16 v0, 0x3e

    const/4 v1, 0x0

    if-nez p1, :cond_24

    .line 619
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x1

    .line 620
    invoke-static {p1, v2}, Landroid/debug/AdbNotifications;->createNotification(Landroid/content/Context;B)Landroid/app/Notification;

    move-result-object p1

    .line 621
    iput-boolean v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNotificationShown:Z

    .line 622
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0, p1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    :cond_24
    const/4 p1, 0x0

    .line 624
    iput-boolean p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNotificationShown:Z

    .line 625
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public final startAdbdWifi()V
    .registers 2

    .line 630
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$smwifiLifeCycleOverAdbdauthSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 631
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    const-string v0, "W1"

    invoke-virtual {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    return-void

    .line 633
    :cond_e
    invoke-static {}, Lcom/android/server/adb/AdbService;->enableADBdWifi()V

    return-void
.end method

.method public final stopAdbdWifi()V
    .registers 2

    .line 638
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$smwifiLifeCycleOverAdbdauthSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 639
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    const-string v0, "W0"

    invoke-virtual {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    return-void

    .line 641
    :cond_e
    invoke-static {}, Lcom/android/server/adb/AdbService;->disableADBdWifi()V

    return-void
.end method

.method public final updateUIPairCode(Ljava/lang/String;)V
    .registers 5

    .line 1183
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUIPairCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.adb.WIRELESS_DEBUG_PAIRING_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1186
    const-string/jumbo v1, "pairing_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1187
    const-string/jumbo p1, "status"

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1189
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final verifyWifiNetwork(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1129
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    invoke-virtual {v0, p1}, Lcom/android/server/adb/AdbKeyStore;->isTrustedNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 1134
    :cond_a
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0, p2, p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mstartConfirmationForNetwork(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
