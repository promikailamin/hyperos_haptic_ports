.class public Landroid/os/VibratorStubImpl;
.super Ljava/lang/Object;
.source "VibratorStubImpl.java"

# interfaces
.implements Landroid/os/VibratorStub;


# static fields
.field private static final blacklist INFINITE_LEVEL:Z

.field private static final blacklist LINEAR_MOTOR:Z


# instance fields
.field private blacklist VIBRATE_CONVERT_DEVICE_SUPPORT:Z

.field private blacklist VIBRATE_CONVERT_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 21
    const-string v0, "sys.haptic.motor"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "linear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/VibratorStubImpl;->LINEAR_MOTOR:Z

    .line 22
    const-string v0, "sys.haptic.infinitelevel"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/VibratorStubImpl;->INFINITE_LEVEL:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist obtainAmplitudeFromStepSegment(Landroid/os/vibrator/StepSegment;)I
    .registers 5
    .param p1, "stepSegment"    # Landroid/os/vibrator/StepSegment;

    .line 130
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v0

    .line 131
    .local v0, "floatAmplitude":F
    float-to-int v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    .line 132
    return v2

    .line 134
    :cond_9
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private static blacklist obtainId(J)I
    .registers 6
    .param p0, "milliseconds"    # J

    .line 116
    const/16 v0, 0x8

    .line 117
    .local v0, "effectId":I
    const-wide/16 v1, 0xf

    cmp-long v1, p0, v1

    const-wide/16 v2, 0x19

    if-lez v1, :cond_10

    cmp-long v1, p0, v2

    if-gtz v1, :cond_10

    .line 118
    const/4 v0, 0x3

    goto :goto_34

    .line 119
    :cond_10
    cmp-long v1, p0, v2

    const-wide/16 v2, 0x23

    if-lez v1, :cond_1d

    cmp-long v1, p0, v2

    if-gtz v1, :cond_1d

    .line 120
    const/16 v0, 0x9

    goto :goto_34

    .line 121
    :cond_1d
    cmp-long v1, p0, v2

    const-wide/16 v2, 0x2d

    if-lez v1, :cond_29

    cmp-long v1, p0, v2

    if-gtz v1, :cond_29

    .line 122
    const/4 v0, 0x0

    goto :goto_34

    .line 123
    :cond_29
    cmp-long v1, p0, v2

    if-lez v1, :cond_34

    const-wide/16 v1, 0x37

    cmp-long v1, p0, v1

    if-gtz v1, :cond_34

    .line 124
    const/4 v0, 0x6

    .line 126
    :cond_34
    :goto_34
    return v0
.end method


# virtual methods
.method public blacklist obtainOverlayVibrationEffect(Landroid/os/vibrator/StepSegment;)Landroid/os/VibrationEffect;
    .registers 4
    .param p1, "stepSegment"    # Landroid/os/vibrator/StepSegment;

    .line 55
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/VibratorStubImpl;->obtainId(J)I

    move-result v0

    .line 56
    .local v0, "effectId":I
    invoke-static {v0}, Lmiui/util/VibrateUtils;->getVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method public blacklist obtainStepSegment(Landroid/os/VibrationEffect;)Landroid/os/vibrator/StepSegment;
    .registers 5
    .param p1, "vibe"    # Landroid/os/VibrationEffect;

    .line 38
    instance-of v0, p1, Landroid/os/VibrationEffect$Composed;

    if-eqz v0, :cond_1c

    .line 39
    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    .line 40
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    if-eqz v0, :cond_1c

    .line 41
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    .line 42
    .local v1, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v2, v1, Landroid/os/vibrator/StepSegment;

    if-eqz v2, :cond_1c

    .line 43
    move-object v2, v1

    check-cast v2, Landroid/os/vibrator/StepSegment;

    return-object v2

    .line 47
    .end local v0    # "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    .end local v1    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist obtainVibrationReason(Landroid/os/vibrator/StepSegment;)Ljava/lang/String;
    .registers 10
    .param p1, "stepSegment"    # Landroid/os/vibrator/StepSegment;

    .line 67
    sget-boolean v0, Landroid/os/VibratorStubImpl;->INFINITE_LEVEL:Z

    if-eqz v0, :cond_52

    .line 68
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/VibratorStubImpl;->obtainId(J)I

    move-result v0

    .line 69
    .local v0, "effectId":I
    invoke-direct {p0, p1}, Landroid/os/VibratorStubImpl;->obtainAmplitudeFromStepSegment(Landroid/os/vibrator/StepSegment;)I

    move-result v1

    .line 70
    .local v1, "amplitude":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    .line 71
    const/16 v1, 0xff

    .line 72
    :cond_15
    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    const-wide v6, 0x406fc00000000000L    # 254.0

    div-double/2addr v2, v6

    const-wide/high16 v6, 0x3fe4000000000000L    # 0.625

    mul-double/2addr v2, v6

    const-wide/high16 v6, 0x3fd8000000000000L    # 0.375

    add-double/2addr v2, v6

    .line 73
    .local v2, "suitIntensity":D
    cmpg-double v6, v2, v6

    if-gez v6, :cond_2b

    const-wide/high16 v2, 0x3fd8000000000000L    # 0.375

    .line 74
    :cond_2b
    cmpl-double v4, v2, v4

    if-lez v4, :cond_31

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 75
    :cond_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HapticFeedbackUtil"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {v0, v2, v3}, Lmiui/util/VibrateUtils;->packEffectToReason(ID)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 78
    .end local v0    # "effectId":I
    .end local v1    # "amplitude":I
    .end local v2    # "suitIntensity":D
    :cond_52
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist overlayByMiui(Landroid/os/vibrator/StepSegment;Ljava/lang/String;)Z
    .registers 8
    .param p1, "stepSegment"    # Landroid/os/vibrator/StepSegment;
    .param p2, "opPkg"    # Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    if-eqz p1, :cond_47

    .line 94
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v1

    .line 95
    .local v1, "milliseconds":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_47

    const-wide/16 v3, 0x37

    cmp-long v3, v1, v3

    if-gtz v3, :cond_47

    sget-boolean v3, Landroid/os/VibratorStubImpl;->LINEAR_MOTOR:Z

    if-eqz v3, :cond_47

    .line 96
    iget-object v3, p0, Landroid/os/VibratorStubImpl;->VIBRATE_CONVERT_PACKAGE_LIST:Ljava/util/List;

    if-nez v3, :cond_39

    .line 97
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1105008d

    .line 98
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/os/VibratorStubImpl;->VIBRATE_CONVERT_DEVICE_SUPPORT:Z

    .line 99
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110300bc

    .line 100
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "overlayPackages":[Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Landroid/os/VibratorStubImpl;->VIBRATE_CONVERT_PACKAGE_LIST:Ljava/util/List;

    .line 103
    .end local v3    # "overlayPackages":[Ljava/lang/String;
    :cond_39
    iget-object v3, p0, Landroid/os/VibratorStubImpl;->VIBRATE_CONVERT_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-boolean v3, p0, Landroid/os/VibratorStubImpl;->VIBRATE_CONVERT_DEVICE_SUPPORT:Z

    if-eqz v3, :cond_46

    const/4 v0, 0x1

    :cond_46
    return v0

    .line 107
    .end local v1    # "milliseconds":J
    :cond_47
    return v0
.end method
