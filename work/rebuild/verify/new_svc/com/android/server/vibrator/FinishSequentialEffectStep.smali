.class public final Lcom/android/server/vibrator/FinishSequentialEffectStep;
.super Lcom/android/server/vibrator/Step;
.source "FinishSequentialEffectStep.java"


# instance fields
.field public final startedStep:Lcom/android/server/vibrator/StartSequentialEffectStep;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V
    .registers 5

    .line 38
    iget-object v0, p1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/vibrator/Step;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V

    .line 39
    iput-object p1, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;->startedStep:Lcom/android/server/vibrator/StartSequentialEffectStep;

    return-void
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .registers 1

    .line 70
    invoke-virtual {p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;->cancelImmediately()V

    .line 71
    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    return-object p0
.end method

.method public cancelImmediately()V
    .registers 2

    .line 76
    iget-object p0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 77
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget p0, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    .line 76
    invoke-interface {v0, p0}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->noteVibratorOff(I)V

    return-void
.end method

.method public isCleanUp()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public play()Ljava/util/List;
    .registers 6

    .line 51
    const-string v0, "FinishSequentialEffectStep"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 53
    :try_start_8
    sget-boolean v0, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 54
    const-string v0, "VibrationThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FinishSequentialEffectStep for effect #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;->startedStep:Lcom/android/server/vibrator/StartSequentialEffectStep;

    iget v4, v4, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_4f

    .line 57
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v3, v0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 58
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    .line 57
    invoke-interface {v3, v0}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->noteVibratorOff(I)V

    .line 59
    iget-object p0, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;->startedStep:Lcom/android/server/vibrator/StartSequentialEffectStep;

    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object p0

    if-nez p0, :cond_43

    .line 60
    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    goto :goto_4b

    .line 61
    :cond_43
    filled-new-array {p0}, [Lcom/android/server/vibrator/Step;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_27

    .line 63
    :goto_4b
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :goto_4f
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 64
    throw p0
.end method
