.class final Lcom/android/server/vibrator/VibratorController;
.super Ljava/lang/Object;
.source "VibratorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibratorController$NativeWrapper;,
        Lcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VibratorController"


# instance fields
.field private volatile mCurrentAmplitude:F

.field private volatile mIsUnderExternalControl:Z

.field private volatile mIsVibrating:Z

.field private final mLock:Ljava/lang/Object;

.field private final mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

.field private volatile mVibratorInfo:Landroid/os/VibratorInfo;

.field private volatile mVibratorInfoLoadSuccessful:Z

.field private final mVibratorStateListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V
    .registers 4
    .param p1, "vibratorId"    # I
    .param p2, "listener"    # Lcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;

    .line 66
    new-instance v0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-direct {v0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/vibrator/VibratorController;-><init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;Lcom/android/server/vibrator/VibratorController$NativeWrapper;)V

    .line 67
    return-void
.end method

.method constructor <init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;Lcom/android/server/vibrator/VibratorController$NativeWrapper;)V
    .registers 7
    .param p1, "vibratorId"    # I
    .param p2, "listener"    # Lcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;
    .param p3, "nativeWrapper"    # Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 47
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 72
    iput-object p3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 73
    invoke-virtual {p3, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->init(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V

    .line 74
    new-instance v0, Landroid/os/VibratorInfo$Builder;

    invoke-direct {v0, p1}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    .line 75
    .local v0, "vibratorInfoBuilder":Landroid/os/VibratorInfo$Builder;
    invoke-virtual {p3, v0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(Landroid/os/VibratorInfo$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 76
    invoke-virtual {v0}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 78
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-nez v1, :cond_43

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibrator controller initialization failed to load some HAL info for vibrator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_43
    return-void
.end method

.method private notifyListenerOnVibrating(Z)V
    .registers 4
    .param p1, "isVibrating"    # Z

    .line 356
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    if-eq v0, p1, :cond_10

    .line 357
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    .line 360
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 363
    :cond_10
    return-void
.end method

.method private notifyStateListener(Landroid/os/IVibratorStateListener;Z)V
    .registers 6
    .param p1, "listener"    # Landroid/os/IVibratorStateListener;
    .param p2, "isVibrating"    # Z

    .line 367
    :try_start_0
    invoke-interface {p1, p2}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 370
    goto :goto_c

    .line 368
    :catch_4
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VibratorController"

    const-string v2, "Vibrator state listener failed to call"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method


# virtual methods
.method public getCurrentAmplitude()F
    .registers 2

    .line 166
    iget v0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    return v0
.end method

.method public getVibratorInfo()Landroid/os/VibratorInfo;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    return-object v0
.end method

.method public hasCapability(J)Z
    .registers 4
    .param p1, "capability"    # J

    .line 181
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0, p1, p2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .registers 3

    .line 186
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->isAvailable()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 188
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isUnderExternalControl()Z
    .registers 2

    .line 171
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mIsUnderExternalControl:Z

    return v0
.end method

.method public isVibrating()Z
    .registers 2

    .line 151
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    return v0
.end method

.method isVibratorInfoLoadSuccessful()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    return v0
.end method

.method synthetic lambda$notifyListenerOnVibrating$0$com-android-server-vibrator-VibratorController(ZLandroid/os/IVibratorStateListener;)V
    .registers 3
    .param p1, "isVibrating"    # Z
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;

    .line 361
    invoke-direct {p0, p2, p1}, Lcom/android/server/vibrator/VibratorController;->notifyStateListener(Landroid/os/IVibratorStateListener;Z)V

    return-void
.end method

.method public off()V
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->off()V

    .line 327
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 328
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 329
    monitor-exit v0

    .line 330
    return-void

    .line 329
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public on(JJ)J
    .registers 10
    .param p1, "milliseconds"    # J
    .param p3, "vibrationId"    # J

    .line 246
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->on(JJ)J

    move-result-wide v1

    .line 248
    .local v1, "duration":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_17

    .line 249
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 250
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 252
    :cond_17
    monitor-exit v0

    return-wide v1

    .line 253
    .end local v1    # "duration":J
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public on(Landroid/os/vibrator/PrebakedSegment;J)J
    .registers 12
    .param p1, "prebaked"    # Landroid/os/vibrator/PrebakedSegment;
    .param p2, "vibrationId"    # J

    .line 266
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p1}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v2

    int-to-long v2, v2

    .line 268
    invoke-virtual {p1}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result v4

    int-to-long v4, v4

    .line 267
    move-wide v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->perform(JJJ)J

    move-result-wide v1

    .line 269
    .local v1, "duration":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_22

    .line 270
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 271
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 273
    :cond_22
    monitor-exit v0

    return-wide v1

    .line 274
    .end local v1    # "duration":J
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public on([Landroid/os/vibrator/PrimitiveSegment;J)J
    .registers 9
    .param p1, "primitives"    # [Landroid/os/vibrator/PrimitiveSegment;
    .param p2, "vibrationId"    # J

    .line 287
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_d

    .line 288
    return-wide v1

    .line 290
    :cond_d
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_10
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->compose([Landroid/os/vibrator/PrimitiveSegment;J)J

    move-result-wide v3

    .line 292
    .local v3, "duration":J
    cmp-long v1, v3, v1

    if-lez v1, :cond_22

    .line 293
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 294
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 296
    :cond_22
    monitor-exit v0

    return-wide v3

    .line 297
    .end local v3    # "duration":J
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public on([Landroid/os/vibrator/RampSegment;J)J
    .registers 10
    .param p1, "primitives"    # [Landroid/os/vibrator/RampSegment;
    .param p2, "vibrationId"    # J

    .line 309
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_d

    .line 310
    return-wide v1

    .line 312
    :cond_d
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_10
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getDefaultBraking()I

    move-result v3

    .line 314
    .local v3, "braking":I
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v4, p1, v3, p2, p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->composePwle([Landroid/os/vibrator/RampSegment;IJ)J

    move-result-wide v4

    .line 315
    .local v4, "duration":J
    cmp-long v1, v4, v1

    if-lez v1, :cond_28

    .line 316
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 317
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 319
    :cond_28
    monitor-exit v0

    return-wide v4

    .line 320
    .end local v3    # "braking":I
    .end local v4    # "duration":J
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public registerVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .registers 6
    .param p1, "listener"    # Landroid/os/IVibratorStateListener;

    .line 87
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 91
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_23

    .line 92
    :try_start_7
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 93
    const/4 v3, 0x0

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_20

    .line 100
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    return v3

    .line 96
    :cond_15
    :try_start_15
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    invoke-direct {p0, p1, v3}, Lcom/android/server/vibrator/VibratorController;->notifyStateListener(Landroid/os/IVibratorStateListener;Z)V

    .line 97
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_20

    .line 98
    const/4 v2, 0x1

    .line 100
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    return v2

    .line 97
    :catchall_20
    move-exception v3

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .end local p1    # "listener":Landroid/os/IVibratorStateListener;
    :try_start_22
    throw v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    .line 100
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .restart local p1    # "listener":Landroid/os/IVibratorStateListener;
    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    throw v2
.end method

.method public reloadVibratorInfoIfNeeded()V
    .registers 7

    .line 117
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-eqz v0, :cond_5

    .line 118
    return-void

    .line 120
    :cond_5
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_8
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-eqz v1, :cond_e

    .line 122
    monitor-exit v0

    return-void

    .line 124
    :cond_e
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    .line 125
    .local v1, "vibratorId":I
    new-instance v2, Landroid/os/VibratorInfo$Builder;

    invoke-direct {v2, v1}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    .line 126
    .local v2, "vibratorInfoBuilder":Landroid/os/VibratorInfo$Builder;
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v3, v2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(Landroid/os/VibratorInfo$Builder;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 127
    invoke-virtual {v2}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 128
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-nez v3, :cond_43

    .line 129
    const-string v3, "VibratorController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed retry of HAL getInfo for vibrator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v1    # "vibratorId":I
    .end local v2    # "vibratorInfoBuilder":Landroid/os/VibratorInfo$Builder;
    :cond_43
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public reset()V
    .registers 2

    .line 337
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorController;->setExternalControl(Z)V

    .line 338
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->off()V

    .line 339
    return-void
.end method

.method public setAmplitude(F)V
    .registers 6
    .param p1, "amplitude"    # F

    .line 226
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 228
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setAmplitude(F)V

    .line 230
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    if-eqz v1, :cond_18

    .line 231
    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 233
    :cond_18
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public setExternalControl(Z)V
    .registers 5
    .param p1, "externalControl"    # Z

    .line 197
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-nez v0, :cond_b

    .line 198
    return-void

    .line 200
    :cond_b
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_e
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibratorController;->mIsUnderExternalControl:Z

    .line 202
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setExternalControl(Z)V

    .line 203
    monitor-exit v0

    .line 204
    return-void

    .line 203
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_17

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibratorController{mVibratorInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVibratorInfoLoadSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsVibrating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCurrentAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsUnderExternalControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mIsUnderExternalControl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVibratorStateListeners count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 350
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    return-object v0
.end method

.method public unregisterVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .registers 5
    .param p1, "listener"    # Landroid/os/IVibratorStateListener;

    .line 106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 108
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 110
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    return v2

    .line 110
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    throw v2
.end method

.method public updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V
    .registers 12
    .param p1, "id"    # I
    .param p2, "prebaked"    # Landroid/os/vibrator/PrebakedSegment;

    .line 211
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-nez v0, :cond_b

    .line 212
    return-void

    .line 214
    :cond_b
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    if-nez p2, :cond_17

    .line 216
    :try_start_10
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnDisable(J)V

    goto :goto_27

    .line 218
    :cond_17
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    int-to-long v3, p1

    invoke-virtual {p2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v1

    int-to-long v5, v1

    .line 219
    invoke-virtual {p2}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result v1

    int-to-long v7, v1

    .line 218
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnEnable(JJJ)V

    .line 221
    :goto_27
    monitor-exit v0

    .line 222
    return-void

    .line 221
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    throw v1
.end method
