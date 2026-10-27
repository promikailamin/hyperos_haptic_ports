.class public interface abstract Lcom/android/server/location/GnssMockLocationOptStub;
.super Ljava/lang/Object;
.source "GnssMockLocationOptStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/location/GnssMockLocationOptStub;
    .registers 1

    .line 22
    const-class v0, Lcom/android/server/location/GnssMockLocationOptStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/GnssMockLocationOptStub;

    return-object v0
.end method


# virtual methods
.method public abstract handleNaviBatRegisteration(Landroid/content/Context;Landroid/location/util/identity/CallerIdentity;Ljava/lang/String;Lcom/android/server/location/provider/MockableLocationProvider;)V
.end method

.method public abstract handleNaviBatUnregisteration(Landroid/location/util/identity/CallerIdentity;Ljava/lang/String;Lcom/android/server/location/provider/MockableLocationProvider;)V
.end method

.method public abstract recordOrderSchedule(ZLjava/lang/String;Lcom/android/server/location/provider/MockableLocationProvider;Lcom/android/server/location/provider/MockLocationProvider;)Z
.end method

.method public abstract setMockLocationOptStatus(Z)V
.end method
