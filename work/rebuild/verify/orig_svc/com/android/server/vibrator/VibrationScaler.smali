.class public final Lcom/android/server/vibrator/VibrationScaler;
.super Ljava/lang/Object;
.source "VibrationScaler.java"


# instance fields
.field public final mAdaptiveHapticsScales:Landroid/util/SparseArray;

.field public final mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

.field public final mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Landroid/os/vibrator/VibrationConfig;Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    .line 65
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationScaler;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 66
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationScaler;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    return-void
.end method

.method public static intensityToEffectStrength(I)I
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v1, 0x2

    if-eq p0, v1, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1f

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got unexpected vibration intensity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VibrationScaler"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return v1

    :cond_20
    return v0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public static intensityToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    .line 352
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 351
    :cond_10
    const-string p0, "HIGH"

    return-object p0

    .line 350
    :cond_13
    const-string p0, "MEDIUM"

    return-object p0

    .line 349
    :cond_16
    const-string p0, "LOW"

    return-object p0

    .line 348
    :cond_19
    const-string p0, "OFF"

    return-object p0
.end method

.method public static scaleLevelToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x2

    if-eq p0, v0, :cond_1f

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1c

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    .line 342
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 341
    :cond_13
    const-string p0, "VERY_HIGH"

    return-object p0

    .line 340
    :cond_16
    const-string p0, "HIGH"

    return-object p0

    .line 339
    :cond_19
    const-string p0, "NONE"

    return-object p0

    .line 338
    :cond_1c
    const-string p0, "LOW"

    return-object p0

    .line 337
    :cond_1f
    const-string p0, "VERY_LOW"

    return-object p0
.end method


# virtual methods
.method public clearAdaptiveHapticsScales()V
    .registers 1

    .line 199
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 9

    .line 204
    const-string v0, "VibrationScaler:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 207
    const-string v0, "ScaleLevels:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, -0x2

    :goto_11
    const/4 v1, 0x2

    .line 209
    const-string v2, " = "

    if-gt v0, v1, :cond_36

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToScaleFactor(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 212
    :cond_36
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 214
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_8f

    .line 215
    const-string v0, "AdaptiveHapticsScales:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    .line 217
    :goto_4a
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_8b

    .line 218
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 219
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "%.2f"

    .line 221
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 223
    :cond_8b
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_94

    .line 225
    :cond_8f
    const-string v0, "AdaptiveHapticsScales = null"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 228
    :goto_94
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationScaler;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationConfig;->hasVibrationScaleFactors()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_d0

    .line 229
    const-string v0, "DeviceConfigVibrationScales:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v0, v4

    :goto_a8
    if-gt v0, v3, :cond_cc

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationScaler;->intensityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/vibrator/VibrationScaler;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 234
    invoke-virtual {v6, v0, v1}, Landroid/os/vibrator/VibrationConfig;->getVibrationScaleFactor(IF)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 233
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a8

    .line 236
    :cond_cc
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_d5

    .line 238
    :cond_d0
    const-string v0, "DeviceConfigVibrationScales = null"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 241
    :goto_d5
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationScaler;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationConfig;->hasExternalVibrationScaleFactors()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 242
    const-string v0, "DeviceConfigExternalVibrationScales:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_e5
    if-gt v4, v3, :cond_109

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/android/server/vibrator/VibrationScaler;->intensityToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/vibrator/VibrationScaler;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 247
    invoke-virtual {v5, v4, v1}, Landroid/os/vibrator/VibrationConfig;->getExternalVibrationScaleFactor(IF)F

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_e5

    .line 249
    :cond_109
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_112

    .line 251
    :cond_10d
    const-string p0, "DeviceConfigExternalVibrationScales = null"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 254
    :goto_112
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 4

    .line 259
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationScaler;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 260
    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationAmplitude()I

    move-result p0

    const-wide v0, 0x1050000001aL

    .line 259
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public getAdaptiveHapticsScale(I)F
    .registers 3

    .line 132
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getEffectStrength(I)I
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationScaler;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v0

    if-nez v0, :cond_e

    .line 285
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationScaler;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v0

    .line 288
    :cond_e
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationScaler;->intensityToEffectStrength(I)I

    move-result p0

    return p0
.end method

.method public getScaleFactor(IZ)F
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationScaler;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v0

    if-nez v0, :cond_b

    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    .line 117
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationScaler;->getScaleLevel(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToScaleFactor(I)F

    move-result p1

    if-eqz p2, :cond_1c

    .line 119
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationScaler;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0, v0, p1}, Landroid/os/vibrator/VibrationConfig;->getExternalVibrationScaleFactor(IF)F

    move-result p0

    return p0

    .line 120
    :cond_1c
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationScaler;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0, v0, p1}, Landroid/os/vibrator/VibrationConfig;->getVibrationScaleFactor(IF)F

    move-result p0

    return p0
.end method

.method public getScaleLevel(I)I
    .registers 5

    .line 81
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationScaler;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v0

    .line 82
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationScaler;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_10

    return v1

    :cond_10
    sub-int/2addr p0, v0

    const/4 v0, -0x2

    if-lt p0, v0, :cond_18

    const/4 v0, 0x2

    if-gt p0, v0, :cond_18

    return p0

    .line 94
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in scaling calculations, ended up with invalid scale level "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " for vibration with usage "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibrationScaler"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public removeAdaptiveHapticsScale(I)V
    .registers 2

    .line 194
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public scale(Landroid/os/VibrationEffect;I)Landroid/os/VibrationEffect;
    .registers 5

    .line 145
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibrationScaler;->getEffectStrength(I)I

    move-result v0

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0, p2, v1}, Lcom/android/server/vibrator/VibrationScaler;->getScaleFactor(IZ)F

    move-result v1

    .line 147
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibrationScaler;->getAdaptiveHapticsScale(I)F

    move-result p2

    .line 159
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationScaler;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationAmplitude()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect;->resolve(I)Landroid/os/VibrationEffect;

    move-result-object p0

    .line 160
    invoke-virtual {p0, v0}, Landroid/os/VibrationEffect;->applyEffectStrength(I)Landroid/os/VibrationEffect;

    move-result-object p0

    .line 161
    invoke-virtual {p0, v1}, Landroid/os/VibrationEffect;->scale(F)Landroid/os/VibrationEffect;

    move-result-object p0

    .line 163
    invoke-virtual {p0, p2}, Landroid/os/VibrationEffect;->applyAdaptiveScale(F)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public scale(Landroid/os/vibrator/PrebakedSegment;I)Landroid/os/vibrator/PrebakedSegment;
    .registers 3

    .line 175
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibrationScaler;->getEffectStrength(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/vibrator/PrebakedSegment;->applyEffectStrength(I)Landroid/os/vibrator/PrebakedSegment;

    move-result-object p0

    return-object p0
.end method

.method public final scaleLevelToScaleFactor(I)F
    .registers 7

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p1, :cond_3c

    const/4 v1, -0x2

    if-lt p1, v1, :cond_3c

    const/4 v1, 0x2

    if-le p1, v1, :cond_b

    goto :goto_3c

    .line 311
    :cond_b
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationScaler;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationScaleLevelGain()F

    move-result p0

    float-to-double v1, p0

    int-to-double v3, p1

    .line 312
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_3b

    .line 315
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 319
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v1, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 316
    const-string p1, "Error in scaling calculations, ended up with invalid scale factor %.2f for scale level %s and default level gain of %.2f"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 315
    const-string p1, "VibrationScaler"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3b
    return v1

    :cond_3c
    :goto_3c
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x2

    :goto_9
    const/4 v2, 0x2

    if-gt v1, v2, :cond_2f

    .line 267
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToScaleFactor(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    int-to-float v2, v1

    const v3, 0x3f000000    # 0.5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2c

    .line 270
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 273
    :cond_2f
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationScaler{mScaleLevels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mAdaptiveHapticsScales="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAdaptiveHapticsScale(IF)V
    .registers 3

    .line 185
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
