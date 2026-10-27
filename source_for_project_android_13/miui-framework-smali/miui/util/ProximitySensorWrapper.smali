.class public Lmiui/util/ProximitySensorWrapper;
.super Ljava/lang/Object;
.source "ProximitySensorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;
    }
.end annotation


# static fields
.field private static final blacklist EVENT_FAR:I = 0x1

.field private static final blacklist EVENT_TOO_CLOSE:I = 0x0

.field private static final blacklist PROXIMITY_THRESHOLD:F = 4.0f

.field public static final blacklist STATE_STABLE_DELAY:I = 0x12c


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mProximitySensorChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProximitySensorState:I

.field private final blacklist mSensor:Landroid/hardware/Sensor;

.field private final blacklist mSensorListener:Landroid/hardware/SensorEventListener;

.field private final blacklist mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lmiui/util/ProximitySensorWrapper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProximitySensorState(Lmiui/util/ProximitySensorWrapper;)I
    .registers 1

    iget p0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSensor(Lmiui/util/ProximitySensorWrapper;)Landroid/hardware/Sensor;
    .registers 1

    iget-object p0, p0, Lmiui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProximitySensorState(Lmiui/util/ProximitySensorWrapper;I)V
    .registers 2

    iput p1, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyListeners(Lmiui/util/ProximitySensorWrapper;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/util/ProximitySensorWrapper;->notifyListeners(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    .line 36
    new-instance v0, Lmiui/util/ProximitySensorWrapper$1;

    invoke-direct {v0, p0}, Lmiui/util/ProximitySensorWrapper$1;-><init>(Lmiui/util/ProximitySensorWrapper;)V

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 65
    iput-object p1, p0, Lmiui/util/ProximitySensorWrapper;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lmiui/util/ProximitySensorWrapper$2;

    invoke-direct {v0, p0}, Lmiui/util/ProximitySensorWrapper$2;-><init>(Lmiui/util/ProximitySensorWrapper;)V

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mHandler:Landroid/os/Handler;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I

    .line 80
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 81
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    .line 82
    return-void
.end method

.method private blacklist notifyListeners(Z)V
    .registers 5
    .param p1, "tooClose"    # Z

    .line 85
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 86
    :try_start_3
    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    .line 87
    .local v2, "listener":Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;
    invoke-interface {v2, p1}, Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;->onSensorChanged(Z)V

    .line 88
    .end local v2    # "listener":Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;
    goto :goto_9

    .line 89
    :cond_19
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private blacklist unregisterSensorEventListenerLocked()V
    .registers 4

    .line 118
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    .line 119
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 121
    :cond_11
    return-void
.end method


# virtual methods
.method public blacklist registerListener(Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;)V
    .registers 7
    .param p1, "listener"    # Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    .line 93
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 94
    :try_start_3
    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 95
    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1d

    .line 96
    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lmiui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 98
    :cond_1d
    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_22
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist unregisterAllListeners()V
    .registers 3

    .line 111
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 112
    :try_start_3
    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 113
    invoke-direct {p0}, Lmiui/util/ProximitySensorWrapper;->unregisterSensorEventListenerLocked()V

    .line 114
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist unregisterListener(Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    .line 104
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 105
    :try_start_3
    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    invoke-direct {p0}, Lmiui/util/ProximitySensorWrapper;->unregisterSensorEventListenerLocked()V

    .line 107
    monitor-exit v0

    .line 108
    return-void

    .line 107
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method
