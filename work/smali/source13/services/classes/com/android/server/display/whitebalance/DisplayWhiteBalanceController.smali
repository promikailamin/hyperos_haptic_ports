.class public Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
.super Ljava/lang/Object;
.source "DisplayWhiteBalanceController.java"

# interfaces
.implements Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;
.implements Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayWhiteBalanceController"


# instance fields
.field private mAmbientColorTemperature:F

.field private final mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

.field private mAmbientColorTemperatureOverride:F

.field private mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

.field mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

.field private final mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

.field private final mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

.field private final mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

.field private mDisplayPowerControllerCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

.field private mEnabled:Z

.field private mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

.field private final mHighLightAmbientColorTemperature:F

.field private mLastAmbientColorTemperature:F

.field private mLatestAmbientBrightness:F

.field private mLatestAmbientColorTemperature:F

.field private mLatestHighLightBias:F

.field private mLatestLowLightBias:F

.field private mLoggingEnabled:Z

.field private mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

.field private final mLowLightAmbientColorTemperature:F

.field mPendingAmbientColorTemperature:F

.field private mStrongAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

.field private mStrongModeEnabled:Z

.field private final mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;


# direct methods
.method public constructor <init>(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;[F[FF[F[FF[F[F[F[F)V
    .registers 32
    .param p1, "brightnessSensor"    # Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    .param p2, "brightnessFilter"    # Lcom/android/server/display/utils/AmbientFilter;
    .param p3, "colorTemperatureSensor"    # Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    .param p4, "colorTemperatureFilter"    # Lcom/android/server/display/utils/AmbientFilter;
    .param p5, "throttler"    # Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;
    .param p6, "lowLightAmbientBrightnesses"    # [F
    .param p7, "lowLightAmbientBiases"    # [F
    .param p8, "lowLightAmbientColorTemperature"    # F
    .param p9, "highLightAmbientBrightnesses"    # [F
    .param p10, "highLightAmbientBiases"    # [F
    .param p11, "highLightAmbientColorTemperature"    # F
    .param p12, "ambientColorTemperatures"    # [F
    .param p13, "displayColorTemperatures"    # [F
    .param p14, "strongAmbientColorTemperatures"    # [F
    .param p15, "strongDisplayColorTemperatures"    # [F

    .line 174
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    const-string v4, "DisplayWhiteBalanceController"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->validateArguments(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;)V

    .line 177
    move-object/from16 v5, p1

    iput-object v5, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    .line 178
    move-object/from16 v6, p2

    iput-object v6, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 179
    move-object/from16 v7, p3

    iput-object v7, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    .line 180
    move-object/from16 v8, p4

    iput-object v8, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 181
    move-object/from16 v9, p5

    iput-object v9, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    .line 182
    move/from16 v10, p8

    iput v10, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    .line 183
    move/from16 v11, p11

    iput v11, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientColorTemperature:F

    .line 184
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    .line 185
    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 186
    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    .line 187
    new-instance v12, Lcom/android/server/display/utils/History;

    const/16 v13, 0x32

    invoke-direct {v12, v13}, Lcom/android/server/display/utils/History;-><init>(I)V

    iput-object v12, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    .line 188
    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    .line 191
    const/4 v12, 0x0

    :try_start_3e
    new-instance v0, Landroid/util/Spline$LinearSpline;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_40} :catch_4a

    move-object/from16 v13, p7

    :try_start_42
    invoke-direct {v0, v2, v13}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_47} :catch_48

    .line 196
    goto :goto_54

    .line 193
    :catch_48
    move-exception v0

    goto :goto_4d

    :catch_4a
    move-exception v0

    move-object/from16 v13, p7

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    :goto_4d
    const-string v14, "failed to create low light ambient brightness to bias spline."

    invoke-static {v4, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    iput-object v12, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_54
    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v12, 0x0

    if-eqz v0, :cond_78

    .line 198
    invoke-virtual {v0, v12}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    cmpl-float v0, v0, v12

    if-nez v0, :cond_6f

    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 199
    invoke-virtual {v0, v15}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    cmpl-float v0, v0, v14

    if-eqz v0, :cond_78

    .line 201
    :cond_6f
    const-string/jumbo v0, "invalid low light ambient brightness to bias spline, bias must begin at 0.0 and end at 1.0."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v14, 0x0

    iput-object v14, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 208
    :cond_78
    :try_start_78
    new-instance v0, Landroid/util/Spline$LinearSpline;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7a} :catch_84

    move-object/from16 v14, p10

    :try_start_7c
    invoke-direct {v0, v3, v14}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_81} :catch_82

    .line 213
    goto :goto_8f

    .line 210
    :catch_82
    move-exception v0

    goto :goto_87

    :catch_84
    move-exception v0

    move-object/from16 v14, p10

    .line 211
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_87
    const-string v15, "failed to create high light ambient brightness to bias spline."

    invoke-static {v4, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    const/4 v15, 0x0

    iput-object v15, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8f
    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v0, :cond_b2

    .line 215
    invoke-virtual {v0, v12}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    cmpl-float v0, v0, v12

    if-nez v0, :cond_a9

    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 216
    const/high16 v12, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-virtual {v0, v12}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_b2

    .line 218
    :cond_a9
    const-string/jumbo v0, "invalid high light ambient brightness to bias spline, bias must begin at 0.0 and end at 1.0."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v12, 0x0

    iput-object v12, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 224
    :cond_b2
    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v0, :cond_d1

    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v0, :cond_d1

    .line 226
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    const/4 v12, 0x0

    aget v12, v3, v12

    cmpl-float v0, v0, v12

    if-lez v0, :cond_d1

    .line 228
    const-string/jumbo v0, "invalid low light and high light ambient brightness to bias spline combination, defined domains must not intersect."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v12, 0x0

    iput-object v12, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 231
    iput-object v12, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 236
    :cond_d1
    :try_start_d1
    new-instance v0, Landroid/util/Spline$LinearSpline;
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d3} :catch_df

    move-object/from16 v12, p12

    move-object/from16 v15, p13

    :try_start_d7
    invoke-direct {v0, v12, v15}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_dc} :catch_dd

    .line 241
    goto :goto_ec

    .line 238
    :catch_dd
    move-exception v0

    goto :goto_e4

    :catch_df
    move-exception v0

    move-object/from16 v12, p12

    move-object/from16 v15, p13

    .line 239
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_e4
    const-string v2, "failed to create ambient to display color temperature spline."

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ec
    :try_start_ec
    new-instance v0, Landroid/util/Spline$LinearSpline;
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_ee} :catch_fa

    move-object/from16 v2, p14

    move-object/from16 v3, p15

    :try_start_f2
    invoke-direct {v0, v2, v3}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f7} :catch_f8

    .line 248
    goto :goto_104

    .line 246
    :catch_f8
    move-exception v0

    goto :goto_ff

    :catch_fa
    move-exception v0

    move-object/from16 v2, p14

    move-object/from16 v3, p15

    .line 247
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_ff
    const-string v2, "Failed to create strong ambient to display color temperature spline"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_104
    const-class v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 251
    return-void
.end method

.method private disable()Z
    .registers 4

    .line 556
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 557
    return v1

    .line 559
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_11

    .line 560
    const-string v0, "DisplayWhiteBalanceController"

    const-string v2, "disabling"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_11
    iput-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    .line 563
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setEnabled(Z)Z

    .line 564
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0}, Lcom/android/server/display/utils/AmbientFilter;->clear()V

    .line 565
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setEnabled(Z)Z

    .line 566
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0}, Lcom/android/server/display/utils/AmbientFilter;->clear()V

    .line 567
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->clear()V

    .line 568
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    .line 569
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 570
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->resetDisplayWhiteBalanceColorTemperature()Z

    .line 571
    const/4 v0, 0x1

    return v0
.end method

.method private enable()Z
    .registers 3

    .line 543
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    if-eqz v0, :cond_6

    .line 544
    const/4 v0, 0x0

    return v0

    .line 546
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_11

    .line 547
    const-string v0, "DisplayWhiteBalanceController"

    const-string v1, "enabling"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    .line 550
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v1, v0}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setEnabled(Z)Z

    .line 551
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v1, v0}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setEnabled(Z)Z

    .line 552
    return v0
.end method

.method private validateArguments(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;)V
    .registers 7
    .param p1, "brightnessSensor"    # Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    .param p2, "brightnessFilter"    # Lcom/android/server/display/utils/AmbientFilter;
    .param p3, "colorTemperatureSensor"    # Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    .param p4, "colorTemperatureFilter"    # Lcom/android/server/display/utils/AmbientFilter;
    .param p5, "throttler"    # Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    .line 533
    const-string v0, "brightnessSensor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 534
    const-string v0, "brightnessFilter must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 535
    const-string v0, "colorTemperatureSensor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 537
    const-string v0, "colorTemperatureFilter must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 539
    const-string/jumbo v0, "throttler cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 540
    return-void
.end method


# virtual methods
.method public calculateAdjustedBrightnessNits(F)F
    .registers 5
    .param p1, "requestedBrightnessNits"    # F

    .line 504
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->getDisplayWhiteBalanceLuminance()F

    move-result v0

    .line 505
    .local v0, "luminance":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_d

    .line 506
    return p1

    .line 508
    :cond_d
    mul-float v1, p1, v0

    .line 509
    .local v1, "effectiveBrightness":F
    sub-float v2, p1, v1

    add-float/2addr v2, p1

    return v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 346
    const-string v0, "DisplayWhiteBalanceController"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStrongModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayPowerControllerCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mDisplayPowerControllerCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->dump(Ljava/io/PrintWriter;)V

    .line 352
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    .line 353
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->dump(Ljava/io/PrintWriter;)V

    .line 354
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    .line 355
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->dump(Ljava/io/PrintWriter;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowLightAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHighLightAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperatureHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperatureOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientToDisplayColorTemperatureSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStrongAmbientToDisplayColorTemperatureSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowLightAmbientBrightnessToBiasSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHighLightAmbientBrightnessToBiasSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public onAmbientBrightnessChanged(F)V
    .registers 5
    .param p1, "value"    # F

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 376
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/display/utils/AmbientFilter;->addValue(JF)Z

    .line 377
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateAmbientColorTemperature()V

    .line 378
    return-void
.end method

.method public onAmbientColorTemperatureChanged(F)V
    .registers 5
    .param p1, "value"    # F

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 383
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/display/utils/AmbientFilter;->addValue(JF)Z

    .line 384
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateAmbientColorTemperature()V

    .line 385
    return-void
.end method

.method public setAmbientColorTemperatureOverride(F)Z
    .registers 3
    .param p1, "ambientColorTemperatureOverride"    # F

    .line 332
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_8

    .line 333
    const/4 v0, 0x0

    return v0

    .line 335
    :cond_8
    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z
    .registers 3
    .param p1, "callbacks"    # Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    .line 291
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mDisplayPowerControllerCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-ne v0, p1, :cond_6

    .line 292
    const/4 v0, 0x0

    return v0

    .line 294
    :cond_6
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mDisplayPowerControllerCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public setEnabled(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .line 262
    if-eqz p1, :cond_7

    .line 263
    invoke-direct {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->enable()Z

    move-result v0

    return v0

    .line 265
    :cond_7
    invoke-direct {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->disable()Z

    move-result v0

    return v0
.end method

.method public setLoggingEnabled(Z)Z
    .registers 3
    .param p1, "loggingEnabled"    # Z

    .line 307
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_6

    .line 308
    const/4 v0, 0x0

    return v0

    .line 310
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    .line 311
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setLoggingEnabled(Z)Z

    .line 312
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/AmbientFilter;->setLoggingEnabled(Z)Z

    .line 313
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setLoggingEnabled(Z)Z

    .line 314
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/AmbientFilter;->setLoggingEnabled(Z)Z

    .line 315
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->setLoggingEnabled(Z)Z

    .line 316
    const/4 v0, 0x1

    return v0
.end method

.method public setStrongModeEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 275
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongModeEnabled:Z

    .line 276
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    if-eqz v0, :cond_c

    .line 277
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateAmbientColorTemperature()V

    .line 278
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateDisplayColorTemperature()V

    .line 280
    :cond_c
    return-void
.end method

.method public updateAmbientColorTemperature()V
    .registers 11

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 392
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/utils/AmbientFilter;->getEstimate(J)F

    move-result v2

    .line 393
    .local v2, "ambientColorTemperature":F
    iput v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientColorTemperature:F

    .line 395
    iget-boolean v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongModeEnabled:Z

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v3, :cond_20

    .line 396
    iget-object v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v3, :cond_2d

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_2d

    .line 398
    nop

    .line 399
    invoke-virtual {v3, v2}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v2

    goto :goto_2d

    .line 403
    :cond_20
    iget-object v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v3, :cond_2d

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_2d

    .line 405
    nop

    .line 406
    invoke-virtual {v3, v2}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v2

    .line 411
    :cond_2d
    :goto_2d
    iget-object v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/display/utils/AmbientFilter;->getEstimate(J)F

    move-result v3

    .line 412
    .local v3, "ambientBrightness":F
    iput v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientBrightness:F

    .line 414
    cmpl-float v5, v2, v4

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_4e

    iget-object v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v5, :cond_4e

    .line 416
    invoke-virtual {v5, v3}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v5

    .line 417
    .local v5, "bias":F
    mul-float v7, v5, v2

    sub-float v8, v6, v5

    iget v9, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    mul-float/2addr v8, v9

    add-float v2, v7, v8

    .line 420
    iput v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestLowLightBias:F

    .line 422
    .end local v5    # "bias":F
    :cond_4e
    cmpl-float v5, v2, v4

    if-eqz v5, :cond_63

    iget-object v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v5, :cond_63

    .line 424
    invoke-virtual {v5, v3}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v5

    .line 425
    .restart local v5    # "bias":F
    sub-float/2addr v6, v5

    mul-float/2addr v6, v2

    iget v7, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientColorTemperature:F

    mul-float/2addr v7, v5

    add-float v2, v6, v7

    .line 428
    iput v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestHighLightBias:F

    .line 431
    .end local v5    # "bias":F
    :cond_63
    iget v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    cmpl-float v5, v5, v4

    const-string v6, "DisplayWhiteBalanceController"

    if-eqz v5, :cond_94

    .line 432
    iget-boolean v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v5, :cond_92

    .line 433
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "override ambient color temperature: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " => "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_92
    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    .line 443
    :cond_94
    cmpl-float v4, v2, v4

    if-eqz v4, :cond_c6

    iget-object v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v4, v2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->throttle(F)Z

    move-result v4

    if-eqz v4, :cond_a1

    goto :goto_c6

    .line 447
    :cond_a1
    iget-boolean v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v4, :cond_bc

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pending ambient color temperature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_bc
    iput v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 451
    iget-object v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mDisplayPowerControllerCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-eqz v4, :cond_c5

    .line 452
    invoke-interface {v4}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;->updateWhiteBalance()V

    .line 454
    :cond_c5
    return-void

    .line 444
    :cond_c6
    :goto_c6
    return-void
.end method

.method public updateDisplayColorTemperature()V
    .registers 6

    .line 460
    const/high16 v0, -0x40800000    # -1.0f

    .line 465
    .local v0, "ambientColorTemperature":F
    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v1, v2

    if-nez v3, :cond_12

    iget v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_12

    .line 466
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    .line 471
    :cond_12
    iget v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_1e

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_1e

    .line 473
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 476
    :cond_1e
    cmpl-float v1, v0, v2

    if-nez v1, :cond_23

    .line 477
    return-void

    .line 480
    :cond_23
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    .line 481
    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    const-string v3, "DisplayWhiteBalanceController"

    if-eqz v1, :cond_43

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ambient color temperature: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_43
    iput v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 485
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v1, v2}, Lcom/android/server/display/utils/History;->add(F)V

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display cct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Latest ambient cct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientColorTemperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Latest ambient lux: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Latest low light bias: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestLowLightBias:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Latest high light bias: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestHighLightBias:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setDisplayWhiteBalanceColorTemperature(I)Z

    .line 493
    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    iput v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    .line 494
    return-void
.end method
