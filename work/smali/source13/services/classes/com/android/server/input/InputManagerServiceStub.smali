.class public interface abstract Lcom/android/server/input/InputManagerServiceStub;
.super Ljava/lang/Object;
.source "InputManagerServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/input/InputManagerServiceStub;
    .registers 1

    .line 17
    const-class v0, Lcom/android/server/input/InputManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public beforeInjectEvent(Landroid/view/InputEvent;I)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "pid"    # I

    .line 39
    return-void
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
.end method

.method public filterKeyboardDeviceIfNeeded([Landroid/view/InputDevice;)[Landroid/view/InputDevice;
    .registers 2
    .param p1, "inputDevices"    # [Landroid/view/InputDevice;

    .line 28
    return-object p1
.end method

.method public abstract getPtr()J
.end method

.method public abstract init(Landroid/content/Context;Landroid/os/Handler;J)V
.end method

.method public abstract interceptKeyboardNotification(Landroid/content/Context;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/view/InputDevice;",
            ">;)Z"
        }
    .end annotation
.end method

.method public isMagicPointerEnabled()Z
    .registers 2

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public isPad()Z
    .registers 2

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public abstract jumpPermissionCheck(Ljava/lang/String;I)Z
.end method

.method public abstract notifySwitch(JII)V
.end method

.method public abstract notifyTabletSwitchChanged(Z)V
.end method

.method public onDisplayViewportsSet(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "viewports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayViewport;>;"
    return-void
.end method

.method public onUpdatePointerDisplayId(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 47
    return-void
.end method

.method public abstract registerStub()V
.end method

.method public abstract setInputMethodStatus(Z)V
.end method

.method public setMagicPointerVisibility(Z)V
    .registers 2
    .param p1, "visibility"    # Z

    .line 41
    return-void
.end method

.method public abstract setShowTouchLevelFromSettings(I)V
.end method

.method public toggleCapsLock()V
    .registers 1

    .line 53
    return-void
.end method

.method public abstract updateFromUserSwitch()V
.end method

.method public updateMagicPointerPosition(FF)V
    .registers 3
    .param p1, "pointerX"    # F
    .param p2, "pointerY"    # F

    .line 40
    return-void
.end method
