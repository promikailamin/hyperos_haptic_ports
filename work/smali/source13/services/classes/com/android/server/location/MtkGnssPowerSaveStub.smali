.class public interface abstract Lcom/android/server/location/MtkGnssPowerSaveStub;
.super Ljava/lang/Object;
.source "MtkGnssPowerSaveStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/location/MtkGnssPowerSaveStub;
    .registers 1

    .line 9
    const-class v0, Lcom/android/server/location/MtkGnssPowerSaveStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MtkGnssPowerSaveStub;

    return-object v0
.end method


# virtual methods
.method public abstract startPowerSaveListener(Landroid/content/Context;)V
.end method

.method public supportMtkGnssConfig()Z
    .registers 2

    .line 13
    const/4 v0, 0x0

    return v0
.end method
