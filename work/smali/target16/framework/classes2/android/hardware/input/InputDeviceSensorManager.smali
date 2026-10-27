.class public Landroid/hardware/input/InputDeviceSensorManager;
.super Ljava/lang/Object;
.source "InputDeviceSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;,
        Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;,
        Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MSG_SENSOR_ACCURACY_CHANGED:I = 0x1

.field private static final blacklist MSG_SENSOR_CHANGED:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "InputDeviceSensorManager"


# instance fields
.field private final blacklist mGlobal:Landroid/hardware/input/InputManagerGlobal;

.field private final blacklist mInputSensorEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInputSensorLock:Ljava/lang/Object;

.field private blacklist mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

.field private blacklist mSensorThread:Landroid/os/HandlerThread;

.field private final blacklist mSensors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mflushInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->flushInternal(Landroid/hardware/SensorEventListener;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFullSensorListForDevice(Landroid/hardware/input/InputDeviceSensorManager;I)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->getFullSensorListForDevice(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSensorForInputDevice(Landroid/hardware/input/InputDeviceSensorManager;II)Landroid/hardware/Sensor;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->getSensorForInputDevice(II)Landroid/hardware/Sensor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monInputSensorAccuracyChanged(Landroid/hardware/input/InputDeviceSensorManager;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/InputDeviceSensorManager;->onInputSensorAccuracyChanged(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInputSensorChanged(Landroid/hardware/input/InputDeviceSensorManager;IIIJ[F)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/hardware/input/InputDeviceSensorManager;->onInputSensorChanged(IIIJ[F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterListenerInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/hardware/input/InputDeviceSensorManager;->registerListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterListenerInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->unregisterListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->sensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal;)V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    .line 77
    iput-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    .line 80
    invoke-direct {p0}, Landroid/hardware/input/InputDeviceSensorManager;->initializeSensors()V

    .line 81
    return-void
.end method

.method private blacklist findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I
    .registers 4

    .line 175
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 176
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->getListener()Landroid/hardware/SensorEventListener;

    move-result-object v1

    if-ne v1, p1, :cond_18

    .line 177
    return v0

    .line 175
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    :cond_1b
    const/high16 p1, -0x80000000

    return p1
.end method

.method private blacklist flushInternal(Landroid/hardware/SensorEventListener;)Z
    .registers 7

    .line 554
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 555
    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I

    move-result p1

    .line 556
    const/4 v1, 0x0

    if-gez p1, :cond_c

    .line 557
    monitor-exit v0

    return v1

    .line 559
    :cond_c
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 560
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getId()I

    move-result v3

    .line 561
    iget-object v4, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Landroid/hardware/input/InputManagerGlobal;->flushSensor(II)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 562
    monitor-exit v0

    return v1

    .line 564
    :cond_3a
    goto :goto_1c

    .line 565
    :cond_3b
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 566
    :catchall_3e
    move-exception p1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method private blacklist getFullSensorListForDevice(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 398
    :try_start_8
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 399
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 400
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getId()I

    move-result v5

    if-ne v5, p1, :cond_3d

    .line 404
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_3d
    goto :goto_28

    .line 407
    :cond_3e
    goto :goto_12

    .line 408
    :cond_3f
    monitor-exit v1

    .line 409
    return-object v0

    .line 408
    :catchall_41
    move-exception p1

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_41

    throw p1
.end method

.method private blacklist getInputDeviceSensorLocked(II)Landroid/hardware/Sensor;
    .registers 5

    .line 164
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 165
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 166
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, p2, :cond_23

    .line 167
    return-object v0

    .line 169
    :cond_23
    goto :goto_10

    .line 170
    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist getLooperForListenerLocked(Landroid/os/Handler;)Landroid/os/Looper;
    .registers 3

    .line 487
    if-eqz p1, :cond_7

    .line 488
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    return-object p1

    .line 490
    :cond_7
    iget-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensorThread:Landroid/os/HandlerThread;

    if-nez p1, :cond_19

    .line 491
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "SensorThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensorThread:Landroid/os/HandlerThread;

    .line 492
    iget-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensorThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 494
    :cond_19
    iget-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensorThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getSensorForInputDevice(II)Landroid/hardware/Sensor;
    .registers 8

    .line 377
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 379
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 380
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getId()I

    move-result v4

    if-ne v4, p1, :cond_3d

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p2, :cond_3d

    .line 384
    monitor-exit v0

    return-object v3

    .line 386
    :cond_3d
    goto :goto_23

    .line 387
    :cond_3e
    goto :goto_d

    .line 388
    :cond_3f
    monitor-exit v0

    .line 389
    const/4 p1, 0x0

    return-object p1

    .line 388
    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p1
.end method

.method private blacklist initializeSensors()V
    .registers 5

    .line 146
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 148
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceIds()[I

    move-result-object v1

    .line 149
    const/4 v2, 0x0

    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_1a

    .line 150
    aget v3, v1, v2

    .line 151
    invoke-direct {p0, v3}, Landroid/hardware/input/InputDeviceSensorManager;->updateInputDeviceSensorInfoLocked(I)V

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 153
    :cond_1a
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private blacklist onInputSensorAccuracyChanged(III)V
    .registers 8

    .line 221
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 223
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    .line 224
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    .line 225
    invoke-virtual {v2, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->hasSensorRegistered(II)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 226
    invoke-virtual {v2, p1, p2, p3}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->sendSensorAccuracyChanged(III)V

    .line 222
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 229
    :cond_20
    monitor-exit v0

    .line 230
    return-void

    .line 229
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw p1
.end method

.method private blacklist onInputSensorChanged(IIIJ[F)V
    .registers 15

    .line 189
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->getInputDeviceSensorLocked(II)Landroid/hardware/Sensor;

    move-result-object v1

    .line 191
    if-nez v1, :cond_29

    .line 192
    const-string p2, "InputDeviceSensorManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onInputSensorChanged: Got sensor update for device "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " but the sensor was not found."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    monitor-exit v0

    return-void

    .line 196
    :cond_29
    const/4 v2, 0x0

    move v3, v2

    :goto_2b
    iget-object v4, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_64

    .line 197
    iget-object v4, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    .line 199
    invoke-virtual {v4, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->hasSensorRegistered(II)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 200
    invoke-static {v4, v1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->-$$Nest$mgetSensorEvent(Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;Landroid/hardware/Sensor;)Landroid/hardware/SensorEvent;

    move-result-object v5

    .line 201
    if-nez v5, :cond_50

    .line 202
    const-string p1, "InputDeviceSensorManager"

    const-string p2, "Failed to get SensorEvent."

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit v0

    return-void

    .line 205
    :cond_50
    iput-object v1, v5, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 206
    iput p3, v5, Landroid/hardware/SensorEvent;->accuracy:I

    .line 207
    iput-wide p4, v5, Landroid/hardware/SensorEvent;->timestamp:J

    .line 208
    iget-object v6, v5, Landroid/hardware/SensorEvent;->values:[F

    iget-object v7, v5, Landroid/hardware/SensorEvent;->values:[F

    array-length v7, v7

    invoke-static {p6, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    invoke-virtual {v4, v5}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->sendSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 196
    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 213
    :cond_64
    monitor-exit v0

    .line 214
    return-void

    .line 213
    :catchall_66
    move-exception p1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_66

    throw p1
.end method

.method private blacklist populateSensorsForInputDeviceLocked(I[Landroid/hardware/input/InputSensorInfo;)V
    .registers 7

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    const/4 v1, 0x0

    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_16

    .line 136
    new-instance v2, Landroid/hardware/Sensor;

    aget-object v3, p2, v1

    invoke-direct {v2, v3}, Landroid/hardware/Sensor;-><init>(Landroid/hardware/input/InputSensorInfo;)V

    .line 140
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 142
    :cond_16
    iget-object p2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method private blacklist registerListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .registers 11

    .line 419
    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 420
    const-string p1, "InputDeviceSensorManager"

    const-string p2, "listener is null"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return v0

    .line 424
    :cond_b
    if-nez p2, :cond_15

    .line 425
    const-string p1, "InputDeviceSensorManager"

    const-string p2, "sensor is null"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return v0

    .line 430
    :cond_15
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    .line 431
    const-string p1, "InputDeviceSensorManager"

    const-string p2, "Trigger Sensors should use the requestTriggerSensor."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return v0

    .line 435
    :cond_24
    if-ltz p4, :cond_f0

    if-gez p3, :cond_2a

    goto/16 :goto_f0

    .line 440
    :cond_2a
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_2d
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getId()I

    move-result v2

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/hardware/input/InputDeviceSensorManager;->getSensorForInputDevice(II)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_ab

    .line 442
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getId()I

    move-result v2

    .line 443
    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v3, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    .line 444
    if-nez v3, :cond_65

    .line 445
    const-string p1, "InputDeviceSensorManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "input device not found for sensor "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getId()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    monitor-exit v1

    return v0

    .line 449
    :cond_65
    invoke-virtual {v3}, Landroid/view/InputDevice;->hasSensor()Z

    move-result v3

    if-nez v3, :cond_85

    .line 450
    const-string p1, "InputDeviceSensorManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The device doesn\'t have the sensor:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    monitor-exit v1

    return v0

    .line 453
    :cond_85
    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    invoke-virtual {v3, v2, v4, p3, p4}, Landroid/hardware/input/InputManagerGlobal;->enableSensor(IIII)Z

    move-result p3

    if-nez p3, :cond_ab

    .line 455
    const-string p1, "InputDeviceSensorManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t enable the sensor:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    monitor-exit v1

    return v0

    .line 461
    :cond_ab
    iget-object p3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    if-nez p3, :cond_ca

    .line 462
    new-instance p3, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;-><init>(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/input/InputDeviceSensorManager-IA;)V

    iput-object p3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    .line 463
    iget-object p3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget-object p4, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    invoke-virtual {p3, p4}, Landroid/hardware/input/InputManagerGlobal;->registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z

    move-result p3

    if-nez p3, :cond_ca

    .line 464
    const-string p1, "InputDeviceSensorManager"

    const-string p2, "Failed registering the sensor listener"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    monitor-exit v1

    return v0

    .line 469
    :cond_ca
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I

    move-result p3

    .line 470
    if-gez p3, :cond_df

    .line 471
    new-instance p3, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    .line 473
    invoke-direct {p0, p5}, Landroid/hardware/input/InputDeviceSensorManager;->getLooperForListenerLocked(Landroid/os/Handler;)Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p1, p2, p4}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;-><init>(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Looper;)V

    .line 474
    iget-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    goto :goto_ea

    .line 477
    :cond_df
    iget-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {p1, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 479
    :goto_ea
    monitor-exit v1

    .line 481
    const/4 p1, 0x1

    return p1

    .line 479
    :catchall_ed
    move-exception p1

    monitor-exit v1
    :try_end_ef
    .catchall {:try_start_2d .. :try_end_ef} :catchall_ed

    throw p1

    .line 436
    :cond_f0
    :goto_f0
    const-string p1, "InputDeviceSensorManager"

    const-string p2, "maxBatchReportLatencyUs and delayUs should be non-negative"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return v0
.end method

.method private static blacklist sensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z
    .registers 4

    .line 130
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v0, v1, :cond_16

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getId()I

    move-result p0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getId()I

    move-result p1

    if-ne p0, p1, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private blacklist unregisterListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 8

    .line 501
    if-eqz p1, :cond_b0

    .line 504
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_5
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I

    move-result p1

    .line 508
    if-ltz p1, :cond_a4

    .line 509
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    .line 510
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    .line 511
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 513
    invoke-virtual {v1, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)V

    .line 514
    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 516
    iget-object p2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 518
    :cond_2a
    nop

    .line 523
    iget-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    if-eqz p1, :cond_41

    iget-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 524
    iget-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget-object p2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    invoke-virtual {p1, p2}, Landroid/hardware/input/InputManagerGlobal;->unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V

    .line 525
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    .line 528
    :cond_41
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/Sensor;

    .line 529
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getId()I

    move-result v1

    .line 530
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result p2

    .line 532
    nop

    .line 533
    const/4 v2, 0x0

    move v3, v2

    :goto_5c
    iget-object v4, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9a

    .line 534
    iget-object v4, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    .line 535
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    .line 536
    invoke-virtual {v4, v1, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->hasSensorRegistered(II)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 537
    nop

    .line 538
    const-string v2, "InputDeviceSensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " still uses sensor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v2, 0x1

    goto :goto_9a

    .line 533
    :cond_97
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 543
    :cond_9a
    :goto_9a
    if-nez v2, :cond_a1

    .line 547
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v2, v1, p2}, Landroid/hardware/input/InputManagerGlobal;->disableSensor(II)V

    .line 549
    :cond_a1
    goto :goto_45

    .line 550
    :cond_a2
    monitor-exit v0

    .line 551
    return-void

    .line 519
    :cond_a4
    const-string p1, "InputDeviceSensorManager"

    const-string p2, "Listener is not registered"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    monitor-exit v0

    return-void

    .line 550
    :catchall_ad
    move-exception p1

    monitor-exit v0
    :try_end_af
    .catchall {:try_start_5 .. :try_end_af} :catchall_ad

    throw p1

    .line 502
    :cond_b0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist updateInputDeviceSensorInfoLocked(I)V
    .registers 3

    .line 97
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/InputDevice;->hasSensor()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 99
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    .line 100
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object v0

    .line 101
    invoke-direct {p0, p1, v0}, Landroid/hardware/input/InputDeviceSensorManager;->populateSensorsForInputDeviceLocked(I[Landroid/hardware/input/InputSensorInfo;)V

    .line 103
    :cond_15
    return-void
.end method


# virtual methods
.method blacklist getSensorManager(I)Landroid/hardware/SensorManager;
    .registers 3

    .line 90
    new-instance v0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;

    invoke-direct {v0, p0, p1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;-><init>(Landroid/hardware/input/InputDeviceSensorManager;I)V

    return-object v0
.end method

.method public blacklist onInputDeviceAdded(I)V
    .registers 6

    .line 106
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 108
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->updateInputDeviceSensorInfoLocked(I)V

    goto :goto_31

    .line 110
    :cond_13
    const-string v1, "InputDeviceSensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received \'device added\' notification for device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", but it is already in the list"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_31
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public blacklist onInputDeviceChanged(I)V
    .registers 5

    .line 123
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->updateInputDeviceSensorInfoLocked(I)V

    .line 126
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public blacklist onInputDeviceRemoved(I)V
    .registers 4

    .line 117
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method
