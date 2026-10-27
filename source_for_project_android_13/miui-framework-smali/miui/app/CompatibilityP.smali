.class public Lmiui/app/CompatibilityP;
.super Ljava/lang/Object;
.source "CompatibilityP.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist setTemporaryScreenAutoBrightness(F)V
    .registers 2
    .param p0, "valf"    # F

    .line 21
    :try_start_0
    const-string v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    .line 22
    .local v0, "dm":Landroid/hardware/display/IDisplayManager;
    invoke-interface {v0, p0}, Landroid/hardware/display/IDisplayManager;->setTemporaryAutoBrightnessAdjustment(F)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 25
    .end local v0    # "dm":Landroid/hardware/display/IDisplayManager;
    goto :goto_12

    .line 23
    :catch_e
    move-exception v0

    .line 24
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 26
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public static blacklist setTemporaryScreenBrightness(I)V
    .registers 4
    .param p0, "brightnessValue"    # I

    .line 12
    :try_start_0
    const-string v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    .line 13
    .local v0, "dm":Landroid/hardware/display/IDisplayManager;
    const/4 v1, 0x0

    int-to-float v2, p0

    invoke-interface {v0, v1, v2}, Landroid/hardware/display/IDisplayManager;->setTemporaryBrightness(IF)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 16
    .end local v0    # "dm":Landroid/hardware/display/IDisplayManager;
    goto :goto_14

    .line 14
    :catch_10
    move-exception v0

    .line 15
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 17
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public static blacklist setWifiApEnabled(Landroid/net/wifi/WifiManager;Z)Z
    .registers 3
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "enable"    # Z

    .line 29
    const/4 v0, 0x0

    return v0
.end method
