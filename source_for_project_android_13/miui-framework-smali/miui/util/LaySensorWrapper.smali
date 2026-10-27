.class public Lmiui/util/LaySensorWrapper;
.super Ljava/lang/Object;
.source "LaySensorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/LaySensorWrapper$LaySensorChangeListener;
    }
.end annotation


# static fields
.field private static final blacklist ATTITUDE_DEFAULT:I = 0x0

.field private static final blacklist ATTITUDE_HORIZONTAL:I = 0x3

.field private static final blacklist ATTITUDE_LAYFLAT:I = 0x1

.field private static final blacklist ATTITUDE_UPRIGHT_DOWN:I = 0x4

.field private static final blacklist ATTITUDE_UPRIGHT_UP:I = 0x2

.field public static final blacklist DELAY_TIME:I = 0x3e8

.field public static final blacklist EVENT_CLOSE:I = 0x2

.field public static final blacklist EVENT_DEFAULT:I = 0x0

.field public static final blacklist EVENT_INCREASE:I = 0x1

.field private static final blacklist LAY_SENSOR_ID:I = 0x1fa2674

.field public static final blacklist NO_LAY_SENSOR:I = -0x1

.field private static final blacklist PERSPECTIVE_DOWN:I = 0x1

.field private static final blacklist PERSPECTIVE_NONE:I = 0x0

.field private static final blacklist PERSPECTIVE_UP:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "LaySensorWrapper"


# instance fields
.field private blacklist mAttitude:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurttenState:I

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLaySensorChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/util/LaySensorWrapper$LaySensorChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPerspective:I

.field private blacklist mSensor:Landroid/hardware/Sensor;

.field private final blacklist mSensorListener:Landroid/hardware/SensorEventListener;

.field private blacklist mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttitude(Lmiui/util/LaySensorWrapper;)I
    .registers 1

    iget p0, p0, Lmiui/util/LaySensorWrapper;->mAttitude:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurttenState(Lmiui/util/LaySensorWrapper;)I
    .registers 1

    iget p0, p0, Lmiui/util/LaySensorWrapper;->mCurttenState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lmiui/util/LaySensorWrapper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPerspective(Lmiui/util/LaySensorWrapper;)I
    .registers 1

    iget p0, p0, Lmiui/util/LaySensorWrapper;->mPerspective:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAttitude(Lmiui/util/LaySensorWrapper;I)V
    .registers 2

    iput p1, p0, Lmiui/util/LaySensorWrapper;->mAttitude:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurttenState(Lmiui/util/LaySensorWrapper;I)V
    .registers 2

    iput p1, p0, Lmiui/util/LaySensorWrapper;->mCurttenState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPerspective(Lmiui/util/LaySensorWrapper;I)V
    .registers 2

    iput p1, p0, Lmiui/util/LaySensorWrapper;->mPerspective:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyListeners(Lmiui/util/LaySensorWrapper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/util/LaySensorWrapper;->notifyListeners(I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/LaySensorWrapper;->mCurttenState:I

    .line 55
    new-instance v0, Lmiui/util/LaySensorWrapper$1;

    invoke-direct {v0, p0}, Lmiui/util/LaySensorWrapper$1;-><init>(Lmiui/util/LaySensorWrapper;)V

    iput-object v0, p0, Lmiui/util/LaySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 114
    iput-object p1, p0, Lmiui/util/LaySensorWrapper;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Lmiui/util/LaySensorWrapper$2;

    invoke-direct {v0, p0}, Lmiui/util/LaySensorWrapper$2;-><init>(Lmiui/util/LaySensorWrapper;)V

    iput-object v0, p0, Lmiui/util/LaySensorWrapper;->mHandler:Landroid/os/Handler;

    .line 133
    iget-object v0, p0, Lmiui/util/LaySensorWrapper;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lmiui/util/LaySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 134
    const v1, 0x1fa2674

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/LaySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    .line 135
    return-void
.end method

.method private blacklist notifyListeners(I)V
    .registers 5
    .param p1, "status"    # I

    .line 138
    iget-object v0, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-object v1, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/LaySensorWrapper$LaySensorChangeListener;

    .line 140
    .local v2, "listener":Lmiui/util/LaySensorWrapper$LaySensorChangeListener;
    invoke-interface {v2, p1}, Lmiui/util/LaySensorWrapper$LaySensorChangeListener;->onSensorChanged(I)V

    .line 141
    .end local v2    # "listener":Lmiui/util/LaySensorWrapper$LaySensorChangeListener;
    goto :goto_9

    .line 142
    :cond_19
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method


# virtual methods
.method public blacklist registerListener(Lmiui/util/LaySensorWrapper$LaySensorChangeListener;)V
    .registers 7
    .param p1, "listener"    # Lmiui/util/LaySensorWrapper$LaySensorChangeListener;

    .line 146
    iget-object v0, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 147
    :try_start_3
    iget-object v1, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 148
    iget-object v1, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_24

    .line 149
    const-string v1, "LaySensorWrapper"

    const-string v2, "register LaySensor at framework"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lmiui/util/LaySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lmiui/util/LaySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lmiui/util/LaySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 154
    :cond_24
    iget-object v1, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public blacklist unregisterAllListener()V
    .registers 3

    .line 167
    iget-object v0, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object v1, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 169
    invoke-virtual {p0}, Lmiui/util/LaySensorWrapper;->unregisterSensorEventListenerLocked()V

    .line 170
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist unregisterListener(Lmiui/util/LaySensorWrapper$LaySensorChangeListener;)V
    .registers 5
    .param p1, "listener"    # Lmiui/util/LaySensorWrapper$LaySensorChangeListener;

    .line 159
    iget-object v0, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 160
    :try_start_3
    const-string v1, "LaySensorWrapper"

    const-string v2, "unRegister LaySensor at framework"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {p0}, Lmiui/util/LaySensorWrapper;->unregisterSensorEventListenerLocked()V

    .line 163
    monitor-exit v0

    .line 164
    return-void

    .line 163
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist unregisterSensorEventListenerLocked()V
    .registers 4

    .line 174
    iget-object v0, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    .line 175
    iget-object v0, p0, Lmiui/util/LaySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/util/LaySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/util/LaySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 177
    :cond_11
    return-void
.end method
