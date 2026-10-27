.class final Lcom/android/server/display/DisplayModeDirector$SensorObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SensorObserver"
.end annotation


# instance fields
.field private final mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

.field private final mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

.field private final mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

.field private mIsProxActive:Z

.field private final mProximitySensorName:Ljava/lang/String;

.field private final mProximitySensorType:Ljava/lang/String;

.field private final mSensorObserverLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayModeDirector$BallotBox;Lcom/android/server/display/DisplayModeDirector$Injector;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ballotBox"    # Lcom/android/server/display/DisplayModeDirector$BallotBox;
    .param p3, "injector"    # Lcom/android/server/display/DisplayModeDirector$Injector;

    .line 2395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mProximitySensorName:Ljava/lang/String;

    .line 2381
    const-string v0, "android.sensor.proximity"

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mProximitySensorType:Ljava/lang/String;

    .line 2386
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    .line 2388
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    .line 2392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    .line 2396
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mContext:Landroid/content/Context;

    .line 2397
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    .line 2398
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    .line 2399
    return-void
.end method

.method private recalculateVotesLocked()V
    .registers 10

    .line 2431
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 2432
    .local v0, "displays":[Landroid/view/Display;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_3b

    aget-object v3, v0, v2

    .line 2433
    .local v3, "d":Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    .line 2434
    .local v4, "displayId":I
    const/4 v5, 0x0

    .line 2435
    .local v5, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    iget-boolean v6, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    if-eqz v6, :cond_31

    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_31

    .line 2436
    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v7, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mProximitySensorName:Ljava/lang/String;

    .line 2437
    const-string v8, "android.sensor.proximity"

    invoke-virtual {v6, v4, v7, v8}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateForDisplayAndSensor(ILjava/lang/String;Ljava/lang/String;)Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    move-result-object v6

    .line 2439
    .local v6, "rate":Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
    if-eqz v6, :cond_31

    .line 2440
    iget v7, v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iget v8, v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    invoke-static {v7, v8}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v5

    .line 2443
    .end local v6    # "rate":Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
    :cond_31
    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    const/16 v7, 0xb

    invoke-interface {v6, v4, v7, v5}, Lcom/android/server/display/DisplayModeDirector$BallotBox;->vote(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 2432
    .end local v3    # "d":Landroid/view/Display;
    .end local v4    # "displayId":I
    .end local v5    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2445
    :cond_3b
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2448
    const-string v0, "  SensorObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsProxActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2450
    const-string v0, "    mDozeStateByDisplay:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2451
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5a

    .line 2452
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 2453
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    .line 2454
    .local v2, "dozed":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2451
    .end local v1    # "id":I
    .end local v2    # "dozed":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 2456
    .end local v0    # "i":I
    :cond_5a
    return-void
.end method

.method public observe()V
    .registers 10

    .line 2412
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2413
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2415
    const-class v0, Lcom/android/server/sensors/SensorManagerInternal;

    .line 2416
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sensors/SensorManagerInternal;

    .line 2417
    .local v0, "sensorManager":Lcom/android/server/sensors/SensorManagerInternal;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sensors/SensorManagerInternal;->addProximityActiveListener(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V

    .line 2419
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2420
    :try_start_28
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v3, :cond_46

    aget-object v5, v2, v4

    .line 2421
    .local v5, "d":Landroid/view/Display;
    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    invoke-interface {v8, v5}, Lcom/android/server/display/DisplayModeDirector$Injector;->isDozeState(Landroid/view/Display;)Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2420
    .end local v5    # "d":Landroid/view/Display;
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 2423
    :cond_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_28 .. :try_end_47} :catchall_53

    .line 2424
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x7

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/android/server/display/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 2428
    return-void

    .line 2423
    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2
.end method

.method public onDisplayAdded(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 2460
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/display/DisplayModeDirector$Injector;->isDozeState(Landroid/view/Display;)Z

    move-result v0

    .line 2461
    .local v0, "isDozeState":Z
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2462
    :try_start_f
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2463
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->recalculateVotesLocked()V

    .line 2464
    monitor-exit v1

    .line 2465
    return-void

    .line 2464
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public onDisplayChanged(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 2469
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 2470
    .local v0, "wasDozeState":Z
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2471
    :try_start_9
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2472
    invoke-virtual {v4, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/display/DisplayModeDirector$Injector;->isDozeState(Landroid/view/Display;)Z

    move-result v3

    .line 2471
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2473
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eq v0, v2, :cond_25

    .line 2474
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->recalculateVotesLocked()V

    .line 2476
    :cond_25
    monitor-exit v1

    .line 2477
    return-void

    .line 2476
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public onDisplayRemoved(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 2481
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2482
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2483
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->recalculateVotesLocked()V

    .line 2484
    monitor-exit v0

    .line 2485
    return-void

    .line 2484
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public onProximityActive(Z)V
    .registers 4
    .param p1, "isActive"    # Z

    .line 2403
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2404
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    if-eq v1, p1, :cond_c

    .line 2405
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    .line 2406
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->recalculateVotesLocked()V

    .line 2408
    :cond_c
    monitor-exit v0

    .line 2409
    return-void

    .line 2408
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
