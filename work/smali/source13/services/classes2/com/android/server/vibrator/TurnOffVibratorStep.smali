.class final Lcom/android/server/vibrator/TurnOffVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "TurnOffVibratorStep.java"


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;)V
    .registers 14
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;
    .param p2, "startTime"    # J
    .param p4, "controller"    # Lcom/android/server/vibrator/VibratorController;

    .line 37
    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-wide v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 38
    return-void
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/vibrator/Step;

    new-instance v1, Lcom/android/server/vibrator/TurnOffVibratorStep;

    iget-object v2, p0, Lcom/android/server/vibrator/TurnOffVibratorStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/vibrator/TurnOffVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 47
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public cancelImmediately()V
    .registers 1

    .line 53
    invoke-virtual {p0}, Lcom/android/server/vibrator/TurnOffVibratorStep;->stopVibrating()V

    .line 54
    return-void
.end method

.method public isCleanUp()Z
    .registers 2

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public play()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 58
    const-wide/32 v0, 0x800000

    const-string v2, "TurnOffVibratorStep"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 60
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/vibrator/TurnOffVibratorStep;->stopVibrating()V

    .line 61
    sget-object v2, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    .line 63
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 61
    return-object v2

    .line 63
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 64
    throw v2
.end method
