.class public Lcom/android/server/display/config/HysteresisLevels;
.super Ljava/lang/Object;
.source "HysteresisLevels.java"


# static fields
.field public static final DEBUG:Z

.field public static final DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

.field public static final DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

.field public static final DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F

.field public static final DEFAULT_SCREEN_BRIGHTENING_THRESHOLDS:[F

.field public static final DEFAULT_SCREEN_DARKENING_THRESHOLDS:[F

.field public static final DEFAULT_SCREEN_THRESHOLD_LEVELS:[F


# instance fields
.field public final mBrighteningThresholdLevels:[F

.field public final mBrighteningThresholdsPercentages:[F

.field public final mDarkeningThresholdLevels:[F

.field public final mDarkeningThresholdsPercentages:[F

.field public final mMinBrightening:F

.field public final mMinDarkening:F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x1

    .line 37
    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    aput v3, v1, v2

    sput-object v1, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

    .line 38
    new-array v1, v0, [F

    const/high16 v4, 0x43480000    # 200.0f

    aput v4, v1, v2

    sput-object v1, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

    .line 39
    new-array v1, v0, [F

    const/4 v5, 0x0

    aput v5, v1, v2

    sput-object v1, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F

    .line 40
    new-array v1, v0, [F

    aput v5, v1, v2

    sput-object v1, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_SCREEN_THRESHOLD_LEVELS:[F

    .line 41
    new-array v1, v0, [F

    aput v3, v1, v2

    sput-object v1, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_SCREEN_BRIGHTENING_THRESHOLDS:[F

    .line 42
    new-array v0, v0, [F

    aput v4, v0, v2

    sput-object v0, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_SCREEN_DARKENING_THRESHOLDS:[F

    .line 46
    const-string v0, "HysteresisLevels"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/config/HysteresisLevels;->DEBUG:Z

    return-void
.end method

.method public constructor <init>([F[F[F[FFF)V
    .registers 9

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    array-length v0, p1

    array-length v1, p3

    if-ne v0, v1, :cond_2c

    array-length v0, p2

    array-length v1, p4

    if-ne v0, v1, :cond_2c

    const/high16 v0, 0x42c80000    # 100.0f

    .line 122
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/config/HysteresisLevels;->setArrayFormat([FF)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdsPercentages:[F

    .line 124
    invoke-virtual {p0, p2, v0}, Lcom/android/server/display/config/HysteresisLevels;->setArrayFormat([FF)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdsPercentages:[F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 125
    invoke-virtual {p0, p3, p1}, Lcom/android/server/display/config/HysteresisLevels;->setArrayFormat([FF)[F

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdLevels:[F

    .line 126
    invoke-virtual {p0, p4, p1}, Lcom/android/server/display/config/HysteresisLevels;->setArrayFormat([FF)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdLevels:[F

    .line 127
    iput p5, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinDarkening:F

    .line 128
    iput p6, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinBrightening:F

    return-void

    .line 119
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Mismatch between hysteresis array lengths."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static constraintInRangeIfNeeded([F)[F
    .registers 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 440
    invoke-static {p0, v0, v1}, Lcom/android/server/display/config/HysteresisLevels;->isAllInRange([FFF)Z

    move-result v0

    if-eqz v0, :cond_a

    return-object p0

    .line 445
    :cond_a
    const-string v0, "HysteresisLevels"

    const-string v1, "Detected screen thresholdLevels on a deprecated brightness scale"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 447
    :goto_15
    array-length v2, p0

    if-le v2, v1, :cond_22

    .line 448
    aget v2, p0, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_22
    return-object v0
.end method

.method public static createHysteresisLevels(Lcom/android/server/display/config/Thresholds;III[F[F[FLandroid/content/res/Resources;Z)Lcom/android/server/display/config/HysteresisLevels;
    .registers 19

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move-object v2, v0

    goto :goto_a

    .line 317
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/display/config/Thresholds;->getBrighteningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v1

    move-object v2, v1

    :goto_a
    if-nez p0, :cond_15

    :goto_c
    move v3, p1

    move v4, p2

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p7

    move/from16 v7, p8

    goto :goto_1a

    .line 319
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/display/config/Thresholds;->getDarkeningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v0

    goto :goto_c

    .line 321
    :goto_1a
    invoke-static/range {v2 .. v8}, Lcom/android/server/display/config/HysteresisLevels;->getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[FZLandroid/content/res/Resources;)Landroid/util/Pair;

    move-result-object v1

    move v4, v3

    move-object v6, v5

    move-object v9, v8

    move v5, p3

    move-object v3, v0

    move v8, v7

    move-object/from16 v7, p6

    .line 327
    invoke-static/range {v3 .. v9}, Lcom/android/server/display/config/HysteresisLevels;->getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[FZLandroid/content/res/Resources;)Landroid/util/Pair;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v2, :cond_3c

    .line 334
    invoke-virtual {v2}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v5

    if-eqz v5, :cond_3c

    .line 335
    invoke-virtual {v2}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    goto :goto_3d

    :cond_3c
    move v2, v4

    :goto_3d
    if-eqz v3, :cond_4d

    .line 337
    invoke-virtual {v3}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v5

    if-eqz v5, :cond_4d

    .line 338
    invoke-virtual {v3}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    .line 340
    :cond_4d
    new-instance v3, Lcom/android/server/display/config/HysteresisLevels;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [F

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [F

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [F

    move-object p4, v0

    move-object p3, v1

    move/from16 p6, v2

    move-object p0, v3

    move p5, v4

    move-object p1, v5

    move-object p2, v6

    invoke-direct/range {p0 .. p6}, Lcom/android/server/display/config/HysteresisLevels;-><init>([F[F[F[FFF)V

    move-object v0, p0

    return-object v0
.end method

.method public static getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[FZLandroid/content/res/Resources;)Landroid/util/Pair;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_54

    .line 361
    invoke-virtual {p0}, Lcom/android/server/display/config/BrightnessThresholds;->getBrightnessThresholdPoints()Lcom/android/server/display/config/ThresholdPoints;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 362
    invoke-virtual {p0}, Lcom/android/server/display/config/BrightnessThresholds;->getBrightnessThresholdPoints()Lcom/android/server/display/config/ThresholdPoints;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/config/ThresholdPoints;->getBrightnessThresholdPoint()Ljava/util/List;

    move-result-object v2

    .line 363
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_54

    .line 367
    invoke-virtual {p0}, Lcom/android/server/display/config/BrightnessThresholds;->getBrightnessThresholdPoints()Lcom/android/server/display/config/ThresholdPoints;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/config/ThresholdPoints;->getBrightnessThresholdPoint()Ljava/util/List;

    move-result-object p0

    .line 368
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    .line 370
    new-array p2, p1, [F

    .line 371
    new-array p1, p1, [F

    .line 374
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/display/config/ThresholdPoint;

    .line 375
    invoke-virtual {p3}, Lcom/android/server/display/config/ThresholdPoint;->getThreshold()Ljava/math/BigDecimal;

    move-result-object p4

    invoke-virtual {p4}, Ljava/math/BigDecimal;->floatValue()F

    move-result p4

    aput p4, p2, v0

    .line 376
    invoke-virtual {p3}, Lcom/android/server/display/config/ThresholdPoint;->getPercentage()Ljava/math/BigDecimal;

    move-result-object p3

    invoke-virtual {p3}, Ljava/math/BigDecimal;->floatValue()F

    move-result p3

    aput p3, p1, v0

    add-int/2addr v0, v1

    goto :goto_2c

    .line 379
    :cond_4e
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_54
    if-eqz p6, :cond_b2

    .line 386
    invoke-virtual {p6, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    if-eqz p0, :cond_63

    .line 390
    array-length p1, p0

    if-nez p1, :cond_60

    goto :goto_63

    .line 393
    :cond_60
    array-length p1, p0

    add-int/2addr p1, v1

    goto :goto_64

    :cond_63
    :goto_63
    move p1, v1

    .line 397
    :goto_64
    invoke-virtual {p6, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    if-eqz p2, :cond_70

    .line 402
    array-length p6, p2

    if-nez p6, :cond_6e

    goto :goto_70

    :cond_6e
    move p6, v0

    goto :goto_71

    :cond_70
    :goto_70
    move p6, v1

    :goto_71
    if-eqz p6, :cond_7b

    if-ne p1, v1, :cond_7b

    .line 404
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_7b
    if-nez p6, :cond_aa

    .line 406
    array-length p3, p2

    if-ne p3, p1, :cond_aa

    .line 412
    new-array p3, p1, [F

    :goto_82
    if-ge v1, p1, :cond_8e

    add-int/lit8 p4, v1, -0x1

    .line 415
    aget p4, p0, p4

    int-to-float p4, p4

    aput p4, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_82

    :cond_8e
    if-eqz p5, :cond_94

    .line 419
    invoke-static {p3}, Lcom/android/server/display/config/HysteresisLevels;->constraintInRangeIfNeeded([F)[F

    move-result-object p3

    .line 423
    :cond_94
    new-array p0, p1, [F

    .line 424
    :goto_96
    array-length p1, p2

    if-ge v0, p1, :cond_a4

    .line 425
    aget p1, p2, v0

    int-to-float p1, p1

    const/high16 p4, 0x41200000    # 10.0f

    div-float/2addr p1, p4

    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    .line 427
    :cond_a4
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 407
    :cond_aa
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Brightness threshold arrays do not align in length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 429
    :cond_b2
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static isAllInRange([FFF)Z
    .registers 8

    .line 455
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_14

    aget v3, p0, v2

    cmpg-float v4, v3, p1

    if-ltz v4, :cond_13

    cmpl-float v3, v3, p2

    if-lez v3, :cond_10

    goto :goto_13

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_13
    :goto_13
    return v1

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method public static loadAmbientBrightnessConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;
    .registers 11

    if-nez p0, :cond_5

    const/4 p0, 0x0

    :goto_3
    move-object v0, p0

    goto :goto_a

    .line 246
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;

    move-result-object p0

    goto :goto_3

    :goto_a
    sget-object v4, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F

    sget-object v5, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

    sget-object v6, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

    const/4 v8, 0x0

    const v1, 0x1070015

    const v2, 0x1070013

    const v3, 0x1070014

    move-object v7, p1

    .line 245
    invoke-static/range {v0 .. v8}, Lcom/android/server/display/config/HysteresisLevels;->createHysteresisLevels(Lcom/android/server/display/config/Thresholds;III[F[F[FLandroid/content/res/Resources;Z)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object p0

    return-object p0
.end method

.method public static loadAmbientBrightnessIdleConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;
    .registers 11

    if-nez p0, :cond_5

    const/4 p0, 0x0

    :goto_3
    move-object v0, p0

    goto :goto_a

    .line 278
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientBrightnessChangeThresholdsIdle()Lcom/android/server/display/config/Thresholds;

    move-result-object p0

    goto :goto_3

    :goto_a
    sget-object v4, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F

    sget-object v5, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

    sget-object v6, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

    const/4 v8, 0x0

    const v1, 0x1070015

    const v2, 0x1070013

    const v3, 0x1070014

    move-object v7, p1

    .line 277
    invoke-static/range {v0 .. v8}, Lcom/android/server/display/config/HysteresisLevels;->createHysteresisLevels(Lcom/android/server/display/config/Thresholds;III[F[F[FLandroid/content/res/Resources;Z)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object p0

    return-object p0
.end method

.method public static loadDisplayBrightnessConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;
    .registers 11

    if-nez p0, :cond_5

    const/4 p0, 0x0

    :goto_3
    move-object v0, p0

    goto :goto_a

    .line 262
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/display/config/DisplayConfiguration;->getDisplayBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;

    move-result-object p0

    goto :goto_3

    :goto_a
    sget-object v4, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_SCREEN_THRESHOLD_LEVELS:[F

    sget-object v5, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_SCREEN_BRIGHTENING_THRESHOLDS:[F

    sget-object v6, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_SCREEN_DARKENING_THRESHOLDS:[F

    const/4 v8, 0x1

    const v1, 0x10700d7

    const v2, 0x10700d3

    const v3, 0x10700d6

    move-object v7, p1

    .line 261
    invoke-static/range {v0 .. v8}, Lcom/android/server/display/config/HysteresisLevels;->createHysteresisLevels(Lcom/android/server/display/config/Thresholds;III[F[F[FLandroid/content/res/Resources;Z)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object p0

    return-object p0
.end method

.method public static loadDisplayBrightnessIdleConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;
    .registers 11

    if-nez p0, :cond_5

    const/4 p0, 0x0

    :goto_3
    move-object v0, p0

    goto :goto_a

    .line 294
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/display/config/DisplayConfiguration;->getDisplayBrightnessChangeThresholdsIdle()Lcom/android/server/display/config/Thresholds;

    move-result-object p0

    goto :goto_3

    :goto_a
    sget-object v4, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_SCREEN_THRESHOLD_LEVELS:[F

    sget-object v5, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_SCREEN_BRIGHTENING_THRESHOLDS:[F

    sget-object v6, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_SCREEN_DARKENING_THRESHOLDS:[F

    const/4 v8, 0x1

    const v1, 0x10700d7

    const v2, 0x10700d3

    const v3, 0x10700d6

    move-object v7, p1

    .line 293
    invoke-static/range {v0 .. v8}, Lcom/android/server/display/config/HysteresisLevels;->createHysteresisLevels(Lcom/android/server/display/config/Thresholds;III[F[F[FLandroid/content/res/Resources;Z)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBrighteningThreshold(F)F
    .registers 6

    .line 135
    iget-object v0, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdLevels:[F

    iget-object v1, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdsPercentages:[F

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/config/HysteresisLevels;->getReferenceLevel(F[F[F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    mul-float/2addr v1, p1

    .line 139
    sget-boolean v2, Lcom/android/server/display/config/HysteresisLevels;->DEBUG:Z

    if-eqz v2, :cond_36

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bright hysteresis constant="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", threshold="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HysteresisLevels"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_36
    iget p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinBrightening:F

    add-float/2addr p1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public getBrighteningThresholdLevels()[F
    .registers 1

    .line 175
    iget-object p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdLevels:[F

    return-object p0
.end method

.method public getBrighteningThresholdsPercentages()[F
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdsPercentages:[F

    return-object p0
.end method

.method public getDarkeningThreshold(F)F
    .registers 6

    .line 152
    iget-object v0, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdLevels:[F

    iget-object v1, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdsPercentages:[F

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/config/HysteresisLevels;->getReferenceLevel(F[F[F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    .line 155
    sget-boolean v2, Lcom/android/server/display/config/HysteresisLevels;->DEBUG:Z

    if-eqz v2, :cond_36

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dark hysteresis constant=: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", threshold="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HysteresisLevels"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_36
    iget p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinDarkening:F

    sub-float/2addr p1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    .line 160
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public getDarkeningThresholdLevels()[F
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdLevels:[F

    return-object p0
.end method

.method public getDarkeningThresholdsPercentages()[F
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdsPercentages:[F

    return-object p0
.end method

.method public getMinBrightening()F
    .registers 1

    .line 190
    iget p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinBrightening:F

    return p0
.end method

.method public getMinDarkening()F
    .registers 1

    .line 185
    iget p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinDarkening:F

    return p0
.end method

.method public final getReferenceLevel(F[F[F)F
    .registers 6

    if-eqz p2, :cond_1f

    .line 198
    array-length p0, p2

    if-eqz p0, :cond_1f

    const/4 p0, 0x0

    aget v0, p2, p0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_d

    goto :goto_1f

    .line 202
    :cond_d
    :goto_d
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ge p0, v0, :cond_1c

    add-int/lit8 v0, p0, 0x1

    aget v1, p2, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1c

    move p0, v0

    goto :goto_d

    .line 205
    :cond_1c
    aget p0, p3, p0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    return p0
.end method

.method public final setArrayFormat([FF)[F
    .registers 6

    .line 212
    array-length p0, p1

    new-array v0, p0, [F

    const/4 v1, 0x0

    :goto_4
    if-le p0, v1, :cond_e

    .line 214
    aget v2, p1, v1

    div-float/2addr v2, p2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HysteresisLevels {\n    mBrighteningThresholdLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdLevels:[F

    .line 223
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n    mBrighteningThresholdsPercentages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdsPercentages:[F

    .line 226
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n    mMinBrightening="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinBrightening:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",\n    mDarkeningThresholdLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdLevels:[F

    .line 230
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n    mDarkeningThresholdsPercentages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdsPercentages:[F

    .line 233
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n    mMinDarkening="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinDarkening:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
