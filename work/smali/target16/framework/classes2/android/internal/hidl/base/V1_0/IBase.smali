.class public interface abstract Landroid/internal/hidl/base/V1_0/IBase;
.super Ljava/lang/Object;
.source "IBase.java"

# interfaces
.implements Landroid/os/IHwInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/hidl/base/V1_0/IBase$Proxy;,
        Landroid/internal/hidl/base/V1_0/IBase$Stub;
    }
.end annotation


# static fields
.field public static final blacklist kInterfaceName:Ljava/lang/String; = "android.hidl.base@1.0::IBase"


# direct methods
.method public static blacklist asInterface(Landroid/os/IHwBinder;)Landroid/internal/hidl/base/V1_0/IBase;
    .registers 5

    .line 24
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 25
    return-object v0

    .line 28
    :cond_4
    nop

    .line 29
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 31
    if-eqz v2, :cond_14

    instance-of v3, v2, Landroid/internal/hidl/base/V1_0/IBase;

    if-eqz v3, :cond_14

    .line 32
    check-cast v2, Landroid/internal/hidl/base/V1_0/IBase;

    return-object v2

    .line 35
    :cond_14
    new-instance v2, Landroid/internal/hidl/base/V1_0/IBase$Proxy;

    invoke-direct {v2, p0}, Landroid/internal/hidl/base/V1_0/IBase$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 38
    :try_start_19
    invoke-interface {v2}, Landroid/internal/hidl/base/V1_0/IBase;->interfaceChain()Ljava/util/ArrayList;

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

    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_31} :catch_36

    if-eqz v3, :cond_34

    .line 40
    return-object v2

    .line 42
    :cond_34
    goto :goto_21

    .line 44
    :cond_35
    goto :goto_37

    .line 43
    :catch_36
    move-exception p0

    .line 46
    :goto_37
    return-object v0
.end method

.method public static blacklist castFrom(Landroid/os/IHwInterface;)Landroid/internal/hidl/base/V1_0/IBase;
    .registers 1

    .line 53
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/internal/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/internal/hidl/base/V1_0/IBase;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method public static blacklist getService()Landroid/internal/hidl/base/V1_0/IBase;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    const-string v0, "default"

    invoke-static {v0}, Landroid/internal/hidl/base/V1_0/IBase;->getService(Ljava/lang/String;)Landroid/internal/hidl/base/V1_0/IBase;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Ljava/lang/String;)Landroid/internal/hidl/base/V1_0/IBase;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/internal/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/internal/hidl/base/V1_0/IBase;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getService(Ljava/lang/String;Z)Landroid/internal/hidl/base/V1_0/IBase;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/internal/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/internal/hidl/base/V1_0/IBase;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getService(Z)Landroid/internal/hidl/base/V1_0/IBase;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/internal/hidl/base/V1_0/IBase;->getService(Ljava/lang/String;Z)Landroid/internal/hidl/base/V1_0/IBase;

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
