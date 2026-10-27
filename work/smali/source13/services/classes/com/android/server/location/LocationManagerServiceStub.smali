.class public interface abstract Lcom/android/server/location/LocationManagerServiceStub;
.super Ljava/lang/Object;
.source "LocationManagerServiceStub.java"


# direct methods
.method public static get()Lcom/android/server/location/LocationManagerServiceStub;
    .registers 1

    .line 19
    const-class v0, Lcom/android/server/location/LocationManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract checkIfRequestBlockedByPolicy(ILjava/lang/String;Landroid/location/IGnssStatusListener;)Z
.end method

.method public abstract checkIfRequestBlockedByPolicy(ILjava/lang/String;Landroid/location/LocationRequest;)Z
.end method

.method public abstract checkWhenRemoveListener(ILandroid/location/IGnssStatusListener;)Z
.end method

.method public abstract checkWhenRemoveLocationRequest(Landroid/location/ILocationListener;Landroid/app/PendingIntent;)Z
.end method

.method public getCurrentLocationRequestUids()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public abstract init(Lcom/android/server/location/LocationManagerService;Ljava/lang/Object;Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/LocationManagerService;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/provider/LocationProviderManager;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract systemRunning()V
.end method
