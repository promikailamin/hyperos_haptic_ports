.class final Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "ComposePrimitivesVibratorStep.java"


# static fields
.field private static final DEFAULT_COMPOSITION_SIZE_LIMIT:I = 0x64


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .registers 22
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;
    .param p2, "startTime"    # J
    .param p4, "controller"    # Lcom/android/server/vibrator/VibratorController;
    .param p5, "effect"    # Landroid/os/VibrationEffect$Composed;
    .param p6, "index"    # I
    .param p7, "previousStepVibratorOffTimeout"    # J

    .line 46
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

    .line 48
    return-void
.end method

.method private unrollPrimitiveSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;
    .registers 10
    .param p1, "effect"    # Landroid/os/VibrationEffect$Composed;
    .param p2, "startIndex"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibrationEffect$Composed;",
            "II)",
            "Ljava/util/List<",
            "Landroid/os/vibrator/PrimitiveSegment;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/PrimitiveSegment;>;"
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 97
    .local v1, "segmentCount":I
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    .line 99
    .local v2, "repeatIndex":I
    move v3, p2

    .local v3, "i":I
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, p3, :cond_34

    .line 100
    if-ne v3, v1, :cond_1d

    .line 101
    if-ltz v2, :cond_34

    .line 102
    move v3, v2

    .line 108
    :cond_1d
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    .line 109
    .local v4, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v5, v4, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v5, :cond_34

    .line 110
    move-object v5, v4

    check-cast v5, Landroid/os/vibrator/PrimitiveSegment;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v4    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 117
    .end local v3    # "i":I
    :cond_34
    return-object v0
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

    .line 52
    const-wide/32 v0, 0x800000

    const-string v2, "ComposePrimitivesStep"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 56
    :try_start_8
    iget-object v2, p0, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getCompositionSizeMax()I

    move-result v2

    .line 57
    .local v2, "limit":I
    iget-object v3, p0, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v4, p0, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;->segmentIndex:I

    .line 58
    if-lez v2, :cond_1a

    move v5, v2

    goto :goto_1c

    :cond_1a
    const/16 v5, 0x64

    .line 57
    :goto_1c
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;->unrollPrimitiveSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;

    move-result-object v3

    .line 60
    .local v3, "primitives":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/PrimitiveSegment;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 61
    const-string v4, "VibrationThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring wrong segment for a ComposePrimitivesStep: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 62
    invoke-virtual {v6}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v6

    iget v7, p0, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;->segmentIndex:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;->skipToNextSteps(I)Ljava/util/List;

    move-result-object v4
    :try_end_4f
    .catchall {:try_start_8 .. :try_end_4f} :catchall_79

    .line 76
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 63
    return-object v4

    .line 70
    :cond_53
    :try_start_53
    iget-object v4, p0, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 71
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/os/vibrator/PrimitiveSegment;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/vibrator/PrimitiveSegment;

    .line 72
    invoke-virtual {p0}, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/server/vibrator/Vibration;->id:J

    .line 70
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/vibrator/VibratorController;->on([Landroid/os/vibrator/PrimitiveSegment;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;->mVibratorOnResult:J

    .line 74
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object v4
    :try_end_75
    .catchall {:try_start_53 .. :try_end_75} :catchall_79

    .line 76
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 74
    return-object v4

    .line 76
    .end local v2    # "limit":I
    .end local v3    # "primitives":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/PrimitiveSegment;>;"
    :catchall_79
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 77
    throw v2
.end method
