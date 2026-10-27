.class public interface abstract Lcom/android/server/wm/AsyncRotationControllerStub;
.super Ljava/lang/Object;
.source "AsyncRotationControllerStub.java"


# direct methods
.method public static get()Lcom/android/server/wm/AsyncRotationControllerStub;
    .registers 1

    .line 8
    const-class v0, Lcom/android/server/wm/AsyncRotationControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AsyncRotationControllerStub;

    return-object v0
.end method


# virtual methods
.method public excludeFromFadeRotationAnimation(Lcom/android/server/wm/WindowState;Z)Z
    .registers 4
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "action"    # Z

    .line 12
    const/4 v0, 0x0

    return v0
.end method
