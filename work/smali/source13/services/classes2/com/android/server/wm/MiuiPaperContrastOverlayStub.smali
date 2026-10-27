.class public interface abstract Lcom/android/server/wm/MiuiPaperContrastOverlayStub;
.super Ljava/lang/Object;
.source "MiuiPaperContrastOverlayStub.java"


# direct methods
.method public static get()Lcom/android/server/wm/MiuiPaperContrastOverlayStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/wm/MiuiPaperContrastOverlayStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiPaperContrastOverlayStub;

    return-object v0
.end method


# virtual methods
.method public abstract init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
.end method

.method public abstract updateTextureEyeCareLevel(Z)V
.end method

.method public abstract updateTextureEyeCareWhenAodShow(Z)V
.end method
