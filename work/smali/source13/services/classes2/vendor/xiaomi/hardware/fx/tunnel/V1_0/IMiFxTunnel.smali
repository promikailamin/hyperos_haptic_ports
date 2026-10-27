.class public interface abstract Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;
.super Ljava/lang/Object;
.source "IMiFxTunnel.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$Stub;,
        Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$Proxy;,
        Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$invokeCommandCallback;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.xiaomi.hardware.fx.tunnel@1.0::IMiFxTunnel"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;
    .registers 8
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 13
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 14
    return-object v0

    .line 17
    :cond_4
    nop

    .line 18
    const-string/jumbo v1, "vendor.xiaomi.hardware.fx.tunnel@1.0::IMiFxTunnel"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 20
    .local v2, "iface":Landroid/os/IHwInterface;
    if-eqz v2, :cond_16

    instance-of v3, v2, Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;

    if-eqz v3, :cond_16

    .line 21
    move-object v0, v2

    check-cast v0, Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;

    return-object v0

    .line 24
    :cond_16
    new-instance v3, Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$Proxy;

    invoke-direct {v3, p0}, Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 27
    .local v3, "proxy":Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;
    :try_start_1b
    invoke-interface {v3}, Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 28
    .local v5, "descriptor":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_33} :catch_38

    if-eqz v6, :cond_36

    .line 29
    return-object v3

    .line 31
    .end local v5    # "descriptor":Ljava/lang/String;
    :cond_36
    goto :goto_23

    .line 33
    :cond_37
    goto :goto_39

    .line 32
    :catch_38
    move-exception v1

    .line 35
    :goto_39
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;
    .registers 2
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 42
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;->asInterface(Landroid/os/IHwBinder;)Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public static getService()Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    const-string v0, "default"

    invoke-static {v0}, Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;->getService(Ljava/lang/String;)Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;
    .registers 2
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    const-string/jumbo v0, "vendor.xiaomi.hardware.fx.tunnel@1.0::IMiFxTunnel"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;->asInterface(Landroid/os/IHwBinder;)Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;
    .registers 3
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const-string/jumbo v0, "vendor.xiaomi.hardware.fx.tunnel@1.0::IMiFxTunnel"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;->asInterface(Landroid/os/IHwBinder;)Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;
    .registers 2
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;->getService(Ljava/lang/String;Z)Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract invokeCommand(ILjava/util/ArrayList;Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$invokeCommandCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$invokeCommandCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setNotify(Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnelCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
