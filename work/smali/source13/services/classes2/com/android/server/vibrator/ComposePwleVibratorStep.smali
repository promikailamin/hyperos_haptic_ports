.class final Lcom/android/server/vibrator/ComposePwleVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "ComposePwleVibratorStep.java"


# static fields
.field private static final DEFAULT_PWLE_SIZE_LIMIT:I = 0x64


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .registers 22
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;
    .param p2, "startTime"    # J
    .param p4, "controller"    # Lcom/android/server/vibrator/VibratorController;
    .param p5, "effect"    # Landroid/os/VibrationEffect$Composed;
    .param p6, "index"    # I
    .param p7, "previousStepVibratorOffTimeout"    # J

    .line 47
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

    .line 49
    return-void
.end method

.method private isBetterBreakPosition(Ljava/util/List;FI)Z
    .registers 10
    .param p2, "currentBestBreakAmplitude"    # F
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/RampSegment;",
            ">;FI)Z"
        }
    .end annotation

    .line 143
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/RampSegment;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/RampSegment;

    .line 144
    .local v0, "lastSegment":Landroid/os/vibrator/RampSegment;
    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v2

    .line 145
    .local v2, "breakAmplitudeCandidate":F
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 147
    .local v3, "breakPositionCandidate":I
    const/4 v4, 0x0

    if-le v3, p3, :cond_18

    .line 149
    return v4

    .line 151
    :cond_18
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-nez v5, :cond_1e

    .line 153
    return v1

    .line 155
    :cond_1e
    div-int/lit8 v5, p3, 0x2

    if-ge v3, v5, :cond_23

    .line 158
    return v4

    .line 161
    :cond_23
    cmpg-float v5, v2, p2

    if-gtz v5, :cond_28

    goto :goto_29

    :cond_28
    move v1, v4

    :goto_29
    return v1
.end method

.method private unrollRampSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;
    .registers 13
    .param p1, "effect"    # Landroid/os/VibrationEffect$Composed;
    .param p2, "startIndex"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibrationEffect$Composed;",
            "II)",
            "Ljava/util/List<",
            "Landroid/os/vibrator/RampSegment;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/RampSegment;>;"
    const/high16 v1, 0x3f800000    # 1.0f

    .line 98
    .local v1, "bestBreakAmplitude":F
    move v2, p3

    .line 100
    .local v2, "bestBreakPosition":I
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 101
    .local v3, "segmentCount":I
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v4

    .line 105
    .local v4, "repeatIndex":I
    move v5, p2

    .local v5, "i":I
    :goto_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, p3, :cond_45

    .line 106
    if-ne v5, v3, :cond_20

    .line 107
    if-ltz v4, :cond_45

    .line 108
    move v5, v4

    .line 114
    :cond_20
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/vibrator/VibrationEffectSegment;

    .line 115
    .local v6, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v7, v6, Landroid/os/vibrator/RampSegment;

    if-eqz v7, :cond_45

    .line 116
    move-object v7, v6

    check-cast v7, Landroid/os/vibrator/RampSegment;

    .line 117
    .local v7, "rampSegment":Landroid/os/vibrator/RampSegment;
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/vibrator/ComposePwleVibratorStep;->isBetterBreakPosition(Ljava/util/List;FI)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 121
    invoke-virtual {v7}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v1

    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 105
    .end local v6    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v7    # "rampSegment":Landroid/os/vibrator/RampSegment;
    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 130
    .end local v5    # "i":I
    :cond_45
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, p3, :cond_51

    .line 132
    const/4 v5, 0x0

    invoke-interface {v0, v5, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    goto :goto_52

    .line 134
    :cond_51
    move-object v5, v0

    .line 130
    :goto_52
    return-object v5
.end method


# virtual methods
.method public play()Ljava/util/List;
    .registers 9
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

    const-string v2, "ComposePwleStep"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 57
    :try_start_8
    iget-object v2, p0, Lcom/android/server/vibrator/ComposePwleVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getPwleSizeMax()I

    move-result v2

    .line 58
    .local v2, "limit":I
    iget-object v3, p0, Lcom/android/server/vibrator/ComposePwleVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v4, p0, Lcom/android/server/vibrator/ComposePwleVibratorStep;->segmentIndex:I

    .line 59
    if-lez v2, :cond_1a

    move v5, v2

    goto :goto_1c

    :cond_1a
    const/16 v5, 0x64

    .line 58
    :goto_1c
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/vibrator/ComposePwleVibratorStep;->unrollRampSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;

    move-result-object v3

    .line 61
    .local v3, "pwles":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/RampSegment;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 62
    const-string v4, "VibrationThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring wrong segment for a ComposePwleStep: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/vibrator/ComposePwleVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 63
    invoke-virtual {v6}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v6

    iget v7, p0, Lcom/android/server/vibrator/ComposePwleVibratorStep;->segmentIndex:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/ComposePwleVibratorStep;->skipToNextSteps(I)Ljava/util/List;

    move-result-object v4
    :try_end_4f
    .catchall {:try_start_8 .. :try_end_4f} :catchall_79

    .line 76
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 64
    return-object v4

    .line 71
    :cond_53
    :try_start_53
    iget-object v4, p0, Lcom/android/server/vibrator/ComposePwleVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/os/vibrator/RampSegment;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/vibrator/RampSegment;

    .line 72
    invoke-virtual {p0}, Lcom/android/server/vibrator/ComposePwleVibratorStep;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/server/vibrator/Vibration;->id:J

    .line 71
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/vibrator/VibratorController;->on([Landroid/os/vibrator/RampSegment;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/vibrator/ComposePwleVibratorStep;->mVibratorOnResult:J

    .line 74
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/ComposePwleVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object v4
    :try_end_75
    .catchall {:try_start_53 .. :try_end_75} :catchall_79

    .line 76
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 74
    return-object v4

    .line 76
    .end local v2    # "limit":I
    .end local v3    # "pwles":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/RampSegment;>;"
    :catchall_79
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 77
    throw v2
.end method
