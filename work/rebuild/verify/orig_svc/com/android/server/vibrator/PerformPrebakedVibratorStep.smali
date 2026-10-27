.class public final Lcom/android/server/vibrator/PerformPrebakedVibratorStep;
.super Lcom/android/server/vibrator/AbstractComposedVibratorStep;
.source "PerformPrebakedVibratorStep.java"


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/HalVibrator;Landroid/os/VibrationEffect$Composed;IJ)V
    .registers 9

    .line 43
    invoke-static {p2, p3, p7, p8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-direct/range {p0 .. p8}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/HalVibrator;Landroid/os/VibrationEffect$Composed;IJ)V

    return-void
.end method


# virtual methods
.method public play()Ljava/util/List;
    .registers 12

    .line 50
    const-string v0, "PerformPrebakedVibratorStep"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 52
    :try_start_8
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    .line 53
    instance-of v3, v0, Landroid/os/vibrator/PrebakedSegment;
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_38

    const-string v4, "VibrationThread"

    if-nez v3, :cond_3c

    .line 54
    :try_start_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring wrong segment for a PerformPrebakedVibratorStep: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->skipStep()Ljava/util/List;

    move-result-object p0
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_38

    .line 93
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_38
    move-exception v0

    move-object p0, v0

    goto/16 :goto_fb

    .line 59
    :cond_3c
    :try_start_3c
    move-object v10, v0

    check-cast v10, Landroid/os/vibrator/PrebakedSegment;

    .line 60
    sget-boolean v0, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z

    if-eqz v0, :cond_71

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Perform "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v10}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v5

    .line 61
    invoke-static {v5}, Landroid/os/VibrationEffect;->effectIdToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " on vibrator "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->vibrator:Lcom/android/server/vibrator/HalVibrator;

    .line 63
    invoke-interface {v5}, Lcom/android/server/vibrator/HalVibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/VibratorInfo;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_71
    iget-object v3, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibratorCallbackStepId(I)I

    move-result v3

    .line 67
    iget-object v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->vibrator:Lcom/android/server/vibrator/HalVibrator;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/server/vibrator/Vibration;->id:J

    int-to-long v8, v3

    invoke-interface/range {v5 .. v10}, Lcom/android/server/vibrator/HalVibrator;->on(JJLandroid/os/vibrator/PrebakedSegment;)J

    move-result-wide v5

    .line 68
    invoke-virtual {p0, v5, v6}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)J

    .line 69
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v3, v5, v6, v10}, Lcom/android/server/vibrator/VibrationStats;->reportPerformEffect(JLandroid/os/vibrator/PrebakedSegment;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/server/vibrator/HalVibration;->getFallback(I)Landroid/os/VibrationEffect;

    move-result-object v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_f2

    .line 73
    invoke-virtual {v10}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v5

    if-eqz v5, :cond_f2

    instance-of v5, v3, Landroid/os/VibrationEffect$Composed;

    if-eqz v5, :cond_f2

    if-eqz v0, :cond_ce

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Playing fallback for effect "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v10}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v5

    invoke-static {v5}, Landroid/os/VibrationEffect;->effectIdToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ce
    move-object v0, v3

    .line 79
    iget-object v3, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v4, p0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-object v6, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->vibrator:Lcom/android/server/vibrator/HalVibrator;

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->replaceCurrentSegment(Landroid/os/VibrationEffect$Composed;)Landroid/os/VibrationEffect$Composed;

    move-result-object v7

    iget v8, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    iget-wide v9, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 79
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/HalVibrator;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->play()Ljava/util/List;

    move-result-object v3

    .line 86
    invoke-virtual {v0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorOnDuration()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)J
    :try_end_ee
    .catchall {:try_start_3c .. :try_end_ee} :catchall_38

    .line 93
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :cond_f2
    const/4 v0, 0x1

    .line 91
    :try_start_f3
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->vibratorOnNextSteps(I)Ljava/util/List;

    move-result-object p0
    :try_end_f7
    .catchall {:try_start_f3 .. :try_end_f7} :catchall_38

    .line 93
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :goto_fb
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 94
    throw p0
.end method

.method public final replaceCurrentSegment(Landroid/os/VibrationEffect$Composed;)Landroid/os/VibrationEffect$Composed;
    .registers 6

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 104
    iget-object v1, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    .line 105
    iget v2, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 106
    iget v2, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 107
    iget v2, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    iget-object p0, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result p0

    if-ge v2, p0, :cond_34

    .line 108
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    add-int/2addr v1, p0

    .line 110
    :cond_34
    new-instance p0, Landroid/os/VibrationEffect$Composed;

    invoke-direct {p0, v0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    return-object p0
.end method
