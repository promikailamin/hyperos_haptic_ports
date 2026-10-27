.class final Lcom/android/server/vibrator/PerformPrebakedVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "PerformPrebakedVibratorStep.java"


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .registers 22
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;
    .param p2, "startTime"    # J
    .param p4, "controller"    # Lcom/android/server/vibrator/VibratorController;
    .param p5, "effect"    # Landroid/os/VibrationEffect$Composed;
    .param p6, "index"    # I
    .param p7, "previousStepVibratorOffTimeout"    # J

    .line 41
    move-wide v0, p2

    move-wide/from16 v11, p7

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 43
    return-void
.end method

.method private replaceCurrentSegment(Landroid/os/VibrationEffect$Composed;)Landroid/os/VibrationEffect$Composed;
    .registers 6
    .param p1, "fallback"    # Landroid/os/VibrationEffect$Composed;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 95
    .local v0, "newSegments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    iget-object v1, p0, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    .line 96
    .local v1, "newRepeatIndex":I
    iget v2, p0, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->segmentIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 97
    iget v2, p0, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->segmentIndex:I

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 98
    iget v2, p0, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->segmentIndex:I

    iget-object v3, p0, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 99
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    .line 101
    :cond_34
    new-instance v2, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v2, v0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    return-object v2
.end method


# virtual methods
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

    .line 47
    const-wide/32 v0, 0x800000

    const-string v2, "PerformPrebakedVibratorStep"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 49
    :try_start_8
    iget-object v2, p0, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->segmentIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 50
    .local v2, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v3, v2, Landroid/os/vibrator/PrebakedSegment;

    const/4 v4, 0x1

    if-nez v3, :cond_3b

    .line 51
    const-string v3, "VibrationThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring wrong segment for a PerformPrebakedVibratorStep: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->skipToNextSteps(I)Ljava/util/List;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_96

    .line 84
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 53
    return-object v3

    .line 56
    :cond_3b
    :try_start_3b
    move-object v3, v2

    check-cast v3, Landroid/os/vibrator/PrebakedSegment;

    .line 63
    .local v3, "prebaked":Landroid/os/vibrator/PrebakedSegment;
    invoke-virtual {p0}, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/vibrator/Vibration;->getFallback(I)Landroid/os/VibrationEffect;

    move-result-object v5

    .line 64
    .local v5, "fallback":Landroid/os/VibrationEffect;
    iget-object v6, p0, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v6, v3, v7, v8}, Lcom/android/server/vibrator/VibratorController;->on(Landroid/os/vibrator/PrebakedSegment;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->mVibratorOnResult:J

    .line 66
    iget-wide v6, p0, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->mVibratorOnResult:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_8e

    invoke-virtual {v3}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v6

    if-eqz v6, :cond_8e

    instance-of v6, v5, Landroid/os/VibrationEffect$Composed;

    if-eqz v6, :cond_8e

    .line 72
    iget-object v7, p0, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v8, p0, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->startTime:J

    iget-object v10, p0, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    move-object v4, v5

    check-cast v4, Landroid/os/VibrationEffect$Composed;

    .line 73
    invoke-direct {p0, v4}, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->replaceCurrentSegment(Landroid/os/VibrationEffect$Composed;)Landroid/os/VibrationEffect$Composed;

    move-result-object v11

    iget v12, p0, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->segmentIndex:I

    iget-wide v13, p0, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->previousStepVibratorOffTimeout:J

    .line 72
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;

    move-result-object v4

    .line 75
    .local v4, "fallbackStep":Lcom/android/server/vibrator/AbstractVibratorStep;
    invoke-virtual {v4}, Lcom/android/server/vibrator/AbstractVibratorStep;->play()Ljava/util/List;

    move-result-object v6

    .line 78
    .local v6, "fallbackResult":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/Step;>;"
    invoke-virtual {v4}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorOnDuration()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->mVibratorOnResult:J
    :try_end_89
    .catchall {:try_start_3b .. :try_end_89} :catchall_96

    .line 79
    nop

    .line 84
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 79
    return-object v6

    .line 82
    .end local v4    # "fallbackStep":Lcom/android/server/vibrator/AbstractVibratorStep;
    .end local v6    # "fallbackResult":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/Step;>;"
    :cond_8e
    :try_start_8e
    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object v4
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_96

    .line 84
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 82
    return-object v4

    .line 84
    .end local v2    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v3    # "prebaked":Landroid/os/vibrator/PrebakedSegment;
    .end local v5    # "fallback":Landroid/os/VibrationEffect;
    :catchall_96
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 85
    throw v2
.end method
