.class public abstract Lmiui/util/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static blacklist get()Ljava/lang/String;
    .registers 5

    .line 19
    const-string v0, ""

    .line 21
    .local v0, "id":Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/TelephonyManagerUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 23
    return-object v0

    .line 27
    :cond_d
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 28
    .local v1, "context":Landroid/content/Context;
    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 29
    .local v2, "conn":Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-nez v3, :cond_32

    .line 31
    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 33
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 34
    .local v4, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_32

    .line 35
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 39
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v4    # "info":Landroid/net/wifi/WifiInfo;
    :cond_32
    if-nez v0, :cond_36

    .line 40
    const-string v0, ""

    .line 42
    :cond_36
    return-object v0
.end method
