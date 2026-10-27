.class public abstract Lcom/android/server/display/BrightnessMappingStrategy;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;,
        Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;
    }
.end annotation


# static fields
.field private static final LUX_GRAD_SMOOTHING:F = 0.25f

.field private static final MAX_GRAD:F = 1.0f

.field private static final MIN_PERMISSABLE_INCREASE:F = 0.004f

.field private static final PLOG:Lcom/android/server/display/utils/Plog;

.field private static final SHORT_TERM_MODEL_THRESHOLD_RATIO:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "BrightnessMappingStrategy"


# instance fields
.field private mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

.field protected mLoggingEnabled:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;
    .registers 1

    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 66
    const-string v0, "BrightnessMappingStrategy"

    invoke-static {v0}, Lcom/android/server/display/utils/Plog;->createSystemPlog(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/res/Resources;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;
    .registers 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "displayDeviceConfig"    # Lcom/android/server/display/DisplayDeviceConfig;
    .param p2, "displayWhiteBalanceController"    # Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 81
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/res/Resources;Lcom/android/server/display/DisplayDeviceConfig;ZLcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v0

    return-object v0
.end method

.method private static create(Landroid/content/res/Resources;Lcom/android/server/display/DisplayDeviceConfig;ZLcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;
    .registers 22
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "displayDeviceConfig"    # Lcom/android/server/display/DisplayDeviceConfig;
    .param p2, "isForIdleMode"    # Z
    .param p3, "displayWhiteBalanceController"    # Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 117
    move-object/from16 v0, p0

    if-eqz p2, :cond_1d

    .line 118
    const v1, 0x1070015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    .line 120
    .local v1, "brightnessLevelsNits":[F
    const v2, 0x107001b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v2

    move-object v8, v1

    move-object v9, v2

    .local v2, "luxLevels":[F
    goto :goto_35

    .line 123
    .end local v1    # "brightnessLevelsNits":[F
    .end local v2    # "luxLevels":[F
    :cond_1d
    const v1, 0x1070014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    .line 125
    .restart local v1    # "brightnessLevelsNits":[F
    const v2, 0x107001a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v2

    move-object v8, v1

    move-object v9, v2

    .line 130
    .end local v1    # "brightnessLevelsNits":[F
    .local v8, "brightnessLevelsNits":[F
    .local v9, "luxLevels":[F
    :goto_35
    const v1, 0x1070018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    .line 132
    .local v10, "brightnessLevelsBacklight":[I
    const/high16 v1, 0x1130000

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v11

    .line 135
    .local v11, "autoBrightnessAdjustmentMaxGamma":F
    const v1, 0x10e001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v12, v1

    .line 139
    .local v12, "shortTermModelTimeout":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object v14

    .line 140
    .local v14, "nitsRange":[F
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightness()[F

    move-result-object v15

    .line 142
    .local v15, "brightnessRange":[F
    invoke-static {v14, v15}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 143
    invoke-static {v9, v8}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 145
    new-instance v1, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v1, v9, v8}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    move-object v7, v1

    .line 147
    .local v7, "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    invoke-virtual {v7, v12, v13}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelTimeoutMillis(J)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 148
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v7, v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelLowerLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 149
    invoke-virtual {v7, v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelUpperLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 150
    new-instance v16, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    invoke-virtual {v7}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v2

    move-object/from16 v1, v16

    move-object v3, v14

    move-object v4, v15

    move v5, v11

    move/from16 v6, p2

    move-object/from16 v17, v7

    .end local v7    # "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    .local v17, "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[FFZLcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)V

    return-object v16

    .line 152
    .end local v17    # "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    :cond_86
    invoke-static {v9, v10}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v1

    if-eqz v1, :cond_9b

    if-nez p2, :cond_9b

    .line 153
    new-instance v16, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;

    const/4 v7, 0x0

    move-object/from16 v1, v16

    move-object v2, v9

    move-object v3, v10

    move v4, v11

    move-wide v5, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[IFJLcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy-IA;)V

    return-object v16

    .line 156
    :cond_9b
    const/4 v1, 0x0

    return-object v1
.end method

.method public static createForIdleMode(Landroid/content/res/Resources;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;
    .registers 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "displayDeviceConfig"    # Lcom/android/server/display/DisplayDeviceConfig;
    .param p2, "displayWhiteBalanceController"    # Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 95
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/res/Resources;Lcom/android/server/display/DisplayDeviceConfig;ZLcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v0

    return-object v0
.end method

.method private findInsertionPoint([FF)I
    .registers 5
    .param p1, "arr"    # [F
    .param p2, "val"    # F

    .line 469
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 470
    aget v1, p1, v0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_b

    .line 471
    return v0

    .line 469
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 474
    .end local v0    # "i":I
    :cond_e
    array-length v0, p1

    return v0
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 176
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 177
    .local v0, "N":I
    new-array v1, v0, [F

    .line 178
    .local v1, "vals":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_14

    .line 179
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 181
    .end local v2    # "i":I
    :cond_14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    return-object v1
.end method

.method private static getLuxLevels([I)[F
    .registers 5
    .param p0, "lux"    # [I

    .line 162
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    .line 163
    .local v0, "levels":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 164
    add-int/lit8 v2, v1, 0x1

    aget v3, p0, v1

    int-to-float v3, v3

    aput v3, v0, v2

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 166
    .end local v1    # "i":I
    :cond_13
    return-object v0
.end method

.method private insertControlPoint([F[FFF)Landroid/util/Pair;
    .registers 11
    .param p1, "luxLevels"    # [F
    .param p2, "brightnessLevels"    # [F
    .param p3, "lux"    # F
    .param p4, "brightness"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 432
    invoke-direct {p0, p1, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result v0

    .line 435
    .local v0, "idx":I
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_19

    .line 436
    array-length v1, p1

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 437
    .local v1, "newLuxLevels":[F
    array-length v3, p2

    add-int/2addr v3, v2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    .line 438
    .local v3, "newBrightnessLevels":[F
    aput p3, v1, v0

    .line 439
    aput p4, v3, v0

    goto :goto_4a

    .line 440
    .end local v1    # "newLuxLevels":[F
    .end local v3    # "newBrightnessLevels":[F
    :cond_19
    aget v1, p1, v0

    cmpl-float v1, v1, p3

    if-nez v1, :cond_2c

    .line 441
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 442
    .restart local v1    # "newLuxLevels":[F
    array-length v3, p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    .line 443
    .restart local v3    # "newBrightnessLevels":[F
    aput p4, v3, v0

    goto :goto_4a

    .line 445
    .end local v1    # "newLuxLevels":[F
    .end local v3    # "newBrightnessLevels":[F
    :cond_2c
    array-length v1, p1

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 446
    .restart local v1    # "newLuxLevels":[F
    add-int/lit8 v3, v0, 0x1

    array-length v4, p1

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    aput p3, v1, v0

    .line 448
    array-length v3, p2

    add-int/2addr v3, v2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    .line 449
    .restart local v3    # "newBrightnessLevels":[F
    add-int/lit8 v4, v0, 0x1

    array-length v5, p2

    sub-int/2addr v5, v0

    invoke-static {v3, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    aput p4, v3, v0

    .line 454
    :goto_4a
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategyStub;->getInstance()Lcom/android/server/display/BrightnessMappingStrategyStub;

    move-result-object v4

    .line 456
    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    if-eqz v5, :cond_5a

    invoke-interface {v5}, Lcom/android/server/display/DisplayPowerControllerStub;->isBrightnessCurveOptimizePolicyDisable()Z

    move-result v5

    if-nez v5, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v2, 0x0

    .line 454
    :cond_5a
    :goto_5a
    invoke-interface {v4, v1, v3, v0, v2}, Lcom/android/server/display/BrightnessMappingStrategyStub;->smoothNewCurveV2([F[FIZ)Landroid/util/Pair;

    move-result-object v2

    .line 457
    .local v2, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    if-eqz v2, :cond_62

    move-object v4, v2

    goto :goto_66

    :cond_62
    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    :goto_66
    return-object v4
.end method

.method private static isValidMapping([F[F)Z
    .registers 8
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .line 186
    const/4 v0, 0x0

    if-eqz p0, :cond_59

    if-eqz p1, :cond_59

    array-length v1, p0

    if-eqz v1, :cond_59

    array-length v1, p1

    if-nez v1, :cond_c

    goto :goto_59

    .line 189
    :cond_c
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_11

    .line 190
    return v0

    .line 192
    :cond_11
    array-length v1, p0

    .line 193
    .local v1, "N":I
    aget v2, p0, v0

    .line 194
    .local v2, "prevX":F
    aget v3, p1, v0

    .line 195
    .local v3, "prevY":F
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_58

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_58

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_58

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_58

    .line 198
    :cond_2c
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2d
    if-ge v4, v1, :cond_56

    .line 199
    aget v5, p0, v4

    cmpl-float v5, v2, v5

    if-gez v5, :cond_55

    aget v5, p1, v4

    cmpl-float v5, v3, v5

    if-lez v5, :cond_3c

    goto :goto_55

    .line 202
    :cond_3c
    aget v5, p0, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_54

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_4d

    goto :goto_54

    .line 205
    :cond_4d
    aget v2, p0, v4

    .line 206
    aget v3, p1, v4

    .line 198
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 203
    :cond_54
    :goto_54
    return v0

    .line 200
    :cond_55
    :goto_55
    return v0

    .line 208
    .end local v4    # "i":I
    :cond_56
    const/4 v0, 0x1

    return v0

    .line 196
    :cond_58
    :goto_58
    return v0

    .line 187
    .end local v1    # "N":I
    .end local v2    # "prevX":F
    .end local v3    # "prevY":F
    :cond_59
    :goto_59
    return v0
.end method

.method private static isValidMapping([F[I)Z
    .registers 8
    .param p0, "x"    # [F
    .param p1, "y"    # [I

    .line 212
    const/4 v0, 0x0

    if-eqz p0, :cond_46

    if-eqz p1, :cond_46

    array-length v1, p0

    if-eqz v1, :cond_46

    array-length v1, p1

    if-nez v1, :cond_c

    goto :goto_46

    .line 215
    :cond_c
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_11

    .line 216
    return v0

    .line 218
    :cond_11
    array-length v1, p0

    .line 219
    .local v1, "N":I
    aget v2, p0, v0

    .line 220
    .local v2, "prevX":F
    aget v3, p1, v0

    .line 221
    .local v3, "prevY":I
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_45

    if-ltz v3, :cond_45

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_45

    .line 224
    :cond_24
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_25
    if-ge v4, v1, :cond_43

    .line 225
    aget v5, p0, v4

    cmpl-float v5, v2, v5

    if-gez v5, :cond_42

    aget v5, p1, v4

    if-le v3, v5, :cond_32

    goto :goto_42

    .line 228
    :cond_32
    aget v5, p0, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 229
    return v0

    .line 231
    :cond_3b
    aget v2, p0, v4

    .line 232
    aget v3, p1, v4

    .line 224
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 226
    :cond_42
    :goto_42
    return v0

    .line 234
    .end local v4    # "i":I
    :cond_43
    const/4 v0, 0x1

    return v0

    .line 222
    :cond_45
    :goto_45
    return v0

    .line 213
    .end local v1    # "N":I
    .end local v2    # "prevX":F
    .end local v3    # "prevY":I
    :cond_46
    :goto_46
    return v0
.end method

.method protected static normalizeAbsoluteBrightness(I)F
    .registers 2
    .param p0, "brightness"    # I

    .line 427
    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    return v0
.end method

.method private permissibleRatio(FF)F
    .registers 5
    .param p1, "currLux"    # F
    .param p2, "prevLux"    # F

    .line 521
    const/high16 v0, 0x3e800000    # 0.25f

    add-float v1, p1, v0

    add-float/2addr v0, p2

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    return v0
.end method

.method private smoothCurve([F[FI)V
    .registers 12
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [F
    .param p3, "idx"    # I

    .line 478
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_c

    .line 479
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v1, "unsmoothed curve"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 481
    :cond_c
    aget v0, p1, p3

    .line 482
    .local v0, "prevLux":F
    aget v1, p2, p3

    .line 484
    .local v1, "prevBrightness":F
    add-int/lit8 v2, p3, 0x1

    .local v2, "i":I
    :goto_12
    array-length v3, p1

    if-ge v2, v3, :cond_37

    .line 485
    aget v3, p1, v2

    .line 486
    .local v3, "currLux":F
    aget v4, p2, v2

    .line 487
    .local v4, "currBrightness":F
    nop

    .line 488
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    const v6, 0x3b83126f    # 0.004f

    add-float/2addr v6, v1

    .line 487
    invoke-static {v5, v6}, Landroid/util/MathUtils;->max(FF)F

    move-result v5

    .line 490
    .local v5, "maxBrightness":F
    invoke-static {v4, v1, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 492
    .local v6, "newBrightness":F
    cmpl-float v7, v6, v4

    if-nez v7, :cond_30

    .line 493
    goto :goto_37

    .line 495
    :cond_30
    move v0, v3

    .line 496
    move v1, v6

    .line 497
    aput v6, p2, v2

    .line 484
    .end local v3    # "currLux":F
    .end local v4    # "currBrightness":F
    .end local v5    # "maxBrightness":F
    .end local v6    # "newBrightness":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 500
    .end local v2    # "i":I
    :cond_37
    :goto_37
    aget v0, p1, p3

    .line 501
    aget v1, p2, p3

    .line 502
    add-int/lit8 v2, p3, -0x1

    .restart local v2    # "i":I
    :goto_3d
    if-ltz v2, :cond_58

    .line 503
    aget v3, p1, v2

    .line 504
    .restart local v3    # "currLux":F
    aget v4, p2, v2

    .line 505
    .restart local v4    # "currBrightness":F
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    .line 506
    .local v5, "minBrightness":F
    invoke-static {v4, v5, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 508
    .restart local v6    # "newBrightness":F
    cmpl-float v7, v6, v4

    if-nez v7, :cond_51

    .line 509
    goto :goto_58

    .line 511
    :cond_51
    move v0, v3

    .line 512
    move v1, v6

    .line 513
    aput v6, p2, v2

    .line 502
    .end local v3    # "currLux":F
    .end local v4    # "currBrightness":F
    .end local v5    # "minBrightness":F
    .end local v6    # "newBrightness":F
    add-int/lit8 v2, v2, -0x1

    goto :goto_3d

    .line 515
    .end local v2    # "i":I
    :cond_58
    :goto_58
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_64

    .line 516
    sget-object v2, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v3, "smoothed curve"

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 518
    :cond_64
    return-void
.end method


# virtual methods
.method public abstract addUserDataPoint(FF)V
.end method

.method public abstract clearUserDataPoints()V
.end method

.method public abstract convertToBrightness(F)F
.end method

.method public abstract convertToNits(F)F
.end method

.method public abstract dump(Ljava/io/PrintWriter;F)V
.end method

.method protected getAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    .registers 15
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [F
    .param p3, "userLux"    # F
    .param p4, "userBrightness"    # F
    .param p5, "adjustment"    # F
    .param p6, "maxGamma"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFFFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 557
    move-object v0, p1

    .line 558
    .local v0, "newLux":[F
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 559
    .local v1, "newBrightness":[F
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_12

    .line 560
    sget-object v2, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v3, "unadjusted curve"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 562
    :cond_12
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p5, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p5

    .line 563
    neg-float v4, p5

    invoke-static {p6, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v4

    .line 564
    .local v4, "gamma":F
    iget-boolean v5, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v5, :cond_5f

    .line 565
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAdjustedCurve: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    neg-float v6, p5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    neg-float v6, p5

    .line 566
    invoke-static {p6, v6}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 565
    const-string v6, "BrightnessMappingStrategy"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_5f
    cmpl-float v3, v4, v3

    if-eqz v3, :cond_72

    .line 569
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_64
    array-length v5, v1

    if-ge v3, v5, :cond_72

    .line 570
    aget v5, v1, v3

    invoke-static {v5, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v5

    aput v5, v1, v3

    .line 569
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 573
    .end local v3    # "i":I
    :cond_72
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_7d

    .line 574
    sget-object v3, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string v5, "gamma adjusted curve"

    invoke-virtual {v3, v5, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 576
    :cond_7d
    cmpl-float v2, p3, v2

    if-eqz v2, :cond_ac

    .line 577
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v2

    .line 579
    .local v2, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [F

    .line 580
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [F

    .line 581
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_ac

    .line 582
    sget-object v3, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string v5, "gamma and user adjusted curve"

    invoke-virtual {v3, v5, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 584
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v2

    .line 585
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [F

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [F

    const-string/jumbo v7, "user adjusted curve"

    invoke-virtual {v3, v7, v5, v6}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 588
    .end local v2    # "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :cond_ac
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public abstract getAutoBrightnessAdjustment()F
.end method

.method public getBrightness(F)F
    .registers 4
    .param p1, "lux"    # F

    .line 294
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public abstract getBrightness(FLjava/lang/String;I)F
.end method

.method public abstract getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getBrightnessSpline()Landroid/util/Spline;
.end method

.method public abstract getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getShortTermModelTimeout()J
.end method

.method public abstract getUserDataPoint()F
.end method

.method public abstract hasUserDataPoints()Z
.end method

.method protected inferAutoBrightnessAdjustment(FFF)F
    .registers 12
    .param p1, "maxGamma"    # F
    .param p2, "desiredBrightness"    # F
    .param p3, "currentBrightness"    # F

    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, "adjustment":F
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 531
    .local v1, "gamma":F
    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v2, p3, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_39

    const v2, 0x3f666666    # 0.9f

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_14

    goto :goto_39

    .line 534
    :cond_14
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1c

    .line 535
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_3b

    .line 537
    :cond_1c
    cmpl-float v2, p2, v3

    if-nez v2, :cond_23

    .line 538
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3b

    .line 541
    :cond_23
    invoke-static {p2}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    invoke-static {p3}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v1, v2, v4

    .line 543
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v0, v2, v4

    goto :goto_3b

    .line 532
    :cond_39
    :goto_39
    sub-float v0, p2, p3

    .line 545
    :goto_3b
    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 546
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_b2

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inferAutoBrightnessAdjustment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "^"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-float v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-float v6, v0

    .line 548
    invoke-static {p1, v6}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " == "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 547
    const-string v7, "BrightnessMappingStrategy"

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 550
    invoke-static {p3, v1}, Landroid/util/MathUtils;->pow(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 549
    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_b2
    return v0
.end method

.method public abstract isDefaultConfig()Z
.end method

.method public abstract isForIdleMode()Z
.end method

.method public abstract recalculateSplines(Z[F)V
.end method

.method public abstract setAutoBrightnessAdjustment(F)Z
.end method

.method public abstract setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
.end method

.method public setDisplayPowerControllerImpl(Lcom/android/server/display/DisplayPowerControllerStub;)V
    .registers 2
    .param p1, "brightnessMappingStrategyImpl"    # Lcom/android/server/display/DisplayPowerControllerStub;

    .line 380
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    .line 381
    return-void
.end method

.method public setLoggingEnabled(Z)Z
    .registers 3
    .param p1, "loggingEnabled"    # Z

    .line 246
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_6

    .line 247
    const/4 v0, 0x0

    return v0

    .line 249
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public shouldResetShortTermModel(FF)Z
    .registers 11
    .param p1, "ambientLux"    # F
    .param p2, "shortTermModelAnchor"    # F

    .line 395
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    .line 396
    .local v0, "config":Landroid/hardware/display/BrightnessConfiguration;
    const v1, 0x3f19999a    # 0.6f

    .line 397
    .local v1, "minThresholdRatio":F
    const v2, 0x3f19999a    # 0.6f

    .line 398
    .local v2, "maxThresholdRatio":F
    if-eqz v0, :cond_28

    .line 399
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelLowerLuxMultiplier()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 400
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelLowerLuxMultiplier()F

    move-result v1

    .line 402
    :cond_1a
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelUpperLuxMultiplier()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_28

    .line 403
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelUpperLuxMultiplier()F

    move-result v2

    .line 406
    :cond_28
    mul-float v3, p2, v1

    sub-float v3, p2, v3

    .line 408
    .local v3, "minAmbientLux":F
    mul-float v4, p2, v2

    add-float/2addr v4, p2

    .line 412
    .local v4, "maxAmbientLux":F
    cmpg-float v5, v3, p1

    const-string v6, "BrightnessMappingStrategy"

    if-gtz v5, :cond_67

    cmpg-float v5, p1, v4

    if-gtz v5, :cond_67

    .line 413
    iget-boolean v5, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v5, :cond_65

    .line 414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShortTermModel: re-validate user data, ambient lux is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " < "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_65
    const/4 v5, 0x0

    return v5

    .line 419
    :cond_67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShortTermModel: reset data, ambient lux is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v5, 0x1

    return v5
.end method
