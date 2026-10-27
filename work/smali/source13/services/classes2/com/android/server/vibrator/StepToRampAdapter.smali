.class final Lcom/android/server/vibrator/StepToRampAdapter;
.super Ljava/lang/Object;
.source "StepToRampAdapter.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationEffectAdapters$SegmentsAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/vibrator/VibrationEffectAdapters$SegmentsAdapter<",
        "Landroid/os/VibratorInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;
    .registers 10
    .param p0, "info"    # Landroid/os/VibratorInfo;
    .param p1, "segment"    # Landroid/os/vibrator/StepSegment;

    .line 109
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/vibrator/StepToRampAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v0

    .line 110
    .local v0, "frequencyHz":F
    new-instance v7, Landroid/os/vibrator/RampSegment;

    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v3

    .line 111
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v4

    long-to-int v6, v4

    move-object v1, v7

    move v4, v0

    move v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 110
    return-object v7
.end method

.method private convertStepsToRamps(Landroid/os/VibratorInfo;Ljava/util/List;)V
    .registers 8
    .param p1, "info"    # Landroid/os/VibratorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibratorInfo;",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p2, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 53
    .local v0, "segmentCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2c

    .line 54
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 55
    .local v2, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    invoke-static {v2}, Lcom/android/server/vibrator/StepToRampAdapter;->isStep(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v3

    if-eqz v3, :cond_29

    move-object v3, v2

    check-cast v3, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v3}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_29

    .line 56
    move-object v3, v2

    check-cast v3, Landroid/os/vibrator/StepSegment;

    invoke-static {p1, v3}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v2    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 61
    .end local v1    # "i":I
    :cond_2c
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2d
    if-ge v1, v0, :cond_7a

    .line 62
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/os/vibrator/RampSegment;

    if-eqz v2, :cond_77

    .line 63
    add-int/lit8 v2, v1, -0x1

    .local v2, "j":I
    :goto_39
    if-ltz v2, :cond_57

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v3}, Lcom/android/server/vibrator/StepToRampAdapter;->isStep(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 64
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/StepSegment;

    invoke-static {p1, v3}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 63
    add-int/lit8 v2, v2, -0x1

    goto :goto_39

    .line 66
    .end local v2    # "j":I
    :cond_57
    add-int/lit8 v2, v1, 0x1

    .restart local v2    # "j":I
    :goto_59
    if-ge v2, v0, :cond_77

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v3}, Lcom/android/server/vibrator/StepToRampAdapter;->isStep(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 67
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/StepSegment;

    invoke-static {p1, v3}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 61
    .end local v2    # "j":I
    :cond_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 71
    .end local v1    # "i":I
    :cond_7a
    return-void
.end method

.method private static fillEmptyFrequency(Landroid/os/VibratorInfo;F)F
    .registers 3
    .param p0, "info"    # Landroid/os/VibratorInfo;
    .param p1, "frequencyHz"    # F

    .line 151
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result v0

    goto :goto_b

    :cond_a
    move v0, p1

    :goto_b
    return v0
.end method

.method private static isStep(Landroid/os/vibrator/VibrationEffectSegment;)Z
    .registers 2
    .param p0, "segment"    # Landroid/os/vibrator/VibrationEffectSegment;

    .line 147
    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    return v0
.end method

.method private splitLongRampSegments(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .registers 11
    .param p1, "info"    # Landroid/os/VibratorInfo;
    .param p3, "repeatIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibratorInfo;",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)I"
        }
    .end annotation

    .line 79
    .local p2, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getPwlePrimitiveDurationMax()I

    move-result v0

    .line 80
    .local v0, "maxDuration":I
    if-gtz v0, :cond_7

    .line 82
    return p3

    .line 85
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 86
    .local v1, "segmentCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_3c

    .line 87
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/os/vibrator/RampSegment;

    const/4 v4, 0x1

    if-nez v3, :cond_18

    .line 88
    goto :goto_3a

    .line 90
    :cond_18
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/RampSegment;

    .line 91
    .local v3, "ramp":Landroid/os/vibrator/RampSegment;
    invoke-virtual {v3}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v5

    long-to-int v5, v5

    add-int/2addr v5, v0

    sub-int/2addr v5, v4

    div-int/2addr v5, v0

    .line 92
    .local v5, "splits":I
    if-gt v5, v4, :cond_29

    .line 93
    goto :goto_3a

    .line 95
    :cond_29
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96
    invoke-static {p1, v3, v5}, Lcom/android/server/vibrator/StepToRampAdapter;->splitRampSegment(Landroid/os/VibratorInfo;Landroid/os/vibrator/RampSegment;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {p2, v2, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 97
    add-int/lit8 v6, v5, -0x1

    .line 98
    .local v6, "addedSegments":I
    if-le p3, v2, :cond_38

    .line 99
    add-int/2addr p3, v6

    .line 101
    :cond_38
    add-int/2addr v2, v6

    .line 102
    add-int/2addr v1, v6

    .line 86
    .end local v3    # "ramp":Landroid/os/vibrator/RampSegment;
    .end local v5    # "splits":I
    .end local v6    # "addedSegments":I
    :goto_3a
    add-int/2addr v2, v4

    goto :goto_c

    .line 105
    .end local v2    # "i":I
    :cond_3c
    return p3
.end method

.method private static splitRampSegment(Landroid/os/VibratorInfo;Landroid/os/vibrator/RampSegment;I)Ljava/util/List;
    .registers 25
    .param p0, "info"    # Landroid/os/VibratorInfo;
    .param p1, "ramp"    # Landroid/os/vibrator/RampSegment;
    .param p2, "splits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibratorInfo;",
            "Landroid/os/vibrator/RampSegment;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/vibrator/RampSegment;",
            ">;"
        }
    .end annotation

    .line 116
    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .local v2, "ramps":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/RampSegment;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/vibrator/StepToRampAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v3

    .line 118
    .local v3, "startFrequencyHz":F
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/vibrator/StepToRampAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v4

    .line 119
    .local v4, "endFrequencyHz":F
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v5

    int-to-long v7, v1

    div-long v11, v5, v7

    .line 120
    .local v11, "splitDuration":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v5

    .line 121
    .local v5, "previousAmplitude":F
    move v6, v3

    .line 122
    .local v6, "previousFrequency":F
    const-wide/16 v7, 0x0

    .line 124
    .local v7, "accumulatedDuration":J
    const/4 v9, 0x1

    move/from16 v19, v5

    move/from16 v20, v6

    move-wide v13, v7

    .end local v5    # "previousAmplitude":F
    .end local v6    # "previousFrequency":F
    .end local v7    # "accumulatedDuration":J
    .local v9, "i":I
    .local v13, "accumulatedDuration":J
    .local v19, "previousAmplitude":F
    .local v20, "previousFrequency":F
    :goto_2d
    if-ge v9, v1, :cond_6a

    .line 125
    add-long v5, v13, v11

    .line 126
    .end local v13    # "accumulatedDuration":J
    .local v5, "accumulatedDuration":J
    long-to-float v7, v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v13

    long-to-float v8, v13

    div-float/2addr v7, v8

    .line 127
    .local v7, "durationRatio":F
    nop

    .line 128
    invoke-static {v3, v4, v7}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v8

    .line 129
    .local v8, "interpolatedFrequency":F
    nop

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v13

    invoke-static {v10, v13, v7}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v10

    .line 131
    .local v10, "interpolatedAmplitude":F
    new-instance v21, Landroid/os/vibrator/RampSegment;

    long-to-int v15, v11

    move-object/from16 v13, v21

    move/from16 v14, v19

    move/from16 v18, v15

    move v15, v10

    move/from16 v16, v20

    move/from16 v17, v8

    invoke-direct/range {v13 .. v18}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 135
    .local v13, "rampSplit":Landroid/os/vibrator/RampSegment;
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v13}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v19

    .line 137
    invoke-virtual {v13}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v20

    .line 124
    .end local v7    # "durationRatio":F
    .end local v8    # "interpolatedFrequency":F
    .end local v10    # "interpolatedAmplitude":F
    .end local v13    # "rampSplit":Landroid/os/vibrator/RampSegment;
    add-int/lit8 v9, v9, 0x1

    move-wide v13, v5

    goto :goto_2d

    .line 140
    .end local v5    # "accumulatedDuration":J
    .end local v9    # "i":I
    .local v13, "accumulatedDuration":J
    :cond_6a
    new-instance v15, Landroid/os/vibrator/RampSegment;

    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v7

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v5

    sub-long/2addr v5, v13

    long-to-int v10, v5

    move-object v5, v15

    move/from16 v6, v19

    move/from16 v8, v20

    move v9, v4

    invoke-direct/range {v5 .. v10}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 140
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return-object v2
.end method


# virtual methods
.method public apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I
    .registers 6
    .param p2, "repeatIndex"    # I
    .param p3, "info"    # Landroid/os/VibratorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I",
            "Landroid/os/VibratorInfo;",
            ")I"
        }
    .end annotation

    .line 41
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    const-wide/16 v0, 0x400

    invoke-virtual {p3, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-nez v0, :cond_9

    .line 43
    return p2

    .line 45
    :cond_9
    invoke-direct {p0, p3, p1}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepsToRamps(Landroid/os/VibratorInfo;Ljava/util/List;)V

    .line 46
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/vibrator/StepToRampAdapter;->splitLongRampSegments(Landroid/os/VibratorInfo;Ljava/util/List;I)I

    move-result p2

    .line 47
    return p2
.end method

.method public bridge synthetic apply(Ljava/util/List;ILjava/lang/Object;)I
    .registers 4

    .line 36
    check-cast p3, Landroid/os/VibratorInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/StepToRampAdapter;->apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I

    move-result p1

    return p1
.end method
