.class public Lcom/android/server/display/mode/ProximitySensorObserver;
.super Ljava/lang/Object;
.source "ProximitySensorObserver.java"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

.field public final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field public mIsProxActive:Z

.field public final mProximitySensorName:Ljava/lang/String;

.field public final mProximitySensorType:Ljava/lang/String;

.field public final mSensorObserverLock:Ljava/lang/Object;

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mProximitySensorName:Ljava/lang/String;

    .line 36
    const-string v0, "android.sensor.proximity"

    iput-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mProximitySensorType:Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mIsProxActive:Z

    .line 48
    iput-object p1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 49
    iput-object p2, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 8

    .line 102
    const-string v0, "  SensorObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mIsProxActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mIsProxActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v1, "    mDozeStateByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 106
    :goto_24
    iget-object v2, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_59

    .line 107
    iget-object v2, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 108
    iget-object v3, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :catchall_57
    move-exception p0

    goto :goto_5b

    .line 111
    :cond_59
    monitor-exit v0

    return-void

    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_8 .. :try_end_5c} :catchall_57

    throw p0
.end method

.method public observe()V
    .registers 9

    .line 63
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v0}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplayManagerInternal()Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 65
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v0}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getSensorManagerInternal()Lcom/android/server/sensors/SensorManagerInternal;

    move-result-object v0

    .line 66
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sensors/SensorManagerInternal;->addProximityActiveListener(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V

    .line 68
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_18
    iget-object v1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v2, :cond_38

    aget-object v4, v1, v3

    .line 70
    iget-object v5, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v7, v4}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->isDozeState(Landroid/view/Display;)Z

    move-result v4

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :catchall_36
    move-exception p0

    goto :goto_3d

    .line 72
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_36

    .line 73
    invoke-virtual {p0}, Lcom/android/server/display/mode/ProximitySensorObserver;->registerDisplayListener()V

    return-void

    .line 72
    :goto_3d
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_36

    throw p0
.end method

.method public onDisplayAdded(I)V
    .registers 5

    .line 116
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->isDozeState(Landroid/view/Display;)Z

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_d
    iget-object v2, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 119
    invoke-virtual {p0}, Lcom/android/server/display/mode/ProximitySensorObserver;->recalculateVotesLocked()V

    .line 120
    monitor-exit v1

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw p0
.end method

.method public onDisplayChanged(I)V
    .registers 7

    .line 125
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 127
    iget-object v2, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 128
    invoke-interface {v3, p1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->isDozeState(Landroid/view/Display;)Z

    move-result v3

    .line 127
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 129
    iget-object v2, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eq v1, p1, :cond_26

    .line 130
    invoke-virtual {p0}, Lcom/android/server/display/mode/ProximitySensorObserver;->recalculateVotesLocked()V

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_28

    .line 132
    :cond_26
    :goto_26
    monitor-exit v0

    return-void

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_24

    throw p0
.end method

.method public onDisplayRemoved(I)V
    .registers 4

    .line 137
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/server/display/mode/ProximitySensorObserver;->recalculateVotesLocked()V

    .line 140
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public onProximityActive(Z)V
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mIsProxActive:Z

    if-eq v1, p1, :cond_f

    .line 56
    iput-boolean p1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mIsProxActive:Z

    .line 57
    invoke-virtual {p0}, Lcom/android/server/display/mode/ProximitySensorObserver;->recalculateVotesLocked()V

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_11

    .line 59
    :cond_f
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_d

    throw p0
.end method

.method public final recalculateVotesLocked()V
    .registers 8

    .line 85
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v0}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 86
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_3c

    aget-object v3, v0, v2

    .line 87
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 89
    iget-boolean v4, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mIsProxActive:Z

    if-eqz v4, :cond_31

    iget-object v4, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_31

    .line 90
    iget-object v4, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v5, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mProximitySensorName:Ljava/lang/String;

    const-string v6, "android.sensor.proximity"

    .line 91
    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateForDisplayAndSensor(ILjava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl$RefreshRateRange;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 94
    iget v5, v4, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v4, v4, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-static {v5, v4}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v4

    goto :goto_32

    :cond_31
    const/4 v4, 0x0

    .line 97
    :goto_32
    iget-object v5, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v6, 0x16

    invoke-virtual {v5, v3, v6, v4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3c
    return-void
.end method

.method public final registerDisplayListener()V
    .registers 5

    .line 77
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    return-void
.end method
