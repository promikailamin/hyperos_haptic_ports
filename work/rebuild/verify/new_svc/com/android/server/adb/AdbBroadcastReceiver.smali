.class public Lcom/android/server/adb/AdbBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdbBroadcastReceiver.java"

# interfaces
.implements Lcom/android/server/adb/AdbNetworkMonitor;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAdbConnectionInfo:Lcom/android/server/adb/AdbConnectionInfo;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/android/server/adb/AdbBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/adb/AdbBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/adb/AdbConnectionInfo;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/android/server/adb/AdbBroadcastReceiver;->mStarted:Z

    .line 46
    iput-object p1, p0, Lcom/android/server/adb/AdbBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/adb/AdbBroadcastReceiver;->mContentResolver:Landroid/content/ContentResolver;

    .line 48
    iput-object p2, p0, Lcom/android/server/adb/AdbBroadcastReceiver;->mAdbConnectionInfo:Lcom/android/server/adb/AdbConnectionInfo;

    return-void
.end method


# virtual methods
.method public final disableWifi(Ljava/lang/String;)V
    .registers 3

    .line 72
    sget-object v0, Lcom/android/server/adb/AdbBroadcastReceiver;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p0, p0, Lcom/android/server/adb/AdbBroadcastReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string p1, "adb_wifi_enabled"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 81
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 82
    const-string/jumbo p1, "wifi_state"

    .line 83
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_82

    .line 87
    const-string p1, "Wifi disabled. Disabling adbwifi."

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbBroadcastReceiver;->disableWifi(Ljava/lang/String;)V

    return-void

    .line 89
    :cond_1c
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    .line 91
    const-string/jumbo p1, "networkInfo"

    const-class v0, Landroid/net/NetworkInfo;

    .line 93
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 97
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    if-eq p2, v1, :cond_36

    goto :goto_82

    .line 102
    :cond_36
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-nez p1, :cond_42

    .line 103
    const-string p1, "Network disconnected. Disabling adbwifi."

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbBroadcastReceiver;->disableWifi(Ljava/lang/String;)V

    return-void

    .line 107
    :cond_42
    iget-object p1, p0, Lcom/android/server/adb/AdbBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 108
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_7d

    .line 109
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5b

    goto :goto_7d

    .line 115
    :cond_5b
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6b

    .line 117
    const-string p1, "Unable to get the wifi ap\'s BSSID. Disabling adbwifi."

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbBroadcastReceiver;->disableWifi(Ljava/lang/String;)V

    return-void

    .line 121
    :cond_6b
    iget-object p2, p0, Lcom/android/server/adb/AdbBroadcastReceiver;->mAdbConnectionInfo:Lcom/android/server/adb/AdbConnectionInfo;

    invoke-virtual {p2}, Lcom/android/server/adb/AdbConnectionInfo;->getBSSID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_82

    .line 122
    const-string p1, "Detected wifi network change. Disabling adbwifi."

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbBroadcastReceiver;->disableWifi(Ljava/lang/String;)V

    return-void

    .line 110
    :cond_7d
    :goto_7d
    const-string p1, "Not connected to any wireless network. Not enabling adbwifi."

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbBroadcastReceiver;->disableWifi(Ljava/lang/String;)V

    :cond_82
    :goto_82
    return-void
.end method

.method public register()V
    .registers 3

    .line 53
    iget-boolean v0, p0, Lcom/android/server/adb/AdbBroadcastReceiver;->mStarted:Z

    if-eqz v0, :cond_5

    return-void

    .line 56
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/android/server/adb/AdbBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/android/server/adb/AdbBroadcastReceiver;->mStarted:Z

    return-void
.end method

.method public unregister()V
    .registers 2

    .line 64
    iget-boolean v0, p0, Lcom/android/server/adb/AdbBroadcastReceiver;->mStarted:Z

    if-nez v0, :cond_5

    return-void

    .line 67
    :cond_5
    iget-object v0, p0, Lcom/android/server/adb/AdbBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/android/server/adb/AdbBroadcastReceiver;->mStarted:Z

    return-void
.end method
