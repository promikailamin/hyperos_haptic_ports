.class public final Lcom/android/server/biometrics/log/ALSProbe;
.super Ljava/lang/Object;
.source "ALSProbe.java"

# interfaces
.implements Lcom/android/server/biometrics/log/Probe;


# instance fields
.field public mDestroyRequested:Z

.field public mDestroyed:Z

.field public mDisableRequested:Z

.field public mEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public volatile mLastAmbientLux:F

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field public mMaxSubscriptionTime:J

.field public mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

.field public final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public static synthetic $r8$lambda$F4FD4FcmvmYrxrGTCyOPcWWC3rc(Lcom/android/server/biometrics/log/ALSProbe;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->onTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monNext(Lcom/android/server/biometrics/log/ALSProbe;F)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/ALSProbe;->onNext(F)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/os/Handler;)V
    .registers 6

    .line 76
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/biometrics/log/ALSProbe;-><init>(Landroid/hardware/SensorManager;Landroid/os/Handler;J)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/os/Handler;J)V
    .registers 7

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 47
    iput-wide v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mMaxSubscriptionTime:J

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyRequested:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDisableRequested:Z

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    const/high16 v1, -0x40800000    # -1.0f

    .line 55
    iput v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    .line 57
    new-instance v1, Lcom/android/server/biometrics/log/ALSProbe$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/log/ALSProbe$1;-><init>(Lcom/android/server/biometrics/log/ALSProbe;)V

    iput-object v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 96
    iput-object p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_27

    const/4 v0, 0x5

    .line 98
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    :cond_27
    iput-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    .line 99
    iput-object p2, p0, Lcom/android/server/biometrics/log/ALSProbe;->mHandler:Landroid/os/Handler;

    .line 100
    iput-wide p3, p0, Lcom/android/server/biometrics/log/ALSProbe;->mMaxSubscriptionTime:J

    if-eqz p1, :cond_33

    if-nez v0, :cond_32

    goto :goto_33

    :cond_32
    return-void

    .line 103
    :cond_33
    :goto_33
    const-string p1, "ALSProbe"

    const-string p2, "No sensor - probe disabled"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized awaitNextLux(Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .registers 5

    monitor-enter p0

    .line 175
    :try_start_1
    new-instance v0, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;-><init>(Ljava/util/function/Consumer;Landroid/os/Handler;Lcom/android/server/biometrics/log/ALSProbe-IA;)V

    .line 176
    iget p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_15

    .line 178
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->consume(F)V

    goto :goto_34

    :catchall_13
    move-exception p1

    goto :goto_36

    .line 179
    :cond_15
    iget-object p2, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    if-eqz p2, :cond_1d

    .line 180
    invoke-virtual {p2, v0}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->add(Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;)V

    goto :goto_34

    .line 181
    :cond_1d
    iget-object p2, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz p2, :cond_2a

    const/4 p1, 0x0

    .line 182
    iput-boolean p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    .line 183
    iput-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    .line 184
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->enableLightSensorLoggingLocked()V

    goto :goto_34

    .line 186
    :cond_2a
    const-string p2, "ALSProbe"

    const-string v1, "No light sensor - use current to consume"

    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->consume(F)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_13

    .line 189
    :goto_34
    monitor-exit p0

    return-void

    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_13

    throw p1
.end method

.method public declared-synchronized destroy()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 128
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyRequested:Z

    .line 131
    iget-boolean v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    if-nez v1, :cond_14

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/log/ALSProbe;->disableLightSensorLoggingLocked(Z)V

    .line 133
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_12

    goto :goto_14

    :catchall_12
    move-exception v0

    goto :goto_16

    .line 135
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_12

    throw v0
.end method

.method public declared-synchronized disable()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 118
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDisableRequested:Z

    .line 121
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/log/ALSProbe;->disableLightSensorLoggingLocked(Z)V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception v0

    goto :goto_15

    .line 124
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_11

    throw v0
.end method

.method public final disableLightSensorLoggingLocked(Z)V
    .registers 4

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/log/ALSProbe;->resetTimerLocked(Z)V

    .line 206
    iget-boolean v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_37

    .line 207
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    if-nez p1, :cond_14

    const/high16 p1, -0x40800000    # -1.0f

    .line 209
    iput p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    .line 211
    :cond_14
    iget-object p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disable ALS: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-interface {p0}, Landroid/hardware/SensorEventListener;->hashCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ALSProbe"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-void
.end method

.method public declared-synchronized enable()V
    .registers 2

    monitor-enter p0

    .line 110
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyRequested:Z

    if-nez v0, :cond_12

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDisableRequested:Z

    .line 112
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->enableLightSensorLoggingLocked()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    goto :goto_12

    :catchall_10
    move-exception v0

    goto :goto_14

    .line 114
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    :goto_14
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_10

    throw v0
.end method

.method public final enableLightSensorLoggingLocked()V
    .registers 7

    .line 192
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_37

    .line 193
    iput-boolean v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 194
    iput v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    .line 195
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/server/biometrics/log/ALSProbe;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enable ALS: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v2}, Landroid/hardware/SensorEventListener;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ALSProbe"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_37
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/log/ALSProbe;->resetTimerLocked(Z)V

    return-void
.end method

.method public getMostRecentLux()F
    .registers 1

    .line 157
    iget p0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    return p0
.end method

.method public final declared-synchronized onNext(F)V
    .registers 5

    monitor-enter p0

    .line 138
    :try_start_1
    iput p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    .line 140
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    const/4 v1, 0x0

    .line 141
    iput-object v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    if-eqz v0, :cond_25

    .line 143
    const-string v1, "ALSProbe"

    const-string v2, "Finishing next consumer"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-boolean v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyRequested:Z

    if-eqz v1, :cond_1b

    .line 146
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->destroy()V

    goto :goto_22

    :catchall_19
    move-exception p1

    goto :goto_27

    .line 147
    :cond_1b
    iget-boolean v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDisableRequested:Z

    if-eqz v1, :cond_22

    .line 148
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->disable()V

    .line 151
    :cond_22
    :goto_22
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->consume(F)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_19

    .line 153
    :cond_25
    monitor-exit p0

    return-void

    :goto_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_19

    throw p1
.end method

.method public final declared-synchronized onTimeout()V
    .registers 4

    monitor-enter p0

    .line 224
    :try_start_1
    const-string v0, "ALSProbe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max time exceeded for ALS logger - disabling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 225
    invoke-interface {v2}, Landroid/hardware/SensorEventListener;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/log/ALSProbe;->onNext(F)V

    .line 230
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->disable()V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 231
    monitor-exit p0

    return-void

    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public final resetTimerLocked(Z)V
    .registers 6

    .line 217
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p1, :cond_1b

    .line 218
    iget-wide v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mMaxSubscriptionTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1b

    .line 219
    iget-object p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/log/ALSProbe$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/ALSProbe$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/log/ALSProbe;)V

    iget-wide v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mMaxSubscriptionTime:J

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_1b
    return-void
.end method
