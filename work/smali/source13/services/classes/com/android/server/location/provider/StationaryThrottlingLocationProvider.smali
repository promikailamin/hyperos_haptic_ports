.class public final Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;
.super Lcom/android/server/location/provider/DelegateLocationProvider;
.source "StationaryThrottlingLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;
.implements Lcom/android/server/DeviceIdleInternal$StationaryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;
    }
.end annotation


# static fields
.field private static final MAX_STATIONARY_LOCATION_AGE_MS:J = 0x7530L

.field private static final MIN_INTERVAL_MS:J = 0x3e8L


# instance fields
.field mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

.field private mDeviceIdle:Z

.field private final mDeviceIdleHelper:Lcom/android/server/location/injector/DeviceIdleHelper;

.field private mDeviceStationary:Z

.field private final mDeviceStationaryHelper:Lcom/android/server/location/injector/DeviceStationaryHelper;

.field private mDeviceStationaryRealtimeMs:J

.field private mIncomingRequest:Landroid/location/provider/ProviderRequest;

.field mLastLocation:Landroid/location/Location;

.field final mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mOutgoingRequest:Landroid/location/provider/ProviderRequest;

.field mThrottlingIntervalMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "injector"    # Lcom/android/server/location/injector/Injector;
    .param p3, "delegate"    # Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 85
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0, p3}, Lcom/android/server/location/provider/DelegateLocationProvider;-><init>(Ljava/util/concurrent/Executor;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdle:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationary:Z

    .line 70
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryRealtimeMs:J

    .line 72
    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    iput-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    .line 74
    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    iput-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    .line 76
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 87
    iput-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mName:Ljava/lang/String;

    .line 88
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getDeviceIdleHelper()Lcom/android/server/location/injector/DeviceIdleHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdleHelper:Lcom/android/server/location/injector/DeviceIdleHelper;

    .line 89
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getDeviceStationaryHelper()Lcom/android/server/location/injector/DeviceStationaryHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryHelper:Lcom/android/server/location/injector/DeviceStationaryHelper;

    .line 92
    invoke-virtual {p0}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->initializeDelegate()V

    .line 93
    return-void
.end method

.method private onThrottlingChangedLocked(Z)V
    .registers 12
    .param p1, "deliverImmediate"    # Z

    .line 180
    const-wide v0, 0x7fffffffffffffffL

    .line 181
    .local v0, "throttlingIntervalMs":J
    iget-boolean v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationary:Z

    if-eqz v2, :cond_31

    iget-boolean v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdle:Z

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v2}, Landroid/location/provider/ProviderRequest;->isLocationSettingsIgnored()Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    if-eqz v2, :cond_31

    iget-wide v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryRealtimeMs:J

    .line 183
    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->getElapsedRealtimeAgeMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gtz v2, :cond_31

    .line 185
    iget-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 189
    :cond_31
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3d

    .line 190
    sget-object v4, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    .local v4, "newRequest":Landroid/location/provider/ProviderRequest;
    goto :goto_3f

    .line 192
    .end local v4    # "newRequest":Landroid/location/provider/ProviderRequest;
    :cond_3d
    iget-object v4, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    .line 195
    .restart local v4    # "newRequest":Landroid/location/provider/ProviderRequest;
    :goto_3f
    iget-object v5, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v4, v5}, Landroid/location/provider/ProviderRequest;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 196
    iput-object v4, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    .line 197
    iget-object v5, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v5}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    invoke-interface {v5, v6}, Lcom/android/server/location/provider/LocationProviderController;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 200
    :cond_54
    iget-wide v5, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    cmp-long v5, v0, v5

    if-nez v5, :cond_5b

    .line 201
    return-void

    .line 204
    :cond_5b
    iget-wide v5, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    .line 205
    .local v5, "oldThrottlingIntervalMs":J
    iput-wide v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    .line 207
    cmp-long v7, v0, v2

    const-string v8, "LocationManagerService"

    const/4 v9, 0x0

    if-eqz v7, :cond_cb

    .line 208
    cmp-long v2, v5, v2

    const/4 v3, 0x1

    if-nez v2, :cond_90

    .line 209
    sget-boolean v2, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v2, :cond_87

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " provider stationary throttled"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_87
    sget-object v2, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v7, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v2, v7, v3, v8}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderStationaryThrottled(Ljava/lang/String;ZLandroid/location/provider/ProviderRequest;)V

    .line 215
    :cond_90
    iget-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    if-eqz v2, :cond_9d

    .line 216
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    :cond_9d
    new-instance v2, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    invoke-direct {v2, p0}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;-><init>(Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 220
    iget-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    if-eqz v2, :cond_a9

    move v9, v3

    :cond_a9
    invoke-static {v9}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 222
    if-eqz p1, :cond_b8

    .line 223
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_100

    .line 225
    :cond_b8
    iget-wide v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    iget-object v7, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    move-result-wide v7

    sub-long/2addr v2, v7

    .line 226
    .local v2, "delayMs":J
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    invoke-virtual {v7, v8, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    .end local v2    # "delayMs":J
    goto :goto_100

    .line 229
    :cond_cb
    cmp-long v2, v5, v2

    if-eqz v2, :cond_f4

    .line 230
    sget-object v2, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v2, v3, v9, v7}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderStationaryThrottled(Ljava/lang/String;ZLandroid/location/provider/ProviderRequest;)V

    .line 231
    sget-boolean v2, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v2, :cond_f4

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " provider stationary unthrottled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_f4
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 239
    :goto_100
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 243
    iget-wide v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stationary throttled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_40

    .line 246
    :cond_25
    const-string/jumbo v0, "stationary throttled=false"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    iget-boolean v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdle:Z

    if-nez v0, :cond_34

    .line 248
    const-string v0, " (not idle)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    :cond_34
    iget-boolean v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationary:Z

    if-nez v0, :cond_3d

    .line 251
    const-string v0, " (not stationary)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    :cond_3d
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 256
    :goto_40
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/provider/AbstractLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public onDeviceIdleChanged(Z)V
    .registers 4
    .param p1, "deviceIdle"    # Z

    .line 151
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdle:Z

    if-ne p1, v1, :cond_9

    .line 153
    monitor-exit v0

    return-void

    .line 156
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdle:Z

    .line 157
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->onThrottlingChangedLocked(Z)V

    .line 158
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public onDeviceStationaryChanged(Z)V
    .registers 5
    .param p1, "deviceStationary"    # Z

    .line 163
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationary:Z

    if-ne v1, p1, :cond_9

    .line 165
    monitor-exit v0

    return-void

    .line 168
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationary:Z

    .line 169
    if-eqz p1, :cond_14

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryRealtimeMs:J

    goto :goto_18

    .line 172
    :cond_14
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryRealtimeMs:J

    .line 174
    :goto_18
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->onThrottlingChangedLocked(Z)V

    .line 175
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public onReportLocation(Landroid/location/LocationResult;)V
    .registers 4
    .param p1, "locationResult"    # Landroid/location/LocationResult;

    .line 97
    invoke-super {p0, p1}, Lcom/android/server/location/provider/DelegateLocationProvider;->onReportLocation(Landroid/location/LocationResult;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_6
    invoke-virtual {p1}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    .line 101
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->onThrottlingChangedLocked(Z)V

    .line 102
    monitor-exit v0

    .line 103
    return-void

    .line 102
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v1
.end method

.method protected onSetRequest(Landroid/location/provider/ProviderRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/location/provider/ProviderRequest;

    .line 143
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_3
    iput-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    .line 145
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->onThrottlingChangedLocked(Z)V

    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method protected onStart()V
    .registers 5

    .line 107
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/provider/LocationProviderController;->start()V

    .line 109
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_c
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdleHelper:Lcom/android/server/location/injector/DeviceIdleHelper;

    invoke-virtual {v1, p0}, Lcom/android/server/location/injector/DeviceIdleHelper;->addListener(Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;)V

    .line 111
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdleHelper:Lcom/android/server/location/injector/DeviceIdleHelper;

    invoke-virtual {v1}, Lcom/android/server/location/injector/DeviceIdleHelper;->isDeviceIdle()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdle:Z

    .line 112
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryHelper:Lcom/android/server/location/injector/DeviceStationaryHelper;

    invoke-virtual {v1, p0}, Lcom/android/server/location/injector/DeviceStationaryHelper;->addListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationary:Z

    .line 114
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryRealtimeMs:J

    .line 116
    invoke-direct {p0, v1}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->onThrottlingChangedLocked(Z)V

    .line 117
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public bridge synthetic onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .registers 3

    .line 54
    invoke-super {p0, p1, p2}, Lcom/android/server/location/provider/DelegateLocationProvider;->onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    return-void
.end method

.method protected onStop()V
    .registers 5

    .line 122
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryHelper:Lcom/android/server/location/injector/DeviceStationaryHelper;

    invoke-virtual {v1, p0}, Lcom/android/server/location/injector/DeviceStationaryHelper;->removeListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    .line 124
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdleHelper:Lcom/android/server/location/injector/DeviceIdleHelper;

    invoke-virtual {v1, p0}, Lcom/android/server/location/injector/DeviceIdleHelper;->removeListener(Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;)V

    .line 126
    sget-object v1, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    iput-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    .line 127
    sget-object v1, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    iput-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    .line 128
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    .line 130
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    .line 131
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    iput-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 135
    :cond_2c
    iput-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    .line 136
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_39

    .line 138
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/provider/LocationProviderController;->stop()V

    .line 139
    return-void

    .line 136
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method
