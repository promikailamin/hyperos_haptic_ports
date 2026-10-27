.class public interface abstract Lcom/android/server/wm/RealTimeModeControllerStub;
.super Ljava/lang/Object;
.source "RealTimeModeControllerStub.java"


# direct methods
.method public static get()Lcom/android/server/wm/RealTimeModeControllerStub;
    .registers 1

    .line 13
    const-class v0, Lcom/android/server/wm/RealTimeModeControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/RealTimeModeControllerStub;

    return-object v0
.end method


# virtual methods
.method public abstract checkCallerPermission(Ljava/lang/String;)Z
.end method

.method public abstract couldBoostTopAppProcess(Ljava/lang/String;)Z
.end method

.method public abstract getAppPackageName()Ljava/lang/String;
.end method

.method public abstract getWindowProcessController()Lcom/android/server/wm/WindowProcessController;
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
.end method
