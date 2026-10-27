.class public final Lcom/android/server/vibrator/VendorVibrationSession;
.super Landroid/os/vibrator/IVibrationSession$Stub;
.source "VendorVibrationSession.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSession;
.implements Landroid/os/CancellationSignal$OnCancelListener;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

.field public final mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

.field public final mCancellationSignal:Landroid/os/ICancellationSignal;

.field public mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

.field public final mCreateTime:J

.field public final mCreateUptime:J

.field public final mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

.field public mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

.field public mEndTime:J

.field public mEndUptime:J

.field public mEndedByVendor:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mManagerHooks:Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;

.field public final mSessionId:J

.field public mStartTime:J

.field public mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

.field public final mVibrations:Ljava/util/List;

.field public final mVibratorIds:[I


# direct methods
.method public static synthetic $r8$lambda$78TjSb2_FhS6sp1cocyHsPZXfZA(Lcom/android/server/vibrator/VendorVibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VendorVibrationSession;->lambda$notifySessionCallback$0(Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f9RRA3cYCdyJ3XVf10yBdu8rqz4(Lcom/android/server/vibrator/VendorVibrationSession;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->lambda$notifyStart$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$gw-uv4r3BzWmx_x5j7utc0ENh5U(Lcom/android/server/vibrator/VendorVibrationSession;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VendorVibrationSession;->lambda$requestEndSession$2(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 56
    const-string v0, "VendorVibrationSession"

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorDebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/Handler;Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;Lcom/android/server/vibrator/DeviceAdapter;Landroid/os/vibrator/IVibrationSessionCallback;)V
    .registers 9

    .line 104
    invoke-direct {p0}, Landroid/os/vibrator/IVibrationSession$Stub;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    .line 75
    invoke-static {}, Lcom/android/server/vibrator/VibrationSession;->nextSessionId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    .line 76
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCancellationSignal:Landroid/os/ICancellationSignal;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    .line 87
    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->RUNNING:Lcom/android/server/vibrator/VibrationSession$Status;

    iput-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCreateUptime:J

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCreateTime:J

    .line 107
    invoke-virtual {p4}, Lcom/android/server/vibrator/DeviceAdapter;->getAvailableVibratorIds()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibratorIds:[I

    .line 108
    iput-object p2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v1, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    invoke-direct {v1, p5, p2}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;-><init>(Landroid/os/vibrator/IVibrationSessionCallback;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    .line 110
    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    .line 111
    iput-object p3, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;

    .line 112
    iput-object p4, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    .line 113
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 195
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 196
    const-string v0, "VendorVibrationSession"

    const-string v1, "Session binder died, aborting vibration session..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_b
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/vibrator/VendorVibrationSession;->requestEndSession(Lcom/android/server/vibrator/VibrationSession$Status;ZZ)V

    return-void
.end method

.method public cancelSession()V
    .registers 3

    .line 135
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 136
    const-string v0, "VendorVibrationSession"

    const-string v1, "Session cancel requested, aborting vibration session..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_b
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/vibrator/VendorVibrationSession;->requestEndSession(Lcom/android/server/vibrator/VibrationSession$Status;ZZ)V

    return-void
.end method

.method public clearVibrationConductor()Lcom/android/server/vibrator/VibrationStepConductor;
    .registers 5

    .line 333
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v1, :cond_17

    .line 336
    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/vibrator/HalVibration;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_1c

    :cond_17
    :goto_17
    const/4 v2, 0x0

    .line 338
    iput-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 339
    monitor-exit v0

    return-object v1

    .line 340
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_15

    throw p0
.end method

.method public finishSession()V
    .registers 4

    .line 125
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 126
    const-string v0, "VendorVibrationSession"

    const-string v1, "Session finish requested, ending vibration session..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_b
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/vibrator/VendorVibrationSession;->requestEndSession(Lcom/android/server/vibrator/VibrationSession$Status;ZZ)V

    return-void
.end method

.method public getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    return-object p0
.end method

.method public getCallerToken()Landroid/os/IBinder;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->getBinderToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getCancellationSignal()Landroid/os/ICancellationSignal;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCancellationSignal:Landroid/os/ICancellationSignal;

    return-object p0
.end method

.method public getCreateUptimeMillis()J
    .registers 3

    .line 151
    iget-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCreateUptime:J

    return-wide v0
.end method

.method public getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    .registers 18

    move-object/from16 v0, p0

    .line 171
    iget-object v1, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_5
    new-instance v2, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;

    iget-object v3, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v4, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-wide v5, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mCreateUptime:J

    iget-wide v7, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mCreateTime:J

    iget-wide v9, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mStartTime:J

    iget-wide v11, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndUptime:J

    iget-wide v13, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndTime:J

    iget-boolean v15, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndedByVendor:Z

    iget-object v0, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;JJJJJZLjava/util/List;)V

    monitor-exit v1

    return-object v2

    :catchall_20
    move-exception v0

    .line 174
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public getDeviceAdapter()Lcom/android/server/vibrator/DeviceAdapter;
    .registers 1

    .line 344
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    return-object p0
.end method

.method public getSessionId()J
    .registers 3

    .line 146
    iget-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    return-wide v0
.end method

.method public getStatus()Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 275
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getVibrations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationSession$DebugInfo;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 298
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getVibratorIds()[I
    .registers 1

    .line 291
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibratorIds:[I

    return-object p0
.end method

.method public isEnded()Z
    .registers 6

    .line 285
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndTime:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 287
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public isRepeating()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isStarted()Z
    .registers 6

    .line 279
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStartTime:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 281
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final synthetic lambda$notifySessionCallback$0(Lcom/android/server/vibrator/VibrationSession$Status;)V
    .registers 5

    .line 250
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;->onSessionReleased(J)V

    .line 252
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->notifyFinished(Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void
.end method

.method public final synthetic lambda$notifyStart$1()V
    .registers 4

    .line 323
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    const/4 p0, 0x1

    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;->endSession(JZ)V

    return-void
.end method

.method public final synthetic lambda$requestEndSession$2(Z)V
    .registers 5

    .line 374
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;->endSession(JZ)V

    return-void
.end method

.method public linkToDeath()Z
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)Z

    move-result p0

    return p0
.end method

.method public final maybeSetStatusToRequestedLocked()V
    .registers 3

    .line 407
    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_b

    .line 411
    :cond_7
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

    if-nez v0, :cond_c

    :goto_b
    return-void

    .line 415
    :cond_c
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session end request applied for status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VendorVibrationSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_28
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

    iput-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndTime:J

    .line 420
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndUptime:J

    return-void
.end method

.method public maybeSetVibrationConductor(Lcom/android/server/vibrator/VibrationStepConductor;)Z
    .registers 6

    .line 348
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v1, :cond_32

    .line 350
    sget-boolean p0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz p0, :cond_2f

    .line 351
    const-string p0, "VendorVibrationSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session still dispatching previous vibration, new vibration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object p1

    iget-wide v2, p1, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ignored"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :catchall_2d
    move-exception p0

    goto :goto_37

    :cond_2f
    :goto_2f
    const/4 p0, 0x0

    .line 354
    monitor-exit v0

    return p0

    .line 356
    :cond_32
    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    const/4 p0, 0x1

    .line 357
    monitor-exit v0

    return p0

    .line 358
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_2d

    throw p0
.end method

.method public final notifyEndRequestLocked(Lcom/android/server/vibrator/VibrationSession$Status;Z)V
    .registers 5

    .line 386
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

    if-eqz v0, :cond_5

    goto :goto_42

    .line 390
    :cond_5
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session end request accepted for status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VendorVibrationSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_1f
    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 394
    iput-boolean p2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndedByVendor:Z

    .line 395
    iget-object p2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    invoke-virtual {p2}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->notifyFinishing()V

    .line 396
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz p0, :cond_42

    .line 397
    sget-object p2, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_33

    move p2, v0

    goto :goto_34

    :cond_33
    const/4 p2, 0x0

    .line 399
    :goto_34
    new-instance v1, Lcom/android/server/vibrator/Vibration$EndInfo;

    if-eqz p2, :cond_3a

    .line 400
    sget-object p1, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    :cond_3a
    invoke-direct {v1, p1}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;)V

    xor-int/lit8 p1, p2, 0x1

    .line 399
    invoke-virtual {p0, v1, p1}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    :cond_42
    :goto_42
    return-void
.end method

.method public notifySessionCallback()V
    .registers 5

    .line 239
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 240
    const-string v0, "VendorVibrationSession"

    const-string v1, "Session callback received, ending vibration session..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_b
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_e
    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/vibrator/VendorVibrationSession;->notifyEndRequestLocked(Lcom/android/server/vibrator/VibrationSession$Status;Z)V

    .line 246
    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->maybeSetStatusToRequestedLocked()V

    .line 247
    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->clearVibrationConductor()Lcom/android/server/vibrator/VibrationStepConductor;

    .line 248
    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 249
    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/vibrator/VendorVibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public notifyStart()V
    .registers 4

    .line 307
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->isEnded()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_25

    .line 312
    :cond_b
    sget-boolean v1, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v1, :cond_19

    .line 313
    const-string v1, "VendorVibrationSession"

    const-string v2, "Session started at the HAL"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_3e

    .line 315
    :cond_19
    :goto_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStartTime:J

    .line 316
    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    invoke-virtual {v1, p0}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->notifyStarted(Landroid/os/vibrator/IVibrationSession;)V

    const/4 v1, 0x0

    .line 318
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_17

    if-eqz v1, :cond_3d

    .line 320
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_33

    .line 321
    const-string v0, "VendorVibrationSession"

    const-string v1, "Session already ended after starting the HAL, aborting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_33
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vibrator/VendorVibrationSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3d
    return-void

    .line 318
    :goto_3e
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_17

    throw p0
.end method

.method public notifySyncedVibratorsCallback(J)V
    .registers 4

    .line 231
    sget-boolean p0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz p0, :cond_1f

    .line 232
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Synced vibration callback received for vibration "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VendorVibrationSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public notifyVibrationAttempt(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V
    .registers 2

    .line 328
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyVibratorCallback(IJJ)V
    .registers 7

    .line 223
    sget-boolean p0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz p0, :cond_2f

    .line 224
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Vibration callback received for vibration "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " step "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " on vibrator "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VendorVibrationSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-void
.end method

.method public onCancel()V
    .registers 3

    .line 186
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 187
    const-string v0, "VendorVibrationSession"

    const-string v1, "Session cancellation signal received, aborting vibration session..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_b
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/vibrator/VendorVibrationSession;->requestEndSession(Lcom/android/server/vibrator/VibrationSession$Status;ZZ)V

    return-void
.end method

.method public requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V
    .registers 4

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 218
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/VendorVibrationSession;->requestEndSession(Lcom/android/server/vibrator/VibrationSession$Status;ZZ)V

    return-void
.end method

.method public final requestEndSession(Lcom/android/server/vibrator/VibrationSession$Status;ZZ)V
    .registers 8

    .line 362
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 363
    const-string v1, "VendorVibrationSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session end request received with status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1a
    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_1d
    invoke-virtual {p0, p1, p3}, Lcom/android/server/vibrator/VendorVibrationSession;->notifyEndRequestLocked(Lcom/android/server/vibrator/VibrationSession$Status;Z)V

    .line 367
    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->isEnded()Z

    move-result p1

    if-nez p1, :cond_52

    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_52

    if-eqz v0, :cond_47

    .line 372
    const-string p1, "VendorVibrationSession"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requesting HAL session end with abort="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :catchall_45
    move-exception p0

    goto :goto_5e

    .line 374
    :cond_47
    :goto_47
    iget-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VendorVibrationSession;Z)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5c

    .line 377
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->maybeSetStatusToRequestedLocked()V

    .line 379
    iget-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p1, p0}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->notifyFinished(Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 381
    :goto_5c
    monitor-exit v1

    return-void

    :goto_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_1d .. :try_end_5f} :catchall_45

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 259
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCreateTime:J

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", startTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-wide v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    const/4 v8, 0x0

    if-nez v7, :cond_27

    move-object v2, v8

    goto :goto_2b

    :cond_27
    invoke-static {v2, v3, v4}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v2

    :goto_2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", endTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-wide v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndTime:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_3a

    goto :goto_3e

    :cond_3a
    invoke-static {v2, v3, v4}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v8

    :goto_3e
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 265
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", callerInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", vibratorIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibratorIds:[I

    .line 267
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", vibrations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_7d
    move-exception p0

    .line 269
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_3 .. :try_end_7f} :catchall_7d

    throw p0
.end method

.method public unlinkToDeath()V
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public vibrate(Landroid/os/CombinedVibration;Ljava/lang/String;)V
    .registers 9

    .line 118
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-object v2, v1

    iget-object v1, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    move-object v3, v2

    iget v2, v3, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    move-object v4, v3

    iget v3, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->deviceId:I

    iget-object v4, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    invoke-interface {p2, v1, v2, v0, p1}, Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;->vibrate(JLcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;)V

    return-void
.end method

.method public wasEndRequested()Z
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

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

    .line 181
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method
