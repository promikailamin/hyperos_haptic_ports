.class public interface abstract Lcom/android/server/input/InputManagerServiceJuiStub;
.super Ljava/lang/Object;
.source "InputManagerServiceJuiStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/input/InputManagerServiceJuiStub;
    .registers 1

    .line 18
    const-class v0, Lcom/android/server/input/InputManagerServiceJuiStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerServiceJuiStub;

    return-object v0
.end method


# virtual methods
.method public canSetPointerIconType(I)Z
    .registers 3
    .param p1, "iconId"    # I

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public getDeviceIdAndGenerationExcludeGamePad([Landroid/view/InputDevice;)[I
    .registers 3
    .param p1, "devices"    # [Landroid/view/InputDevice;

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputDeviceIdsExcludeGamePad([Landroid/view/InputDevice;)[I
    .registers 3
    .param p1, "devices"    # [Landroid/view/InputDevice;

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputDevicesExcludeGamePad([Landroid/view/InputDevice;)[Landroid/view/InputDevice;
    .registers 3
    .param p1, "devices"    # [Landroid/view/InputDevice;

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract init(Lcom/android/server/input/InputManagerService;J)V
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V
.end method

.method public abstract interceptMotionForA2H(Landroid/view/MotionEvent;)V
.end method

.method public isSystemAppFromPidAndUid(II)Z
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public abstract notifyDockGesture(II)V
.end method

.method public abstract notifyForceTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public notifyMapperInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public abstract notifySwitch(JII)V
.end method

.method public abstract start()V
.end method

.method public abstract startService(Landroid/content/Context;)V
.end method
