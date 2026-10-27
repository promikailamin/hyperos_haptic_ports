.class public final Lcom/android/server/vibrator/SetAmplitudeVibratorStep;
.super Lcom/android/server/vibrator/AbstractComposedVibratorStep;
.source "SetAmplitudeVibratorStep.java"


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/HalVibrator;Landroid/os/VibrationEffect$Composed;IJ)V
    .registers 9

    .line 47
    invoke-direct/range {p0 .. p8}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/HalVibrator;Landroid/os/VibrationEffect$Composed;IJ)V

    return-void
.end method


# virtual methods
.method public final getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J
    .registers 16

    .line 159
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 161
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    const-wide/16 v3, 0x0

    move v5, p2

    move-wide v6, v3

    :cond_10
    if-ge v5, v1, :cond_49

    .line 165
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/vibrator/VibrationEffectSegment;

    .line 166
    instance-of v9, v8, Landroid/os/vibrator/StepSegment;

    if-eqz v9, :cond_49

    move-object v9, v8

    check-cast v9, Landroid/os/vibrator/StepSegment;

    .line 169
    invoke-virtual {v8}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v10

    cmp-long v10, v10, v3

    if-lez v10, :cond_31

    invoke-virtual {v9}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_31

    goto :goto_49

    .line 172
    :cond_31
    invoke-virtual {v8}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v8

    add-long/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v1, :cond_40

    if-ltz v2, :cond_40

    const/4 v5, -0x1

    move v12, v5

    move v5, v2

    move v2, v12

    :cond_40
    if-ne v5, p2, :cond_10

    const-wide/16 p0, 0x1388

    .line 180
    invoke-static {v6, v7, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_49
    :goto_49
    if-ne v5, v1, :cond_5b

    .line 183
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result p1

    if-gez p1, :cond_5b

    .line 186
    iget-object p0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->getRampDownDuration()I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v6, p0

    :cond_5b
    return-wide v6
.end method

.method public play()Ljava/util/List;
    .registers 11

    .line 56
    const-string v0, "SetAmplitudeVibratorStep"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 58
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 59
    iget-wide v5, p0, Lcom/android/server/vibrator/Step;->startTime:J

    sub-long v5, v3, v5

    .line 60
    sget-boolean v0, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_31

    const-string v7, "VibrationThread"

    if-eqz v0, :cond_34

    .line 61
    :try_start_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Running amplitude step with "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms latency."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :catchall_31
    move-exception p0

    goto/16 :goto_d6

    .line 65
    :cond_34
    :goto_34
    iget-boolean v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    const-wide/16 v8, 0x0

    if-eqz v0, :cond_47

    cmp-long v0, v5, v8

    if-gez v0, :cond_47

    neg-long v3, v5

    .line 68
    invoke-virtual {p0, v3, v4}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->turnVibratorBackOn(J)Ljava/util/List;

    move-result-object p0
    :try_end_43
    .catchall {:try_start_16 .. :try_end_43} :catchall_31

    .line 111
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 71
    :cond_47
    :try_start_47
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    iget v5, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    .line 72
    instance-of v5, v0, Landroid/os/vibrator/StepSegment;

    if-eqz v5, :cond_b8

    move-object v5, v0

    check-cast v5, Landroid/os/vibrator/StepSegment;

    .line 79
    invoke-virtual {v5}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_6e

    .line 81
    iget-wide v3, p0, Lcom/android/server/vibrator/Step;->startTime:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->skipStep(J)Ljava/util/List;

    move-result-object p0
    :try_end_6a
    .catchall {:try_start_47 .. :try_end_6a} :catchall_31

    .line 111
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 84
    :cond_6e
    :try_start_6e
    invoke-virtual {v5}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_81

    .line 86
    iget-wide v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    cmp-long v3, v5, v3

    if-lez v3, :cond_a8

    .line 88
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    goto :goto_a8

    .line 91
    :cond_81
    iget-wide v3, p0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-wide v6, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    cmp-long v3, v3, v6

    if-ltz v3, :cond_a5

    .line 94
    iget-object v3, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v4, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-virtual {p0, v3, v4}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J

    move-result-wide v3

    cmp-long v6, v3, v8

    if-lez v6, :cond_a8

    .line 96
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startVibrating(JF)J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-gtz v3, :cond_a8

    .line 99
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->cancelStep()Ljava/util/List;

    move-result-object p0
    :try_end_a1
    .catchall {:try_start_6e .. :try_end_a1} :catchall_31

    .line 111
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 103
    :cond_a5
    :try_start_a5
    invoke-virtual {p0, v5}, Lcom/android/server/vibrator/AbstractVibratorStep;->changeAmplitude(F)V

    .line 108
    :cond_a8
    :goto_a8
    iget-wide v3, p0, Lcom/android/server/vibrator/Step;->startTime:J

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    const/4 v0, 0x1

    .line 109
    invoke-virtual {p0, v3, v4, v0}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(JI)Ljava/util/List;

    move-result-object p0
    :try_end_b4
    .catchall {:try_start_a5 .. :try_end_b4} :catchall_31

    .line 111
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 73
    :cond_b8
    :try_start_b8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring wrong segment for a SetAmplitudeVibratorStep: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-wide v3, p0, Lcom/android/server/vibrator/Step;->startTime:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->skipStep(J)Ljava/util/List;

    move-result-object p0
    :try_end_d2
    .catchall {:try_start_b8 .. :try_end_d2} :catchall_31

    .line 111
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :goto_d6
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 112
    throw p0
.end method

.method public final startVibrating(JF)J
    .registers 12

    .line 138
    sget-boolean v0, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Turning on vibrator "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->vibrator:Lcom/android/server/vibrator/HalVibrator;

    .line 140
    invoke-interface {v1}, Lcom/android/server/vibrator/HalVibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v1, "VibrationThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_32
    iget-object v0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibratorCallbackStepId(I)I

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->vibrator:Lcom/android/server/vibrator/HalVibrator;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/server/vibrator/Vibration;->id:J

    int-to-long v4, v0

    move-wide v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/server/vibrator/HalVibrator;->on(JJJ)J

    move-result-wide p1

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)J

    .line 146
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vibrator/VibrationStats;->reportVibratorOn(J)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_5f

    .line 148
    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/AbstractVibratorStep;->changeAmplitude(F)V

    :cond_5f
    return-wide p1
.end method

.method public final turnVibratorBackOn(J)Ljava/util/List;
    .registers 12

    .line 116
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v1, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4b

    add-long/2addr v0, p1

    .line 119
    sget-boolean v4, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z

    if-eqz v4, :cond_38

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Turning the vibrator back ON using the remaining duration of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms, for a total of "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VibrationThread"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_38
    iget-object p1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->vibrator:Lcom/android/server/vibrator/HalVibrator;

    invoke-interface {p1}, Lcom/android/server/vibrator/HalVibrator;->getCurrentAmplitude()F

    move-result p1

    .line 126
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startVibrating(JF)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-gtz p1, :cond_4b

    .line 129
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->cancelStep()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 133
    :cond_4b
    new-instance v0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;

    iget-object v1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v2, p0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-object v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->vibrator:Lcom/android/server/vibrator/HalVibrator;

    iget-object v5, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v6, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    iget-wide v7, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/HalVibrator;Landroid/os/VibrationEffect$Composed;IJ)V

    filled-new-array {v0}, [Lcom/android/server/vibrator/Step;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
