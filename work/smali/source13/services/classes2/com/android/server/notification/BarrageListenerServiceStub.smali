.class public interface abstract Lcom/android/server/notification/BarrageListenerServiceStub;
.super Ljava/lang/Object;
.source "BarrageListenerServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/notification/BarrageListenerServiceStub;
    .registers 1

    .line 8
    const-class v0, Lcom/android/server/notification/BarrageListenerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/BarrageListenerServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract init(Landroid/content/Context;Lcom/android/server/notification/ManagedServices;)V
.end method

.method public abstract isAllowStartBarrage(Ljava/lang/String;)Z
.end method
