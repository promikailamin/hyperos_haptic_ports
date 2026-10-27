.class public final Lcom/android/server/notification/VibratorHelper;
.super Ljava/lang/Object;
.source "VibratorHelper.java"


# static fields
.field private static final DEFAULT_VIBRATE_PATTERN:[J

.field private static final TAG:Ljava/lang/String; = "NotificationVibratorHelper"

.field private static final VIBRATE_PATTERN_MAXLEN:I = 0x11


# instance fields
.field private final mDefaultPattern:[J

.field private final mDefaultPwlePattern:[F

.field private final mFallbackPattern:[J

.field private final mFallbackPwlePattern:[F

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const/4 v0, 0x4

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
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/VibratorHelper;->DEFAULT_VIBRATE_PATTERN:[J

    const v2, 0x107003f

    const/16 v3, 0x11

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/notification/VibratorHelper;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultPattern:[J

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1070092

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/notification/VibratorHelper;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mFallbackPattern:[J

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070040

    invoke-static {v0, v1}, Lcom/android/server/notification/VibratorHelper;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultPwlePattern:[F

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070093

    invoke-static {v0, v1}, Lcom/android/server/notification/VibratorHelper;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mFallbackPwlePattern:[F

    .line 68
    return-void
.end method

.method public static createPwleWaveformVibration([FZ)Landroid/os/VibrationEffect;
    .registers 9
    .param p0, "values"    # [F
    .param p1, "insistent"    # Z

    .line 108
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 109
    return-object v0

    .line 112
    :cond_4
    :try_start_4
    array-length v1, p0

    .line 114
    .local v1, "length":I
    if-eqz v1, :cond_45

    rem-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_c

    goto :goto_45

    .line 118
    :cond_c
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v2

    .line 119
    .local v2, "waveformBuilder":Landroid/os/VibrationEffect$WaveformBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v1, :cond_31

    .line 120
    add-int/lit8 v4, v3, 0x2

    aget v4, p0, v4

    float-to-int v4, v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v4

    aget v5, p0, v3

    .line 121
    invoke-static {v5}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    aget v6, p0, v6

    invoke-static {v6}, Landroid/os/VibrationEffect$VibrationParameter;->targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v6

    .line 120
    invoke-virtual {v2, v4, v5, v6}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 119
    add-int/lit8 v3, v3, 0x3

    goto :goto_11

    .line 124
    .end local v3    # "i":I
    :cond_31
    invoke-virtual {v2}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v3

    .line 125
    .local v3, "effect":Landroid/os/VibrationEffect;
    if-eqz p1, :cond_44

    .line 126
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v4

    .line 127
    invoke-virtual {v4, v3}, Landroid/os/VibrationEffect$Composition;->repeatEffectIndefinitely(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    move-result-object v4

    .line 128
    invoke-virtual {v4}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0
    :try_end_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_43} :catch_46

    .line 126
    return-object v0

    .line 130
    :cond_44
    return-object v3

    .line 115
    .end local v2    # "waveformBuilder":Landroid/os/VibrationEffect$WaveformBuilder;
    .end local v3    # "effect":Landroid/os/VibrationEffect;
    :cond_45
    :goto_45
    return-object v0

    .line 131
    .end local v1    # "length":I
    :catch_46
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating vibration PWLE waveform with pattern: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 133
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    const-string v3, "NotificationVibratorHelper"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    return-object v0
.end method

.method public static createWaveformVibration([JZ)Landroid/os/VibrationEffect;
    .registers 5
    .param p0, "pattern"    # [J
    .param p1, "insistent"    # Z

    .line 82
    if-eqz p0, :cond_2a

    .line 83
    if-eqz p1, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, -0x1

    :goto_7
    :try_start_7
    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v0

    .line 85
    :catch_c
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating vibration waveform with pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 87
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string v2, "NotificationVibratorHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 88
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2a
    nop

    .line 89
    :goto_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getFloatArray(Landroid/content/res/Resources;I)[F
    .registers 6
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .line 187
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 189
    .local v0, "array":Landroid/content/res/TypedArray;
    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 190
    .local v1, "values":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, v1

    if-ge v2, v3, :cond_26

    .line 191
    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 192
    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_2b

    if-eqz v3, :cond_23

    .line 193
    const/4 v3, 0x0

    .line 198
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    return-object v3

    .line 190
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 196
    .end local v2    # "i":I
    :cond_26
    nop

    .line 198
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    return-object v1

    .line 198
    .end local v1    # "values":[F
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    throw v1
.end method

.method private static getLongArray(Landroid/content/res/Resources;II[J)[J
    .registers 10
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "maxLength"    # I
    .param p3, "def"    # [J

    .line 203
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 204
    .local v0, "ar":[I
    if-nez v0, :cond_7

    .line 205
    return-object p3

    .line 207
    :cond_7
    array-length v1, v0

    if-le v1, p2, :cond_c

    move v1, p2

    goto :goto_d

    :cond_c
    array-length v1, v0

    .line 208
    .local v1, "len":I
    :goto_d
    new-array v2, v1, [J

    .line 209
    .local v2, "out":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v1, :cond_1a

    .line 210
    aget v4, v0, v3

    int-to-long v4, v4

    aput-wide v4, v2, v3

    .line 209
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 212
    .end local v3    # "i":I
    :cond_1a
    return-object v2
.end method


# virtual methods
.method public cancelVibration()V
    .registers 3

    .line 150
    const/16 v0, -0xf

    .line 152
    .local v0, "usageFilter":I
    iget-object v1, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, v0}, Landroid/os/Vibrator;->cancel(I)V

    .line 153
    return-void
.end method

.method public createDefaultVibration(Z)Landroid/os/VibrationEffect;
    .registers 3
    .param p1, "insistent"    # Z

    .line 176
    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasFrequencyControl()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 177
    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultPwlePattern:[F

    invoke-static {v0, p1}, Lcom/android/server/notification/VibratorHelper;->createPwleWaveformVibration([FZ)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 178
    .local v0, "effect":Landroid/os/VibrationEffect;
    if-eqz v0, :cond_11

    .line 179
    return-object v0

    .line 182
    .end local v0    # "effect":Landroid/os/VibrationEffect;
    :cond_11
    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultPattern:[J

    invoke-static {v0, p1}, Lcom/android/server/notification/VibratorHelper;->createWaveformVibration([JZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public createFallbackVibration(Z)Landroid/os/VibrationEffect;
    .registers 3
    .param p1, "insistent"    # Z

    .line 161
    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasFrequencyControl()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 162
    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mFallbackPwlePattern:[F

    invoke-static {v0, p1}, Lcom/android/server/notification/VibratorHelper;->createPwleWaveformVibration([FZ)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 163
    .local v0, "effect":Landroid/os/VibrationEffect;
    if-eqz v0, :cond_11

    .line 164
    return-object v0

    .line 167
    .end local v0    # "effect":Landroid/os/VibrationEffect;
    :cond_11
    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mFallbackPattern:[J

    invoke-static {v0, p1}, Lcom/android/server/notification/VibratorHelper;->createWaveformVibration([JZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V
    .registers 10
    .param p1, "effect"    # Landroid/os/VibrationEffect;
    .param p2, "attrs"    # Landroid/media/AudioAttributes;
    .param p3, "reason"    # Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v1, p2}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 145
    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v5

    .line 144
    const/16 v1, 0x3e8

    const-string v2, "android"

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 146
    return-void
.end method
