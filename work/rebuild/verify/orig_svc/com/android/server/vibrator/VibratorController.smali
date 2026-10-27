.class public final Lcom/android/server/vibrator/VibratorController;
.super Ljava/lang/Object;
.source "VibratorController.java"

# interfaces
.implements Lcom/android/server/vibrator/HalVibrator;


# instance fields
.field public volatile mCurrentAmplitude:F

.field public volatile mCurrentState:Lcom/android/server/vibrator/HalVibrator$State;

.field public final mLock:Ljava/lang/Object;

.field public final mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

.field public volatile mVibratorInfo:Landroid/os/VibratorInfo;

.field public volatile mVibratorInfoLoadSuccessful:Z

.field public final mVibratorStateListeners:Landroid/os/RemoteCallbackList;


# direct methods
.method public static synthetic $r8$lambda$SXJ48rSkhfxUkD7g1Dv0zSk83NY(Lcom/android/server/vibrator/VibratorController;ZLandroid/os/IVibratorStateListener;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController;->lambda$updateStateAndNotifyListenersLocked$0(ZLandroid/os/IVibratorStateListener;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 67
    new-instance v0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-direct {v0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/vibrator/VibratorController;-><init>(ILcom/android/server/vibrator/VibratorController$NativeWrapper;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/server/vibrator/VibratorController$NativeWrapper;)V
    .registers 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 71
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 72
    new-instance p2, Landroid/os/VibratorInfo$Builder;

    invoke-direct {p2, p1}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    invoke-virtual {p2}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 73
    sget-object p1, Lcom/android/server/vibrator/HalVibrator$State;->IDLE:Lcom/android/server/vibrator/HalVibrator$State;

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/HalVibrator$State;

    return-void
.end method

.method public static isVibrating(Lcom/android/server/vibrator/HalVibrator$State;)Z
    .registers 2

    .line 423
    sget-object v0, Lcom/android/server/vibrator/HalVibrator$State;->IDLE:Lcom/android/server/vibrator/HalVibrator$State;

    if-eq p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vibrator (id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/HalVibrator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentAmplitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vibratorInfoLoadSuccessful = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vibratorStateListener size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 384
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 385
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {p0, p1}, Landroid/os/VibratorInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 386
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getCurrentAmplitude()F
    .registers 1

    .line 171
    iget p0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    return p0
.end method

.method public getInfo()Landroid/os/VibratorInfo;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    return-object p0
.end method

.method public init(Lcom/android/server/vibrator/HalVibrator$Callbacks;)V
    .registers 7

    .line 78
    const-string v0, "HalVibrator.init"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 80
    :try_start_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getId()I

    move-result v0

    .line 81
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v3, v0, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->init(ILcom/android/server/vibrator/HalVibrator$Callbacks;)V

    .line 83
    new-instance p1, Landroid/os/VibratorInfo$Builder;

    invoke-direct {p1, v0}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    .line 84
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v3, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(Landroid/os/VibratorInfo$Builder;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 85
    invoke-virtual {p1}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 86
    iget-boolean p1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-nez p1, :cond_43

    .line 87
    const-string p1, "VibratorController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Init failed to load some HAL info for vibrator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :catchall_41
    move-exception p0

    goto :goto_4e

    :cond_43
    :goto_43
    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController;->setExternalControl(Z)Z

    .line 93
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->off()Z
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_41

    .line 95
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_4e
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 96
    throw p0
.end method

.method public isVibrating()Z
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/HalVibrator$State;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorController;->isVibrating(Lcom/android/server/vibrator/HalVibrator$State;)Z

    move-result p0

    return p0
.end method

.method public isVibratorInfoLoadSuccessful()Z
    .registers 1

    .line 155
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    return p0
.end method

.method public final synthetic lambda$updateStateAndNotifyListenersLocked$0(ZLandroid/os/IVibratorStateListener;)V
    .registers 3

    .line 409
    invoke-virtual {p0, p2, p1}, Lcom/android/server/vibrator/VibratorController;->notifyStateListener(Landroid/os/IVibratorStateListener;Z)V

    return-void
.end method

.method public final notifyStateListener(Landroid/os/IVibratorStateListener;Z)V
    .registers 3

    .line 415
    :try_start_0
    invoke-interface {p1, p2}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 417
    const-string p1, "VibratorController"

    const-string p2, "Vibrator state listener failed to call"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public off()Z
    .registers 5

    .line 352
    const-string v0, "HalVibrator.off"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 354
    :try_start_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_1e

    .line 355
    :try_start_b
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->off()V

    .line 356
    sget-object v3, Lcom/android/server/vibrator/HalVibrator$State;->IDLE:Lcom/android/server/vibrator/HalVibrator$State;

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/HalVibrator$State;)V

    .line 357
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_1b

    .line 360
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :catchall_1b
    move-exception p0

    .line 357
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    .line 360
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 361
    throw p0
.end method

.method public on(JJJ)J
    .registers 18

    .line 238
    const-string v0, "HalVibrator.onMillis"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 240
    :try_start_8
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_2b

    .line 241
    :try_start_b
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-wide v7, p1

    move-wide v9, p3

    move-wide/from16 v5, p5

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->on(JJJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-lez p3, :cond_24

    .line 243
    sget-object p3, Lcom/android/server/vibrator/HalVibrator$State;->VIBRATING:Lcom/android/server/vibrator/HalVibrator$State;

    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/HalVibrator$State;)V

    goto :goto_24

    :catchall_21
    move-exception v0

    move-object p0, v0

    goto :goto_29

    .line 245
    :cond_24
    :goto_24
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_21

    .line 248
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide p1

    .line 246
    :goto_29
    :try_start_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_21

    :try_start_2a
    throw p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    move-object p0, v0

    .line 248
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 249
    throw p0
.end method

.method public on(JJLandroid/os/VibrationEffect$VendorEffect;)J
    .registers 20

    .line 254
    const-string v0, "HalVibrator.onVendor"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 256
    :try_start_b
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_47

    .line 258
    :try_start_f
    invoke-virtual/range {p5 .. p5}, Landroid/os/VibrationEffect$VendorEffect;->getVendorData()Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 259
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 260
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 261
    invoke-virtual/range {p5 .. p5}, Landroid/os/VibrationEffect$VendorEffect;->getEffectStrength()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual/range {p5 .. p5}, Landroid/os/VibrationEffect$VendorEffect;->getScale()F

    move-result v8

    .line 262
    invoke-virtual/range {p5 .. p5}, Landroid/os/VibrationEffect$VendorEffect;->getAdaptiveScale()F

    move-result v9

    move-wide v10, p1

    move-wide/from16 v12, p3

    .line 260
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performVendorEffect(Landroid/os/Parcel;JFFJJ)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_3f

    .line 264
    sget-object v0, Lcom/android/server/vibrator/HalVibrator$State;->VIBRATING:Lcom/android/server/vibrator/HalVibrator$State;

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/HalVibrator$State;)V
    :try_end_3b
    .catchall {:try_start_f .. :try_end_3b} :catchall_3c

    goto :goto_3f

    :catchall_3c
    move-exception v0

    move-object p0, v0

    goto :goto_4a

    .line 268
    :cond_3f
    :goto_3f
    :try_start_3f
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 269
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3

    return-wide v6

    :catchall_47
    move-exception v0

    move-object p0, v0

    goto :goto_51

    .line 268
    :goto_4a
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 269
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 270
    throw p0

    .line 271
    :goto_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_3f .. :try_end_52} :catchall_47

    throw p0
.end method

.method public on(JJLandroid/os/vibrator/PrebakedSegment;)J
    .registers 19

    .line 276
    const-string v0, "HalVibrator.onPrebaked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 278
    :try_start_8
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_34

    .line 279
    :try_start_b
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual/range {p5 .. p5}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v0

    int-to-long v5, v0

    .line 280
    invoke-virtual/range {p5 .. p5}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result v0

    int-to-long v7, v0

    move-wide v9, p1

    move-wide/from16 v11, p3

    .line 279
    invoke-virtual/range {v4 .. v12}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->perform(JJJJ)J

    move-result-wide p1

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-lez v0, :cond_2d

    .line 282
    sget-object v0, Lcom/android/server/vibrator/HalVibrator$State;->VIBRATING:Lcom/android/server/vibrator/HalVibrator$State;

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/HalVibrator$State;)V

    goto :goto_2d

    :catchall_2a
    move-exception v0

    move-object p0, v0

    goto :goto_32

    .line 284
    :cond_2d
    :goto_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2a

    .line 287
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide p1

    .line 285
    :goto_32
    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2a

    :try_start_33
    throw p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v0

    move-object p0, v0

    .line 287
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 288
    throw p0
.end method

.method public on(JJ[Landroid/os/vibrator/PrimitiveSegment;)J
    .registers 18

    .line 293
    const-string v0, "HalVibrator.onPrimitives"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 295
    :try_start_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x20

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_39

    const-wide/16 v3, 0x0

    if-nez v0, :cond_18

    .line 306
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v3

    .line 298
    :cond_18
    :try_start_18
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_39

    .line 299
    :try_start_1b
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-wide v8, p1

    move-wide v10, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->compose([Landroid/os/vibrator/PrimitiveSegment;JJ)J

    move-result-wide p1

    cmp-long v0, p1, v3

    if-lez v0, :cond_32

    .line 301
    sget-object v0, Lcom/android/server/vibrator/HalVibrator$State;->VIBRATING:Lcom/android/server/vibrator/HalVibrator$State;

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/HalVibrator$State;)V

    goto :goto_32

    :catchall_2f
    move-exception v0

    move-object p0, v0

    goto :goto_37

    .line 303
    :cond_32
    :goto_32
    monitor-exit v5
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_2f

    .line 306
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide p1

    .line 304
    :goto_37
    :try_start_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_2f

    :try_start_38
    throw p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v0

    move-object p0, v0

    .line 306
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 307
    throw p0
.end method

.method public on(JJ[Landroid/os/vibrator/PwlePoint;)J
    .registers 18

    .line 333
    const-string v0, "HalVibrator.onPwleV2"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 335
    :try_start_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x1000

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_39

    const-wide/16 v3, 0x0

    if-nez v0, :cond_18

    .line 346
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v3

    .line 338
    :cond_18
    :try_start_18
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_39

    .line 339
    :try_start_1b
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-wide v8, p1

    move-wide v10, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->composePwleV2([Landroid/os/vibrator/PwlePoint;JJ)J

    move-result-wide p1

    cmp-long v0, p1, v3

    if-lez v0, :cond_32

    .line 341
    sget-object v0, Lcom/android/server/vibrator/HalVibrator$State;->VIBRATING:Lcom/android/server/vibrator/HalVibrator$State;

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/HalVibrator$State;)V

    goto :goto_32

    :catchall_2f
    move-exception v0

    move-object p0, v0

    goto :goto_37

    .line 343
    :cond_32
    :goto_32
    monitor-exit v5
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_2f

    .line 346
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide p1

    .line 344
    :goto_37
    :try_start_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_2f

    :try_start_38
    throw p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v0

    move-object p0, v0

    .line 346
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 347
    throw p0
.end method

.method public on(JJ[Landroid/os/vibrator/RampSegment;)J
    .registers 19

    .line 312
    const-string v0, "HalVibrator.onPwleV1"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 314
    :try_start_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x400

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_40

    const-wide/16 v3, 0x0

    if-nez v0, :cond_18

    .line 327
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v3

    .line 317
    :cond_18
    :try_start_18
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_40

    .line 318
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getDefaultBraking()I

    move-result v8

    .line 319
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-wide v9, p1

    move-wide/from16 v11, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->composePwle([Landroid/os/vibrator/RampSegment;IJJ)J

    move-result-wide v6

    cmp-long v0, v6, v3

    if-lez v0, :cond_39

    .line 322
    sget-object v0, Lcom/android/server/vibrator/HalVibrator$State;->VIBRATING:Lcom/android/server/vibrator/HalVibrator$State;

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/HalVibrator$State;)V

    goto :goto_39

    :catchall_36
    move-exception v0

    move-object p0, v0

    goto :goto_3e

    .line 324
    :cond_39
    :goto_39
    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_36

    .line 327
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v6

    .line 325
    :goto_3e
    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_36

    :try_start_3f
    throw p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    move-object p0, v0

    .line 327
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 328
    throw p0
.end method

.method public onSystemReady()V
    .registers 7

    .line 101
    const-string v0, "HalVibrator.onSystemReady"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 104
    :try_start_8
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_58

    if-eqz v0, :cond_10

    .line 120
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 107
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_58

    .line 108
    :try_start_13
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-eqz v3, :cond_1e

    .line 109
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    .line 120
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_56

    .line 111
    :cond_1e
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getId()I

    move-result v3

    .line 112
    new-instance v4, Landroid/os/VibratorInfo$Builder;

    invoke-direct {v4, v3}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    .line 113
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v5, v4}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(Landroid/os/VibratorInfo$Builder;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 114
    invoke-virtual {v4}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 115
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-nez p0, :cond_51

    .line 116
    const-string p0, "VibratorController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed retry of HAL getInfo for vibrator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_1e .. :try_end_52} :catchall_1c

    .line 120
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 118
    :goto_56
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_1c

    :try_start_57
    throw p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception p0

    .line 120
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 121
    throw p0
.end method

.method public registerVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .registers 6

    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 130
    :try_start_4
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_28

    .line 131
    :try_start_7
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 132
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .line 139
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_15
    move-exception p0

    goto :goto_26

    .line 135
    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/HalVibrator$State;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorController;->isVibrating(Lcom/android/server/vibrator/HalVibrator$State;)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/vibrator/VibratorController;->notifyStateListener(Landroid/os/IVibratorStateListener;Z)V

    .line 136
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_15

    .line 139
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    .line 136
    :goto_26
    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_15

    :try_start_27
    throw p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p0

    .line 139
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    throw p0
.end method

.method public setAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)Z
    .registers 14

    if-eqz p2, :cond_5

    .line 197
    const-string v0, "HalVibrator.enableAlwaysOn"

    goto :goto_7

    :cond_5
    const-string v0, "HalVibrator.disableAlwaysOn"

    :goto_7
    const-wide/32 v1, 0x800000

    .line 196
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 199
    :try_start_d
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x40

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_43

    if-nez v0, :cond_1c

    .line 212
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0

    .line 202
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_43

    if-nez p2, :cond_2b

    .line 204
    :try_start_21
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnDisable(J)V

    goto :goto_3b

    :catchall_28
    move-exception v0

    move-object p0, v0

    goto :goto_41

    .line 206
    :cond_2b
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    int-to-long v5, p1

    invoke-virtual {p2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result p0

    int-to-long v7, p0

    .line 207
    invoke-virtual {p2}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result p0

    int-to-long v9, p0

    .line 206
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnEnable(JJJ)V

    .line 209
    :goto_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_21 .. :try_end_3c} :catchall_28

    .line 212
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    .line 209
    :goto_41
    :try_start_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_28

    :try_start_42
    throw p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v0

    move-object p0, v0

    .line 212
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 213
    throw p0
.end method

.method public setAmplitude(F)Z
    .registers 8

    .line 218
    const-string v0, "HalVibrator.setAmplitude"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 221
    :try_start_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_2e

    .line 222
    :try_start_b
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v4, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 223
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v3, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setAmplitude(F)V

    const/4 v3, 0x1

    goto :goto_1f

    :catchall_1c
    move-exception p0

    goto :goto_2c

    :cond_1e
    const/4 v3, 0x0

    .line 226
    :goto_1f
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/HalVibrator$State;

    sget-object v5, Lcom/android/server/vibrator/HalVibrator$State;->VIBRATING:Lcom/android/server/vibrator/HalVibrator$State;

    if-ne v4, v5, :cond_27

    .line 227
    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 229
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_1c

    .line 232
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    .line 229
    :goto_2c
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_1c

    :try_start_2d
    throw p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 232
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 233
    throw p0
.end method

.method public setExternalControl(Z)Z
    .registers 7

    if-eqz p1, :cond_5

    .line 177
    const-string v0, "HalVibrator.enableExternalControl"

    goto :goto_7

    .line 178
    :cond_5
    const-string v0, "HalVibrator.disableExternalControl"

    :goto_7
    const-wide/32 v1, 0x800000

    .line 176
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 180
    :try_start_d
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x8

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_21

    if-nez v0, :cond_1c

    .line 190
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0

    :cond_1c
    if-eqz p1, :cond_23

    .line 183
    :try_start_1e
    sget-object v0, Lcom/android/server/vibrator/HalVibrator$State;->UNDER_EXTERNAL_CONTROL:Lcom/android/server/vibrator/HalVibrator$State;

    goto :goto_25

    :catchall_21
    move-exception p0

    goto :goto_39

    :cond_23
    sget-object v0, Lcom/android/server/vibrator/HalVibrator$State;->IDLE:Lcom/android/server/vibrator/HalVibrator$State;

    .line 184
    :goto_25
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_21

    .line 185
    :try_start_28
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v4, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setExternalControl(Z)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/HalVibrator$State;)V

    .line 187
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_36

    .line 190
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :catchall_36
    move-exception p0

    .line 187
    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_21

    .line 190
    :goto_39
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 191
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibratorController{mVibratorInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mVibratorInfoLoadSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/HalVibrator$State;

    .line 369
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mVibratorStateListeners count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 372
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .registers 4

    .line 145
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 147
    :try_start_4
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 149
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    throw p0
.end method

.method public final updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/HalVibrator$State;)V
    .registers 9

    .line 394
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/HalVibrator$State;

    sget-object v1, Lcom/android/server/vibrator/HalVibrator$State;->IDLE:Lcom/android/server/vibrator/HalVibrator$State;

    const/4 v2, 0x0

    const-string v3, "HalVibrator.vibration"

    const-wide/32 v4, 0x800000

    if-ne v0, v1, :cond_14

    sget-object v0, Lcom/android/server/vibrator/HalVibrator$State;->VIBRATING:Lcom/android/server/vibrator/HalVibrator$State;

    if-ne p1, v0, :cond_14

    .line 396
    invoke-static {v4, v5, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_1f

    .line 397
    :cond_14
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/HalVibrator$State;

    sget-object v6, Lcom/android/server/vibrator/HalVibrator$State;->VIBRATING:Lcom/android/server/vibrator/HalVibrator$State;

    if-ne v0, v6, :cond_1f

    if-ne p1, v1, :cond_1f

    .line 399
    invoke-static {v4, v5, v3, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 401
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/HalVibrator$State;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorController;->isVibrating(Lcom/android/server/vibrator/HalVibrator$State;)Z

    move-result v0

    .line 402
    invoke-static {p1}, Lcom/android/server/vibrator/VibratorController;->isVibrating(Lcom/android/server/vibrator/HalVibrator$State;)Z

    move-result v1

    .line 403
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/HalVibrator$State;

    if-eqz v1, :cond_30

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    .line 404
    :goto_31
    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    if-eq v0, v1, :cond_3f

    .line 408
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorController;Z)V

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    :cond_3f
    return-void
.end method
