.class public interface abstract Lcom/android/server/location/GnssSmartSatelliteSwitchStub;
.super Ljava/lang/Object;
.source "GnssSmartSatelliteSwitchStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/location/GnssSmartSatelliteSwitchStub;
    .registers 1

    .line 7
    const-class v0, Lcom/android/server/location/GnssSmartSatelliteSwitchStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/GnssSmartSatelliteSwitchStub;

    return-object v0
.end method


# virtual methods
.method public abstract addCloudControllListener(Landroid/content/Context;)V
.end method

.method public abstract isControlled(Ljava/lang/String;)V
.end method

.method public abstract resetBlockList()V
.end method

.method public abstract smartSatelliteSwitchMonitor(Landroid/location/GnssStatus;)V
.end method

.method public supportConstellationBlockListFeature()Z
    .registers 2

    .line 11
    const/4 v0, 0x0

    return v0
.end method
