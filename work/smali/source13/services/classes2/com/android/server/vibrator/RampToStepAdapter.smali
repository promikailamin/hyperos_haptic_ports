.class final Lcom/android/server/vibrator/RampToStepAdapter;
.super Ljava/lang/Object;
.source "RampToStepAdapter.java"

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
.field private final mStepDuration:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "stepDuration"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/android/server/vibrator/RampToStepAdapter;->mStepDuration:I

    .line 41
    return-void
.end method

.method private apply(Landroid/os/VibratorInfo;Landroid/os/vibrator/RampSegment;)Ljava/util/List;
    .registers 13
    .param p1, "info"    # Landroid/os/VibratorInfo;
    .param p2, "ramp"    # Landroid/os/vibrator/RampSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibratorInfo;",
            "Landroid/os/vibrator/RampSegment;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/vibrator/StepSegment;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v0

    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2f

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/vibrator/StepSegment;

    const/4 v1, 0x0

    new-instance v2, Landroid/os/vibrator/StepSegment;

    .line 73
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v3

    .line 74
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v4

    invoke-static {p1, v4}, Lcom/android/server/vibrator/RampToStepAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v4

    .line 75
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-direct {v2, v3, v4, v5}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    aput-object v2, v0, v1

    .line 72
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 78
    :cond_2f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "steps":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/StepSegment;>;"
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v1

    iget v3, p0, Lcom/android/server/vibrator/RampToStepAdapter;->mStepDuration:I

    int-to-long v4, v3

    add-long/2addr v1, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v1, v4

    long-to-int v1, v1

    div-int/2addr v1, v3

    .line 80
    .local v1, "stepCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_42
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_76

    .line 81
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 83
    .local v3, "pos":F
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v4

    invoke-static {p1, v4}, Lcom/android/server/vibrator/RampToStepAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v4

    .line 84
    .local v4, "startFrequencyHz":F
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v5

    invoke-static {p1, v5}, Lcom/android/server/vibrator/RampToStepAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v5

    .line 85
    .local v5, "endFrequencyHz":F
    new-instance v6, Landroid/os/vibrator/StepSegment;

    .line 86
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v7

    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v8

    invoke-static {v7, v8, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v7

    .line 87
    invoke-static {v4, v5, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v8

    iget v9, p0, Lcom/android/server/vibrator/RampToStepAdapter;->mStepDuration:I

    invoke-direct {v6, v7, v8, v9}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    .line 85
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v3    # "pos":F
    .end local v4    # "startFrequencyHz":F
    .end local v5    # "endFrequencyHz":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 90
    .end local v2    # "i":I
    :cond_76
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, p0, Lcom/android/server/vibrator/RampToStepAdapter;->mStepDuration:I

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 91
    .local v2, "duration":I
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v3

    invoke-static {p1, v3}, Lcom/android/server/vibrator/RampToStepAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v3

    .line 92
    .local v3, "endFrequencyHz":F
    new-instance v4, Landroid/os/vibrator/StepSegment;

    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v5

    invoke-direct {v4, v5, v3, v2}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-object v0
.end method

.method private static fillEmptyFrequency(Landroid/os/VibratorInfo;F)F
    .registers 3
    .param p0, "info"    # Landroid/os/VibratorInfo;
    .param p1, "frequencyHz"    # F

    .line 97
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


# virtual methods
.method public apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I
    .registers 9
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

    .line 46
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    const-wide/16 v0, 0x400

    invoke-virtual {p3, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 48
    return p2

    .line 50
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 51
    .local v0, "segmentCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_36

    .line 52
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 53
    .local v2, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v3, v2, Landroid/os/vibrator/RampSegment;

    if-nez v3, :cond_1b

    .line 54
    goto :goto_33

    .line 56
    :cond_1b
    move-object v3, v2

    check-cast v3, Landroid/os/vibrator/RampSegment;

    invoke-direct {p0, p3, v3}, Lcom/android/server/vibrator/RampToStepAdapter;->apply(Landroid/os/VibratorInfo;Landroid/os/vibrator/RampSegment;)Ljava/util/List;

    move-result-object v3

    .line 57
    .local v3, "steps":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/StepSegment;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 58
    invoke-interface {p1, v1, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 59
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 60
    .local v4, "addedSegments":I
    if-le p2, v1, :cond_31

    .line 61
    add-int/2addr p2, v4

    .line 63
    :cond_31
    add-int/2addr v1, v4

    .line 64
    add-int/2addr v0, v4

    .line 51
    .end local v2    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v3    # "steps":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/StepSegment;>;"
    .end local v4    # "addedSegments":I
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 66
    .end local v1    # "i":I
    :cond_36
    return p2
.end method

.method public bridge synthetic apply(Ljava/util/List;ILjava/lang/Object;)I
    .registers 4

    .line 35
    check-cast p3, Landroid/os/VibratorInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/RampToStepAdapter;->apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I

    move-result p1

    return p1
.end method
