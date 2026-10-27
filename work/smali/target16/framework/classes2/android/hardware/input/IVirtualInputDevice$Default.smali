.class public Landroid/hardware/input/IVirtualInputDevice$Default;
.super Ljava/lang/Object;
.source "IVirtualInputDevice.java"

# interfaces
.implements Landroid/hardware/input/IVirtualInputDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IVirtualInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist getAssociatedDisplayId()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCursorPositionInLogicalDisplay()Landroid/graphics/PointF;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCursorPositionInPhysicalDisplay()Landroid/graphics/PointF;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInputDeviceId()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendDpadKeyEvent(Landroid/hardware/input/VirtualKeyEvent;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist sendKeyEvent(Landroid/hardware/input/VirtualKeyEvent;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist sendMouseButtonEvent(Landroid/hardware/input/VirtualMouseButtonEvent;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist sendMouseRelativeEvent(Landroid/hardware/input/VirtualMouseRelativeEvent;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist sendMouseScrollEvent(Landroid/hardware/input/VirtualMouseScrollEvent;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist sendRotaryEncoderScrollEvent(Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist sendStylusButtonEvent(Landroid/hardware/input/VirtualStylusButtonEvent;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist sendStylusMotionEvent(Landroid/hardware/input/VirtualStylusMotionEvent;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist sendTouchEvent(Landroid/hardware/input/VirtualTouchEvent;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const/4 p1, 0x0

    return p1
.end method
