.class public final Lcom/android/server/vibrator/VibrationThread;
.super Ljava/lang/Thread;
.source "VibrationThread.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mCalledVibrationCompleteCallback:Z

.field public mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

.field public final mLock:Ljava/lang/Object;

.field public mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

.field public final mVibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-string v0, "VibrationThread"

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorDebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager$WakeLock;Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;)V
    .registers 4

    .line 111
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    .line 112
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 113
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationThread;->mVibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    return-void
.end method


# virtual methods
.method public final clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .registers 5

    .line 254
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    .line 256
    const-string/jumbo v0, "notifyVibrationComplete"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 258
    :try_start_10
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyVibrationComplete(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_19

    .line 260
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 261
    throw p0

    :cond_1e
    return-void
.end method

.method public isRunningVibrationId(J)Z
    .registers 6

    .line 225
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz p0, :cond_15

    .line 227
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long p0, v1, p1

    if-nez p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :catchall_13
    move-exception p0

    goto :goto_18

    :cond_15
    const/4 p0, 0x0

    :goto_16
    monitor-exit v0

    return p0

    .line 228
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_13

    throw p0
.end method

.method public final playVibration()V
    .registers 5

    .line 266
    const-string/jumbo v0, "playVibration"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 268
    :try_start_9
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->prepareToStart()Z

    move-result v0

    if-nez v0, :cond_21

    .line 271
    new-instance v0, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v3, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-direct {v0, v3}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;)V

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1f

    .line 298
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1f
    move-exception p0

    goto :goto_4a

    .line 277
    :cond_21
    :goto_21
    :try_start_21
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->isFinished()Z

    move-result v0

    if-nez v0, :cond_46

    .line 278
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->waitUntilNextStepIsDue()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 283
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->runNextStep()V

    .line 286
    :cond_36
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    if-nez v0, :cond_21

    .line 288
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 289
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->calculateVibrationEndInfo()Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 293
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    :try_end_45
    .catchall {:try_start_21 .. :try_end_45} :catchall_1f

    goto :goto_21

    .line 298
    :cond_46
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_4a
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 299
    throw p0
.end method

.method public run()V
    .registers 5

    const/4 v0, -0x8

    .line 142
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 145
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationThread;->waitForVibrationRequest()Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    .line 148
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationThread;->runCurrentVibrationWithWakeLock()V

    .line 149
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->isFinished()Z

    move-result v0

    if-nez v0, :cond_22

    .line 150
    const-string v0, "VibrationThread"

    const-string v1, "VibrationThread terminated with unfinished vibration"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_22
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 154
    :try_start_26
    iput-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 155
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_45

    .line 163
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mVibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 164
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/server/vibrator/Vibration;->id:J

    .line 163
    invoke-interface {v0, v2, v3}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->onVibrationThreadReleased(J)V

    .line 165
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 166
    :try_start_39
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 167
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_42

    .line 168
    iput-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    goto :goto_4

    :catchall_42
    move-exception p0

    .line 167
    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0

    :catchall_45
    move-exception p0

    .line 155
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public final runCurrentVibrationWithWakeLock()V
    .registers 5

    .line 233
    new-instance v0, Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 234
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v1, v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 235
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 236
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x0

    .line 239
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationThread;->playVibration()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_34

    .line 241
    :try_start_1d
    new-instance v1, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED_UNEXPECTED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-direct {v1, v2}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;)V

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_32

    .line 245
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 246
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void

    :catchall_32
    move-exception v1

    goto :goto_40

    :catchall_34
    move-exception v1

    .line 241
    :try_start_35
    new-instance v2, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v3, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED_UNEXPECTED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-direct {v2, v3}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;)V

    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 243
    throw v1
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_32

    .line 245
    :goto_40
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 246
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 247
    throw v1
.end method

.method public runVibrationOnVibrationThread(Lcom/android/server/vibrator/VibrationStepConductor;)Z
    .registers 6

    .line 124
    const-string/jumbo v0, "runVibrationOnVibrationThread"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 126
    :try_start_9
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_2e

    .line 127
    :try_start_c
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v3, :cond_1f

    .line 128
    const-string p0, "VibrationThread"

    const-string p1, "Attempt to start vibration when one already running"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1d

    .line 136
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0

    :catchall_1d
    move-exception p0

    goto :goto_2c

    .line 131
    :cond_1f
    :try_start_1f
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 132
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 133
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_1d

    .line 136
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    .line 133
    :goto_2c
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_1d

    :try_start_2d
    throw p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 136
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 137
    throw p0
.end method

.method public waitForThreadIdle(J)Z
    .registers 7

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr p1, v0

    .line 182
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 184
    :goto_8
    :try_start_8
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-nez v3, :cond_11

    .line 185
    monitor-exit v2

    const/4 p0, 0x1

    return p0

    :catchall_f
    move-exception p0

    goto :goto_2c

    :cond_11
    cmp-long v3, v0, p1

    if-ltz v3, :cond_18

    .line 188
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_f

    const/4 p0, 0x0

    return p0

    .line 191
    :cond_18
    :try_start_18
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    sub-long v0, p1, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1f} :catch_20
    .catchall {:try_start_18 .. :try_end_1f} :catchall_f

    goto :goto_27

    .line 193
    :catch_20
    :try_start_20
    const-string v0, "VibrationThread"

    const-string v1, "VibrationThread interrupted waiting to stop, continuing"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_8

    .line 197
    :goto_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_f

    throw p0
.end method

.method public final waitForVibrationRequest()Lcom/android/server/vibrator/VibrationStepConductor;
    .registers 4

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v1, :cond_b

    .line 206
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-object v1

    :catchall_9
    move-exception p0

    goto :goto_1a

    .line 209
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_9

    goto :goto_18

    .line 211
    :catch_11
    :try_start_11
    const-string v1, "VibrationThread"

    const-string v2, "VibrationThread interrupted waiting to start, continuing"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_18
    monitor-exit v0

    goto :goto_0

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_9

    throw p0
.end method
