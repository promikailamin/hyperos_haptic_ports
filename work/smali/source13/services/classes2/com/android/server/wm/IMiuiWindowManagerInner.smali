.class public interface abstract Lcom/android/server/wm/IMiuiWindowManagerInner;
.super Ljava/lang/Object;
.source "IMiuiWindowManagerInner.java"


# virtual methods
.method public getAtmService()Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 2

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDisplayManagerInternal()Landroid/hardware/display/DisplayManagerInternal;
.end method

.method public getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 2

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method
