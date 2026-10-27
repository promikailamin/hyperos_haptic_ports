.class public abstract Lcom/android/server/wm/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# static fields
.field public static final LOG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentRotation:I

.field public final mDefaultRotation:I

.field public mEnabled:Z

.field public mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

.field public mRate:I

.field mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

.field public mSensor:Landroid/hardware/Sensor;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSensorType:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCurrentRotation(Lcom/android/server/wm/WindowOrientationListener;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultRotation(Lcom/android/server/wm/WindowOrientationListener;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mDefaultRotation:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/WindowOrientationListener;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/WindowOrientationListener;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetLOG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 61
    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 5

    const/4 v0, 0x2

    .line 102
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;II)V
    .registers 7

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 120
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 122
    iput p3, p0, Lcom/android/server/wm/WindowOrientationListener;->mDefaultRotation:I

    .line 123
    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 124
    iput p4, p0, Lcom/android/server/wm/WindowOrientationListener;->mRate:I

    const/16 p3, 0x1b

    .line 125
    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p2

    .line 134
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    move-object p4, p3

    :goto_2b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 135
    invoke-virtual {v0}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v1

    if-eqz v1, :cond_3f

    move-object p3, v0

    goto :goto_2b

    :cond_3f
    move-object p4, v0

    goto :goto_2b

    :cond_41
    if-eqz p3, :cond_46

    .line 143
    iput-object p3, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    goto :goto_48

    .line 145
    :cond_46
    iput-object p4, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 148
    :goto_48
    iget-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz p2, :cond_53

    .line 149
    new-instance p2, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-direct {p2, p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;-><init>(Lcom/android/server/wm/WindowOrientationListener;)V

    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    .line 152
    :cond_53
    iget-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    if-nez p2, :cond_69

    .line 153
    iget-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz p2, :cond_69

    .line 157
    new-instance p2, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;-><init>(Lcom/android/server/wm/WindowOrientationListener;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    :cond_69
    return-void
.end method


# virtual methods
.method public canDetectOrientation()Z
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 276
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public disable()V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_12

    .line 207
    const-string p0, "WindowOrientationListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    goto :goto_2e

    .line 210
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    .line 211
    sget-boolean v1, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    if-eqz v1, :cond_22

    .line 212
    const-string v1, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_22
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v1, 0x0

    .line 215
    iput-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    .line 217
    :cond_2c
    monitor-exit v0

    return-void

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_10

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WindowOrientationListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mCurrentRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    invoke-static {v2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mSensorType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    if-eqz p0, :cond_b3

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_b3

    :catchall_b1
    move-exception p0

    goto :goto_b5

    .line 330
    :cond_b3
    :goto_b3
    monitor-exit v0

    return-void

    :goto_b5
    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_3 .. :try_end_b6} :catchall_b1

    throw p0
.end method

.method public enable()V
    .registers 2

    const/4 v0, 0x1

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowOrientationListener;->enable(Z)V

    return-void
.end method

.method public enable(Z)V
    .registers 10

    .line 178
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_13

    .line 180
    const-string p0, "WindowOrientationListener"

    const-string p1, "Cannot detect sensors. Not enabled"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    move-object p0, v0

    goto :goto_63

    .line 183
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    if-eqz v0, :cond_19

    .line 184
    monitor-exit v1

    return-void

    .line 186
    :cond_19
    sget-boolean v0, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    if-eqz v0, :cond_33

    .line 187
    const-string v0, "WindowOrientationListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowOrientationListener enabled clearCurrentRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->resetLocked(Z)V

    .line 191
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_52

    .line 192
    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    iget-object v4, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v5, p0, Lcom/android/server/wm/WindowOrientationListener;->mRate:I

    iget-object v7, p0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    const v6, 0x186a0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    goto :goto_5f

    .line 195
    :cond_52
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    iget-object v3, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcom/android/server/wm/WindowOrientationListener;->mRate:I

    iget-object v5, p0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 197
    :goto_5f
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    .line 198
    monitor-exit v1

    return-void

    :goto_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_10

    throw p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 239
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getProposedRotation()I
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    if-eqz v1, :cond_11

    .line 264
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->getProposedRotationLocked()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, -0x1

    .line 266
    monitor-exit v0

    return p0

    .line 267
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public abstract isKeyguardShowingAndNotOccluded()Z
.end method

.method public abstract isRotationResolverEnabled()Z
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public onTouchEnd()V
    .registers 4

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 231
    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 232
    :try_start_7
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    if-eqz p0, :cond_11

    .line 233
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->onTouchEndLocked(J)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 235
    :cond_11
    :goto_11
    monitor-exit v2

    return-void

    :goto_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public onTouchStart()V
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    if-eqz p0, :cond_d

    .line 223
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->onTouchStartLocked()V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_f

    .line 225
    :cond_d
    :goto_d
    monitor-exit v0

    return-void

    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_b

    throw p0
.end method

.method public setCurrentRotation(I)V
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    .line 250
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public shouldStayEnabledWhileDreaming()Z
    .registers 4

    .line 339
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    return v1

    .line 343
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_24

    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {p0}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result p0

    if-eqz p0, :cond_24

    return v1

    :cond_24
    const/4 p0, 0x0

    return p0
.end method
