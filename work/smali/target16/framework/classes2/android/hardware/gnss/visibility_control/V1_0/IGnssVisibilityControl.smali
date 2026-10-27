.class public interface abstract Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;
.super Ljava/lang/Object;
.source "IGnssVisibilityControl.java"

# interfaces
.implements Landroid/internal/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl$Proxy;,
        Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl$Stub;
    }
.end annotation


# static fields
.field public static final blacklist kInterfaceName:Ljava/lang/String; = "android.hardware.gnss.visibility_control@1.0::IGnssVisibilityControl"


# direct methods
.method public static blacklist asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;
    .registers 5

    .line 43
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 44
    return-object v0

    .line 47
    :cond_4
    nop

    .line 48
    const-string v1, "android.hardware.gnss.visibility_control@1.0::IGnssVisibilityControl"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 50
    if-eqz v2, :cond_14

    instance-of v3, v2, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;

    if-eqz v3, :cond_14

    .line 51
    check-cast v2, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;

    return-object v2

    .line 54
    :cond_14
    new-instance v2, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl$Proxy;

    invoke-direct {v2, p0}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 57
    :try_start_19
    invoke-interface {v2}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_31} :catch_36

    if-eqz v3, :cond_34

    .line 59
    return-object v2

    .line 61
    :cond_34
    goto :goto_21

    .line 63
    :cond_35
    goto :goto_37

    .line 62
    :catch_36
    move-exception p0

    .line 65
    :goto_37
    return-object v0
.end method

.method public static blacklist castFrom(Landroid/os/IHwInterface;)Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;
    .registers 1

    .line 72
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method public static blacklist getService()Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    const-string v0, "default"

    invoke-static {v0}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;->getService(Ljava/lang/String;)Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Ljava/lang/String;)Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    const-string v0, "android.hardware.gnss.visibility_control@1.0::IGnssVisibilityControl"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getService(Ljava/lang/String;Z)Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    const-string v0, "android.hardware.gnss.visibility_control@1.0::IGnssVisibilityControl"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getService(Z)Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;->getService(Ljava/lang/String;Z)Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract whitelist asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
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

.method public abstract blacklist enableNfwLocationAccess(Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getHashChain()Ljava/util/ArrayList;
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

.method public abstract blacklist interfaceChain()Ljava/util/ArrayList;
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

.method public abstract blacklist interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setCallback(Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
