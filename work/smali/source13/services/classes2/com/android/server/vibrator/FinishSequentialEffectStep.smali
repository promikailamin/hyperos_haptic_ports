.class final Lcom/android/server/vibrator/FinishSequentialEffectStep;
.super Lcom/android/server/vibrator/Step;
.source "FinishSequentialEffectStep.java"


# instance fields
.field public final startedStep:Lcom/android/server/vibrator/StartSequentialEffectStep;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V
    .registers 5
    .param p1, "startedStep"    # Lcom/android/server/vibrator/StartSequentialEffectStep;

    .line 36
    iget-object v0, p1, Lcom/android/server/vibrator/StartSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/vibrator/Step;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V

    .line 37
    iput-object p1, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;->startedStep:Lcom/android/server/vibrator/StartSequentialEffectStep;

    .line 38
    return-void
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;->cancelImmediately()V

    .line 66
    sget-object v0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    return-object v0
.end method

.method public cancelImmediately()V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    iget-object v1, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget v1, v1, Lcom/android/server/vibrator/Vibration;->uid:I

    invoke-interface {v0, v1}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->noteVibratorOff(I)V

    .line 72
    return-void
.end method

.method public isCleanUp()Z
    .registers 2

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public play()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 48
    const-wide/32 v0, 0x800000

    const-string v2, "FinishSequentialEffectStep"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 54
    :try_start_8
    iget-object v2, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v2, v2, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    iget-object v3, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v3

    iget v3, v3, Lcom/android/server/vibrator/Vibration;->uid:I

    invoke-interface {v2, v3}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->noteVibratorOff(I)V

    .line 55
    iget-object v2, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;->startedStep:Lcom/android/server/vibrator/StartSequentialEffectStep;

    invoke-virtual {v2}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object v2

    .line 56
    .local v2, "nextStep":Lcom/android/server/vibrator/Step;
    if-nez v2, :cond_22

    sget-object v3, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    goto :goto_2c

    .line 57
    :cond_22
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/server/vibrator/Step;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_30

    .line 59
    :goto_2c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 56
    return-object v3

    .line 59
    .end local v2    # "nextStep":Lcom/android/server/vibrator/Step;
    :catchall_30
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 60
    throw v2
.end method
