.class public Lmiui/os/MiuiPowerManager;
.super Ljava/lang/Object;
.source "MiuiPowerManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reboot(ZLjava/lang/String;Z)V
    .registers 4
    .param p0, "confim"    # Z
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "wait"    # Z

    .line 15
    :try_start_0
    const-string v0, "power"

    .line 16
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 17
    .local v0, "powermanager":Landroid/os/IPowerManager;
    if-eqz v0, :cond_f

    .line 18
    invoke-interface {v0, p0, p1, p2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 21
    .end local v0    # "powermanager":Landroid/os/IPowerManager;
    :cond_f
    goto :goto_11

    .line 20
    :catch_10
    move-exception v0

    .line 22
    :goto_11
    return-void
.end method
