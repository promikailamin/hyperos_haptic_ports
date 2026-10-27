.class abstract Lcom/android/server/sensorprivacy/SensorPrivacyStateController;
.super Ljava/lang/Object;
.source "SensorPrivacyStateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;,
        Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;,
        Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyStateConsumer;,
        Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;


# instance fields
.field mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/android/server/sensorprivacy/AllSensorStateController;->getInstance()Lcom/android/server/sensorprivacy/AllSensorStateController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static getInstance()Lcom/android/server/sensorprivacy/SensorPrivacyStateController;
    .registers 1

    .line 34
    sget-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    if-nez v0, :cond_a

    .line 35
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->getInstance()Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    move-result-object v0

    sput-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    .line 38
    :cond_a
    sget-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    return-object v0
.end method

.method static sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V
    .registers 5
    .param p0, "callbackHandler"    # Landroid/os/Handler;
    .param p1, "callback"    # Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;
    .param p2, "success"    # Z

    .line 145
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController$$ExternalSyntheticLambda0;-><init>()V

    .line 146
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 145
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    return-void
.end method


# virtual methods
.method public atomic(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 102
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 4
    .param p1, "dumpStream"    # Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 94
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    invoke-virtual {v1, p1}, Lcom/android/server/sensorprivacy/AllSensorStateController;->dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 97
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 98
    invoke-virtual {p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V

    .line 99
    return-void

    .line 97
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method abstract dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
.end method

.method forEachState(Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyStateConsumer;)V
    .registers 4
    .param p1, "consumer"    # Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyStateConsumer;

    .line 88
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->forEachStateLocked(Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyStateConsumer;)V

    .line 90
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method abstract forEachStateLocked(Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyStateConsumer;)V
.end method

.method getAllSensorState()Z
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    invoke-virtual {v1}, Lcom/android/server/sensorprivacy/AllSensorStateController;->getAllSensorStateLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 65
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getState(III)Lcom/android/server/sensorprivacy/SensorState;
    .registers 6
    .param p1, "toggleType"    # I
    .param p2, "userId"    # I
    .param p3, "sensor"    # I

    .line 42
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getStateLocked(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 44
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method abstract getStateLocked(III)Lcom/android/server/sensorprivacy/SensorState;
.end method

.method persistAll()V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    invoke-virtual {v1}, Lcom/android/server/sensorprivacy/AllSensorStateController;->schedulePersistLocked()V

    .line 83
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->schedulePersistLocked()V

    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method resetForTesting()V
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    invoke-virtual {v0}, Lcom/android/server/sensorprivacy/AllSensorStateController;->resetForTesting()V

    .line 154
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->resetForTestingImpl()V

    .line 155
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    .line 156
    return-void
.end method

.method abstract resetForTestingImpl()V
.end method

.method abstract schedulePersistLocked()V
.end method

.method setAllSensorPrivacyListener(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;

    .line 75
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/sensorprivacy/AllSensorStateController;->setAllSensorPrivacyListenerLocked(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;)V

    .line 77
    monitor-exit v0

    .line 78
    return-void

    .line 77
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method setAllSensorState(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 69
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    invoke-virtual {v1, p1}, Lcom/android/server/sensorprivacy/AllSensorStateController;->setAllSensorStateLocked(Z)V

    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 71
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method setSensorPrivacyListener(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

    .line 56
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->setSensorPrivacyListenerLocked(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;)V

    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 58
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method abstract setSensorPrivacyListenerLocked(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;)V
.end method

.method setState(IIIZLandroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;)V
    .registers 9
    .param p1, "toggleType"    # I
    .param p2, "userId"    # I
    .param p3, "sensor"    # I
    .param p4, "enabled"    # Z
    .param p5, "callbackHandler"    # Landroid/os/Handler;
    .param p6, "callback"    # Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;

    .line 49
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_3
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->setStateLocked(IIIZLandroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;)V

    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 51
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method abstract setStateLocked(IIIZLandroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;)V
.end method
