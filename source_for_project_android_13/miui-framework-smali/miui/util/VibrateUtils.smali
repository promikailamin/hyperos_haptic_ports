.class public Lmiui/util/VibrateUtils;
.super Ljava/lang/Object;
.source "VibrateUtils.java"


# static fields
.field private static final blacklist DEFAULT_HAPTIC_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final blacklist FEATURE_HAPTIC_INFINITE_LEVEL:Z

.field private static final blacklist TAG:Ljava/lang/String; = "VibrateUtils"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 18
    const-string v0, "sys.haptic.infinitelevel"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/util/VibrateUtils;->FEATURE_HAPTIC_INFINITE_LEVEL:Z

    .line 19
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 20
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lmiui/util/VibrateUtils;->DEFAULT_HAPTIC_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 19
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getVibrationEffect(I)Landroid/os/VibrationEffect;
    .registers 5
    .param p0, "effectId"    # I

    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, "vibrationEffect":Landroid/os/VibrationEffect;
    :try_start_1
    invoke-static {p0}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    .line 129
    goto :goto_11

    .line 127
    :catch_7
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VibrateUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_11
    return-object v0
.end method

.method public static blacklist packEffectToReason(DLjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "suitIntensity"    # D
    .param p2, "reason"    # Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAG=haptic_feedback_infinite_intensity;intensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist packEffectToReason(ID)Ljava/lang/String;
    .registers 5
    .param p0, "effectId"    # I
    .param p1, "suitIntensity"    # D

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAG=haptic_feedback_config_strength;effectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";intensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist vibrate(Landroid/os/Vibrator;Z[JIILjava/lang/String;Landroid/os/VibrationAttributes;)V
    .registers 22
    .param p0, "vibrator"    # Landroid/os/Vibrator;
    .param p1, "isUsePrebakedEffect"    # Z
    .param p2, "pattern"    # [J
    .param p3, "effectStrength"    # I
    .param p4, "defaultEffectStrength"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "attributes"    # Landroid/os/VibrationAttributes;

    .line 25
    move-object v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    if-nez p6, :cond_b

    .line 26
    sget-object v0, Lmiui/util/VibrateUtils;->DEFAULT_HAPTIC_ATTRIBUTES:Landroid/os/VibrationAttributes;

    move-object v9, v0

    .end local p6    # "attributes":Landroid/os/VibrationAttributes;
    .local v0, "attributes":Landroid/os/VibrationAttributes;
    goto :goto_d

    .line 25
    .end local v0    # "attributes":Landroid/os/VibrationAttributes;
    .restart local p6    # "attributes":Landroid/os/VibrationAttributes;
    :cond_b
    move-object/from16 v9, p6

    .line 28
    .end local p6    # "attributes":Landroid/os/VibrationAttributes;
    .local v9, "attributes":Landroid/os/VibrationAttributes;
    :goto_d
    const/4 v0, 0x0

    if-eqz p1, :cond_66

    .line 29
    aget-wide v0, v7, v0

    long-to-int v10, v0

    .line 30
    .local v10, "effectId":I
    invoke-static {v10}, Lmiui/util/VibrateUtils;->getVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object v11

    .line 31
    .local v11, "vibrationEffect":Landroid/os/VibrationEffect;
    if-eqz v11, :cond_65

    .line 33
    packed-switch v8, :pswitch_data_76

    .line 41
    const-wide/high16 v0, 0x3fd8000000000000L    # 0.375

    move-wide v12, v0

    .local v0, "suitIntensity":D
    goto :goto_27

    .line 38
    .end local v0    # "suitIntensity":D
    :pswitch_20
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 39
    .restart local v0    # "suitIntensity":D
    move-wide v12, v0

    goto :goto_27

    .line 35
    .end local v0    # "suitIntensity":D
    :pswitch_24
    const-wide/high16 v0, 0x3fe4000000000000L    # 0.625

    .line 36
    .restart local v0    # "suitIntensity":D
    move-wide v12, v0

    .line 44
    .end local v0    # "suitIntensity":D
    .local v12, "suitIntensity":D
    :goto_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lmiui/util/VibrateUtils;->FEATURE_HAPTIC_INFINITE_LEVEL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HapticFeedbackUtil"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-eqz v1, :cond_61

    .line 46
    invoke-static {v10, v12, v13}, Lmiui/util/VibrateUtils;->packEffectToReason(ID)Ljava/lang/String;

    move-result-object v14

    .line 47
    .local v14, "reason":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    move-object v0, p0

    move-object/from16 v2, p5

    move-object v3, v11

    move-object v4, v14

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 48
    .end local v14    # "reason":Ljava/lang/String;
    goto :goto_64

    .line 49
    :cond_61
    invoke-virtual {p0, v11, v9}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 51
    :goto_64
    return-void

    .line 53
    .end local v12    # "suitIntensity":D
    :cond_65
    return-void

    .line 55
    .end local v10    # "effectId":I
    .end local v11    # "vibrationEffect":Landroid/os/VibrationEffect;
    :cond_66
    array-length v1, v7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_70

    .line 57
    aget-wide v0, v7, v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_74

    .line 60
    :cond_70
    const/4 v0, -0x1

    invoke-virtual {p0, v7, v0}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 62
    :goto_74
    return-void

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_24
        :pswitch_20
    .end packed-switch
.end method

.method static blacklist vibrate(Landroid/os/SystemVibrator;IDLjava/lang/String;Ljava/lang/String;Landroid/os/VibrationAttributes;)Z
    .registers 14
    .param p0, "vibrator"    # Landroid/os/SystemVibrator;
    .param p1, "effectId"    # I
    .param p2, "suitIntensity"    # D
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "attributes"    # Landroid/os/VibrationAttributes;

    .line 66
    if-nez p6, :cond_4

    .line 67
    sget-object p6, Lmiui/util/VibrateUtils;->DEFAULT_HAPTIC_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 69
    :cond_4
    invoke-static {p1}, Lmiui/util/VibrateUtils;->getVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object v6

    .line 70
    .local v6, "vibrationEffect":Landroid/os/VibrationEffect;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lmiui/util/VibrateUtils;->FEATURE_HAPTIC_INFINITE_LEVEL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HapticFeedbackUtil"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    if-eqz v1, :cond_41

    .line 72
    invoke-static {p2, p3, p5}, Lmiui/util/VibrateUtils;->packEffectToReason(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 73
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    move-object v0, p0

    move-object v2, p4

    move-object v3, v6

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/os/SystemVibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    goto :goto_44

    .line 75
    :cond_41
    invoke-virtual {p0, v6, p6}, Landroid/os/SystemVibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 77
    :goto_44
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist vibrateExt(Landroid/os/Vibrator;II)Z
    .registers 6
    .param p0, "vibrator"    # Landroid/os/Vibrator;
    .param p1, "effectId"    # I
    .param p2, "audioAttributesUsage"    # I

    .line 92
    invoke-static {p1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 93
    .local v0, "vibrationEffect":Landroid/os/VibrationEffect;
    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 95
    invoke-virtual {v2, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 97
    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v1

    .line 98
    .local v1, "attributes":Landroid/os/VibrationAttributes;
    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 99
    const/4 v2, 0x1

    return v2
.end method

.method public static blacklist vibrateExt(Landroid/os/Vibrator;ILandroid/os/VibrationAttributes;)Z
    .registers 5
    .param p0, "vibrator"    # Landroid/os/Vibrator;
    .param p1, "effectId"    # I
    .param p2, "attributes"    # Landroid/os/VibrationAttributes;

    .line 103
    if-nez p2, :cond_4

    .line 104
    sget-object p2, Lmiui/util/VibrateUtils;->DEFAULT_HAPTIC_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 106
    :cond_4
    invoke-static {p1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 107
    .local v0, "vibrationEffect":Landroid/os/VibrationEffect;
    invoke-virtual {p0, v0, p2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 108
    const/4 v1, 0x1

    return v1
.end method

.method public static blacklist vibrateExt(Landroid/os/Vibrator;Landroid/net/Uri;Landroid/content/Context;Landroid/os/VibrationAttributes;)Z
    .registers 6
    .param p0, "vibrator"    # Landroid/os/Vibrator;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attributes"    # Landroid/os/VibrationAttributes;

    .line 112
    if-nez p3, :cond_4

    .line 113
    sget-object p3, Lmiui/util/VibrateUtils;->DEFAULT_HAPTIC_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 115
    :cond_4
    invoke-static {p1, p2}, Landroid/os/VibrationEffect;->get(Landroid/net/Uri;Landroid/content/Context;)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 116
    .local v0, "vibrationEffect":Landroid/os/VibrationEffect;
    if-eqz v0, :cond_f

    .line 117
    invoke-virtual {p0, v0, p3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 118
    const/4 v1, 0x1

    return v1

    .line 120
    :cond_f
    const/4 v1, 0x0

    return v1
.end method
