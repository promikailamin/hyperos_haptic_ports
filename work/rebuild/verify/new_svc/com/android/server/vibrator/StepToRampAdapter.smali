.class public final Lcom/android/server/vibrator/StepToRampAdapter;
.super Ljava/lang/Object;
.source "StepToRampAdapter.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;
    .registers 9

    .line 69
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/vibrator/StepToRampAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v4

    .line 70
    new-instance v1, Landroid/os/vibrator/RampSegment;

    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v3

    .line 71
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide p0

    long-to-int v6, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    return-object v1
.end method

.method private static fillEmptyFrequency(Landroid/os/VibratorInfo;F)F
    .registers 3

    .line 79
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_15

    :cond_b
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_15

    .line 82
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result p0

    return p0

    :cond_15
    :goto_15
    return p1
.end method

.method public static isStep(Landroid/os/vibrator/VibrationEffectSegment;)Z
    .registers 1

    .line 75
    instance-of p0, p0, Landroid/os/vibrator/StepSegment;

    return p0
.end method


# virtual methods
.method public adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .registers 9

    const-wide/16 v0, 0x400

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_80

    .line 45
    :cond_a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, p0, :cond_33

    .line 48
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 49
    invoke-static {v2}, Lcom/android/server/vibrator/StepToRampAdapter;->isStep(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v3

    if-eqz v3, :cond_30

    check-cast v2, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v2}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_30

    .line 50
    invoke-static {p1, v2}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_33
    :goto_33
    if-ge v0, p0, :cond_80

    .line 56
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/os/vibrator/RampSegment;

    if-eqz v1, :cond_7d

    add-int/lit8 v1, v0, -0x1

    :goto_3f
    if-ltz v1, :cond_5d

    .line 57
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v2}, Lcom/android/server/vibrator/StepToRampAdapter;->isStep(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 58
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/StepSegment;

    invoke-static {p1, v2}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_3f

    :cond_5d
    add-int/lit8 v1, v0, 0x1

    :goto_5f
    if-ge v1, p0, :cond_7d

    .line 60
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v2}, Lcom/android/server/vibrator/StepToRampAdapter;->isStep(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 61
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/StepSegment;

    invoke-static {p1, v2}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_80
    :goto_80
    return p3
.end method
