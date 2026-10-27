.class public final Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;
.implements Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "LocationListenerTransport"
.end annotation


# instance fields
.field private final mListener:Landroid/location/ILocationListener;


# direct methods
.method constructor <init>(Landroid/location/ILocationListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/ILocationListener;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/ILocationListener;

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->mListener:Landroid/location/ILocationListener;

    .line 214
    return-void
.end method

.method static synthetic lambda$deliverOnFlushComplete$1(Ljava/lang/RuntimeException;)V
    .registers 1
    .param p0, "wrapper"    # Ljava/lang/RuntimeException;

    .line 246
    throw p0
.end method

.method static synthetic lambda$deliverOnLocationChanged$0(Ljava/lang/RuntimeException;)V
    .registers 1
    .param p0, "wrapper"    # Ljava/lang/RuntimeException;

    .line 229
    throw p0
.end method

.method static synthetic lambda$deliverOnProviderEnabledChanged$2(Ljava/lang/RuntimeException;)V
    .registers 1
    .param p0, "wrapper"    # Ljava/lang/RuntimeException;

    .line 264
    throw p0
.end method


# virtual methods
.method public deliverOnFlushComplete(I)V
    .registers 6
    .param p1, "requestCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1}, Landroid/location/ILocationListener;->onFlushComplete(I)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 248
    goto :goto_18

    .line 238
    :catch_6
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 245
    .local v1, "wrapper":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport$$ExternalSyntheticLambda0;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 249
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "wrapper":Ljava/lang/RuntimeException;
    :goto_18
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

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->mListener:Landroid/location/ILocationListener;

    invoke-virtual {p1}, Landroid/location/LocationResult;->asList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/location/ILocationListener;->onLocationChanged(Ljava/util/List;Landroid/os/IRemoteCallback;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 231
    goto :goto_1c

    .line 221
    :catch_a
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 228
    .local v1, "wrapper":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport$$ExternalSyntheticLambda1;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 232
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "wrapper":Ljava/lang/RuntimeException;
    :goto_1c
    return-void
.end method

.method public deliverOnProviderEnabledChanged(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1, p2}, Landroid/location/ILocationListener;->onProviderEnabledChanged(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 266
    goto :goto_18

    .line 256
    :catch_6
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 263
    .local v1, "wrapper":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport$$ExternalSyntheticLambda2;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 267
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "wrapper":Ljava/lang/RuntimeException;
    :goto_18
    return-void
.end method
