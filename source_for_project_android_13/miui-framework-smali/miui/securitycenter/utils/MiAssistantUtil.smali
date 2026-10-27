.class public Lmiui/securitycenter/utils/MiAssistantUtil;
.super Ljava/lang/Object;
.source "MiAssistantUtil.java"


# static fields
.field private static final blacklist EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field private static final blacklist EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkinfo"

.field private static final blacklist INTERFACE_USBNET0:Ljava/lang/String; = "usbnet0"

.field private static final blacklist TAG:Ljava/lang/String; = "MiAssistantManager"

.field private static final blacklist USB_SHARE_NET_STATE_CHANGE:Ljava/lang/String; = "miui.intent.action.USB_SHARE_NET_STATE_CHANGE"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static whitelist getActiveInterfaceName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 46
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 48
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 50
    .local v1, "activeLink":Landroid/net/LinkProperties;
    if-eqz v1, :cond_13

    .line 51
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 53
    :cond_13
    const-string v2, "MiAssistantManager"

    const-string v3, "activeLink is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v2, "null"

    return-object v2
.end method

.method public static whitelist usbnet0Down(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.USB_SHARE_NET_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/net/NetworkInfo;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const-string v4, "ETHERNET"

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 29
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v2, "networkinfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    .line 32
    .local v2, "linkProperties":Landroid/net/LinkProperties;
    const-string v3, "linkProperties"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 36
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 37
    .local v3, "b":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 39
    .local v4, "nwService":Landroid/os/INetworkManagementService;
    :try_start_38
    const-string v5, "usbnet0"

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_3e

    .line 42
    goto :goto_46

    .line 40
    :catch_3e
    move-exception v5

    .line 41
    .local v5, "ex":Ljava/lang/Exception;
    const-string v6, "MiAssistantManager"

    const-string v7, "disable usbnet0 error"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_46
    return-void
.end method
