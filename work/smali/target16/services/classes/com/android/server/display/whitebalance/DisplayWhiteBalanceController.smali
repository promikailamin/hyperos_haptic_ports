.class public Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
.super Ljava/lang/Object;
.source "DisplayWhiteBalanceController.java"

# interfaces
.implements Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;
.implements Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;


# instance fields
.field public mAmbientColorTemperature:F

.field public final mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

.field public mAmbientColorTemperatureOverride:F

.field public mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

.field mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

.field public final mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

.field public final mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

.field public final mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

.field public mDisplayPowerControllerCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

.field public mEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

.field public mHighLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;

.field public final mHighLightAmbientColorTemperature:F

.field public final mHighLightAmbientColorTemperatureStrong:F

.field public mLastAmbientColorTemperature:F

.field public mLatestAmbientBrightness:F

.field public mLatestAmbientColorTemperature:F

.field public mLatestHighLightBias:F

.field public mLatestLowLightBias:F

.field public final mLightModeAllowed:Z

.field public mLoggingEnabled:Z

.field public mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

.field public mLowLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;

.field public final mLowLightAmbientColorTemperature:F

.field public final mLowLightAmbientColorTemperatureStrong:F

.field mPendingAmbientColorTemperature:F

.field public mStrongAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

.field public mStrongModeEnabled:Z

.field public final mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;


# direct methods
.method public static synthetic $r8$lambda$8CBX_0Le9eVXJ8IVS55HTxmPXLo(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->lambda$disable$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$lRIG2_LuKRe2XtuKbJ8ab5MnIJw(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->lambda$enable$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;Landroid/os/Handler;[F[F[F[FFF[F[F[F[FFF[F[F[F[FZ)V
    .registers 31

    move-object v1, p8

    move-object/from16 v2, p13

    move-object/from16 v3, p14

    .line 203
    const-string v4, "DisplayWhiteBalanceController"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->validateArguments(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;)V

    .line 206
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    .line 207
    iput-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 208
    iput-object p3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    .line 209
    iput-object p4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 210
    iput-object p5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    .line 211
    iput-object p6, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHandler:Landroid/os/Handler;

    move/from16 p1, p11

    .line 212
    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    move/from16 p1, p12

    .line 213
    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperatureStrong:F

    move/from16 p1, p17

    .line 214
    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientColorTemperature:F

    move/from16 p1, p18

    .line 215
    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientColorTemperatureStrong:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 216
    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    .line 217
    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 218
    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    .line 219
    new-instance p2, Lcom/android/server/display/utils/History;

    const/16 p3, 0x32

    invoke-direct {p2, p3}, Lcom/android/server/display/utils/History;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    .line 220
    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    move/from16 p1, p23

    .line 221
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLightModeAllowed:Z

    const/4 p1, 0x0

    .line 224
    :try_start_41
    new-instance p2, Landroid/util/Spline$LinearSpline;

    move-object/from16 p3, p9

    invoke-direct {p2, p7, p3}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4a} :catch_4b

    goto :goto_54

    :catch_4b
    move-exception v0

    move-object p2, v0

    .line 227
    const-string p3, "failed to create low light ambient brightness to bias spline."

    invoke-static {v4, p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 230
    :goto_54
    iget-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 p4, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v5, 0x0

    if-eqz p2, :cond_76

    .line 231
    invoke-virtual {p2, v5}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result p2

    cmpl-float p2, p2, v5

    if-nez p2, :cond_6f

    iget-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 232
    invoke-virtual {p2, p4}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result p2

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_76

    .line 234
    :cond_6f
    const-string p2, "invalid low light ambient brightness to bias spline, bias must begin at 0.0 and end at 1.0."

    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 241
    :cond_76
    :try_start_76
    new-instance p2, Landroid/util/Spline$LinearSpline;

    move-object/from16 v6, p10

    invoke-direct {p2, p8, v6}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7f} :catch_80

    goto :goto_89

    :catch_80
    move-exception v0

    move-object p2, v0

    .line 244
    const-string v0, "failed to create strong low light ambient brightness to bias spline."

    invoke-static {v4, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;

    .line 247
    :goto_89
    iget-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;

    if-eqz p2, :cond_a6

    .line 248
    invoke-virtual {p2, v5}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result p2

    cmpl-float p2, p2, v5

    if-nez p2, :cond_9f

    iget-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;

    .line 249
    invoke-virtual {p2, p4}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result p2

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_a6

    .line 251
    :cond_9f
    const-string p2, "invalid strong low light ambient brightness to bias spline, bias must begin at 0.0 and end at 1.0."

    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;

    .line 258
    :cond_a6
    :try_start_a6
    new-instance p2, Landroid/util/Spline$LinearSpline;

    move-object/from16 v6, p15

    invoke-direct {p2, v2, v6}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_af} :catch_b0

    goto :goto_b9

    :catch_b0
    move-exception v0

    move-object p2, v0

    .line 261
    const-string v0, "failed to create high light ambient brightness to bias spline."

    invoke-static {v4, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 264
    :goto_b9
    iget-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz p2, :cond_d6

    .line 265
    invoke-virtual {p2, v5}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result p2

    cmpl-float p2, p2, v5

    if-nez p2, :cond_cf

    iget-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 266
    invoke-virtual {p2, p4}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result p2

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_d6

    .line 268
    :cond_cf
    const-string p2, "invalid high light ambient brightness to bias spline, bias must begin at 0.0 and end at 1.0."

    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 275
    :cond_d6
    :try_start_d6
    new-instance p2, Landroid/util/Spline$LinearSpline;

    move-object/from16 v6, p16

    invoke-direct {p2, v3, v6}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_df} :catch_e0

    goto :goto_e9

    :catch_e0
    move-exception v0

    move-object p2, v0

    .line 278
    const-string v0, "failed to create strong high light ambient brightness to bias spline."

    invoke-static {v4, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;

    .line 281
    :goto_e9
    iget-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;

    if-eqz p2, :cond_106

    .line 282
    invoke-virtual {p2, v5}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result p2

    cmpl-float p2, p2, v5

    if-nez p2, :cond_ff

    iget-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;

    .line 283
    invoke-virtual {p2, p4}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result p2

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_106

    .line 285
    :cond_ff
    const-string p2, "invalid strong high light ambient brightness to bias spline, bias must begin at 0.0 and end at 1.0."

    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;

    .line 291
    :cond_106
    iget-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    const/4 p3, 0x0

    if-eqz p2, :cond_123

    iget-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz p2, :cond_123

    .line 293
    array-length p2, p7

    add-int/lit8 p2, p2, -0x1

    aget p2, p7, p2

    aget p4, v2, p3

    cmpl-float p2, p2, p4

    if-lez p2, :cond_123

    .line 295
    const-string p2, "invalid low light and high light ambient brightness to bias spline combination, defined domains must not intersect."

    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 298
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 302
    :cond_123
    iget-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;

    if-eqz p2, :cond_13f

    iget-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;

    if-eqz p2, :cond_13f

    .line 304
    array-length p2, v1

    add-int/lit8 p2, p2, -0x1

    aget p2, v1, p2

    aget p3, v3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_13f

    .line 306
    const-string p2, "invalid strong low light and high light ambient brightness to bias spline combination, defined domains must not intersect."

    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;

    .line 310
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;

    .line 315
    :cond_13f
    :try_start_13f
    new-instance p2, Landroid/util/Spline$LinearSpline;

    move-object/from16 p3, p19

    move-object/from16 p4, p20

    invoke-direct {p2, p3, p4}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_14a} :catch_14b

    goto :goto_154

    :catch_14b
    move-exception v0

    move-object p2, v0

    .line 318
    const-string p3, "failed to create ambient to display color temperature spline."

    invoke-static {v4, p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    .line 323
    :goto_154
    :try_start_154
    new-instance p1, Landroid/util/Spline$LinearSpline;

    move-object/from16 p2, p21

    move-object/from16 p3, p22

    invoke-direct {p1, p2, p3}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_15f} :catch_160

    goto :goto_167

    :catch_160
    move-exception v0

    move-object p1, v0

    .line 326
    const-string p2, "Failed to create strong ambient to display color temperature spline"

    invoke-static {v4, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    :goto_167
    const-class p1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    return-void
.end method


# virtual methods
.method public calculateAdjustedBrightnessNits(F)F
    .registers 3

    .line 611
    iget-object p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->getDisplayWhiteBalanceLuminance()F

    move-result p0

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_d

    return p1

    :cond_d
    mul-float/2addr p0, p1

    sub-float p0, p1, p0

    add-float/2addr p0, p1

    return p0
.end method

.method public final disable()Z
    .registers 4

    .line 665
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 668
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_11

    .line 669
    const-string v0, "DisplayWhiteBalanceController"

    const-string v2, "disabling"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_11
    iput-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    .line 672
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 676
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0}, Lcom/android/server/display/utils/AmbientFilter;->clear()V

    .line 677
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0}, Lcom/android/server/display/utils/AmbientFilter;->clear()V

    .line 678
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->clear()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 679
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    .line 680
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 681
    iget-object p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->resetDisplayWhiteBalanceColorTemperature()Z

    const/4 p0, 0x1

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 427
    const-string v0, "DisplayWhiteBalanceController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    const-string v0, "------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStrongModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayPowerControllerCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mDisplayPowerControllerCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->dump(Ljava/io/PrintWriter;)V

    .line 434
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    .line 435
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->dump(Ljava/io/PrintWriter;)V

    .line 436
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    .line 437
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->dump(Ljava/io/PrintWriter;)V

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowLightAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowLightAmbientColorTemperatureStrong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperatureStrong:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHighLightAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHighLightAmbientColorTemperatureStrong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientColorTemperatureStrong:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperatureHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperatureOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientToDisplayColorTemperatureSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStrongAmbientToDisplayColorTemperatureSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowLightAmbientBrightnessToBiasSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowLightAmbientBrightnessToBiasSplineStrong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHighLightAmbientBrightnessToBiasSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHighLightAmbientBrightnessToBiasSplineStrong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final enable()Z
    .registers 4

    .line 650
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 653
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_11

    .line 654
    const-string v0, "DisplayWhiteBalanceController"

    const-string v1, "enabling"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 v0, 0x1

    .line 656
    iput-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    .line 657
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v0
.end method

.method public final synthetic lambda$disable$1()V
    .registers 3

    .line 673
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor;->setEnabled(Z)Z

    .line 674
    iget-object p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {p0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor;->setEnabled(Z)Z

    return-void
.end method

.method public final synthetic lambda$enable$0()V
    .registers 3

    .line 658
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor;->setEnabled(Z)Z

    .line 659
    iget-object p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {p0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor;->setEnabled(Z)Z

    return-void
.end method

.method public onAmbientBrightnessChanged(F)V
    .registers 5

    .line 465
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 468
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 469
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/display/utils/AmbientFilter;->addValue(JF)Z

    .line 470
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateAmbientColorTemperature()V

    return-void
.end method

.method public onAmbientColorTemperatureChanged(F)V
    .registers 5

    .line 475
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 478
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 479
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/display/utils/AmbientFilter;->addValue(JF)Z

    .line 480
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateAmbientColorTemperature()V

    return-void
.end method

.method public setAmbientColorTemperatureOverride(F)Z
    .registers 3

    .line 413
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 416
    :cond_8
    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    const/4 p0, 0x1

    return p0
.end method

.method public setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z
    .registers 3

    .line 372
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mDisplayPowerControllerCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 375
    :cond_6
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mDisplayPowerControllerCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    const/4 p0, 0x1

    return p0
.end method

.method public setEnabled(Z)Z
    .registers 2

    if-eqz p1, :cond_7

    .line 342
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->enable()Z

    move-result p0

    return p0

    .line 344
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->disable()Z

    move-result p0

    return p0
.end method

.method public setLoggingEnabled(Z)Z
    .registers 3

    .line 388
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 391
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    .line 392
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor;->setLoggingEnabled(Z)Z

    .line 393
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/AmbientFilter;->setLoggingEnabled(Z)Z

    .line 394
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor;->setLoggingEnabled(Z)Z

    .line 395
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/AmbientFilter;->setLoggingEnabled(Z)Z

    .line 396
    iget-object p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {p0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->setLoggingEnabled(Z)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setStrongModeEnabled(Z)V
    .registers 4

    .line 354
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongModeEnabled:Z

    .line 355
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLightModeAllowed:Z

    if-nez v1, :cond_d

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    invoke-virtual {v0, p1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setDisplayWhiteBalanceAllowed(Z)V

    .line 357
    iget-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    if-eqz p1, :cond_1b

    .line 358
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateAmbientColorTemperature()V

    .line 359
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateDisplayColorTemperature()V

    :cond_1b
    return-void
.end method

.method public updateAmbientColorTemperature()V
    .registers 11

    .line 487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 488
    iget-boolean v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongModeEnabled:Z

    if-eqz v2, :cond_b

    .line 489
    iget v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperatureStrong:F

    goto :goto_d

    :cond_b
    iget v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    :goto_d
    if-eqz v2, :cond_12

    .line 491
    iget v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientColorTemperatureStrong:F

    goto :goto_14

    :cond_12
    iget v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientColorTemperature:F

    :goto_14
    if-eqz v2, :cond_19

    .line 493
    iget-object v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;

    goto :goto_1b

    .line 494
    :cond_19
    iget-object v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    :goto_1b
    if-eqz v2, :cond_20

    .line 496
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSplineStrong:Landroid/util/Spline$LinearSpline;

    goto :goto_22

    .line 497
    :cond_20
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 499
    :goto_22
    iget-object v6, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v6, v0, v1}, Lcom/android/server/display/utils/AmbientFilter;->getEstimate(J)F

    move-result v6

    .line 500
    iput v6, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientColorTemperature:F

    .line 502
    iget-boolean v7, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongModeEnabled:Z

    const/high16 v8, -0x40800000    # -1.0f

    if-eqz v7, :cond_3d

    .line 503
    iget-object v7, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v7, :cond_49

    cmpl-float v9, v6, v8

    if-eqz v9, :cond_49

    .line 506
    invoke-virtual {v7, v6}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v6

    goto :goto_49

    .line 510
    :cond_3d
    iget-object v7, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v7, :cond_49

    cmpl-float v9, v6, v8

    if-eqz v9, :cond_49

    .line 513
    invoke-virtual {v7, v6}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v6

    .line 518
    :cond_49
    :goto_49
    iget-object v7, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v7, v0, v1}, Lcom/android/server/display/utils/AmbientFilter;->getEstimate(J)F

    move-result v0

    .line 519
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientBrightness:F

    cmpl-float v1, v6, v8

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v1, :cond_68

    cmpl-float v1, v0, v8

    if-eqz v1, :cond_68

    if-eqz v5, :cond_68

    .line 523
    invoke-virtual {v5, v0}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v1

    mul-float/2addr v6, v1

    sub-float v5, v7, v1

    mul-float/2addr v5, v3

    add-float/2addr v6, v5

    .line 527
    iput v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestLowLightBias:F

    :cond_68
    cmpl-float v1, v6, v8

    if-eqz v1, :cond_7d

    cmpl-float v1, v0, v8

    if-eqz v1, :cond_7d

    if-eqz v2, :cond_7d

    .line 531
    invoke-virtual {v2, v0}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    sub-float/2addr v7, v0

    mul-float/2addr v7, v6

    mul-float/2addr v4, v0

    add-float v6, v7, v4

    .line 535
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestHighLightBias:F

    .line 538
    :cond_7d
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    cmpl-float v0, v0, v8

    const-string v1, "DisplayWhiteBalanceController"

    if-eqz v0, :cond_aa

    .line 539
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_a8

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "override ambient color temperature: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_a8
    iget v6, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    :cond_aa
    cmpl-float v0, v6, v8

    if-eqz v0, :cond_d9

    .line 550
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->throttle(F)Z

    move-result v0

    if-eqz v0, :cond_b7

    goto :goto_d9

    .line 554
    :cond_b7
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_d0

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pending ambient color temperature: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_d0
    iput v6, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 558
    iget-object p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mDisplayPowerControllerCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-eqz p0, :cond_d9

    .line 559
    invoke-interface {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;->updateWhiteBalance()V

    :cond_d9
    :goto_d9
    return-void
.end method

.method public updateDisplayColorTemperature()V
    .registers 6

    .line 572
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_11

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_11

    .line 573
    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    goto :goto_12

    :cond_11
    move v2, v1

    .line 578
    :goto_12
    iget v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_1d

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_1d

    move v2, v3

    :cond_1d
    cmpl-float v0, v2, v1

    if-nez v0, :cond_22

    return-void

    .line 587
    :cond_22
    iput v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    .line 588
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    const-string v2, "DisplayWhiteBalanceController"

    if-eqz v0, :cond_40

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ambient color temperature: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_40
    iput v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 592
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/History;->add(F)V

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display cct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Latest ambient cct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Latest ambient lux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Latest low light bias: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestLowLightBias:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Latest high light bias: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestHighLightBias:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setDisplayWhiteBalanceColorTemperature(I)Z

    .line 600
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    return-void
.end method

.method public final validateArguments(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;)V
    .registers 6

    .line 640
    const-string p0, "brightnessSensor must not be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 641
    const-string p0, "brightnessFilter must not be null"

    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 642
    const-string p0, "colorTemperatureSensor must not be null"

    invoke-static {p3, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 644
    const-string p0, "colorTemperatureFilter must not be null"

    invoke-static {p4, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 646
    const-string/jumbo p0, "throttler cannot be null"

    invoke-static {p5, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
