.class public Landroid/hardware/input/VirtualMouse;
.super Landroid/hardware/input/VirtualInputDevice;
.source "VirtualMouse.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field static final blacklist VIRTUAL_MOUSE_CURSOR_POTION_IN_LOGICAL_COORDINATES:J = 0x19ba079bL


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/input/VirtualMouseConfig;Landroid/hardware/input/IVirtualInputDevice;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/hardware/input/VirtualInputDevice;-><init>(Landroid/hardware/input/VirtualInputDeviceConfig;Landroid/hardware/input/IVirtualInputDevice;)V

    .line 53
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api close()V
    .registers 1

    .line 39
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->close()V

    return-void
.end method

.method public whitelist getCursorPosition()Landroid/graphics/PointF;
    .registers 3

    .line 123
    const-wide/32 v0, 0x19ba079b

    :try_start_3
    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 125
    iget-object v0, p0, Landroid/hardware/input/VirtualMouse;->mVirtualInputDevice:Landroid/hardware/input/IVirtualInputDevice;

    invoke-interface {v0}, Landroid/hardware/input/IVirtualInputDevice;->getCursorPositionInLogicalDisplay()Landroid/graphics/PointF;

    move-result-object v0

    goto :goto_16

    .line 127
    :cond_10
    iget-object v0, p0, Landroid/hardware/input/VirtualMouse;->mVirtualInputDevice:Landroid/hardware/input/IVirtualInputDevice;

    invoke-interface {v0}, Landroid/hardware/input/IVirtualInputDevice;->getCursorPositionInPhysicalDisplay()Landroid/graphics/PointF;

    move-result-object v0

    .line 131
    :goto_16
    if-eqz v0, :cond_19

    :goto_18
    goto :goto_21

    :cond_19
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_20} :catch_22

    goto :goto_18

    :goto_21
    return-object v0

    .line 132
    :catch_22
    move-exception v0

    .line 133
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic blacklist getInputDeviceId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 39
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->getInputDeviceId()I

    move-result v0

    return v0
.end method

.method public whitelist sendButtonEvent(Landroid/hardware/input/VirtualMouseButtonEvent;)V
    .registers 4

    .line 64
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualMouse;->mVirtualInputDevice:Landroid/hardware/input/IVirtualInputDevice;

    invoke-interface {v0, p1}, Landroid/hardware/input/IVirtualInputDevice;->sendMouseButtonEvent(Landroid/hardware/input/VirtualMouseButtonEvent;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 65
    const-string p1, "VirtualInputDevice"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send button event to virtual mouse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/VirtualMouse;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    .line 66
    invoke-virtual {v1}, Landroid/hardware/input/VirtualInputDeviceConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_28

    .line 70
    :cond_26
    nop

    .line 71
    return-void

    .line 68
    :catch_28
    move-exception p1

    .line 69
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist sendRelativeEvent(Landroid/hardware/input/VirtualMouseRelativeEvent;)V
    .registers 4

    .line 101
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualMouse;->mVirtualInputDevice:Landroid/hardware/input/IVirtualInputDevice;

    invoke-interface {v0, p1}, Landroid/hardware/input/IVirtualInputDevice;->sendMouseRelativeEvent(Landroid/hardware/input/VirtualMouseRelativeEvent;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 102
    const-string p1, "VirtualInputDevice"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send relative event to virtual mouse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/VirtualMouse;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    .line 103
    invoke-virtual {v1}, Landroid/hardware/input/VirtualInputDeviceConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_28

    .line 107
    :cond_26
    nop

    .line 108
    return-void

    .line 105
    :catch_28
    move-exception p1

    .line 106
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist sendScrollEvent(Landroid/hardware/input/VirtualMouseScrollEvent;)V
    .registers 4

    .line 83
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualMouse;->mVirtualInputDevice:Landroid/hardware/input/IVirtualInputDevice;

    invoke-interface {v0, p1}, Landroid/hardware/input/IVirtualInputDevice;->sendMouseScrollEvent(Landroid/hardware/input/VirtualMouseScrollEvent;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 84
    const-string p1, "VirtualInputDevice"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send scroll event to virtual mouse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/VirtualMouse;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    .line 85
    invoke-virtual {v1}, Landroid/hardware/input/VirtualInputDeviceConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_28

    .line 89
    :cond_26
    nop

    .line 90
    return-void

    .line 87
    :catch_28
    move-exception p1

    .line 88
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 39
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
