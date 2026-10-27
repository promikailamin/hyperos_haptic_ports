.class public interface abstract Lcom/android/server/wm/MiuiMagicPointerServiceStub;
.super Ljava/lang/Object;
.source "MiuiMagicPointerServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MiuiMagicPointerServiceStub$SingletonHolder;
    }
.end annotation


# direct methods
.method public static get()Lcom/android/server/wm/MiuiMagicPointerServiceStub;
    .registers 1

    .line 41
    invoke-static {}, Lcom/android/server/wm/MiuiMagicPointerServiceStubHead;->isMiuiMagicPointerEnable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 42
    const-class v0, Lcom/android/server/wm/MiuiMagicPointerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiMagicPointerServiceStub;

    return-object v0

    .line 44
    :cond_f
    new-instance v0, Lcom/android/server/wm/MiuiMagicPointerServiceStub$1;

    invoke-direct {v0}, Lcom/android/server/wm/MiuiMagicPointerServiceStub$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getMagicPointerCallbacks()Lcom/miui/server/magicpointer/InputMagicPointerCallbacks;
    .registers 2

    .line 64
    new-instance v0, Lcom/miui/server/magicpointer/InputMagicPointerCallbacks;

    invoke-direct {v0, p0}, Lcom/miui/server/magicpointer/InputMagicPointerCallbacks;-><init>(Lcom/android/server/wm/MiuiMagicPointerServiceStub;)V

    return-object v0
.end method

.method public isMagicPointerEnabled()Z
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public onFocusedWindowChanged(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 2
    .param p1, "newFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 93
    return-void
.end method

.method public publishMiuiMagicPointerService(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p4, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .line 89
    return-void
.end method

.method public removeMagicPointer(I)V
    .registers 2
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public setMagicPointerIconType(I)V
    .registers 2
    .param p1, "iconType"    # I

    .line 91
    return-void
.end method

.method public setMagicPointerVisibility(Z)V
    .registers 2
    .param p1, "visibility"    # Z

    .line 57
    return-void
.end method

.method public systemReady()V
    .registers 1

    .line 85
    return-void
.end method

.method public updateMagicPointer(ILjava/util/List;)V
    .registers 3
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/magicpointer/MagicPointer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    .local p2, "points":Ljava/util/List;, "Ljava/util/List<Landroid/magicpointer/MagicPointer;>;"
    return-void
.end method

.method public updatePointerDeviceId(I)V
    .registers 2
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public updatePointerPosition(FF)V
    .registers 3
    .param p1, "pointerX"    # F
    .param p2, "pointerY"    # F

    .line 53
    return-void
.end method

.method public updatePointerState(I)V
    .registers 2
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method
