.class final Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;
.super Ljava/lang/Object;
.source "ClippingAmplitudeAndFrequencyAdapter.java"

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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply(Landroid/os/vibrator/RampSegment;Landroid/os/VibratorInfo;)Landroid/os/vibrator/RampSegment;
    .registers 12
    .param p1, "segment"    # Landroid/os/vibrator/RampSegment;
    .param p2, "info"    # Landroid/os/VibratorInfo;

    .line 61
    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampFrequency(Landroid/os/VibratorInfo;F)F

    move-result v0

    .line 62
    .local v0, "clampedStartFrequency":F
    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampFrequency(Landroid/os/VibratorInfo;F)F

    move-result v7

    .line 63
    .local v7, "clampedEndFrequency":F
    new-instance v8, Landroid/os/vibrator/RampSegment;

    .line 64
    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampAmplitude(Landroid/os/VibratorInfo;FF)F

    move-result v2

    .line 65
    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v1

    invoke-direct {p0, p2, v7, v1}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampAmplitude(Landroid/os/VibratorInfo;FF)F

    move-result v3

    .line 68
    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v4

    long-to-int v6, v4

    move-object v1, v8

    move v4, v0

    move v5, v7

    invoke-direct/range {v1 .. v6}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 63
    return-object v8
.end method

.method private apply(Landroid/os/vibrator/StepSegment;Landroid/os/VibratorInfo;)Landroid/os/vibrator/StepSegment;
    .registers 8
    .param p1, "segment"    # Landroid/os/vibrator/StepSegment;
    .param p2, "info"    # Landroid/os/VibratorInfo;

    .line 53
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampFrequency(Landroid/os/VibratorInfo;F)F

    move-result v0

    .line 54
    .local v0, "clampedFrequency":F
    new-instance v1, Landroid/os/vibrator/StepSegment;

    .line 55
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v2

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampAmplitude(Landroid/os/VibratorInfo;FF)F

    move-result v2

    .line 57
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {v1, v2, v0, v3}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    .line 54
    return-object v1
.end method

.method private clampAmplitude(Landroid/os/VibratorInfo;FF)F
    .registers 6
    .param p1, "info"    # Landroid/os/VibratorInfo;
    .param p2, "frequencyHz"    # F
    .param p3, "amplitude"    # F

    .line 80
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v0

    .line 81
    .local v0, "mapping":Landroid/os/VibratorInfo$FrequencyProfile;
    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 84
    return p3

    .line 86
    :cond_b
    invoke-virtual {v0, p2}, Landroid/os/VibratorInfo$FrequencyProfile;->getMaxAmplitude(F)F

    move-result v1

    invoke-static {p3, v1}, Landroid/util/MathUtils;->min(FF)F

    move-result v1

    return v1
.end method

.method private clampFrequency(Landroid/os/VibratorInfo;F)F
    .registers 5
    .param p1, "info"    # Landroid/os/VibratorInfo;
    .param p2, "frequencyHz"    # F

    .line 72
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v0

    .line 73
    .local v0, "frequencyRangeHz":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_1f

    if-nez v0, :cond_10

    goto :goto_1f

    .line 76
    :cond_10
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 74
    :cond_1f
    :goto_1f
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result v1

    return v1
.end method


# virtual methods
.method public apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I
    .registers 8
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

    .line 40
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 41
    .local v0, "segmentCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2d

    .line 42
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 43
    .local v2, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v3, v2, Landroid/os/vibrator/StepSegment;

    if-eqz v3, :cond_1c

    .line 44
    move-object v3, v2

    check-cast v3, Landroid/os/vibrator/StepSegment;

    invoke-direct {p0, v3, p3}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->apply(Landroid/os/vibrator/StepSegment;Landroid/os/VibratorInfo;)Landroid/os/vibrator/StepSegment;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 45
    :cond_1c
    instance-of v3, v2, Landroid/os/vibrator/RampSegment;

    if-eqz v3, :cond_2a

    .line 46
    move-object v3, v2

    check-cast v3, Landroid/os/vibrator/RampSegment;

    invoke-direct {p0, v3, p3}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->apply(Landroid/os/vibrator/RampSegment;Landroid/os/VibratorInfo;)Landroid/os/vibrator/RampSegment;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 41
    .end local v2    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 49
    .end local v1    # "i":I
    :cond_2d
    return p2
.end method

.method public bridge synthetic apply(Ljava/util/List;ILjava/lang/Object;)I
    .registers 4

    .line 35
    check-cast p3, Landroid/os/VibratorInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I

    move-result p1

    return p1
.end method
