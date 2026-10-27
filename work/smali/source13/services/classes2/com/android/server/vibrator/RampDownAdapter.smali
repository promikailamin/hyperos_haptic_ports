.class final Lcom/android/server/vibrator/RampDownAdapter;
.super Ljava/lang/Object;
.source "RampDownAdapter.java"

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


# instance fields
.field private final mRampDownDuration:I

.field private final mStepDuration:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .param p1, "rampDownDuration"    # I
    .param p2, "stepDuration"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    .line 51
    iput p2, p0, Lcom/android/server/vibrator/RampDownAdapter;->mStepDuration:I

    .line 52
    return-void
.end method

.method private addRampDownToLoop(Ljava/util/List;I)I
    .registers 12
    .param p2, "repeatIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)I"
        }
    .end annotation

    .line 150
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    if-gez p2, :cond_3

    .line 152
    return p2

    .line 155
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 156
    .local v0, "segmentCount":I
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v1}, Lcom/android/server/vibrator/RampDownAdapter;->endsWithNonZeroAmplitude(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 157
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v1}, Lcom/android/server/vibrator/RampDownAdapter;->isOffSegment(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_95

    .line 162
    :cond_22
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    .line 163
    .local v1, "lastSegment":Landroid/os/vibrator/VibrationEffectSegment;
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 164
    .local v2, "offSegment":Landroid/os/vibrator/VibrationEffectSegment;
    invoke-virtual {v2}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v3

    .line 166
    .local v3, "offDuration":J
    iget v5, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v6, v5

    cmp-long v6, v3, v6

    if-lez v6, :cond_4f

    .line 172
    int-to-long v5, v5

    sub-long v5, v3, v5

    invoke-static {v2, v5, v6}, Lcom/android/server/vibrator/RampDownAdapter;->updateDuration(Landroid/os/vibrator/VibrationEffectSegment;J)Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object v5

    invoke-interface {p1, p2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget v5, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lcom/android/server/vibrator/RampDownAdapter;->updateDuration(Landroid/os/vibrator/VibrationEffectSegment;J)Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object v5

    invoke-interface {p1, p2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 177
    :cond_4f
    add-int/lit8 p2, p2, 0x1

    .line 178
    instance-of v5, v1, Landroid/os/vibrator/StepSegment;

    if-eqz v5, :cond_72

    .line 179
    move-object v5, v1

    check-cast v5, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v5}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v5

    .line 180
    .local v5, "previousAmplitude":F
    move-object v6, v1

    check-cast v6, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v6}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v6

    .line 181
    .local v6, "previousFrequency":F
    iget v7, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v7, v7

    .line 182
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 181
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/server/vibrator/RampDownAdapter;->createStepsDown(FFJ)Ljava/util/List;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .end local v5    # "previousAmplitude":F
    .end local v6    # "previousFrequency":F
    goto :goto_93

    .line 183
    :cond_72
    instance-of v5, v1, Landroid/os/vibrator/RampSegment;

    if-eqz v5, :cond_93

    .line 184
    move-object v5, v1

    check-cast v5, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v5}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v5

    .line 185
    .restart local v5    # "previousAmplitude":F
    move-object v6, v1

    check-cast v6, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v6

    .line 186
    .restart local v6    # "previousFrequency":F
    iget v7, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v7, v7

    .line 187
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 186
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/vibrator/RampDownAdapter;->createRampDown(FFJ)Landroid/os/vibrator/RampSegment;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 183
    .end local v5    # "previousAmplitude":F
    .end local v6    # "previousFrequency":F
    :cond_93
    :goto_93
    nop

    .line 190
    :goto_94
    return p2

    .line 159
    .end local v1    # "lastSegment":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v2    # "offSegment":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v3    # "offDuration":J
    :cond_95
    :goto_95
    return p2
.end method

.method private addRampDownToZeroAmplitudeSegments(Ljava/util/List;I)I
    .registers 20
    .param p2, "repeatIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)I"
        }
    .end annotation

    .line 80
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 81
    .local v2, "segmentCount":I
    const/4 v3, 0x1

    move v4, v3

    move v3, v2

    move/from16 v2, p2

    .end local p2    # "repeatIndex":I
    .local v2, "repeatIndex":I
    .local v3, "segmentCount":I
    .local v4, "i":I
    :goto_d
    if-ge v4, v3, :cond_bb

    .line 82
    add-int/lit8 v5, v4, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/vibrator/VibrationEffectSegment;

    .line 83
    .local v5, "previousSegment":Landroid/os/vibrator/VibrationEffectSegment;
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v6}, Lcom/android/server/vibrator/RampDownAdapter;->isOffSegment(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_b7

    .line 84
    invoke-static {v5}, Lcom/android/server/vibrator/RampDownAdapter;->endsWithNonZeroAmplitude(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 85
    goto/16 :goto_b7

    .line 88
    :cond_2c
    const/4 v6, 0x0

    .line 89
    .local v6, "replacementSegments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v8}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v8

    .line 91
    .local v8, "offDuration":J
    instance-of v10, v5, Landroid/os/vibrator/StepSegment;

    if-eqz v10, :cond_51

    .line 92
    move-object v10, v5

    check-cast v10, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v10}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v10

    .line 93
    .local v10, "previousAmplitude":F
    move-object v11, v5

    check-cast v11, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v11}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v11

    .line 95
    .local v11, "previousFrequency":F
    nop

    .line 96
    invoke-direct {v0, v10, v11, v8, v9}, Lcom/android/server/vibrator/RampDownAdapter;->createStepsDown(FFJ)Ljava/util/List;

    move-result-object v6

    .line 97
    .end local v10    # "previousAmplitude":F
    .end local v11    # "previousFrequency":F
    move-wide v15, v8

    move v8, v7

    goto :goto_99

    :cond_51
    instance-of v10, v5, Landroid/os/vibrator/RampSegment;

    if-eqz v10, :cond_97

    .line 98
    move-object v10, v5

    check-cast v10, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v10}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v10

    .line 99
    .restart local v10    # "previousAmplitude":F
    move-object v11, v5

    check-cast v11, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v11}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v11

    .line 101
    .restart local v11    # "previousFrequency":F
    iget v12, v0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v13, v12

    cmp-long v13, v8, v13

    const/4 v14, 0x0

    if-gtz v13, :cond_7a

    .line 104
    new-array v12, v7, [Landroid/os/vibrator/VibrationEffectSegment;

    .line 105
    invoke-static {v10, v11, v8, v9}, Lcom/android/server/vibrator/RampDownAdapter;->createRampDown(FFJ)Landroid/os/vibrator/RampSegment;

    move-result-object v13

    aput-object v13, v12, v14

    .line 104
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-wide v15, v8

    move v8, v7

    goto :goto_99

    .line 109
    :cond_7a
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/os/vibrator/VibrationEffectSegment;

    move-wide v15, v8

    .end local v8    # "offDuration":J
    .local v15, "offDuration":J
    int-to-long v7, v12

    .line 110
    invoke-static {v10, v11, v7, v8}, Lcom/android/server/vibrator/RampDownAdapter;->createRampDown(FFJ)Landroid/os/vibrator/RampSegment;

    move-result-object v7

    aput-object v7, v13, v14

    const/4 v7, 0x0

    iget v8, v0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v8, v8

    sub-long v8, v15, v8

    .line 111
    invoke-static {v7, v11, v8, v9}, Lcom/android/server/vibrator/RampDownAdapter;->createRampDown(FFJ)Landroid/os/vibrator/RampSegment;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v13, v8

    .line 109
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_99

    .line 97
    .end local v10    # "previousAmplitude":F
    .end local v11    # "previousFrequency":F
    .end local v15    # "offDuration":J
    .restart local v8    # "offDuration":J
    :cond_97
    move-wide v15, v8

    move v8, v7

    .line 115
    .end local v8    # "offDuration":J
    .restart local v15    # "offDuration":J
    :goto_99
    if-eqz v6, :cond_b7

    .line 116
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v8

    .line 118
    .local v7, "segmentsAdded":I
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/vibrator/VibrationEffectSegment;

    .line 119
    .local v8, "originalOffSegment":Landroid/os/vibrator/VibrationEffectSegment;
    invoke-interface {v1, v4, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 120
    if-lt v2, v4, :cond_b5

    .line 121
    if-ne v2, v4, :cond_b4

    .line 124
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v2, v2, 0x1

    .line 126
    add-int/lit8 v3, v3, 0x1

    .line 128
    :cond_b4
    add-int/2addr v2, v7

    .line 130
    :cond_b5
    add-int/2addr v4, v7

    .line 131
    add-int/2addr v3, v7

    .line 81
    .end local v5    # "previousSegment":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v6    # "replacementSegments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    .end local v7    # "segmentsAdded":I
    .end local v8    # "originalOffSegment":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v15    # "offDuration":J
    :cond_b7
    :goto_b7
    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto/16 :goto_d

    .line 134
    .end local v4    # "i":I
    :cond_bb
    return v2
.end method

.method private static createRampDown(FFJ)Landroid/os/vibrator/RampSegment;
    .registers 11
    .param p0, "amplitude"    # F
    .param p1, "frequency"    # F
    .param p2, "duration"    # J

    .line 208
    new-instance v6, Landroid/os/vibrator/RampSegment;

    long-to-int v5, p2

    const/4 v2, 0x0

    move-object v0, v6

    move v1, p0

    move v3, p1

    move v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    return-object v6
.end method

.method private createStepsDown(FFJ)Ljava/util/List;
    .registers 12
    .param p1, "amplitude"    # F
    .param p2, "frequency"    # F
    .param p3, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFJ)",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;"
        }
    .end annotation

    .line 196
    iget v0, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v0, v0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/android/server/vibrator/RampDownAdapter;->mStepDuration:I

    div-int/2addr v0, v1

    .line 197
    .local v0, "stepCount":I
    int-to-float v1, v0

    div-float v1, p1, v1

    .line 198
    .local v1, "amplitudeStep":F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v2, "steps":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_14
    if-ge v3, v0, :cond_27

    .line 200
    new-instance v4, Landroid/os/vibrator/StepSegment;

    int-to-float v5, v3

    mul-float/2addr v5, v1

    sub-float v5, p1, v5

    iget v6, p0, Lcom/android/server/vibrator/RampDownAdapter;->mStepDuration:I

    invoke-direct {v4, v5, p2, v6}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 202
    .end local v3    # "i":I
    :cond_27
    long-to-int v3, p3

    iget v4, p0, Lcom/android/server/vibrator/RampDownAdapter;->mStepDuration:I

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 203
    .local v3, "remainingDuration":I
    new-instance v4, Landroid/os/vibrator/StepSegment;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p2, v3}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    return-object v2
.end method

.method private static endsWithNonZeroAmplitude(Landroid/os/vibrator/VibrationEffectSegment;)Z
    .registers 5
    .param p0, "segment"    # Landroid/os/vibrator/VibrationEffectSegment;

    .line 239
    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_15

    .line 240
    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    return v1

    .line 241
    :cond_15
    instance-of v0, p0, Landroid/os/vibrator/RampSegment;

    if-eqz v0, :cond_27

    .line 242
    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_25

    goto :goto_26

    :cond_25
    move v1, v3

    :goto_26
    return v1

    .line 244
    :cond_27
    return v3
.end method

.method private static isOffSegment(Landroid/os/vibrator/VibrationEffectSegment;)Z
    .registers 6
    .param p0, "segment"    # Landroid/os/vibrator/VibrationEffectSegment;

    .line 227
    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_15

    .line 228
    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/StepSegment;

    .line 229
    .local v0, "ramp":Landroid/os/vibrator/StepSegment;
    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v4

    cmpl-float v3, v4, v3

    if-nez v3, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    return v1

    .line 230
    .end local v0    # "ramp":Landroid/os/vibrator/StepSegment;
    :cond_15
    instance-of v0, p0, Landroid/os/vibrator/RampSegment;

    if-eqz v0, :cond_2f

    .line 231
    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/RampSegment;

    .line 232
    .local v0, "ramp":Landroid/os/vibrator/RampSegment;
    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_2d

    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v4

    cmpl-float v3, v4, v3

    if-nez v3, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v2

    :goto_2e
    return v1

    .line 234
    .end local v0    # "ramp":Landroid/os/vibrator/RampSegment;
    :cond_2f
    return v2
.end method

.method private static updateDuration(Landroid/os/vibrator/VibrationEffectSegment;J)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 11
    .param p0, "segment"    # Landroid/os/vibrator/VibrationEffectSegment;
    .param p1, "newDuration"    # J

    .line 214
    instance-of v0, p0, Landroid/os/vibrator/RampSegment;

    if-eqz v0, :cond_1f

    .line 215
    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/RampSegment;

    .line 216
    .local v0, "ramp":Landroid/os/vibrator/RampSegment;
    new-instance v7, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v2

    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v3

    .line 217
    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v4

    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v5

    long-to-int v6, p1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 216
    return-object v7

    .line 218
    .end local v0    # "ramp":Landroid/os/vibrator/RampSegment;
    :cond_1f
    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    if-eqz v0, :cond_35

    .line 219
    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/StepSegment;

    .line 220
    .local v0, "step":Landroid/os/vibrator/StepSegment;
    new-instance v1, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v2

    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v3

    long-to-int v4, p1

    invoke-direct {v1, v2, v3, v4}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    return-object v1

    .line 222
    .end local v0    # "step":Landroid/os/vibrator/StepSegment;
    :cond_35
    return-object p0
.end method


# virtual methods
.method public apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I
    .registers 5
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

    .line 57
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    iget v0, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    if-gtz v0, :cond_5

    .line 59
    return p2

    .line 61
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/RampDownAdapter;->addRampDownToZeroAmplitudeSegments(Ljava/util/List;I)I

    move-result p2

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/RampDownAdapter;->addRampDownToLoop(Ljava/util/List;I)I

    move-result p2

    .line 63
    return p2
.end method

.method public bridge synthetic apply(Ljava/util/List;ILjava/lang/Object;)I
    .registers 4

    .line 45
    check-cast p3, Landroid/os/VibratorInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/RampDownAdapter;->apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I

    move-result p1

    return p1
.end method
