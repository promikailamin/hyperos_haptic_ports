.class public interface abstract Lcom/android/server/SystemServerJuiStub;
.super Ljava/lang/Object;
.source "SystemServerJuiStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/SystemServerJuiStub;
    .registers 1

    .line 16
    const-class v0, Lcom/android/server/SystemServerJuiStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServerJuiStub;

    return-object v0
.end method


# virtual methods
.method public abstract addExtraServices(Landroid/content/Context;)V
.end method

.method public abstract addServices(Landroid/content/Context;Z)V
.end method

.method public initServiceStub(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-static {}, Lcom/android/server/input/InputManagerServiceJuiStub;->getInstance()Lcom/android/server/input/InputManagerServiceJuiStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerServiceJuiStub;->startService(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public abstract startBootstrapServices(Lcom/android/server/SystemServiceManager;Lcom/android/server/utils/TimingsTraceAndSlog;)V
.end method

.method public abstract systemReady()V
.end method
