.class Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;
.super Ljava/lang/Object;
.source "StationaryThrottlingLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeliverLastLocationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 266
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_5
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    if-eq v1, p0, :cond_d

    .line 268
    monitor-exit v0

    return-void

    .line 270
    :cond_d
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    if-nez v1, :cond_15

    .line 271
    monitor-exit v0

    return-void

    .line 274
    :cond_15
    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 275
    .local v1, "location":Landroid/location/Location;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 277
    invoke-virtual {v1}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 278
    invoke-virtual {v1}, Landroid/location/Location;->removeSpeed()V

    .line 279
    invoke-virtual {v1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 280
    invoke-virtual {v1}, Landroid/location/Location;->removeSpeedAccuracy()V

    .line 283
    :cond_3e
    invoke-virtual {v1}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 284
    invoke-virtual {v1}, Landroid/location/Location;->removeBearing()V

    .line 285
    invoke-virtual {v1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 286
    invoke-virtual {v1}, Landroid/location/Location;->removeBearingAccuracy()V

    .line 290
    :cond_50
    iget-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    iput-object v1, v2, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    .line 291
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    iget-wide v3, v3, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5 .. :try_end_60} :catchall_70

    .line 294
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/location/Location;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    .line 295
    return-void

    .line 292
    .end local v1    # "location":Landroid/location/Location;
    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v1
.end method
