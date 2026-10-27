.class public abstract Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;
.super Ljava/lang/Object;
.source "DisplayWhiteBalanceFactory.java"


# direct methods
.method public static create(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    .registers 27

    move-object/from16 v0, p2

    .line 63
    invoke-static/range {p0 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createBrightnessSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    move-result-object v1

    .line 64
    const-string v2, "AmbientBrightnessFilter"

    .line 65
    invoke-static {v2, v0}, Lcom/android/server/display/utils/AmbientFilterFactory;->createBrightnessFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v2

    .line 67
    invoke-static/range {p0 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createColorTemperatureSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    move-result-object v3

    .line 68
    const-string v4, "AmbientColorTemperatureFilter"

    .line 69
    invoke-static {v4, v0}, Lcom/android/server/display/utils/AmbientFilterFactory;->createColorTemperatureFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v4

    .line 70
    invoke-static {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createThrottler(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    move-result-object v5

    const v6, 0x1070073

    .line 71
    invoke-static {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v7

    const v6, 0x1070074

    .line 74
    invoke-static {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v8

    const v6, 0x1070071

    .line 77
    invoke-static {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v9

    const v6, 0x1070072

    .line 80
    invoke-static {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v10

    const v6, 0x10500fa

    .line 83
    invoke-static {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v11

    const v6, 0x10500fb

    .line 86
    invoke-static {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v12

    const v6, 0x107006e

    .line 89
    invoke-static {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v13

    const v6, 0x107006f

    .line 92
    invoke-static {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v14

    const v6, 0x107006c

    .line 95
    invoke-static {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v15

    const v6, 0x107006d

    .line 98
    invoke-static {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v16

    const v6, 0x10500f8

    .line 101
    invoke-static {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v17

    const v6, 0x10500f9

    .line 104
    invoke-static {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v18

    const v6, 0x1070064

    .line 107
    invoke-static {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v19

    const v6, 0x1070067

    .line 109
    invoke-static {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v20

    const v6, 0x1070075

    .line 111
    invoke-static {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v21

    const v6, 0x1070076

    .line 114
    invoke-static {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v22

    const v6, 0x1110159

    .line 117
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    .line 119
    new-instance v0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 121
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct/range {v0 .. v23}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;-><init>(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;Landroid/os/Handler;[F[F[F[FFF[F[F[F[FFF[F[F[F[FZ)V

    .line 134
    invoke-virtual {v1, v0}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;)Z

    .line 135
    invoke-virtual {v3, v0}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;)Z

    return-object v0
.end method

.method public static createBrightnessSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    .registers 4

    const v0, 0x10e0090

    .line 148
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 150
    new-instance v0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;-><init>(Landroid/os/Handler;Landroid/hardware/SensorManager;I)V

    return-object v0
.end method

.method public static createColorTemperatureSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    .registers 5

    const v0, 0x104028c

    .line 159
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x10e0095

    .line 162
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 165
    new-instance v1, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;-><init>(Landroid/os/Handler;Landroid/hardware/SensorManager;Ljava/lang/String;I)V

    return-object v1
.end method

.method public static createThrottler(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;
    .registers 8

    const v0, 0x10e0096

    .line 169
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v0, 0x10e0098

    .line 171
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v0, 0x1070065

    .line 173
    invoke-static {p0, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v4

    const v0, 0x1070070

    .line 175
    invoke-static {p0, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v5

    const v0, 0x1070066

    .line 177
    invoke-static {p0, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v6

    .line 179
    new-instance v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;-><init>(II[F[F[F)V

    return-object v1
.end method

.method public static getFloat(Landroid/content/res/Resources;I)F
    .registers 4

    .line 184
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    .line 185
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 186
    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/4 p1, 0x4

    if-eq p0, p1, :cond_11

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 189
    :cond_11
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method public static getFloatArray(Landroid/content/res/Resources;I)[F
    .registers 6

    .line 193
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 195
    :try_start_4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_2d

    const/4 v0, 0x0

    if-nez p1, :cond_f

    .line 207
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 198
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    new-array v1, p1, [F

    const/4 v2, 0x0

    :goto_16
    if-ge v2, p1, :cond_2f

    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 200
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 201
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_2d

    if-eqz v3, :cond_2a

    .line 207
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :catchall_2d
    move-exception p1

    goto :goto_33

    :cond_2f
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :goto_33
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    throw p1
.end method
