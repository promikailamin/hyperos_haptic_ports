.class final Lcom/android/server/vibrator/RampOffVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "RampOffVibratorStep.java"


# instance fields
.field private final mAmplitudeDelta:F

.field private final mAmplitudeTarget:F


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JFFLcom/android/server/vibrator/VibratorController;J)V
    .registers 19
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;
    .param p2, "startTime"    # J
    .param p4, "amplitudeTarget"    # F
    .param p5, "amplitudeDelta"    # F
    .param p6, "controller"    # Lcom/android/server/vibrator/VibratorController;
    .param p7, "previousStepVibratorOffTimeout"    # J

    .line 34
    move-object v9, p0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 36
    move v0, p4

    iput v0, v9, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeTarget:F

    .line 37
    move v1, p5

    iput v1, v9, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeDelta:F

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

    iget-object v2, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 47
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isCleanUp()Z
    .registers 2

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public play()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 53
    const-wide/32 v0, 0x800000

    const-string v2, "RampOffVibratorStep"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 60
    :try_start_8
    iget-boolean v2, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mVibratorCompleteCallbackReceived:Z

    if-eqz v2, :cond_15

    .line 63
    invoke-virtual {p0}, Lcom/android/server/vibrator/RampOffVibratorStep;->stopVibrating()V

    .line 64
    sget-object v2, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_66

    .line 81
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 64
    return-object v2

    .line 67
    :cond_15
    :try_start_15
    iget v2, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeTarget:F

    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/RampOffVibratorStep;->changeAmplitude(F)V

    .line 69
    iget v2, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeTarget:F

    iget v3, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeDelta:F

    sub-float/2addr v2, v3

    .line 70
    .local v2, "newAmplitudeTarget":F
    const v3, 0x3a83126f    # 0.001f

    cmpg-float v3, v2, v3

    const/4 v13, 0x0

    const/4 v4, 0x1

    if-gez v3, :cond_3f

    .line 72
    new-array v3, v4, [Lcom/android/server/vibrator/Step;

    new-instance v4, Lcom/android/server/vibrator/TurnOffVibratorStep;

    iget-object v5, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v6, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->previousStepVibratorOffTimeout:J

    iget-object v8, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;)V

    aput-object v4, v3, v13

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_66

    .line 81
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 72
    return-object v3

    .line 75
    :cond_3f
    :try_start_3f
    new-array v3, v4, [Lcom/android/server/vibrator/Step;

    new-instance v14, Lcom/android/server/vibrator/RampOffVibratorStep;

    iget-object v5, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v6, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->startTime:J

    iget-object v4, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v4, v4, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 77
    invoke-virtual {v4}, Lcom/android/server/vibrator/VibrationSettings;->getRampStepDuration()I

    move-result v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iget v9, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeDelta:F

    iget-object v10, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-wide v11, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->previousStepVibratorOffTimeout:J

    move-object v4, v14

    move v8, v2

    invoke-direct/range {v4 .. v12}, Lcom/android/server/vibrator/RampOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JFFLcom/android/server/vibrator/VibratorController;J)V

    aput-object v14, v3, v13

    .line 75
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_62
    .catchall {:try_start_3f .. :try_end_62} :catchall_66

    .line 81
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 75
    return-object v3

    .line 81
    .end local v2    # "newAmplitudeTarget":F
    :catchall_66
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 82
    throw v2
.end method
