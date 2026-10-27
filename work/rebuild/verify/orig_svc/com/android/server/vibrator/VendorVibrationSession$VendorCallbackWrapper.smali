.class public final Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;
.super Ljava/lang/Object;
.source "VendorVibrationSession.java"


# instance fields
.field public final mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

.field public final mHandler:Landroid/os/Handler;

.field public mIsFinished:Z

.field public mIsFinishing:Z

.field public mIsStarted:Z


# direct methods
.method public static synthetic $r8$lambda$DzFVzhnn9_Dg1V8XR9BzA5RP8LY(Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;Landroid/os/vibrator/IVibrationSession;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->lambda$notifyStarted$0(Landroid/os/vibrator/IVibrationSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OCz4DcuEH-TvDslMxr5ilStYYs4(Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->lambda$notifyFinishing$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$X_vfAw8b320msHKFfyL3-r3ZSgw(Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->lambda$notifyFinished$2(Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/vibrator/IVibrationSessionCallback;Landroid/os/Handler;)V
    .registers 3

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    .line 441
    iput-object p2, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static toSessionStatus(Lcom/android/server/vibrator/VibrationSession$Status;)I
    .registers 2

    .line 512
    sget-object v0, Lcom/android/server/vibrator/VendorVibrationSession$1;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_1c

    new-instance p0, Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :pswitch_12
    const/4 p0, 0x5

    return p0

    :pswitch_14
    const/4 p0, 0x2

    return p0

    :pswitch_16
    const/4 p0, 0x4

    return p0

    :pswitch_18
    const/4 p0, 0x3

    return p0

    :pswitch_1a
    const/4 p0, 0x1

    return p0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_18
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized getBinderToken()Landroid/os/IBinder;
    .registers 2

    monitor-enter p0

    .line 445
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    invoke-interface {v0}, Landroid/os/vibrator/IVibrationSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public final synthetic lambda$notifyFinished$2(Lcom/android/server/vibrator/VibrationSession$Status;)V
    .registers 3

    .line 502
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    invoke-static {p1}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->toSessionStatus(Lcom/android/server/vibrator/VibrationSession$Status;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/os/vibrator/IVibrationSessionCallback;->onFinished(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 504
    const-string p1, "VendorVibrationSession"

    const-string v0, "Error notifying vendor session finished"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$notifyFinishing$1()V
    .registers 3

    .line 488
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    invoke-interface {p0}, Landroid/os/vibrator/IVibrationSessionCallback;->onFinishing()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 490
    const-string v0, "VendorVibrationSession"

    const-string v1, "Error notifying vendor session is finishing"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$notifyStarted$0(Landroid/os/vibrator/IVibrationSession;)V
    .registers 3

    .line 473
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    invoke-interface {p0, p1}, Landroid/os/vibrator/IVibrationSessionCallback;->onStarted(Landroid/os/vibrator/IVibrationSession;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 475
    const-string p1, "VendorVibrationSession"

    const-string v0, "Error notifying vendor session started"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public declared-synchronized linkToDeath(Landroid/os/IBinder$DeathRecipient;)Z
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 450
    :try_start_2
    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    invoke-interface {v1}, Landroid/os/vibrator/IVibrationSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_10
    .catchall {:try_start_2 .. :try_end_b} :catchall_e

    .line 455
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_e
    move-exception p1

    goto :goto_1a

    :catch_10
    move-exception p1

    .line 452
    :try_start_11
    const-string v1, "VendorVibrationSession"

    const-string v2, "Error linking session to token death"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_e

    .line 453
    monitor-exit p0

    return v0

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_e

    throw p1
.end method

.method public declared-synchronized notifyFinished(Lcom/android/server/vibrator/VibrationSession$Status;)V
    .registers 4

    monitor-enter p0

    .line 496
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsFinished:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-eqz v0, :cond_7

    .line 497
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 499
    :try_start_8
    iput-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsFinished:Z

    .line 500
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;Lcom/android/server/vibrator/VibrationSession$Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_16

    .line 507
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public declared-synchronized notifyFinishing()V
    .registers 3

    monitor-enter p0

    .line 481
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsStarted:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsFinishing:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsFinished:Z

    if-eqz v0, :cond_e

    goto :goto_1f

    :cond_e
    const/4 v0, 0x1

    .line 485
    iput-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsFinishing:Z

    .line 486
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 493
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    goto :goto_21

    .line 483
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1d

    throw v0
.end method

.method public declared-synchronized notifyStarted(Landroid/os/vibrator/IVibrationSession;)V
    .registers 4

    monitor-enter p0

    .line 467
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsStarted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-eqz v0, :cond_7

    .line 468
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 470
    :try_start_8
    iput-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsStarted:Z

    .line 471
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;Landroid/os/vibrator/IVibrationSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_16

    .line 478
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public declared-synchronized unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 4

    monitor-enter p0

    .line 460
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    invoke-interface {v0}, Landroid/os/vibrator/IVibrationSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_b} :catch_e
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_16

    :catchall_c
    move-exception p1

    goto :goto_18

    :catch_e
    move-exception p1

    .line 462
    :try_start_f
    const-string v0, "VendorVibrationSession"

    const-string v1, "Failed to unlink session to token death"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_c

    .line 464
    :goto_16
    monitor-exit p0

    return-void

    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_c

    throw p1
.end method
