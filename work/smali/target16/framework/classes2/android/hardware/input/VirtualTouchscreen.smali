.class public Landroid/hardware/input/VirtualTouchscreen;
.super Landroid/hardware/input/VirtualInputDevice;
.source "VirtualTouchscreen.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/input/VirtualTouchscreenConfig;Landroid/hardware/input/IVirtualInputDevice;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/hardware/input/VirtualInputDevice;-><init>(Landroid/hardware/input/VirtualInputDeviceConfig;Landroid/hardware/input/IVirtualInputDevice;)V

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api close()V
    .registers 1

    .line 32
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->close()V

    return-void
.end method

.method public bridge synthetic blacklist getInputDeviceId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 32
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->getInputDeviceId()I

    move-result v0

    return v0
.end method

.method public whitelist sendTouchEvent(Landroid/hardware/input/VirtualTouchEvent;)V
    .registers 4

    .line 47
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualTouchscreen;->mVirtualInputDevice:Landroid/hardware/input/IVirtualInputDevice;

    invoke-interface {v0, p1}, Landroid/hardware/input/IVirtualInputDevice;->sendTouchEvent(Landroid/hardware/input/VirtualTouchEvent;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 48
    const-string p1, "VirtualInputDevice"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send touch event to virtual touchscreen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/VirtualTouchscreen;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    .line 49
    invoke-virtual {v1}, Landroid/hardware/input/VirtualInputDeviceConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_28

    .line 53
    :cond_26
    nop

    .line 54
    return-void

    .line 51
    :catch_28
    move-exception p1

    .line 52
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 32
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
