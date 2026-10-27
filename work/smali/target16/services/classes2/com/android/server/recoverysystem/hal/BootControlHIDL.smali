.class public Lcom/android/server/recoverysystem/hal/BootControlHIDL;
.super Ljava/lang/Object;
.source "BootControlHIDL.java"

# interfaces
.implements Landroid/hardware/boot/IBootControl;


# instance fields
.field public final v1_1_hal:Landroid/hardware/boot/V1_1/IBootControl;

.field public final v1_2_hal:Landroid/hardware/boot/V1_2/IBootControl;

.field public final v1_hal:Landroid/hardware/boot/V1_0/IBootControl;


# direct methods
.method public constructor <init>(Landroid/hardware/boot/V1_0/IBootControl;Landroid/hardware/boot/V1_1/IBootControl;Landroid/hardware/boot/V1_2/IBootControl;)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/recoverysystem/hal/BootControlHIDL;->v1_hal:Landroid/hardware/boot/V1_0/IBootControl;

    .line 66
    iput-object p2, p0, Lcom/android/server/recoverysystem/hal/BootControlHIDL;->v1_1_hal:Landroid/hardware/boot/V1_1/IBootControl;

    .line 67
    iput-object p3, p0, Lcom/android/server/recoverysystem/hal/BootControlHIDL;->v1_2_hal:Landroid/hardware/boot/V1_2/IBootControl;

    if-eqz p1, :cond_23

    .line 71
    const-string p0, "BootControlHIDL"

    if-eqz p3, :cond_15

    .line 72
    const-string p1, "V1.2 version of BootControl HIDL HAL available, using V1.2"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    if-eqz p2, :cond_1d

    .line 74
    const-string p1, "V1.1 version of BootControl HIDL HAL available, using V1.1"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_1d
    const-string p1, "V1.0 version of BootControl HIDL HAL available, using V1.0"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_23
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Failed to find V1.0 BootControl HIDL"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getService()Lcom/android/server/recoverysystem/hal/BootControlHIDL;
    .registers 4

    const/4 v0, 0x1

    .line 54
    invoke-static {v0}, Landroid/hardware/boot/V1_0/IBootControl;->getService(Z)Landroid/hardware/boot/V1_0/IBootControl;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/hardware/boot/V1_1/IBootControl;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/boot/V1_1/IBootControl;

    move-result-object v1

    .line 58
    invoke-static {v0}, Landroid/hardware/boot/V1_2/IBootControl;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/boot/V1_2/IBootControl;

    move-result-object v2

    .line 59
    new-instance v3, Lcom/android/server/recoverysystem/hal/BootControlHIDL;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/server/recoverysystem/hal/BootControlHIDL;-><init>(Landroid/hardware/boot/V1_0/IBootControl;Landroid/hardware/boot/V1_1/IBootControl;Landroid/hardware/boot/V1_2/IBootControl;)V

    return-object v3
.end method

.method public static isServicePresent()Z
    .registers 1

    const/4 v0, 0x1

    .line 36
    :try_start_1
    invoke-static {v0}, Landroid/hardware/boot/V1_0/IBootControl;->getService(Z)Landroid/hardware/boot/V1_0/IBootControl;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_4} :catch_5

    return v0

    :catch_5
    const/4 v0, 0x0

    return v0
.end method

.method public static isV1_2ServicePresent()Z
    .registers 1

    const/4 v0, 0x1

    .line 45
    :try_start_1
    invoke-static {v0}, Landroid/hardware/boot/V1_2/IBootControl;->getService(Z)Landroid/hardware/boot/V1_2/IBootControl;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_4} :catch_5

    return v0

    :catch_5
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActiveBootSlot()I
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/android/server/recoverysystem/hal/BootControlHIDL;->v1_2_hal:Landroid/hardware/boot/V1_2/IBootControl;

    if-eqz p0, :cond_9

    .line 90
    invoke-interface {p0}, Landroid/hardware/boot/V1_2/IBootControl;->getActiveBootSlot()I

    move-result p0

    return p0

    .line 88
    :cond_9
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "getActiveBootSlot() requires V1.2 BootControl HAL"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentSlot()I
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/server/recoverysystem/hal/BootControlHIDL;->v1_hal:Landroid/hardware/boot/V1_0/IBootControl;

    invoke-interface {p0}, Landroid/hardware/boot/V1_0/IBootControl;->getCurrentSlot()I

    move-result p0

    return p0
.end method
