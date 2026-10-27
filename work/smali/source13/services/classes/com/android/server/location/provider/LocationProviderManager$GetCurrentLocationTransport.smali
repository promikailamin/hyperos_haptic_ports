.class public final Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "GetCurrentLocationTransport"
.end annotation


# instance fields
.field private final mCallback:Landroid/location/ILocationCallback;


# direct methods
.method constructor <init>(Landroid/location/ILocationCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/location/ILocationCallback;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/ILocationCallback;

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;->mCallback:Landroid/location/ILocationCallback;

    .line 341
    return-void
.end method

.method static synthetic lambda$deliverOnLocationChanged$0(Ljava/lang/RuntimeException;)V
    .registers 1
    .param p0, "wrapper"    # Ljava/lang/RuntimeException;

    .line 364
    throw p0
.end method


# virtual methods
.method public deliverOnFlushComplete(I)V
    .registers 2
    .param p1, "requestCode"    # I

    .line 370
    return-void
.end method

.method public deliverOnLocationChanged(Landroid/location/LocationResult;Landroid/os/IRemoteCallback;)V
    .registers 7
    .param p1, "locationResult"    # Landroid/location/LocationResult;
    .param p2, "onCompleteCallback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    if-nez p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 351
    if-eqz p1, :cond_14

    .line 352
    :try_start_a
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;->mCallback:Landroid/location/ILocationCallback;

    invoke-virtual {p1}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/location/ILocationCallback;->onLocation(Landroid/location/Location;)V

    goto :goto_1a

    .line 354
    :cond_14
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;->mCallback:Landroid/location/ILocationCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/location/ILocationCallback;->onLocation(Landroid/location/Location;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_1a} :catch_1b

    .line 366
    :goto_1a
    goto :goto_2d

    .line 356
    :catch_1b
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 363
    .local v1, "wrapper":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport$$ExternalSyntheticLambda0;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 367
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "wrapper":Ljava/lang/RuntimeException;
    :goto_2d
    return-void
.end method
