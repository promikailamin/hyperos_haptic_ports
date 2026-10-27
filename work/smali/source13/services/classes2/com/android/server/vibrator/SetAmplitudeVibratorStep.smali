.class final Lcom/android/server/vibrator/SetAmplitudeVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "SetAmplitudeVibratorStep.java"


# static fields
.field private static final REPEATING_EFFECT_ON_DURATION:I = 0x1388


# instance fields
.field private mNextOffTime:J


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .registers 9
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;
    .param p2, "startTime"    # J
    .param p4, "controller"    # Lcom/android/server/vibrator/VibratorController;
    .param p5, "effect"    # Landroid/os/VibrationEffect$Composed;
    .param p6, "index"    # I
    .param p7, "previousStepVibratorOffTimeout"    # J

    .line 48
    invoke-direct/range {p0 .. p8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 49
    iput-wide p7, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    .line 50
    return-void
.end method

.method private getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J
    .registers 12
    .param p1, "effect"    # Landroid/os/VibrationEffect$Composed;
    .param p2, "startIndex"    # I

    .line 163
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    .line 164
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 165
    .local v1, "segmentCount":I
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    .line 166
    .local v2, "repeatIndex":I
    move v3, p2

    .line 167
    .local v3, "i":I
    const-wide/16 v4, 0x0

    .line 168
    .local v4, "timing":J
    :goto_f
    if-ge v3, v1, :cond_3f

    .line 169
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/vibrator/VibrationEffectSegment;

    .line 170
    .local v6, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v7, v6, Landroid/os/vibrator/StepSegment;

    if-eqz v7, :cond_3f

    move-object v7, v6

    check-cast v7, Landroid/os/vibrator/StepSegment;

    .line 171
    invoke-virtual {v7}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_28

    .line 172
    goto :goto_3f

    .line 174
    :cond_28
    invoke-virtual {v6}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v7

    add-long/2addr v4, v7

    .line 175
    add-int/lit8 v3, v3, 0x1

    .line 176
    if-ne v3, v1, :cond_35

    if-ltz v2, :cond_35

    .line 177
    move v3, v2

    .line 179
    const/4 v2, -0x1

    .line 181
    :cond_35
    if-ne v3, p2, :cond_3e

    .line 182
    const-wide/16 v7, 0x1388

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    return-wide v7

    .line 184
    .end local v6    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    :cond_3e
    goto :goto_f

    .line 185
    :cond_3f
    :goto_3f
    if-ne v3, v1, :cond_51

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v6

    if-gez v6, :cond_51

    .line 188
    iget-object v6, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v6, v6, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationSettings;->getRampDownDuration()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 190
    :cond_51
    return-wide v4
.end method

.method private startVibrating(J)J
    .registers 6
    .param p1, "duration"    # J

    .line 147
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerServiceStub;->getInstance()Lcom/android/server/vibrator/VibratorManagerServiceStub;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget v1, v1, Lcom/android/server/vibrator/Vibration;->uid:I

    .line 147
    invoke-interface {v0, p1, p2, v1}, Lcom/android/server/vibrator/VibratorManagerServiceStub;->weakenVibrationIfNecessary(JI)J

    move-result-wide p1

    .line 154
    iget-object v0, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/vibrator/VibratorController;->on(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private turnVibratorBackOn(J)J
    .registers 10
    .param p1, "remainingDuration"    # J

    .line 129
    iget-object v0, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v1, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->segmentIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J

    move-result-wide v0

    .line 130
    .local v0, "onDuration":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_11

    .line 132
    iget-wide v2, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->previousStepVibratorOffTimeout:J

    return-wide v2

    .line 134
    :cond_11
    add-long/2addr v0, p1

    .line 135
    iget-object v4, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibratorController;->getCurrentAmplitude()F

    move-result v4

    .line 136
    .local v4, "expectedAmplitude":F
    invoke-direct {p0, v0, v1}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startVibrating(J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mVibratorOnResult:J

    .line 137
    iget-wide v5, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mVibratorOnResult:J

    cmp-long v2, v5, v2

    if-lez v2, :cond_27

    .line 139
    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->changeAmplitude(F)V

    .line 141
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    const-wide/16 v5, 0x3e8

    add-long/2addr v2, v5

    return-wide v2
.end method


# virtual methods
.method public acceptVibratorCompleteCallback(I)Z
    .registers 8
    .param p1, "vibratorId"    # I

    .line 54
    iget-object v0, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_15

    .line 55
    iput-boolean v1, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mVibratorCompleteCallbackReceived:Z

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    .line 61
    :cond_15
    iget-wide v2, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    iget-wide v4, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startTime:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getCurrentAmplitude()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    return v1
.end method

.method public play()Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 69
    move-object/from16 v7, p0

    const-wide/32 v8, 0x800000

    const-string v0, "SetAmplitudeVibratorStep"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 71
    :try_start_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v10, v0

    .line 72
    .local v10, "now":J
    iget-wide v0, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startTime:J

    sub-long v12, v10, v0

    .line 78
    .local v12, "latency":J
    iget-boolean v0, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mVibratorCompleteCallbackReceived:Z

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_51

    cmp-long v0, v12, v2

    if-gez v0, :cond_51

    .line 81
    neg-long v2, v12

    invoke-direct {v7, v2, v3}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->turnVibratorBackOn(J)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    .line 82
    new-array v0, v1, [Lcom/android/server/vibrator/Step;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;

    iget-object v15, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v3, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startTime:J

    iget-object v5, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v6, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v14, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->segmentIndex:I

    iget-wide v8, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    move/from16 v20, v14

    move-object v14, v2

    move-wide/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v21, v8

    invoke-direct/range {v14 .. v22}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_4a
    .catchall {:try_start_a .. :try_end_4a} :catchall_f0

    .line 124
    const-wide/32 v1, 0x800000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 82
    return-object v0

    .line 86
    :cond_51
    :try_start_51
    iget-object v0, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    iget v4, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->segmentIndex:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    .line 87
    .local v0, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v4, v0, Landroid/os/vibrator/StepSegment;

    if-nez v4, :cond_86

    .line 88
    const-string v2, "VibrationThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring wrong segment for a SetAmplitudeVibratorStep: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v7, v1}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->skipToNextSteps(I)Ljava/util/List;

    move-result-object v1
    :try_end_7f
    .catchall {:try_start_51 .. :try_end_7f} :catchall_f0

    .line 124
    const-wide/32 v2, 0x800000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 90
    return-object v1

    .line 93
    :cond_86
    :try_start_86
    move-object v4, v0

    check-cast v4, Landroid/os/vibrator/StepSegment;

    move-object v8, v4

    .line 94
    .local v8, "stepSegment":Landroid/os/vibrator/StepSegment;
    invoke-virtual {v8}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_9d

    .line 96
    invoke-virtual {v7, v1}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->skipToNextSteps(I)Ljava/util/List;

    move-result-object v1
    :try_end_96
    .catchall {:try_start_86 .. :try_end_96} :catchall_f0

    .line 124
    const-wide/32 v2, 0x800000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 96
    return-object v1

    .line 99
    :cond_9d
    :try_start_9d
    invoke-virtual {v8}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v1

    move v9, v1

    .line 100
    .local v9, "amplitude":F
    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-nez v1, :cond_b3

    .line 101
    iget-wide v1, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->previousStepVibratorOffTimeout:J

    cmp-long v1, v1, v10

    if-lez v1, :cond_d7

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->stopVibrating()V

    .line 104
    iput-wide v10, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    goto :goto_d7

    .line 107
    :cond_b3
    iget-wide v4, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startTime:J

    iget-wide v14, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    cmp-long v1, v4, v14

    if-ltz v1, :cond_d4

    .line 110
    iget-object v1, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v4, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->segmentIndex:I

    invoke-direct {v7, v1, v4}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J

    move-result-wide v4

    .line 111
    .local v4, "onDuration":J
    cmp-long v1, v4, v2

    if-lez v1, :cond_d4

    .line 112
    invoke-direct {v7, v4, v5}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startVibrating(J)J

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mVibratorOnResult:J

    .line 113
    add-long v1, v10, v4

    const-wide/16 v14, 0x3e8

    add-long/2addr v1, v14

    iput-wide v1, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    .line 117
    .end local v4    # "onDuration":J
    :cond_d4
    invoke-virtual {v7, v9}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->changeAmplitude(F)V

    .line 121
    :cond_d7
    :goto_d7
    iget-wide v1, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startTime:J

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v3

    add-long v14, v1, v3

    .line 122
    .local v14, "nextStartTime":J
    iget-wide v4, v7, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-wide v2, v14

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->nextSteps(JJI)Ljava/util/List;

    move-result-object v1
    :try_end_e9
    .catchall {:try_start_9d .. :try_end_e9} :catchall_f0

    .line 124
    const-wide/32 v2, 0x800000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 122
    return-object v1

    .line 124
    .end local v0    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v8    # "stepSegment":Landroid/os/vibrator/StepSegment;
    .end local v9    # "amplitude":F
    .end local v10    # "now":J
    .end local v12    # "latency":J
    .end local v14    # "nextStartTime":J
    :catchall_f0
    move-exception v0

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 125
    throw v0
.end method
