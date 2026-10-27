.class public interface abstract Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub;
.super Ljava/lang/Object;
.source "GnssBackgroundUsageOptStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub$IRestoreRequest;,
        Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub$IRemoveRequest;
    }
.end annotation


# direct methods
.method public static getInstance()Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub;
    .registers 1

    .line 17
    const-class v0, Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub;

    return-object v0
.end method


# virtual methods
.method public abstract onAppForegroundChanged(IZ)V
.end method

.method public abstract registerRequestCallback(Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub$IRemoveRequest;)V
.end method

.method public abstract registerRestoreCallback(Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub$IRestoreRequest;)V
.end method

.method public abstract remove(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public request(Landroid/content/Context;Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;Landroid/location/LocationRequest;ZIZLandroid/location/ILocationListener;)Z
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p4, "locationRequest"    # Landroid/location/LocationRequest;
    .param p5, "foreground"    # Z
    .param p6, "permissionLevel"    # I
    .param p7, "hasLocationPermissions"    # Z
    .param p8, "listener"    # Landroid/location/ILocationListener;

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setBackgroundOptStatus(Z)V
.end method
