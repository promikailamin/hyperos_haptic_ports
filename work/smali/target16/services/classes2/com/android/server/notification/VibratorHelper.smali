.class public final Lcom/android/server/notification/VibratorHelper;
.super Ljava/lang/Object;
.source "VibratorHelper.java"


# static fields
.field public static final DEFAULT_VIBRATE_PATTERN:[J


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDefaultPattern:[J

.field public final mDefaultPwlePattern:[F

.field public final mDefaultVibrationAmplitude:I

.field public final mFallbackPattern:[J

.field public final mFallbackPwlePattern:[F

.field public final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    .line 48
    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/notification/VibratorHelper;->DEFAULT_VIBRATE_PATTERN:[J

    return-void

    nop

    :array_a
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/VibratorHelper;->DEFAULT_VIBRATE_PATTERN:[J

    const v2, 0x107004c

    const/16 v3, 0x11

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/notification/VibratorHelper;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultPattern:[J

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10700b1

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/notification/VibratorHelper;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mFallbackPattern:[J

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107004d

    invoke-static {v0, v1}, Lcom/android/server/notification/VibratorHelper;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultPwlePattern:[F

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700b2

    invoke-static {v0, v1}, Lcom/android/server/notification/VibratorHelper;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mFallbackPwlePattern:[F

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultVibrationAmplitude:I

    .line 75
    iput-object p1, p0, Lcom/android/server/notification/VibratorHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createPwleWaveformVibration([FZ)Landroid/os/VibrationEffect;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 120
    :cond_4
    :try_start_4
    array-length v1, p0

    if-eqz v1, :cond_45

    .line 122
    rem-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_c

    goto :goto_45

    .line 126
    :cond_c
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v2

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v1, :cond_31

    add-int/lit8 v4, v3, 0x2

    .line 128
    aget v4, p0, v4

    float-to-int v4, v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v4

    aget v5, p0, v3

    .line 129
    invoke-static {v5}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    aget v6, p0, v6

    invoke-static {v6}, Landroid/os/VibrationEffect$VibrationParameter;->targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v6

    .line 128
    invoke-virtual {v2, v4, v5, v6}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    add-int/lit8 v3, v3, 0x3

    goto :goto_11

    .line 132
    :cond_31
    invoke-virtual {v2}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v1

    if-eqz p1, :cond_44

    .line 134
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object p1

    .line 135
    invoke-virtual {p1, v1}, Landroid/os/VibrationEffect$Composition;->repeatEffectIndefinitely(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p0
    :try_end_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_43} :catch_46

    return-object p0

    :cond_44
    return-object v1

    :cond_45
    :goto_45
    return-object v0

    .line 140
    :catch_46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error creating vibration PWLE waveform with pattern: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 140
    const-string p1, "NotificationVibratorHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static createWaveformVibration([JZ)Landroid/os/VibrationEffect;
    .registers 3

    if-eqz p0, :cond_26

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    const/4 p1, -0x1

    .line 91
    :goto_7
    :try_start_7
    invoke-static {p0, p1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_b} :catch_c

    return-object p0

    .line 94
    :catch_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error creating vibration waveform with pattern: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 94
    const-string p1, "NotificationVibratorHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFloatArray(Landroid/content/res/Resources;I)[F
    .registers 5

    .line 240
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 242
    :try_start_4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_25

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 244
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    aput v2, v0, v1

    .line 245
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_23

    if-eqz v2, :cond_20

    .line 251
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x0

    return-object p0

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :catchall_23
    move-exception p1

    goto :goto_29

    :cond_25
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :goto_29
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    throw p1
.end method

.method public static getLongArray(Landroid/content/res/Resources;II[J)[J
    .registers 6

    .line 256
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    if-nez p0, :cond_7

    return-object p3

    .line 260
    :cond_7
    array-length p1, p0

    if-le p1, p2, :cond_b

    goto :goto_c

    :cond_b
    array-length p2, p0

    .line 261
    :goto_c
    new-array p1, p2, [J

    const/4 p3, 0x0

    :goto_f
    if-ge p3, p2, :cond_19

    .line 263
    aget v0, p0, p3

    int-to-long v0, v0

    aput-wide v0, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_f

    :cond_19
    return-object p1
.end method


# virtual methods
.method public areEffectComponentsSupported(Landroid/os/VibrationEffect;)Z
    .registers 2

    .line 235
    iget-object p0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->areVibrationFeaturesSupported(Landroid/os/VibrationEffect;)Z

    move-result p0

    return p0
.end method

.method public cancelVibration()V
    .registers 2

    const/16 v0, -0xf

    .line 168
    iget-object p0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->cancel(I)V

    return-void
.end method

.method public createDefaultVibration(Z)Landroid/os/VibrationEffect;
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasFrequencyControl()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 203
    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultPwlePattern:[F

    invoke-static {v0, p1}, Lcom/android/server/notification/VibratorHelper;->createPwleWaveformVibration([FZ)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 208
    :cond_11
    iget-object p0, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultPattern:[J

    invoke-static {p0, p1}, Lcom/android/server/notification/VibratorHelper;->createWaveformVibration([JZ)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public createFallbackVibration(Z)Landroid/os/VibrationEffect;
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasFrequencyControl()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 178
    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mFallbackPwlePattern:[F

    invoke-static {v0, p1}, Lcom/android/server/notification/VibratorHelper;->createPwleWaveformVibration([FZ)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 183
    :cond_11
    iget-object p0, p0, Lcom/android/server/notification/VibratorHelper;->mFallbackPattern:[J

    invoke-static {p0, p1}, Lcom/android/server/notification/VibratorHelper;->createWaveformVibration([JZ)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public scale(Landroid/os/VibrationEffect;F)Landroid/os/VibrationEffect;
    .registers 3

    .line 151
    iget p0, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultVibrationAmplitude:I

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect;->resolve(I)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/VibrationEffect;->scale(F)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V
    .registers 10

    .line 160
    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    new-instance p0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p0, p2}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 161
    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v5

    const/16 v1, 0x3e8

    .line 160
    const-string v2, "android"

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    return-void
.end method
