.class final Lcom/android/server/vibrator/CompleteEffectVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "CompleteEffectVibratorStep.java"


# instance fields
.field private final mCancelled:Z


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JZLcom/android/server/vibrator/VibratorController;J)V
    .registers 17
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;
    .param p2, "startTime"    # J
    .param p4, "cancelled"    # Z
    .param p5, "controller"    # Lcom/android/server/vibrator/VibratorController;
    .param p6, "previousStepVibratorOffTimeout"    # J

    .line 38
    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p5

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 40
    move v1, p4

    iput-boolean v1, v0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    .line 41
    return-void
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 52
    iget-boolean v0, p0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    if-eqz v0, :cond_1c

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/vibrator/Step;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/vibrator/TurnOffVibratorStep;

    iget-object v3, p0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;)V

    aput-object v2, v0, v1

    .line 54
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 57
    :cond_1c
    invoke-super {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->cancel()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isCleanUp()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    return v0
.end method

.method public play()Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 62
    move-object/from16 v1, p0

    const-wide/32 v2, 0x800000

    const-string v0, "CompleteEffectVibratorStep"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 69
    :try_start_a
    iget-boolean v0, v1, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mVibratorCompleteCallbackReceived:Z

    if-eqz v0, :cond_17

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->stopVibrating()V

    .line 73
    sget-object v0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_aa

    .line 111
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 73
    return-object v0

    .line 76
    :cond_17
    :try_start_17
    iget-object v0, v1, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getCurrentAmplitude()F

    move-result v0

    .line 77
    .local v0, "currentAmplitude":F
    iget-wide v4, v1, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->previousStepVibratorOffTimeout:J

    const-wide/16 v6, 0x3e8

    sub-long/2addr v4, v6

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 80
    .local v4, "remainingOnDuration":J
    iget-object v6, v1, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v6, v6, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 82
    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationSettings;->getRampDownDuration()I

    move-result v6

    int-to-long v6, v6

    .line 81
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 83
    .local v6, "rampDownDuration":J
    iget-object v8, v1, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v8, v8, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v8}, Lcom/android/server/vibrator/VibrationSettings;->getRampStepDuration()I

    move-result v8

    int-to-long v8, v8

    .line 84
    .local v8, "stepDownDuration":J
    const v10, 0x3a83126f    # 0.001f

    cmpg-float v10, v0, v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ltz v10, :cond_80

    cmp-long v10, v6, v8

    if-gtz v10, :cond_4b

    goto :goto_80

    .line 103
    :cond_4b
    div-long v13, v6, v8

    long-to-float v10, v13

    div-float v10, v0, v10

    .line 104
    .local v10, "amplitudeDelta":F
    sub-float v22, v0, v10

    .line 106
    .local v22, "amplitudeTarget":F
    iget-boolean v13, v1, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    if-eqz v13, :cond_59

    move-wide/from16 v20, v6

    goto :goto_5d

    :cond_59
    iget-wide v13, v1, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->previousStepVibratorOffTimeout:J

    move-wide/from16 v20, v13

    .line 107
    .local v20, "newVibratorOffTimeout":J
    :goto_5d
    new-array v12, v12, [Lcom/android/server/vibrator/Step;

    new-instance v23, Lcom/android/server/vibrator/RampOffVibratorStep;

    iget-object v14, v1, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v2, v1, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->startTime:J

    iget-object v15, v1, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    move-object/from16 v13, v23

    move-object/from16 v19, v15

    move-wide v15, v2

    move/from16 v17, v22

    move/from16 v18, v10

    invoke-direct/range {v13 .. v21}, Lcom/android/server/vibrator/RampOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JFFLcom/android/server/vibrator/VibratorController;J)V

    aput-object v23, v12, v11

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_79
    .catchall {:try_start_17 .. :try_end_79} :catchall_aa

    .line 111
    const-wide/32 v11, 0x800000

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 107
    return-object v2

    .line 87
    .end local v10    # "amplitudeDelta":F
    .end local v20    # "newVibratorOffTimeout":J
    .end local v22    # "amplitudeTarget":F
    :cond_80
    :goto_80
    :try_start_80
    iget-boolean v2, v1, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    if-eqz v2, :cond_90

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->stopVibrating()V

    .line 90
    sget-object v2, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_aa

    .line 111
    const-wide/32 v10, 0x800000

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 90
    return-object v2

    .line 92
    :cond_90
    :try_start_90
    new-array v2, v12, [Lcom/android/server/vibrator/Step;

    new-instance v3, Lcom/android/server/vibrator/TurnOffVibratorStep;

    iget-object v10, v1, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v12, v1, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->previousStepVibratorOffTimeout:J

    iget-object v14, v1, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-direct {v3, v10, v12, v13, v14}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;)V

    aput-object v3, v2, v11

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_a3
    .catchall {:try_start_90 .. :try_end_a3} :catchall_aa

    .line 111
    const-wide/32 v10, 0x800000

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 92
    return-object v2

    .line 111
    .end local v0    # "currentAmplitude":F
    .end local v4    # "remainingOnDuration":J
    .end local v6    # "rampDownDuration":J
    .end local v8    # "stepDownDuration":J
    :catchall_aa
    move-exception v0

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 112
    throw v0
.end method
