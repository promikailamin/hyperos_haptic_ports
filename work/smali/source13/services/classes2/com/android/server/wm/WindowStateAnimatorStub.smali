.class public interface abstract Lcom/android/server/wm/WindowStateAnimatorStub;
.super Ljava/lang/Object;
.source "WindowStateAnimatorStub.java"


# direct methods
.method public static get()Lcom/android/server/wm/WindowStateAnimatorStub;
    .registers 1

    .line 7
    const-class v0, Lcom/android/server/wm/WindowStateAnimatorStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowStateAnimatorStub;

    return-object v0
.end method


# virtual methods
.method public isAllowedDisableScreenshot(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 10
    const/4 v0, 0x0

    return v0
.end method
