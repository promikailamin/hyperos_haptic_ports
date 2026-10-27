.class public Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;
.super Ljava/lang/Object;
.source "AutoclickController.java"


# instance fields
.field public final mInputManager:Landroid/hardware/input/InputManager;


# direct methods
.method public constructor <init>(Landroid/hardware/input/InputManager;)V
    .registers 2

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;->mInputManager:Landroid/hardware/input/InputManager;

    return-void
.end method


# virtual methods
.method public getInputDevice(I)Lcom/android/server/accessibility/autoclick/AutoclickController$InputDeviceWrapper;
    .registers 3

    .line 715
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 716
    :cond_6
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-nez p0, :cond_d

    return-object v0

    .line 717
    :cond_d
    new-instance p1, Lcom/android/server/accessibility/autoclick/AutoclickController$InputDeviceWrapper;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$InputDeviceWrapper;-><init>(Landroid/view/InputDevice;)V

    return-object p1
.end method

.method public getInputDeviceIds()[I
    .registers 1

    .line 710
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;->mInputManager:Landroid/hardware/input/InputManager;

    if-nez p0, :cond_8

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0

    .line 711
    :cond_8
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object p0

    return-object p0
.end method

.method public registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    .registers 3

    .line 700
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;->mInputManager:Landroid/hardware/input/InputManager;

    if-nez p0, :cond_5

    return-void

    .line 701
    :cond_5
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    .registers 2

    .line 705
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;->mInputManager:Landroid/hardware/input/InputManager;

    if-nez p0, :cond_5

    return-void

    .line 706
    :cond_5
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    return-void
.end method
