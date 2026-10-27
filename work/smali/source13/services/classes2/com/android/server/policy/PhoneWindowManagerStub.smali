.class public interface abstract Lcom/android/server/policy/PhoneWindowManagerStub;
.super Ljava/lang/Object;
.source "PhoneWindowManagerStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;
    .registers 1

    .line 20
    const-class v0, Lcom/android/server/policy/PhoneWindowManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PhoneWindowManagerStub;

    return-object v0
.end method


# virtual methods
.method public abstract convertToMiuiHapticFeedback(I)Landroid/os/VibrationEffect;
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;)Z
.end method

.method public interceptKeyWithMeta()Z
    .registers 2

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public interceptUnhandledKey(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public interceptWakeKey(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public isInHangUpState()Z
    .registers 2

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isPad()Z
.end method

.method public abstract setFocusedWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract setForcedDisplayDensityForUser(Landroid/view/IWindowManager;)V
.end method

.method public abstract shouldDispatchInputWhenNonInteractive(I)Z
.end method

.method public shouldMoveDisplayToTop(I)Z
    .registers 3
    .param p1, "keycode"    # I

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public abstract systemBooted()V
.end method

.method public trackGlobalActions(Ljava/lang/String;)V
    .registers 2
    .param p1, "action"    # Ljava/lang/String;

    .line 64
    return-void
.end method
