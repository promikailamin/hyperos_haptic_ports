.class abstract Lcom/android/server/vibrator/AbstractVibratorStep;
.super Lcom/android/server/vibrator/Step;
.source "AbstractVibratorStep.java"


# instance fields
.field public final controller:Lcom/android/server/vibrator/VibratorController;

.field public final effect:Landroid/os/VibrationEffect$Composed;

.field mVibratorCompleteCallbackReceived:Z

.field mVibratorOnResult:J

.field public final previousStepVibratorOffTimeout:J

.field public final segmentIndex:I


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .registers 9
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;
    .param p2, "startTime"    # J
    .param p4, "controller"    # Lcom/android/server/vibrator/VibratorController;
    .param p5, "effect"    # Landroid/os/VibrationEffect$Composed;
    .param p6, "index"    # I
    .param p7, "previousStepVibratorOffTimeout"    # J

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/Step;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V

    .line 55
    iput-object p4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 56
    iput-object p5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 57
    iput p6, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    .line 58
    iput-wide p7, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->previousStepVibratorOffTimeout:J

    .line 59
    return-void
.end method


# virtual methods
.method public acceptVibratorCompleteCallback(I)Z
    .registers 9
    .param p1, "vibratorId"    # I

    .line 72
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    .line 73
    .local v0, "isSameVibrator":Z
    :goto_11
    iget-boolean v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    or-int/2addr v3, v0

    iput-boolean v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    .line 76
    if-eqz v0, :cond_23

    iget-wide v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->previousStepVibratorOffTimeout:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    return v1
.end method

.method public cancel()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/vibrator/Step;

    new-instance v9, Lcom/android/server/vibrator/CompleteEffectVibratorStep;

    iget-object v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v6, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-wide v7, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->previousStepVibratorOffTimeout:J

    const/4 v5, 0x1

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/server/vibrator/CompleteEffectVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JZLcom/android/server/vibrator/VibratorController;J)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public cancelImmediately()V
    .registers 5

    .line 87
    iget-wide v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->previousStepVibratorOffTimeout:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    .line 89
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    .line 91
    :cond_d
    return-void
.end method

.method protected changeAmplitude(F)V
    .registers 3
    .param p1, "amplitude"    # F

    .line 106
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibratorController;->setAmplitude(F)V

    .line 107
    return-void
.end method

.method public getVibratorId()I
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getId()I

    move-result v0

    return v0
.end method

.method public getVibratorOnDuration()J
    .registers 3

    .line 67
    iget-wide v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    return-wide v0
.end method

.method protected nextSteps(I)Ljava/util/List;
    .registers 12
    .param p1, "segmentsPlayed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 125
    iget-wide v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_d

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/AbstractVibratorStep;->skipToNextSteps(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 129
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    add-long/2addr v0, v2

    .line 130
    .local v0, "nextStartTime":J
    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v0

    .line 132
    .local v2, "nextVibratorOffTimeout":J
    move-object v4, p0

    move-wide v5, v0

    move-wide v7, v2

    move v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(JJI)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method protected nextSteps(JJI)Ljava/util/List;
    .registers 19
    .param p1, "nextStartTime"    # J
    .param p3, "vibratorOffTimeout"    # J
    .param p5, "segmentsPlayed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 144
    move-object v0, p0

    iget v1, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    add-int v1, v1, p5

    .line 145
    .local v1, "nextSegmentIndex":I
    iget-object v2, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 146
    .local v2, "effectSize":I
    iget-object v3, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v3

    .line 147
    .local v3, "repeatIndex":I
    if-lt v1, v2, :cond_20

    if-ltz v3, :cond_20

    .line 149
    sub-int v4, v2, v3

    .line 150
    .local v4, "loopSize":I
    sub-int v5, v1, v2

    rem-int/2addr v5, v4

    add-int v1, v3, v5

    .line 152
    .end local v4    # "loopSize":I
    :cond_20
    iget-object v5, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v8, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v9, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    move-wide v6, p1

    move v10, v1

    move-wide/from16 v11, p3

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;

    move-result-object v4

    .line 154
    .local v4, "nextStep":Lcom/android/server/vibrator/Step;
    if-nez v4, :cond_33

    sget-object v5, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    goto :goto_3d

    :cond_33
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/android/server/vibrator/Step;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    :goto_3d
    return-object v5
.end method

.method protected skipToNextSteps(I)Ljava/util/List;
    .registers 8
    .param p1, "segmentsSkipped"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 114
    iget-wide v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->startTime:J

    iget-wide v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->previousStepVibratorOffTimeout:J

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(JJI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected stopVibrating()V
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->off()V

    .line 99
    return-void
.end method
