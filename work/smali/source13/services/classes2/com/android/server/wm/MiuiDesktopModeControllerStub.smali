.class public interface abstract Lcom/android/server/wm/MiuiDesktopModeControllerStub;
.super Ljava/lang/Object;
.source "MiuiDesktopModeControllerStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/wm/MiuiDesktopModeControllerStub;
    .registers 1

    .line 11
    const-class v0, Lcom/android/server/wm/MiuiDesktopModeControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiDesktopModeControllerStub;

    return-object v0
.end method


# virtual methods
.method public abstract init(Lcom/android/server/wm/WindowManagerService;)V
.end method

.method public abstract notifyMoveToFront(Lcom/android/server/wm/Task;Ljava/lang/String;)V
.end method

.method public abstract onFreeformToFullscreenAnimEnd()V
.end method

.method public abstract shouldRemainFrozen(Lcom/android/server/wm/Task;)Z
.end method
