.class abstract Landroid/hardware/input/VirtualInputDevice;
.super Ljava/lang/Object;
.source "VirtualInputDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field protected static final blacklist TAG:Ljava/lang/String; = "VirtualInputDevice"


# instance fields
.field protected final blacklist mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

.field protected final blacklist mVirtualInputDevice:Landroid/hardware/input/IVirtualInputDevice;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/input/VirtualInputDeviceConfig;Landroid/hardware/input/IVirtualInputDevice;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/hardware/input/VirtualInputDevice;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    .line 45
    iput-object p2, p0, Landroid/hardware/input/VirtualInputDevice;->mVirtualInputDevice:Landroid/hardware/input/IVirtualInputDevice;

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing virtual input device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/VirtualInputDevice;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    invoke-virtual {v1}, Landroid/hardware/input/VirtualInputDeviceConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirtualInputDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :try_start_1e
    iget-object v0, p0, Landroid/hardware/input/VirtualInputDevice;->mVirtualInputDevice:Landroid/hardware/input/IVirtualInputDevice;

    invoke-interface {v0}, Landroid/hardware/input/IVirtualInputDevice;->close()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_25

    .line 72
    nop

    .line 73
    return-void

    .line 70
    :catch_25
    move-exception v0

    .line 71
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getInputDeviceId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 59
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualInputDevice;->mVirtualInputDevice:Landroid/hardware/input/IVirtualInputDevice;

    invoke-interface {v0}, Landroid/hardware/input/IVirtualInputDevice;->getInputDeviceId()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 60
    :catch_7
    move-exception v0

    .line 61
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/hardware/input/VirtualInputDevice;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    invoke-virtual {v0}, Landroid/hardware/input/VirtualInputDeviceConfig;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
