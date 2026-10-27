.class public interface abstract Lcom/android/server/MiuiBatteryServiceStub;
.super Ljava/lang/Object;
.source "MiuiBatteryServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/MiuiBatteryServiceStub;
    .registers 1

    .line 9
    const-class v0, Lcom/android/server/MiuiBatteryServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiBatteryServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract setBatteryStatusWithFbo(III)V
.end method
