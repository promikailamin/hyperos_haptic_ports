.class public Lmiui/util/BackTapSensorWrapper;
.super Ljava/lang/Object;
.source "BackTapSensorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/BackTapSensorWrapper$BackTapSensorChangeListener;
    }
.end annotation


# static fields
.field public static final blacklist BACKTAP_SENSOR_TYPE:I = 0x1fa2665

.field private static final blacklist SENSOR_EVENT_DOUBLE_TAP:F = 2.0f

.field private static final blacklist SENSOR_EVENT_TRIPLE_TAP:F = 3.0f

.field private static final blacklist TAG:Ljava/lang/String; = "BackTapSensorWrapper"


# instance fields
.field private blacklist mBackTapSensor:Landroid/hardware/Sensor;

.field private blacklist mBackTapSensorChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/util/BackTapSensorWrapper$BackTapSensorChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mSensorListener:Landroid/hardware/SensorEventListener;

.field private blacklist mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lmiui/util/BackTapSensorWrapper;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lmiui/util/BackTapSensorWrapper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyListeners(Lmiui/util/BackTapSensorWrapper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/util/BackTapSensorWrapper;->notifyListeners(I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/BackTapSensorWrapper;->mBackTapSensorChangeListeners:Ljava/util/List;

    .line 32
    new-instance v0, Lmiui/util/BackTapSensorWrapper$1;

    invoke-direct {v0, p0}, Lmiui/util/BackTapSensorWrapper$1;-><init>(Lmiui/util/BackTapSensorWrapper;)V

    iput-object v0, p0, Lmiui/util/BackTapSensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 45
    iput-object p1, p0, Lmiui/util/BackTapSensorWrapper;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lmiui/util/BackTapSensorWrapper$2;

    invoke-direct {v0, p0}, Lmiui/util/BackTapSensorWrapper$2;-><init>(Lmiui/util/BackTapSensorWrapper;)V

    iput-object v0, p0, Lmiui/util/BackTapSensorWrapper;->mHandler:Landroid/os/Handler;

    .line 53
    iget-object v0, p0, Lmiui/util/BackTapSensorWrapper;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lmiui/util/BackTapSensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 54
    const v1, 0x1fa2665

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/BackTapSensorWrapper;->mBackTapSensor:Landroid/hardware/Sensor;

    .line 55
    return-void
.end method

.method private blacklist notifyListeners(I)V
    .registers 5
    .param p1, "eventType"    # I

    .line 58
    iget-object v0, p0, Lmiui/util/BackTapSensorWrapper;->mBackTapSensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 59
    int-to-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_23

    .line 60
    :try_start_a
    iget-object v1, p0, Lmiui/util/BackTapSensorWrapper;->mBackTapSensorChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/BackTapSensorWrapper$BackTapSensorChangeListener;

    .line 61
    .local v2, "listener":Lmiui/util/BackTapSensorWrapper$BackTapSensorChangeListener;
    invoke-interface {v2}, Lmiui/util/BackTapSensorWrapper$BackTapSensorChangeListener;->onBackDoubleTap()V

    .line 62
    .end local v2    # "listener":Lmiui/util/BackTapSensorWrapper$BackTapSensorChangeListener;
    goto :goto_10

    :cond_20
    goto :goto_40

    .line 68
    :catchall_21
    move-exception v1

    goto :goto_42

    .line 63
    :cond_23
    int-to-float v1, p1

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_40

    .line 64
    iget-object v1, p0, Lmiui/util/BackTapSensorWrapper;->mBackTapSensorChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/BackTapSensorWrapper$BackTapSensorChangeListener;

    .line 65
    .restart local v2    # "listener":Lmiui/util/BackTapSensorWrapper$BackTapSensorChangeListener;
    invoke-interface {v2}, Lmiui/util/BackTapSensorWrapper$BackTapSensorChangeListener;->onBackTripleTap()V

    .line 66
    .end local v2    # "listener":Lmiui/util/BackTapSensorWrapper$BackTapSensorChangeListener;
    goto :goto_30

    .line 68
    :cond_40
    :goto_40
    monitor-exit v0

    .line 69
    return-void

    .line 68
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_21

    throw v1
.end method

.method private blacklist unregisterSensorListenerLocked()V
    .registers 4

    .line 97
    iget-object v0, p0, Lmiui/util/BackTapSensorWrapper;->mBackTapSensorChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    .line 98
    iget-object v0, p0, Lmiui/util/BackTapSensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/util/BackTapSensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/util/BackTapSensorWrapper;->mBackTapSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 100
    :cond_11
    return-void
.end method


# virtual methods
.method public blacklist registerListener(Lmiui/util/BackTapSensorWrapper$BackTapSensorChangeListener;)V
    .registers 7
    .param p1, "listener"    # Lmiui/util/BackTapSensorWrapper$BackTapSensorChangeListener;

    .line 72
    iget-object v0, p0, Lmiui/util/BackTapSensorWrapper;->mBackTapSensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 73
    :try_start_3
    iget-object v1, p0, Lmiui/util/BackTapSensorWrapper;->mBackTapSensorChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 74
    iget-object v1, p0, Lmiui/util/BackTapSensorWrapper;->mBackTapSensorChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1d

    .line 75
    iget-object v1, p0, Lmiui/util/BackTapSensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lmiui/util/BackTapSensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lmiui/util/BackTapSensorWrapper;->mBackTapSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 77
    :cond_1d
    iget-object v1, p0, Lmiui/util/BackTapSensorWrapper;->mBackTapSensorChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_22
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist unregisterAllListeners()V
    .registers 3

    .line 90
    iget-object v0, p0, Lmiui/util/BackTapSensorWrapper;->mBackTapSensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 91
    :try_start_3
    iget-object v1, p0, Lmiui/util/BackTapSensorWrapper;->mBackTapSensorChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 92
    invoke-direct {p0}, Lmiui/util/BackTapSensorWrapper;->unregisterSensorListenerLocked()V

    .line 93
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist unregisterListener(Lmiui/util/BackTapSensorWrapper$BackTapSensorChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lmiui/util/BackTapSensorWrapper$BackTapSensorChangeListener;

    .line 83
    iget-object v0, p0, Lmiui/util/BackTapSensorWrapper;->mBackTapSensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 84
    :try_start_3
    iget-object v1, p0, Lmiui/util/BackTapSensorWrapper;->mBackTapSensorChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 85
    invoke-direct {p0}, Lmiui/util/BackTapSensorWrapper;->unregisterSensorListenerLocked()V

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method
