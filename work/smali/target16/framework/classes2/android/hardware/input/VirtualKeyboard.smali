.class public Landroid/hardware/input/VirtualKeyboard;
.super Landroid/hardware/input/VirtualInputDevice;
.source "VirtualKeyboard.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist UNSUPPORTED_KEY_CODE:I = 0x17


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/input/VirtualKeyboardConfig;Landroid/hardware/input/IVirtualInputDevice;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/hardware/input/VirtualInputDevice;-><init>(Landroid/hardware/input/VirtualInputDeviceConfig;Landroid/hardware/input/IVirtualInputDevice;)V

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api close()V
    .registers 1

    .line 36
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->close()V

    return-void
.end method

.method public bridge synthetic blacklist getInputDeviceId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 36
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->getInputDeviceId()I

    move-result v0

    return v0
.end method

.method public blacklist getInputDeviceIdForTest()I
    .registers 2

    .line 75
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualKeyboard;->mVirtualInputDevice:Landroid/hardware/input/IVirtualInputDevice;

    invoke-interface {v0}, Landroid/hardware/input/IVirtualInputDevice;->getInputDeviceId()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 76
    :catch_7
    move-exception v0

    .line 77
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist sendKeyEvent(Landroid/hardware/input/VirtualKeyEvent;)V
    .registers 5

    .line 53
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-eq v1, v0, :cond_30

    .line 57
    iget-object v0, p0, Landroid/hardware/input/VirtualKeyboard;->mVirtualInputDevice:Landroid/hardware/input/IVirtualInputDevice;

    invoke-interface {v0, p1}, Landroid/hardware/input/IVirtualInputDevice;->sendKeyEvent(Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 58
    const-string p1, "VirtualInputDevice"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send key event to virtual keyboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/VirtualKeyboard;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    .line 59
    invoke-virtual {v1}, Landroid/hardware/input/VirtualInputDeviceConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_2e
    nop

    .line 64
    return-void

    .line 54
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " sent to a VirtualKeyboard input device."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_53} :catch_53

    .line 61
    :catch_53
    move-exception p1

    .line 62
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 36
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
