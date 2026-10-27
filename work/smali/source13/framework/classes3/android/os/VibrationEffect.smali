.class public abstract Landroid/os/VibrationEffect;
.super Ljava/lang/Object;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationEffect$FrequencyVibrationParameter;,
        Landroid/os/VibrationEffect$AmplitudeVibrationParameter;,
        Landroid/os/VibrationEffect$VibrationParameter;,
        Landroid/os/VibrationEffect$WaveformBuilder;,
        Landroid/os/VibrationEffect$Composition;,
        Landroid/os/VibrationEffect$Composed;,
        Landroid/os/VibrationEffect$EffectType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT_AMPLITUDE:I = -0x1

.field public static final whitelist EFFECT_CLICK:I = 0x0

.field public static final whitelist EFFECT_DOUBLE_CLICK:I = 0x1

.field public static final whitelist EFFECT_HEAVY_CLICK:I = 0x5

.field public static final greylist-max-r EFFECT_POP:I = 0x4

.field public static final blacklist EFFECT_STRENGTH_LIGHT:I = 0x0

.field public static final blacklist EFFECT_STRENGTH_MEDIUM:I = 0x1

.field public static final blacklist EFFECT_STRENGTH_STRONG:I = 0x2

.field public static final blacklist EFFECT_TEXTURE_TICK:I = 0x15

.field public static final greylist-max-r EFFECT_THUD:I = 0x3

.field public static final whitelist EFFECT_TICK:I = 0x2

.field public static final greylist-max-o MAX_AMPLITUDE:I = 0xff

.field private static final blacklist MAX_HAPTIC_FEEDBACK_COMPOSITION_SIZE:J = 0x3L

.field private static final blacklist MAX_HAPTIC_FEEDBACK_DURATION:J = 0x3e8L

.field public static final greylist-max-r RINGTONES:[I

.field private static final blacklist SCALE_GAMMA:F = 0.65f


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 144
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Landroid/os/VibrationEffect;->RINGTONES:[I

    .line 1463
    new-instance v0, Landroid/os/VibrationEffect$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_12
    .array-data 4
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
    .end array-data
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist createOneShot(JI)Landroid/os/VibrationEffect;
    .registers 6
    .param p0, "milliseconds"    # J
    .param p2, "amplitude"    # I

    .line 188
    if-eqz p2, :cond_12

    .line 193
    const/4 v0, 0x1

    new-array v1, v0, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    new-array v0, v0, [I

    aput p2, v0, v2

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 189
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amplitude must either be DEFAULT_AMPLITUDE, or between 1 and 255 inclusive (amplitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createPredefined(I)Landroid/os/VibrationEffect;
    .registers 2
    .param p0, "effectId"    # I

    .line 288
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createWaveform([JI)Landroid/os/VibrationEffect;
    .registers 6
    .param p0, "timings"    # [J
    .param p1, "repeat"    # I

    .line 222
    array-length v0, p0

    new-array v0, v0, [I

    .line 223
    .local v0, "amplitudes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_13

    .line 224
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    aput v3, v0, v2

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 226
    .end local v1    # "i":I
    :cond_13
    invoke-static {p0, v0, p1}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist createWaveform([J[II)Landroid/os/VibrationEffect;
    .registers 10
    .param p0, "timings"    # [J
    .param p1, "amplitudes"    # [I
    .param p2, "repeat"    # I

    .line 252
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_33

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/StepSegment;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_2a

    .line 260
    aget v2, p1, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    .line 261
    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_1b

    :cond_15
    aget v2, p1, v1

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    .line 262
    .local v2, "parsedAmplitude":F
    :goto_1b
    new-instance v3, Landroid/os/vibrator/StepSegment;

    const/4 v4, 0x0

    aget-wide v5, p0, v1

    long-to-int v5, v5

    invoke-direct {v3, v2, v4, v5}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .end local v2    # "parsedAmplitude":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 264
    .end local v1    # "i":I
    :cond_2a
    new-instance v1, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v1, v0, p2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 265
    .local v1, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v1}, Landroid/os/VibrationEffect;->validate()V

    .line 266
    return-object v1

    .line 253
    .end local v0    # "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/StepSegment;>;"
    .end local v1    # "effect":Landroid/os/VibrationEffect;
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timing and amplitude arrays must be of equal length (timings.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amplitudes.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist effectIdToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "effectId"    # I

    .line 585
    sparse-switch p0, :sswitch_data_1e

    .line 601
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 599
    :sswitch_8
    const-string v0, "TEXTURE_TICK"

    return-object v0

    .line 591
    :sswitch_b
    const-string v0, "HEAVY_CLICK"

    return-object v0

    .line 595
    :sswitch_e
    const-string v0, "POP"

    return-object v0

    .line 597
    :sswitch_11
    const-string v0, "THUD"

    return-object v0

    .line 589
    :sswitch_14
    const-string v0, "TICK"

    return-object v0

    .line 593
    :sswitch_17
    const-string v0, "DOUBLE_CLICK"

    return-object v0

    .line 587
    :sswitch_1a
    const-string v0, "CLICK"

    return-object v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_1a
        0x1 -> :sswitch_17
        0x2 -> :sswitch_14
        0x3 -> :sswitch_11
        0x4 -> :sswitch_e
        0x5 -> :sswitch_b
        0x15 -> :sswitch_8
    .end sparse-switch
.end method

.method public static blacklist effectStrengthToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "effectStrength"    # I

    .line 607
    packed-switch p0, :pswitch_data_12

    .line 615
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 613
    :pswitch_8
    const-string v0, "STRONG"

    return-object v0

    .line 611
    :pswitch_b
    const-string v0, "MEDIUM"

    return-object v0

    .line 609
    :pswitch_e
    const-string v0, "LIGHT"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist-max-o get(I)Landroid/os/VibrationEffect;
    .registers 2
    .param p0, "effectId"    # I

    .line 311
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o get(IZ)Landroid/os/VibrationEffect;
    .registers 5
    .param p0, "effectId"    # I
    .param p1, "fallback"    # Z

    .line 338
    new-instance v0, Landroid/os/VibrationEffect$Composed;

    new-instance v1, Landroid/os/vibrator/PrebakedSegment;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroid/os/vibrator/PrebakedSegment;-><init>(IZI)V

    invoke-direct {v0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Landroid/os/vibrator/VibrationEffectSegment;)V

    .line 340
    .local v0, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 341
    return-object v0
.end method

.method public static greylist-max-o get(Landroid/net/Uri;Landroid/content/Context;)Landroid/os/VibrationEffect;
    .registers 11
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .line 364
    invoke-static {}, Landroid/os/VibrationEffectStub;->getInstance()Landroid/os/VibrationEffectStub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/VibrationEffectStub;->get(Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 365
    .local v0, "customize":Landroid/os/VibrationEffect;
    if-eqz v0, :cond_b

    return-object v0

    .line 367
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "uris":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1b

    .line 372
    return-object v3

    .line 375
    :cond_1b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 376
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 377
    .local v4, "uncanonicalUri":Landroid/net/Uri;
    if-nez v4, :cond_26

    .line 381
    move-object v4, p0

    .line 384
    :cond_26
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_27
    array-length v6, v1

    if-ge v5, v6, :cond_51

    sget-object v6, Landroid/os/VibrationEffect;->RINGTONES:[I

    array-length v7, v6

    if-ge v5, v7, :cond_51

    .line 385
    aget-object v7, v1, v5

    if-nez v7, :cond_34

    .line 386
    goto :goto_4e

    .line 388
    :cond_34
    aget-object v7, v1, v5

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 389
    .local v7, "mappedUri":Landroid/net/Uri;
    if-nez v7, :cond_41

    .line 390
    goto :goto_4e

    .line 392
    :cond_41
    invoke-virtual {v7, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 393
    aget v3, v6, v5

    invoke-static {v3}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v3

    return-object v3

    .line 384
    .end local v7    # "mappedUri":Landroid/net/Uri;
    :cond_4e
    :goto_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 396
    .end local v5    # "i":I
    :cond_51
    return-object v3
.end method

.method public static blacklist scale(FF)F
    .registers 13
    .param p0, "intensity"    # F
    .param p1, "scaleFactor"    # F

    .line 559
    const v0, 0x3fc4ec4f

    invoke-static {p1, v0}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    .line 561
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_10

    .line 564
    mul-float v1, p0, v0

    return v1

    .line 568
    :cond_10
    const/high16 v2, 0x40800000    # 4.0f

    sub-float/2addr v2, p1

    invoke-static {p1, v2}, Landroid/util/MathUtils;->pow(FF)F

    move-result v2

    .line 569
    .local v2, "extraScale":F
    mul-float v3, p0, v0

    mul-float/2addr v3, v2

    .line 570
    .local v3, "x":F
    mul-float v4, v0, v2

    .line 572
    .local v4, "maxX":F
    invoke-static {v3}, Landroid/util/MathUtils;->exp(F)F

    move-result v5

    .line 573
    .local v5, "expX":F
    invoke-static {v4}, Landroid/util/MathUtils;->exp(F)F

    move-result v6

    .line 577
    .local v6, "expMaxX":F
    add-float v7, v6, v1

    sub-float v8, v6, v1

    div-float/2addr v7, v8

    .line 578
    .local v7, "a":F
    sub-float v8, v5, v1

    add-float v9, v5, v1

    div-float/2addr v8, v9

    .line 580
    .local v8, "fx":F
    mul-float v9, v7, v8

    const/4 v10, 0x0

    invoke-static {v9, v10, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    return v1
.end method

.method public static whitelist startComposition()Landroid/os/VibrationEffect$Composition;
    .registers 1

    .line 406
    new-instance v0, Landroid/os/VibrationEffect$Composition;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composition;-><init>()V

    return-object v0
.end method

.method public static blacklist startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;
    .registers 1

    .line 425
    new-instance v0, Landroid/os/VibrationEffect$WaveformBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$WaveformBuilder;-><init>()V

    return-object v0
.end method

.method public static blacklist startWaveform(Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .registers 3
    .param p0, "initialParameter"    # Landroid/os/VibrationEffect$VibrationParameter;

    .line 445
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    .line 446
    .local v0, "builder":Landroid/os/VibrationEffect$WaveformBuilder;
    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, v1, p0}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 447
    return-object v0
.end method

.method public static blacklist startWaveform(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .registers 4
    .param p0, "initialParameter1"    # Landroid/os/VibrationEffect$VibrationParameter;
    .param p1, "initialParameter2"    # Landroid/os/VibrationEffect$VibrationParameter;

    .line 471
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    .line 472
    .local v0, "builder":Landroid/os/VibrationEffect$WaveformBuilder;
    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 473
    return-object v0
.end method


# virtual methods
.method public blacklist applyEffectStrength(I)Landroid/os/VibrationEffect;
    .registers 2
    .param p1, "effectStrength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/VibrationEffect;",
            ">(I)TT;"
        }
    .end annotation

    .line 545
    return-object p0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public abstract greylist-max-o getDuration()J
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .registers 2

    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist resolve(I)Landroid/os/VibrationEffect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/VibrationEffect;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract blacklist scale(F)Landroid/os/VibrationEffect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/VibrationEffect;",
            ">(F)TT;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o validate()V
.end method
