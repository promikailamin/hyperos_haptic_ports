.class public final Lcom/android/server/vibrator/PwleSegmentsValidator;
.super Ljava/lang/Object;
.source "PwleSegmentsValidator.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsValidator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasValidSegments(Landroid/os/VibratorInfo;Ljava/util/List;)Z
    .registers 7

    const-wide/16 v0, 0x1000

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result p0

    .line 51
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/os/VibratorInfo$FrequencyProfile;->getMinFrequencyHz()F

    move-result v0

    .line 55
    invoke-virtual {p1}, Landroid/os/VibratorInfo$FrequencyProfile;->getMaxFrequencyHz()F

    move-result p1

    .line 57
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    .line 58
    instance-of v2, v1, Landroid/os/vibrator/BasicPwleSegment;

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    if-nez p0, :cond_2a

    return v3

    .line 61
    :cond_2a
    instance-of v2, v1, Landroid/os/vibrator/PwleSegment;

    if-eqz v2, :cond_16

    check-cast v1, Landroid/os/vibrator/PwleSegment;

    if-eqz p0, :cond_52

    .line 62
    invoke-virtual {v1}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v2

    cmpg-float v2, v2, v0

    if-ltz v2, :cond_52

    .line 63
    invoke-virtual {v1}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v2

    cmpl-float v2, v2, p1

    if-gtz v2, :cond_52

    .line 64
    invoke-virtual {v1}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v2

    cmpg-float v2, v2, v0

    if-ltz v2, :cond_52

    .line 65
    invoke-virtual {v1}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_16

    :cond_52
    return v3

    :cond_53
    const/4 p0, 0x1

    return p0
.end method
