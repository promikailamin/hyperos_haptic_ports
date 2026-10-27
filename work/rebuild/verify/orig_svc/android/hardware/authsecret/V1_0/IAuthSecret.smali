.class public interface abstract Landroid/hardware/authsecret/V1_0/IAuthSecret;
.super Ljava/lang/Object;
.source "IAuthSecret.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/authsecret/V1_0/IAuthSecret;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 25
    :cond_4
    const-string v1, "android.hardware.authsecret@1.0::IAuthSecret"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 27
    instance-of v3, v2, Landroid/hardware/authsecret/V1_0/IAuthSecret;

    if-eqz v3, :cond_13

    .line 28
    check-cast v2, Landroid/hardware/authsecret/V1_0/IAuthSecret;

    return-object v2

    .line 31
    :cond_13
    new-instance v2, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;

    invoke-direct {v2, p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 34
    :try_start_18
    invoke-interface {v2}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_21
    if-ge v4, v3, :cond_32

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    .line 35
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2f} :catch_32

    if-eqz v5, :cond_21

    return-object v2

    :catch_32
    :cond_32
    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Landroid/hardware/authsecret/V1_0/IAuthSecret;
    .registers 3

    .line 64
    const-string v0, "android.hardware.authsecret@1.0::IAuthSecret"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/authsecret/V1_0/IAuthSecret;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Z)Landroid/hardware/authsecret/V1_0/IAuthSecret;
    .registers 2

    .line 71
    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->getService(Ljava/lang/String;Z)Landroid/hardware/authsecret/V1_0/IAuthSecret;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract interfaceChain()Ljava/util/ArrayList;
.end method

.method public abstract primaryUserCredential(Ljava/util/ArrayList;)V
.end method
