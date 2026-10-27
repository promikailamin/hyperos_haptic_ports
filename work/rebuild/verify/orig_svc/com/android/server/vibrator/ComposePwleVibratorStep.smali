.class public final Lcom/android/server/vibrator/ComposePwleVibratorStep;
.super Lcom/android/server/vibrator/AbstractComposedVibratorStep;
.source "ComposePwleVibratorStep.java"


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/HalVibrator;Landroid/os/VibrationEffect$Composed;IJ)V
    .registers 9

    .line 47
    invoke-static {p2, p3, p7, p8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-direct/range {p0 .. p8}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/HalVibrator;Landroid/os/VibrationEffect$Composed;IJ)V

    return-void
.end method

.method private isBetterBreakPosition(Ljava/util/List;FI)Z
    .registers 7

    .line 146
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/vibrator/RampSegment;

    .line 147
    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result p0

    .line 148
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    if-le p1, p3, :cond_18

    return v1

    :cond_18
    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    if-nez v2, :cond_1e

    return v0

    .line 158
    :cond_1e
    div-int/lit8 p3, p3, 0x2

    if-ge p1, p3, :cond_23

    return v1

    :cond_23
    cmpg-float p0, p0, p2

    if-gtz p0, :cond_28

    return v0

    :cond_28
    return v1
.end method


# virtual methods
.method public play()Ljava/util/List;
    .registers 11

    .line 54
    const-string v0, "ComposePwleStep"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 58
    :try_start_8
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->vibrator:Lcom/android/server/vibrator/HalVibrator;

    invoke-interface {v0}, Lcom/android/server/vibrator/HalVibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getPwleSizeMax()I

    move-result v0

    .line 59
    iget-object v3, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v4, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    if-lez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/16 v0, 0x64

    :goto_1b
    invoke-virtual {p0, v3, v4, v0}, Lcom/android/server/vibrator/ComposePwleVibratorStep;->unrollRampSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_4f

    const-string v4, "VibrationThread"

    if-eqz v3, :cond_52

    .line 63
    :try_start_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring wrong segment for a ComposePwleStep: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 64
    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    iget v5, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->skipStep()Ljava/util/List;

    move-result-object p0
    :try_end_4b
    .catchall {:try_start_27 .. :try_end_4b} :catchall_4f

    .line 79
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_4f
    move-exception v0

    move-object p0, v0

    goto :goto_b8

    .line 68
    :cond_52
    :try_start_52
    sget-boolean v3, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z

    if-eqz v3, :cond_7c

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compose "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " PWLEs on vibrator "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->vibrator:Lcom/android/server/vibrator/HalVibrator;

    .line 70
    invoke-interface {v5}, Lcom/android/server/vibrator/HalVibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/VibratorInfo;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_7c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/vibrator/RampSegment;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, [Landroid/os/vibrator/RampSegment;

    .line 73
    iget-object v3, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibratorCallbackStepId(I)I

    move-result v3

    .line 74
    iget-object v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->vibrator:Lcom/android/server/vibrator/HalVibrator;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/server/vibrator/Vibration;->id:J

    int-to-long v7, v3

    invoke-interface/range {v4 .. v9}, Lcom/android/server/vibrator/HalVibrator;->on(JJ[Landroid/os/vibrator/RampSegment;)J

    move-result-wide v3

    .line 75
    invoke-virtual {p0, v3, v4}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)J

    .line 76
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v5, v3, v4, v9}, Lcom/android/server/vibrator/VibrationStats;->reportComposePwle(J[Landroid/os/vibrator/RampSegment;)V

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->vibratorOnNextSteps(I)Ljava/util/List;

    move-result-object p0
    :try_end_b4
    .catchall {:try_start_52 .. :try_end_b4} :catchall_4f

    .line 79
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :goto_b8
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 80
    throw p0
.end method

.method public final unrollRampSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;
    .registers 11

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 104
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    move v4, p3

    .line 108
    :goto_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, p3, :cond_43

    if-ne p2, v1, :cond_1f

    if-ltz v2, :cond_43

    move p2, v2

    .line 117
    :cond_1f
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/vibrator/VibrationEffectSegment;

    .line 118
    instance-of v6, v5, Landroid/os/vibrator/RampSegment;

    if-eqz v6, :cond_43

    .line 119
    check-cast v5, Landroid/os/vibrator/RampSegment;

    .line 120
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-direct {p0, v0, v3, p3}, Lcom/android/server/vibrator/ComposePwleVibratorStep;->isBetterBreakPosition(Ljava/util/List;FI)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 124
    invoke-virtual {v5}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v3

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    :cond_40
    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    .line 133
    :cond_43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, p3, :cond_4f

    const/4 p0, 0x0

    .line 135
    invoke-interface {v0, p0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4f
    return-object v0
.end method
