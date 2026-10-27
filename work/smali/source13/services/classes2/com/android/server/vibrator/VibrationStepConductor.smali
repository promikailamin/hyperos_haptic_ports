.class final Lcom/android/server/vibrator/VibrationStepConductor;
.super Ljava/lang/Object;
.source "VibrationStepConductor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field static final CALLBACKS_EXTRA_TIMEOUT:J = 0x3e8L

.field private static final DEBUG:Z = false

.field static final EMPTY_STEP_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation
.end field

.field static final RAMP_OFF_AMPLITUDE_MIN:F = 0.001f

.field private static final TAG:Ljava/lang/String; = "VibrationThread"


# instance fields
.field public final deviceEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

.field private mCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

.field private mCancelledImmediately:Z

.field private final mLock:Ljava/lang/Object;

.field private final mNextSteps:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingOnVibratorCompleteSteps:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingVibrateSteps:I

.field private mRemainingStartSequentialEffectSteps:I

.field private mSignalCancelImmediate:Z

.field private mSignalCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

.field private final mSignalVibratorsComplete:Landroid/util/IntArray;

.field private mSuccessfulVibratorOnSteps:I

.field private final mVibration:Lcom/android/server/vibrator/Vibration;

.field private final mVibrators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;"
        }
    .end annotation
.end field

.field public final vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

.field public final vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;Landroid/util/SparseArray;Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;)V
    .registers 11
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;
    .param p2, "vibrationSettings"    # Lcom/android/server/vibrator/VibrationSettings;
    .param p3, "effectAdapter"    # Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;
    .param p5, "vibratorManagerHooks"    # Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vibrator/Vibration;",
            "Lcom/android/server/vibrator/VibrationSettings;",
            "Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;",
            "Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;",
            ")V"
        }
    .end annotation

    .line 98
    .local p4, "availableVibrators":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/vibrator/VibratorController;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrators:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    .line 88
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 90
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    .line 99
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/Vibration;

    .line 100
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 101
    iput-object p3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->deviceEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    .line 102
    iput-object p5, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 104
    invoke-virtual {p1}, Lcom/android/server/vibrator/Vibration;->getEffect()Landroid/os/CombinedVibration;

    move-result-object v0

    .line 105
    .local v0, "effect":Landroid/os/CombinedVibration;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_36
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_58

    .line 106
    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/CombinedVibration;->hasVibrator(I)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 107
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 110
    .end local v1    # "i":I
    :cond_58
    new-instance v1, Landroid/util/IntArray;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    .line 111
    return-void
.end method

.method private static expectIsVibrationThread(Z)V
    .registers 3
    .param p0, "isVibrationThread"    # Z

    .line 542
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/vibrator/VibrationThread;

    if-eq v0, p0, :cond_20

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread caller assertion failed, expected isVibrationThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibrationStepConductor"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_20
    return-void
.end method

.method private hasPendingNotifySignalLocked()Z
    .registers 4

    .line 401
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 402
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 404
    :cond_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    if-ne v0, v2, :cond_21

    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    if-eqz v0, :cond_21

    :cond_16
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    .line 406
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    nop

    .line 404
    :goto_22
    return v1
.end method

.method private pollNext()Lcom/android/server/vibrator/Step;
    .registers 2

    .line 256
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    .line 257
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 262
    :cond_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 263
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/Step;

    return-object v0

    .line 265
    :cond_19
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/Step;

    return-object v0
.end method

.method private processAllNotifySignals()V
    .registers 7

    .line 414
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    .line 415
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 418
    :cond_8
    const/4 v0, 0x0

    .line 419
    .local v0, "vibratorsToProcess":[I
    const/4 v1, 0x0

    .line 420
    .local v1, "doCancelStatus":Lcom/android/server/vibrator/Vibration$Status;
    const/4 v2, 0x0

    .line 422
    .local v2, "doCancelImmediate":Z
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 423
    :try_start_e
    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    if-eqz v4, :cond_21

    .line 424
    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    if-eqz v4, :cond_1d

    .line 425
    const-string v4, "VibrationThread"

    const-string v5, "Immediate cancellation signal processed twice"

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_1d
    const/4 v2, 0x1

    .line 429
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    move-object v1, v4

    .line 431
    :cond_21
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    iget-object v5, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    if-eq v4, v5, :cond_28

    .line 432
    move-object v1, v4

    .line 434
    :cond_28
    if-nez v2, :cond_3e

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v4

    if-lez v4, :cond_3e

    .line 436
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    move-object v0, v4

    .line 437
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->clear()V

    .line 439
    :cond_3e
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_e .. :try_end_3f} :catchall_50

    .line 445
    if-eqz v2, :cond_45

    .line 446
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationStepConductor;->processCancelImmediately(Lcom/android/server/vibrator/Vibration$Status;)V

    .line 447
    return-void

    .line 449
    :cond_45
    if-eqz v1, :cond_4a

    .line 450
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationStepConductor;->processCancel(Lcom/android/server/vibrator/Vibration$Status;)V

    .line 452
    :cond_4a
    if-eqz v0, :cond_4f

    .line 453
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationStepConductor;->processVibratorsComplete([I)V

    .line 455
    :cond_4f
    return-void

    .line 439
    :catchall_50
    move-exception v4

    :try_start_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v4
.end method

.method private processVibratorsComplete([I)V
    .registers 8
    .param p1, "vibratorsToProcess"    # [I

    .line 509
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    .line 510
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 513
    :cond_8
    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_33

    aget v2, p1, v1

    .line 514
    .local v2, "vibratorId":I
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 515
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/vibrator/Step;>;"
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 516
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/Step;

    .line 517
    .local v4, "step":Lcom/android/server/vibrator/Step;
    invoke-virtual {v4, v2}, Lcom/android/server/vibrator/Step;->acceptVibratorCompleteCallback(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 518
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 519
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v5, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 520
    goto :goto_30

    .line 522
    .end local v4    # "step":Lcom/android/server/vibrator/Step;
    :cond_2f
    goto :goto_14

    .line 513
    .end local v2    # "vibratorId":I
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/vibrator/Step;>;"
    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 524
    :cond_33
    return-void
.end method

.method private static toSequential(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$Sequential;
    .registers 2
    .param p0, "effect"    # Landroid/os/CombinedVibration;

    .line 527
    instance-of v0, p0, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_8

    .line 528
    move-object v0, p0

    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    return-object v0

    .line 530
    :cond_8
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    .line 531
    invoke-virtual {v0, p0}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v0

    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    .line 530
    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 308
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/Vibration$Status;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$Status;Z)V

    .line 309
    return-void
.end method

.method public calculateVibrationStatus()Lcom/android/server/vibrator/Vibration$Status;
    .registers 2

    .line 186
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    .line 187
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 190
    :cond_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    if-eqz v0, :cond_d

    .line 191
    return-object v0

    .line 193
    :cond_d
    iget v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    if-gtz v0, :cond_20

    iget v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    if-lez v0, :cond_16

    goto :goto_20

    .line 198
    :cond_16
    iget v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSuccessfulVibratorOnSteps:I

    if-lez v0, :cond_1d

    .line 199
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->FINISHED:Lcom/android/server/vibrator/Vibration$Status;

    return-object v0

    .line 202
    :cond_1d
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/Vibration$Status;

    return-object v0

    .line 195
    :cond_20
    :goto_20
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    return-object v0
.end method

.method public getVibration()Lcom/android/server/vibrator/Vibration;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/Vibration;

    return-object v0
.end method

.method getVibrators()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrators:Landroid/util/SparseArray;

    return-object v0
.end method

.method public isFinished()Z
    .registers 3

    .line 169
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 170
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 172
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    if-eqz v0, :cond_d

    .line 173
    return v1

    .line 178
    :cond_d
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;
    .registers 20
    .param p1, "startTime"    # J
    .param p3, "controller"    # Lcom/android/server/vibrator/VibratorController;
    .param p4, "effect"    # Landroid/os/VibrationEffect$Composed;
    .param p5, "segmentIndex"    # I
    .param p6, "previousStepVibratorOffTimeout"    # J

    .line 117
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    .line 118
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 120
    :cond_8
    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, p5

    if-lt v1, v0, :cond_19

    .line 121
    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v0

    .end local p5    # "segmentIndex":I
    .local v0, "segmentIndex":I
    goto :goto_1a

    .line 120
    .end local v0    # "segmentIndex":I
    .restart local p5    # "segmentIndex":I
    :cond_19
    move v0, v1

    .line 123
    .end local p5    # "segmentIndex":I
    .restart local v0    # "segmentIndex":I
    :goto_1a
    if-gez v0, :cond_29

    .line 125
    new-instance v9, Lcom/android/server/vibrator/CompleteEffectVibratorStep;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/vibrator/CompleteEffectVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JZLcom/android/server/vibrator/VibratorController;J)V

    return-object v9

    .line 129
    :cond_29
    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/os/vibrator/VibrationEffectSegment;

    .line 130
    .local v10, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v1, v10, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v1, :cond_47

    .line 131
    new-instance v11, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;

    move-object v1, v11

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move v7, v0

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v11

    .line 134
    :cond_47
    instance-of v1, v10, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v1, :cond_5a

    .line 135
    new-instance v11, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;

    move-object v1, v11

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move v7, v0

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v11

    .line 138
    :cond_5a
    instance-of v1, v10, Landroid/os/vibrator/RampSegment;

    if-eqz v1, :cond_6d

    .line 139
    new-instance v11, Lcom/android/server/vibrator/ComposePwleVibratorStep;

    move-object v1, v11

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move v7, v0

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/ComposePwleVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v11

    .line 142
    :cond_6d
    new-instance v11, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;

    move-object v1, v11

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move v7, v0

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v11
.end method

.method public notifyCancelled(Lcom/android/server/vibrator/Vibration$Status;Z)V
    .registers 6
    .param p1, "cancelStatus"    # Lcom/android/server/vibrator/Vibration$Status;
    .param p2, "immediate"    # Z

    .line 318
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    .line 319
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 325
    :cond_8
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/android/server/vibrator/Vibration$Status;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 326
    :cond_16
    const-string v0, "VibrationThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibration cancel requested with bad status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", using CANCELLED_UNKNOWN_REASON to ensure cancellation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/Vibration$Status;

    .line 330
    :cond_36
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    if-eqz p2, :cond_3f

    :try_start_3b
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    if-nez v1, :cond_43

    :cond_3f
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    if-eqz v1, :cond_45

    .line 337
    :cond_43
    monitor-exit v0

    return-void

    .line 339
    :cond_45
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    or-int/2addr v2, p2

    iput-boolean v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    .line 340
    if-nez v1, :cond_4e

    .line 341
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 350
    :cond_4e
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 351
    monitor-exit v0

    .line 352
    return-void

    .line 351
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_55

    throw v1
.end method

.method public notifySyncedVibrationComplete()V
    .registers 5

    .line 391
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 393
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->add(I)V

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 395
    .end local v1    # "i":I
    :cond_1a
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 396
    monitor-exit v0

    .line 397
    return-void

    .line 396
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public notifyVibratorComplete(I)V
    .registers 4
    .param p1, "vibratorId"    # I

    .line 369
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 371
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 372
    monitor-exit v0

    .line 373
    return-void

    .line 372
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public prepareToStart()V
    .registers 4

    .line 148
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 149
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 151
    :cond_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/Vibration;

    invoke-virtual {v0}, Lcom/android/server/vibrator/Vibration;->getEffect()Landroid/os/CombinedVibration;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->toSequential(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$Sequential;

    move-result-object v0

    .line 152
    .local v0, "sequentialEffect":Landroid/os/CombinedVibration$Sequential;
    iget v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    .line 154
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    .line 155
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    new-instance v2, Lcom/android/server/vibrator/StartSequentialEffectStep;

    invoke-direct {v2, p0, v0}, Lcom/android/server/vibrator/StartSequentialEffectStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;Landroid/os/CombinedVibration$Sequential;)V

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public processCancel(Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 5
    .param p1, "cancelStatus"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 464
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    .line 465
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 468
    :cond_8
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v0, "cleanUpSteps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/Step;>;"
    :goto_f
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->pollNext()Lcom/android/server/vibrator/Step;

    move-result-object v1

    move-object v2, v1

    .local v2, "step":Lcom/android/server/vibrator/Step;
    if-eqz v1, :cond_1e

    .line 474
    invoke-virtual {v2}, Lcom/android/server/vibrator/Step;->cancel()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    .line 477
    :cond_1e
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    .line 478
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 479
    return-void
.end method

.method public processCancelImmediately(Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 4
    .param p1, "cancelStatus"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 487
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 488
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 491
    :cond_8
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    .line 492
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 494
    :goto_c
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->pollNext()Lcom/android/server/vibrator/Step;

    move-result-object v0

    move-object v1, v0

    .local v1, "step":Lcom/android/server/vibrator/Step;
    if-eqz v0, :cond_17

    .line 495
    invoke-virtual {v1}, Lcom/android/server/vibrator/Step;->cancelImmediately()V

    goto :goto_c

    .line 497
    :cond_17
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    .line 498
    return-void
.end method

.method public runNextStep()V
    .registers 8

    .line 273
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 274
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 279
    :cond_8
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->pollNext()Lcom/android/server/vibrator/Step;

    move-result-object v0

    .line 280
    .local v0, "nextStep":Lcom/android/server/vibrator/Step;
    if-eqz v0, :cond_54

    .line 281
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->play()Ljava/util/List;

    move-result-object v2

    .line 282
    .local v2, "nextSteps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/Step;>;"
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->getVibratorOnDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_21

    .line 283
    iget v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSuccessfulVibratorOnSteps:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSuccessfulVibratorOnSteps:I

    .line 285
    :cond_21
    instance-of v3, v0, Lcom/android/server/vibrator/StartSequentialEffectStep;

    if-eqz v3, :cond_2a

    .line 286
    iget v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    .line 288
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->isCleanUp()Z

    move-result v3

    if-nez v3, :cond_35

    .line 289
    iget v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    .line 291
    :cond_35
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_36
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4f

    .line 292
    iget v4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/Step;

    invoke-virtual {v5}, Lcom/android/server/vibrator/Step;->isCleanUp()Z

    move-result v5

    xor-int/2addr v5, v1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 294
    .end local v3    # "i":I
    :cond_4f
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 296
    .end local v2    # "nextSteps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/Step;>;"
    :cond_54
    return-void
.end method

.method public waitUntilNextStepIsDue()Z
    .registers 8

    .line 218
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 219
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 222
    :cond_8
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->processAllNotifySignals()V

    .line 223
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 226
    return v2

    .line 228
    :cond_11
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 229
    return v1

    .line 231
    :cond_1a
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/Step;

    .line 232
    .local v0, "nextStep":Lcom/android/server/vibrator/Step;
    if-nez v0, :cond_25

    .line 233
    return v1

    .line 235
    :cond_25
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->calculateWaitTime()J

    move-result-wide v3

    .line 236
    .local v3, "waitMillis":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_30

    .line 237
    return v1

    .line 239
    :cond_30
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_33
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->hasPendingNotifySignalLocked()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 244
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_44

    return v2

    .line 247
    :cond_3b
    :try_start_3b
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_40} :catch_41
    .catchall {:try_start_3b .. :try_end_40} :catchall_44

    .line 249
    goto :goto_42

    .line 248
    :catch_41
    move-exception v5

    .line 250
    :goto_42
    :try_start_42
    monitor-exit v1

    return v2

    .line 251
    :catchall_44
    move-exception v2

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_44

    throw v2
.end method
