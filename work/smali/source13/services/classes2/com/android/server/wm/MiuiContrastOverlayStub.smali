.class public interface abstract Lcom/android/server/wm/MiuiContrastOverlayStub;
.super Ljava/lang/Object;
.source "MiuiContrastOverlayStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/wm/MiuiContrastOverlayStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/wm/MiuiContrastOverlayStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiContrastOverlayStub;

    return-object v0
.end method


# virtual methods
.method public abstract hideContrastOverlay()V
.end method

.method public abstract init(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;Landroid/content/Context;)V
.end method

.method public abstract positionSurface(II)V
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract showContrastOverlay(F)V
.end method
