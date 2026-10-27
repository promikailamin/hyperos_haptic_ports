.class public final Lcom/android/server/vibrator/RampOffVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "RampOffVibratorStep.java"


# instance fields
.field public final mAmplitudeDelta:F

.field public final mAmplitudeTarget:F


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JFFLcom/android/server/vibrator/HalVibrator;J)V
    .registers 16

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p6

    move-wide v5, p7

    .line 34
    invoke-direct/range {v0 .. v6}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/HalVibrator;J)V

    .line 35
    iput p4, v0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeTarget:F

    .line 36
    iput p5, v0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeDelta:F

    return-void
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .registers 7

    .line 47
    new-instance v0, Lcom/android/server/vibrator/TurnOffVibratorStep;

    iget-object v1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->vibrator:Lcom/android/server/vibrator/HalVibrator;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/HalVibrator;Z)V

    filled-new-array {v0}, [Lcom/android/server/vibrator/Step;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isCleanUp()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public play()Ljava/util/List;
    .registers 16

    .line 54
    const-string v0, "RampOffVibratorStep"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 56
    :try_start_8
    sget-boolean v0, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z

    if-eqz v0, :cond_33

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/vibrator/Step;->startTime:J

    sub-long/2addr v3, v5

    .line 58
    const-string v0, "VibrationThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ramp down the vibrator amplitude, step with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms latency."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :catchall_30
    move-exception v0

    move-object p0, v0

    goto :goto_8d

    .line 61
    :cond_33
    :goto_33
    iget-boolean v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    if-eqz v0, :cond_40

    .line 64
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    .line 65
    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_30

    .line 84
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 68
    :cond_40
    :try_start_40
    iget v0, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeTarget:F

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/AbstractVibratorStep;->changeAmplitude(F)V

    .line 70
    iget v0, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeTarget:F

    iget v3, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeDelta:F

    sub-float v8, v0, v3

    const v0, 0x3a83126f    # 0.001f

    cmpg-float v0, v8, v0

    if-gez v0, :cond_6a

    .line 75
    new-instance v9, Lcom/android/server/vibrator/TurnOffVibratorStep;

    iget-object v10, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v11, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    iget-object v13, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->vibrator:Lcom/android/server/vibrator/HalVibrator;

    const/4 v14, 0x1

    invoke-direct/range {v9 .. v14}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/HalVibrator;Z)V

    filled-new-array {v9}, [Lcom/android/server/vibrator/Step;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_66
    .catchall {:try_start_40 .. :try_end_66} :catchall_30

    .line 84
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 78
    :cond_6a
    :try_start_6a
    new-instance v4, Lcom/android/server/vibrator/RampOffVibratorStep;

    iget-object v5, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v6, p0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-object v0, v5, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 80
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationSettings;->getRampStepDuration()I

    move-result v0

    int-to-long v9, v0

    add-long/2addr v6, v9

    iget v9, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeDelta:F

    iget-object v10, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->vibrator:Lcom/android/server/vibrator/HalVibrator;

    iget-wide v11, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    invoke-direct/range {v4 .. v12}, Lcom/android/server/vibrator/RampOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JFFLcom/android/server/vibrator/HalVibrator;J)V

    filled-new-array {v4}, [Lcom/android/server/vibrator/Step;

    move-result-object p0

    .line 78
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_89
    .catchall {:try_start_6a .. :try_end_89} :catchall_30

    .line 84
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :goto_8d
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 85
    throw p0
.end method
