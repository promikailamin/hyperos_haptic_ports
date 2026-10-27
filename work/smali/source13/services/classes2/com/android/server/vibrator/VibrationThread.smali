.class final Lcom/android/server/vibrator/VibrationThread;
.super Ljava/lang/Thread;
.source "VibrationThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "VibrationThread"


# instance fields
.field private mCalledVibrationCompleteCallback:Z

.field private mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

.field private final mLock:Ljava/lang/Object;

.field private mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

.field private final mVibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/os/PowerManager$WakeLock;Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;)V
    .registers 4
    .param p1, "wakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p2, "vibratorManagerHooks"    # Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 117
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    .line 118
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 119
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationThread;->mVibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 120
    return-void
.end method

.method private clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 5
    .param p1, "completedStatus"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 278
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    if-nez v0, :cond_14

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    .line 280
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mVibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 281
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    .line 280
    invoke-interface {v0, v1, v2, p1}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->onVibrationCompleted(JLcom/android/server/vibrator/Vibration$Status;)V

    .line 283
    :cond_14
    return-void
.end method

.method private playVibration()V
    .registers 6

    .line 286
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "playVibration"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 288
    :try_start_9
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->prepareToStart()V

    .line 289
    :goto_e
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->isFinished()Z

    move-result v2

    if-nez v2, :cond_35

    .line 290
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->waitUntilNextStepIsDue()Z

    move-result v2

    .line 292
    .local v2, "readyToRun":Z
    if-eqz v2, :cond_23

    .line 298
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibrationStepConductor;->runNextStep()V

    .line 301
    :cond_23
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibrationStepConductor;->calculateVibrationStatus()Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v3

    .line 303
    .local v3, "status":Lcom/android/server/vibrator/Vibration$Status;
    sget-object v4, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-eq v3, v4, :cond_34

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    if-nez v4, :cond_34

    .line 306
    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$Status;)V
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_3a

    .line 308
    .end local v2    # "readyToRun":Z
    .end local v3    # "status":Lcom/android/server/vibrator/Vibration$Status;
    :cond_34
    goto :goto_e

    .line 310
    :cond_35
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 311
    nop

    .line 312
    return-void

    .line 310
    :catchall_3a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 311
    throw v2
.end method

.method private runCurrentVibrationWithWakeLock()V
    .registers 5

    .line 233
    new-instance v0, Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget v1, v1, Lcom/android/server/vibrator/Vibration;->uid:I

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 234
    .local v0, "workSource":Landroid/os/WorkSource;
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 235
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 238
    const/4 v1, 0x0

    :try_start_18
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread;->runCurrentVibrationWithWakeLockAndDeathLink()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_2f

    .line 240
    :try_start_1b
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->FINISHED_UNEXPECTED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$Status;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_2d

    .line 241
    nop

    .line 243
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 244
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 245
    nop

    .line 246
    return-void

    .line 243
    :catchall_2d
    move-exception v2

    goto :goto_37

    .line 240
    :catchall_2f
    move-exception v2

    :try_start_30
    sget-object v3, Lcom/android/server/vibrator/Vibration$Status;->FINISHED_UNEXPECTED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$Status;)V

    .line 241
    nop

    .end local v0    # "workSource":Landroid/os/WorkSource;
    .end local p0    # "this":Lcom/android/server/vibrator/VibrationThread;
    throw v2
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_2d

    .line 243
    .restart local v0    # "workSource":Landroid/os/WorkSource;
    .restart local p0    # "this":Lcom/android/server/vibrator/VibrationThread;
    :goto_37
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 244
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 245
    throw v2
.end method

.method private runCurrentVibrationWithWakeLockAndDeathLink()V
    .registers 7

    .line 253
    const-string v0, "Failed to unlink token"

    const-string v1, "VibrationThread"

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/vibrator/Vibration;->token:Landroid/os/IBinder;

    .line 255
    .local v2, "vibrationBinderToken":Landroid/os/IBinder;
    :try_start_c
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_2e

    .line 260
    nop

    .line 264
    :try_start_13
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread;->playVibration()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_22

    .line 267
    :try_start_16
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1b
    .catch Ljava/util/NoSuchElementException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 270
    goto :goto_21

    .line 268
    :catch_1c
    move-exception v3

    .line 269
    .local v3, "e":Ljava/util/NoSuchElementException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    nop

    .line 272
    :goto_21
    return-void

    .line 266
    :catchall_22
    move-exception v3

    .line 267
    :try_start_23
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-interface {v2, v5, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_28
    .catch Ljava/util/NoSuchElementException; {:try_start_23 .. :try_end_28} :catch_29

    .line 270
    goto :goto_2d

    .line 268
    :catch_29
    move-exception v4

    .line 269
    .local v4, "e":Ljava/util/NoSuchElementException;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .end local v4    # "e":Ljava/util/NoSuchElementException;
    :goto_2d
    throw v3

    .line 256
    :catch_2e
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Error linking vibration to token death"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/Vibration$Status;

    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$Status;)V

    .line 259
    return-void
.end method

.method private waitForVibrationRequest()Lcom/android/server/vibrator/VibrationStepConductor;
    .registers 5

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v1, :cond_9

    .line 206
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_19

    return-object v1

    .line 209
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_19

    .line 212
    goto :goto_17

    .line 210
    :catch_f
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_10
    const-string v2, "VibrationThread"

    const-string v3, "VibrationThread interrupted waiting to start, continuing"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_17
    monitor-exit v0

    goto :goto_0

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_19

    throw v1
.end method


# virtual methods
.method isRunningVibrationId(J)Z
    .registers 6
    .param p1, "id"    # J

    .line 225
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v1, :cond_13

    .line 227
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    monitor-exit v0

    .line 226
    return v1

    .line 228
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public run()V
    .registers 5

    .line 143
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 146
    :goto_4
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread;->waitForVibrationRequest()Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibrationStepConductor;

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    .line 149
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread;->runCurrentVibrationWithWakeLock()V

    .line 150
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->isFinished()Z

    move-result v0

    if-nez v0, :cond_25

    .line 151
    const-string v0, "VibrationThread"

    const-string v1, "VibrationThread terminated with unfinished vibration"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_25
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    const/4 v1, 0x0

    :try_start_29
    iput-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 156
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_48

    .line 164
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mVibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-interface {v0, v2, v3}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->onVibrationThreadReleased(J)V

    .line 165
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 166
    :try_start_3c
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 167
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_45

    .line 168
    iput-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    goto :goto_4

    .line 167
    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v0

    .line 156
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method runVibrationOnVibrationThread(Lcom/android/server/vibrator/VibrationStepConductor;)Z
    .registers 5
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;

    .line 130
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v1, :cond_11

    .line 132
    const-string v1, "VibrationThread"

    const-string v2, "Attempt to start vibration when one already running"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 135
    :cond_11
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 136
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 137
    monitor-exit v0

    .line 138
    const/4 v0, 0x1

    return v0

    .line 137
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public waitForThreadIdle(J)Z
    .registers 11
    .param p1, "maxWaitMillis"    # J

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 181
    .local v0, "now":J
    add-long v2, v0, p1

    .line 182
    .local v2, "deadline":J
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 184
    :goto_9
    :try_start_9
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-nez v5, :cond_10

    .line 185
    const/4 v5, 0x1

    monitor-exit v4

    return v5

    .line 187
    :cond_10
    cmp-long v5, v0, v2

    if-ltz v5, :cond_17

    .line 188
    const/4 v5, 0x0

    monitor-exit v4
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_2d

    return v5

    .line 191
    :cond_17
    :try_start_17
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_2d

    .line 194
    goto :goto_27

    .line 192
    :catch_1f
    move-exception v5

    .line 193
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_20
    const-string v6, "VibrationThread"

    const-string v7, "VibrationThread interrupted waiting to stop, continuing"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-wide v0, v5

    goto :goto_9

    .line 197
    :catchall_2d
    move-exception v5

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_2d

    throw v5
.end method
