.class public interface abstract Lcom/android/server/wm/FindDeviceLockWindowStub;
.super Ljava/lang/Object;
.source "FindDeviceLockWindowStub.java"


# direct methods
.method public static get()Lcom/android/server/wm/FindDeviceLockWindowStub;
    .registers 1

    .line 8
    const-class v0, Lcom/android/server/wm/FindDeviceLockWindowStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/FindDeviceLockWindowStub;

    return-object v0
.end method


# virtual methods
.method public abstract updateLockDeviceWindowLocked(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
.end method
