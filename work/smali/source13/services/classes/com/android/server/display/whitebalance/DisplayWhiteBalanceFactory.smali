.class public Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;
.super Ljava/lang/Object;
.source "DisplayWhiteBalanceFactory.java"


# static fields
.field private static final BRIGHTNESS_FILTER_TAG:Ljava/lang/String; = "AmbientBrightnessFilter"

.field private static final COLOR_TEMPERATURE_FILTER_TAG:Ljava/lang/String; = "AmbientColorTemperatureFilter"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    .registers 35
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 61
    move-object/from16 v0, p2

    .line 62
    invoke-static/range {p0 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createBrightnessSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    move-result-object v15

    .line 63
    .local v15, "brightnessSensor":Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    nop

    .line 64
    const-string v1, "AmbientBrightnessFilter"

    invoke-static {v1, v0}, Lcom/android/server/display/utils/AmbientFilterFactory;->createBrightnessFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v17

    .line 65
    .local v17, "brightnessFilter":Lcom/android/server/display/utils/AmbientFilter;
    nop

    .line 66
    invoke-static/range {p0 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createColorTemperatureSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    move-result-object v14

    .line 67
    .local v14, "colorTemperatureSensor":Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    nop

    .line 68
    const-string v1, "AmbientColorTemperatureFilter"

    invoke-static {v1, v0}, Lcom/android/server/display/utils/AmbientFilterFactory;->createColorTemperatureFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v18

    .line 69
    .local v18, "colorTemperatureFilter":Lcom/android/server/display/utils/AmbientFilter;
    invoke-static/range {p2 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createThrottler(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    move-result-object v19

    .line 70
    .local v19, "throttler":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;
    const v1, 0x107005c

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v20

    .line 73
    .local v20, "displayWhiteBalanceLowLightAmbientBrightnesses":[F
    const v1, 0x107005b

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v21

    .line 76
    .local v21, "displayWhiteBalanceLowLightAmbientBiases":[F
    const v1, 0x10500bc

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v22

    .line 79
    .local v22, "lowLightAmbientColorTemperature":F
    const v1, 0x1070059

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v23

    .line 82
    .local v23, "displayWhiteBalanceHighLightAmbientBrightnesses":[F
    const v1, 0x1070058

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v24

    .line 85
    .local v24, "displayWhiteBalanceHighLightAmbientBiases":[F
    const v1, 0x10500bb

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v25

    .line 88
    .local v25, "highLightAmbientColorTemperature":F
    const v1, 0x1070052

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v26

    .line 90
    .local v26, "ambientColorTemperatures":[F
    const v1, 0x1070055

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v27

    .line 92
    .local v27, "displayColorTemperatures":[F
    const v1, 0x107005d

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v28

    .line 95
    .local v28, "strongAmbientColorTemperatures":[F
    const v1, 0x107005e

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v29

    .line 98
    .local v29, "strongDisplayColorTemperatures":[F
    new-instance v30, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    move-object/from16 v1, v30

    move-object v2, v15

    move-object/from16 v3, v17

    move-object v4, v14

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move/from16 v12, v25

    move-object/from16 v13, v26

    move-object v0, v14

    .end local v14    # "colorTemperatureSensor":Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    .local v0, "colorTemperatureSensor":Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    move-object/from16 v14, v27

    move-object/from16 v31, v0

    move-object v0, v15

    .end local v15    # "brightnessSensor":Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    .local v0, "brightnessSensor":Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    .local v31, "colorTemperatureSensor":Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    move-object/from16 v15, v28

    move-object/from16 v16, v29

    invoke-direct/range {v1 .. v16}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;-><init>(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;[F[FF[F[FF[F[F[F[F)V

    .line 106
    .local v1, "controller":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;)Z

    .line 107
    move-object/from16 v2, v31

    .end local v31    # "colorTemperatureSensor":Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    .local v2, "colorTemperatureSensor":Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    invoke-virtual {v2, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;)Z

    .line 108
    return-object v1
.end method

.method public static createBrightnessSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    .registers 5
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 120
    const v0, 0x10e0060

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 122
    .local v0, "rate":I
    new-instance v1, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;-><init>(Landroid/os/Handler;Landroid/hardware/SensorManager;I)V

    return-object v1
.end method

.method public static createColorTemperatureSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    .registers 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 131
    const v0, 0x1040270

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "name":Ljava/lang/String;
    const v1, 0x10e0065

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 137
    .local v1, "rate":I
    new-instance v2, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;-><init>(Landroid/os/Handler;Landroid/hardware/SensorManager;Ljava/lang/String;I)V

    return-object v2
.end method

.method private static createThrottler(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;
    .registers 13
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 141
    const v0, 0x10e0066

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 143
    .local v0, "increaseDebounce":I
    const v1, 0x10e0067

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 145
    .local v7, "decreaseDebounce":I
    const v1, 0x1070053

    invoke-static {p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v8

    .line 147
    .local v8, "baseThresholds":[F
    const v1, 0x107005a

    invoke-static {p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v9

    .line 149
    .local v9, "increaseThresholds":[F
    const v1, 0x1070054

    invoke-static {p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v10

    .line 151
    .local v10, "decreaseThresholds":[F
    new-instance v11, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    move-object v1, v11

    move v2, v0

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;-><init>(II[F[F[F)V

    return-object v11
.end method

.method private static getFloat(Landroid/content/res/Resources;I)F
    .registers 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 156
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 157
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 158
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_11

    .line 159
    const/high16 v1, 0x7fc00000    # Float.NaN

    return v1

    .line 161
    :cond_11
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method

.method private static getFloatArray(Landroid/content/res/Resources;I)[F
    .registers 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 165
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 167
    .local v0, "array":Landroid/content/res/TypedArray;
    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_37

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 168
    nop

    .line 179
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    return-object v2

    .line 170
    :cond_10
    :try_start_10
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 171
    .local v1, "values":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    array-length v4, v1

    if-ge v3, v4, :cond_32

    .line 172
    const/high16 v4, 0x7fc00000    # Float.NaN

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    aput v4, v1, v3

    .line 173
    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_37

    if-eqz v4, :cond_2f

    .line 174
    nop

    .line 179
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    return-object v2

    .line 171
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 177
    .end local v3    # "i":I
    :cond_32
    nop

    .line 179
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    return-object v1

    .line 179
    .end local v1    # "values":[F
    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    throw v1
.end method
