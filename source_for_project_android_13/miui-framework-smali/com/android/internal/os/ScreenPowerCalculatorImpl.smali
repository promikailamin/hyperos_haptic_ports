.class public Lcom/android/internal/os/ScreenPowerCalculatorImpl;
.super Lcom/android/internal/os/PowerCalculator;
.source "ScreenPowerCalculatorImpl.java"

# interfaces
.implements Lcom/android/internal/os/ScreenPowerCalculatorStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;,
        Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist MIN_ACTIVE_TIME_FOR_SMEARING:J = 0x927c0L

.field private static final blacklist TAG:Ljava/lang/String; = "ScreenPowerCalculatorStub"


# instance fields
.field private blacklist mAppDurationMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private blacklist mAppScreenHBMPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private blacklist mAppScreenLowPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private blacklist mHasDyPowerController:Z

.field private blacklist mScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private blacklist mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mAppDurationMap:Landroid/util/SparseArray;

    .line 57
    return-void
.end method

.method private blacklist calculateAppUsingMeasuredEnergy(Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;Landroid/os/BatteryStats$Uid;J)V
    .registers 9
    .param p1, "appPowerAndDuration"    # Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J

    .line 192
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;->durationMs:J

    .line 194
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getScreenOnMeasuredBatteryConsumptionUC()J

    move-result-wide v0

    .line 195
    .local v0, "chargeUC":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1c

    .line 196
    const-string v2, "ScreenPowerCalculatorStub"

    const-string v3, "Screen energy not supported, so calculateApp shouldn\'t de called"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;->powerMah:D

    .line 198
    return-void

    .line 201
    :cond_1c
    invoke-static {v0, v1}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->uCtoMah(J)D

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;->powerMah:D

    .line 202
    return-void
.end method

.method private blacklist calculateAppsBinPower(I[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;J)D
    .registers 14
    .param p1, "display"    # I
    .param p2, "binTime"    # [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .param p3, "rawRealtimeUs"    # J

    .line 273
    const-wide/16 v0, 0x0

    .line 274
    .local v0, "power":D
    const/4 v2, 0x0

    .local v2, "bin":I
    :goto_3
    const/16 v3, 0x64

    if-ge v2, v3, :cond_5d

    .line 275
    aget-object v3, p2, v2

    const/4 v4, 0x0

    .line 276
    invoke-virtual {v3, p3, p4, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 278
    .local v3, "brightnessTime":J
    const/16 v5, 0x32

    if-gt v2, v5, :cond_35

    .line 279
    iget-object v5, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mAppScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mAppScreenLowPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v7, v7, p1

    .line 280
    invoke-virtual {v7, v3, v4}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v7

    sub-double/2addr v5, v7

    int-to-double v7, v2

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    div-double/2addr v5, v7

    iget-object v7, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mAppScreenLowPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v7, v7, p1

    .line 282
    invoke-virtual {v7, v3, v4}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v7

    add-double/2addr v5, v7

    .local v5, "binPowerMah":D
    goto :goto_59

    .line 284
    .end local v5    # "binPowerMah":D
    :cond_35
    iget-object v5, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mAppScreenHBMPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mAppScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v7, v7, p1

    .line 285
    invoke-virtual {v7, v3, v4}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v7

    sub-double/2addr v5, v7

    add-int/lit8 v7, v2, -0x32

    int-to-double v7, v7

    mul-double/2addr v5, v7

    const-wide v7, 0x4048800000000000L    # 49.0

    div-double/2addr v5, v7

    iget-object v7, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mAppScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v7, v7, p1

    .line 287
    invoke-virtual {v7, v3, v4}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v7

    add-double/2addr v5, v7

    .line 293
    .restart local v5    # "binPowerMah":D
    :goto_59
    add-double/2addr v0, v5

    .line 274
    .end local v3    # "brightnessTime":J
    .end local v5    # "binPowerMah":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 295
    .end local v2    # "bin":I
    :cond_5d
    return-wide v0
.end method

.method private blacklist calculateDuration(Landroid/os/BatteryStats;JI)J
    .registers 9
    .param p1, "batteryStats"    # Landroid/os/BatteryStats;
    .param p2, "rawRealtimeUs"    # J
    .param p4, "statsType"    # I

    .line 205
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist calculateOthersPowerFromBrightness(Landroid/os/BatteryStats;J)D
    .registers 25
    .param p1, "batteryStats"    # Landroid/os/BatteryStats;
    .param p2, "rawRealtimeUs"    # J

    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    array-length v4, v4

    .line 233
    .local v4, "numDisplays":I
    const-wide/16 v5, 0x0

    .line 234
    .local v5, "power":D
    const/4 v7, 0x0

    .local v7, "display":I
    :goto_c
    if-ge v7, v4, :cond_58

    .line 235
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v3, v8}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    .line 236
    .local v9, "displayTime":J
    iget-object v13, v0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v13, v13, v7

    invoke-virtual {v13, v9, v10}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v13

    add-double/2addr v5, v13

    .line 237
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->getSoleCalculateAppsBinTime(J)[J

    move-result-object v13

    .line 238
    .local v13, "calculateAppTimeUs":[J
    const/4 v14, 0x0

    .local v14, "bin":I
    :goto_24
    const/16 v15, 0x64

    if-ge v14, v15, :cond_53

    .line 239
    invoke-virtual {v1, v14}, Landroid/os/BatteryStats;->getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v15

    invoke-virtual {v15, v2, v3, v8}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v15

    aget-wide v17, v13, v14

    sub-long v15, v15, v17

    move-wide/from16 v18, v9

    .end local v9    # "displayTime":J
    .local v18, "displayTime":J
    div-long v8, v15, v11

    .line 241
    .local v8, "brightnessTime":J
    iget-object v10, v0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v10, v10, v7

    invoke-virtual {v10, v8, v9}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v15

    int-to-float v10, v14

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v10, v10, v20

    float-to-double v11, v10

    mul-double/2addr v15, v11

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v15, v10

    .line 247
    .local v15, "binPowerMah":D
    add-double/2addr v5, v15

    .line 238
    .end local v8    # "brightnessTime":J
    .end local v15    # "binPowerMah":D
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v9, v18

    const/4 v8, 0x0

    const-wide/16 v11, 0x3e8

    goto :goto_24

    .end local v18    # "displayTime":J
    .restart local v9    # "displayTime":J
    :cond_53
    move-wide/from16 v18, v9

    .line 234
    .end local v9    # "displayTime":J
    .end local v13    # "calculateAppTimeUs":[J
    .end local v14    # "bin":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 253
    .end local v7    # "display":I
    :cond_58
    return-wide v5
.end method

.method private blacklist calculateSoleAppPowerFromBrightness(Landroid/os/BatteryStats;J)D
    .registers 11
    .param p1, "batteryStats"    # Landroid/os/BatteryStats;
    .param p2, "rawRealtimeUs"    # J

    .line 257
    iget-object v0, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    array-length v0, v0

    .line 258
    .local v0, "numDisplays":I
    const-wide/16 v1, 0x0

    .line 259
    .local v1, "power":D
    const/4 v3, 0x0

    .local v3, "display":I
    :goto_6
    if-ge v3, v0, :cond_2c

    .line 260
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    iget-object v5, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mAppDurationMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_29

    .line 261
    iget-object v5, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mAppDurationMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;

    .line 262
    .local v5, "uidTimeStats":Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;
    if-eqz v5, :cond_26

    iget-object v6, v5, Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v6, :cond_20

    goto :goto_26

    .line 263
    :cond_20
    iget-object v6, v5, Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-direct {p0, v3, v6, p2, p3}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->calculateAppsBinPower(I[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;J)D

    move-result-wide v1

    .line 260
    .end local v5    # "uidTimeStats":Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;
    :cond_26
    :goto_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 259
    .end local v4    # "i":I
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 269
    .end local v3    # "display":I
    :cond_2c
    return-wide v1
.end method

.method private blacklist calculateTotalDurationAndPower(Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;ILandroid/os/BatteryStats;JIJ)V
    .registers 13
    .param p1, "totalPowerAndDuration"    # Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;
    .param p2, "powerModel"    # I
    .param p3, "batteryStats"    # Landroid/os/BatteryStats;
    .param p4, "rawRealtimeUs"    # J
    .param p6, "statsType"    # I
    .param p7, "consumptionUC"    # J

    .line 171
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->calculateDuration(Landroid/os/BatteryStats;JI)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;->durationMs:J

    .line 174
    packed-switch p2, :pswitch_data_28

    .line 180
    iget-boolean v0, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mHasDyPowerController:Z

    if-eqz v0, :cond_20

    .line 181
    invoke-direct {p0, p3, p4, p5}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->calculateOthersPowerFromBrightness(Landroid/os/BatteryStats;J)D

    move-result-wide v0

    .line 182
    invoke-direct {p0, p3, p4, p5}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->calculateSoleAppPowerFromBrightness(Landroid/os/BatteryStats;J)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p1, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;->powerMah:D

    goto :goto_26

    .line 176
    :pswitch_19
    invoke-static {p7, p8}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->uCtoMah(J)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;->powerMah:D

    .line 177
    goto :goto_26

    .line 184
    :cond_20
    invoke-direct {p0, p3, p4, p5}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->calculateTotalPowerFromBrightness(Landroid/os/BatteryStats;J)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;->powerMah:D

    .line 188
    :goto_26
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x2
        :pswitch_19
    .end packed-switch
.end method

.method private blacklist calculateTotalPowerFromBrightness(Landroid/os/BatteryStats;J)D
    .registers 21
    .param p1, "batteryStats"    # Landroid/os/BatteryStats;
    .param p2, "rawRealtimeUs"    # J

    .line 210
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    array-length v4, v4

    .line 211
    .local v4, "numDisplays":I
    const-wide/16 v5, 0x0

    .line 212
    .local v5, "power":D
    const/4 v7, 0x0

    .local v7, "display":I
    :goto_c
    if-ge v7, v4, :cond_42

    .line 213
    invoke-virtual {v1, v7, v2, v3}, Landroid/os/BatteryStats;->getDisplayScreenOnTime(IJ)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    .line 215
    .local v8, "displayTime":J
    iget-object v12, v0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v12, v12, v7

    invoke-virtual {v12, v8, v9}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v12

    add-double/2addr v5, v12

    .line 216
    const/4 v12, 0x0

    .local v12, "bin":I
    :goto_1f
    const/16 v13, 0x64

    if-ge v12, v13, :cond_3f

    .line 217
    invoke-virtual {v1, v7, v12, v2, v3}, Landroid/os/BatteryStats;->getDisplayScreenBrightnessTime(IIJ)J

    move-result-wide v13

    div-long/2addr v13, v10

    .line 219
    .local v13, "brightnessTime":J
    iget-object v15, v0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v15, v15, v7

    invoke-virtual {v15, v13, v14}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v15

    int-to-float v10, v12

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-double v10, v10

    mul-double/2addr v15, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v15, v10

    .line 225
    .local v15, "binPowerMah":D
    add-double/2addr v5, v15

    .line 216
    .end local v13    # "brightnessTime":J
    .end local v15    # "binPowerMah":D
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v10, 0x3e8

    goto :goto_1f

    .line 212
    .end local v8    # "displayTime":J
    .end local v12    # "bin":I
    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 228
    .end local v7    # "display":I
    :cond_42
    return-wide v5
.end method

.method private blacklist smearScreenBatteryDrain(Landroid/util/SparseArray;Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;J)V
    .registers 23
    .param p2, "totalPowerAndDuration"    # Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;
    .param p3, "rawRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/UidBatteryConsumer$Builder;",
            ">;",
            "Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;",
            "J)V"
        }
    .end annotation

    .line 318
    .local p1, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    move-object/from16 v0, p1

    const-wide/16 v1, 0x0

    .line 319
    .local v1, "totalActivityTimeMs":J
    new-instance v3, Landroid/util/SparseLongArray;

    invoke-direct {v3}, Landroid/util/SparseLongArray;-><init>()V

    .line 320
    .local v3, "activityTimeArray":Landroid/util/SparseLongArray;
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_f
    if-ltz v4, :cond_34

    .line 321
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UidBatteryConsumer$Builder;

    .line 322
    .local v6, "app":Landroid/os/UidBatteryConsumer$Builder;
    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v7

    .line 323
    .local v7, "uid":Landroid/os/BatteryStats$Uid;
    move-object/from16 v8, p0

    move-wide/from16 v9, p3

    invoke-virtual {v8, v7, v9, v10}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v11

    .line 324
    .local v11, "timeMs":J
    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v13

    invoke-virtual {v3, v13, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 325
    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v13

    if-nez v13, :cond_31

    .line 326
    add-long/2addr v1, v11

    .line 320
    .end local v6    # "app":Landroid/os/UidBatteryConsumer$Builder;
    .end local v7    # "uid":Landroid/os/BatteryStats$Uid;
    .end local v11    # "timeMs":J
    :cond_31
    add-int/lit8 v4, v4, -0x1

    goto :goto_f

    :cond_34
    move-object/from16 v8, p0

    move-wide/from16 v9, p3

    .line 330
    .end local v4    # "i":I
    const-wide/32 v6, 0x927c0

    cmp-long v4, v1, v6

    if-ltz v4, :cond_79

    .line 331
    move-object/from16 v4, p2

    iget-wide v6, v4, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;->powerMah:D

    .line 332
    .local v6, "totalScreenPowerMah":D
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v11

    sub-int/2addr v11, v5

    .local v11, "i":I
    :goto_48
    if-ltz v11, :cond_75

    .line 333
    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UidBatteryConsumer$Builder;

    .line 334
    .local v12, "app":Landroid/os/UidBatteryConsumer$Builder;
    invoke-virtual {v12}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    move-result v13

    const-wide/16 v14, 0x0

    invoke-virtual {v3, v13, v14, v15}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v13

    .line 335
    .local v13, "durationMs":J
    move-object v15, v3

    .end local v3    # "activityTimeArray":Landroid/util/SparseLongArray;
    .local v15, "activityTimeArray":Landroid/util/SparseLongArray;
    long-to-double v3, v13

    mul-double/2addr v3, v6

    move-wide/from16 v16, v6

    .end local v6    # "totalScreenPowerMah":D
    .local v16, "totalScreenPowerMah":D
    long-to-double v5, v1

    div-double/2addr v3, v5

    .line 336
    .local v3, "powerMah":D
    const/4 v5, 0x0

    invoke-virtual {v12, v5, v13, v14}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v6

    check-cast v6, Landroid/os/UidBatteryConsumer$Builder;

    .line 337
    const/4 v7, 0x1

    invoke-virtual {v6, v5, v3, v4, v7}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 332
    .end local v3    # "powerMah":D
    .end local v12    # "app":Landroid/os/UidBatteryConsumer$Builder;
    .end local v13    # "durationMs":J
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v4, p2

    move v5, v7

    move-object v3, v15

    move-wide/from16 v6, v16

    goto :goto_48

    .end local v15    # "activityTimeArray":Landroid/util/SparseLongArray;
    .end local v16    # "totalScreenPowerMah":D
    .local v3, "activityTimeArray":Landroid/util/SparseLongArray;
    .restart local v6    # "totalScreenPowerMah":D
    :cond_75
    move-object v15, v3

    move-wide/from16 v16, v6

    .end local v3    # "activityTimeArray":Landroid/util/SparseLongArray;
    .end local v6    # "totalScreenPowerMah":D
    .restart local v15    # "activityTimeArray":Landroid/util/SparseLongArray;
    .restart local v16    # "totalScreenPowerMah":D
    goto :goto_7a

    .line 330
    .end local v11    # "i":I
    .end local v15    # "activityTimeArray":Landroid/util/SparseLongArray;
    .end local v16    # "totalScreenPowerMah":D
    .restart local v3    # "activityTimeArray":Landroid/util/SparseLongArray;
    :cond_79
    move-object v15, v3

    .line 341
    .end local v3    # "activityTimeArray":Landroid/util/SparseLongArray;
    .restart local v15    # "activityTimeArray":Landroid/util/SparseLongArray;
    :goto_7a
    return-void
.end method


# virtual methods
.method public blacklist calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 26
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 95
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v11, p3

    new-instance v0, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;

    const/4 v13, 0x0

    invoke-direct {v0, v13}, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;-><init>(Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration-IA;)V

    move-object v14, v0

    .line 97
    .local v14, "totalPowerAndDuration":Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;
    nop

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v15

    .line 100
    .local v15, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    .local v0, "i":I
    :goto_18
    if-ltz v0, :cond_69

    .line 101
    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer$Builder;

    .line 102
    .local v1, "app":Landroid/os/UidBatteryConsumer$Builder;
    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v2

    .line 103
    .local v2, "uid":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v9, v2, v11, v12}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v3

    .line 104
    .local v3, "timeMs":J
    invoke-static {}, Lcom/android/internal/os/BatteryStatsManagerStub;->getInstance()Lcom/android/internal/os/BatteryStatsManagerStub;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsManagerStubImpl;

    .line 105
    .local v5, "impl":Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    if-eqz v5, :cond_64

    .line 106
    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->getScreenCalculateMap()Landroid/util/SparseArray;

    move-result-object v6

    .line 107
    .local v6, "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;>;"
    if-eqz v6, :cond_64

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 108
    new-instance v8, Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;

    invoke-direct {v8, v13}, Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;-><init>(Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats-IA;)V

    .line 109
    .local v8, "uidTimeStats":Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;
    iput-wide v3, v8, Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;->fgTimeMs:J

    .line 110
    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;

    iget-object v7, v7, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v7, v8, Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 111
    iget-object v7, v9, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mAppDurationMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v13

    invoke-virtual {v7, v13, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    .end local v1    # "app":Landroid/os/UidBatteryConsumer$Builder;
    .end local v2    # "uid":Landroid/os/BatteryStats$Uid;
    .end local v3    # "timeMs":J
    .end local v5    # "impl":Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    .end local v6    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;>;"
    .end local v8    # "uidTimeStats":Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;
    :cond_64
    add-int/lit8 v0, v0, -0x1

    const/4 v7, 0x1

    const/4 v13, 0x0

    goto :goto_18

    .line 116
    .end local v0    # "i":I
    :cond_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getScreenOnMeasuredBatteryConsumptionUC()J

    move-result-wide v7

    .line 117
    .local v7, "consumptionUC":J
    move-object/from16 v13, p7

    invoke-static {v7, v8, v13}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v6

    .line 118
    .local v6, "powerModel":I
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v6

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move v13, v6

    .end local v6    # "powerModel":I
    .local v13, "powerModel":I
    move/from16 v6, v16

    move-wide/from16 v16, v7

    const/4 v10, 0x1

    .end local v7    # "consumptionUC":J
    .local v16, "consumptionUC":J
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->calculateTotalDurationAndPower(Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;ILandroid/os/BatteryStats;JIJ)V

    .line 121
    const-wide/16 v0, 0x0

    .line 122
    .local v0, "totalAppPower":D
    const-wide/16 v2, 0x0

    .line 127
    .local v2, "totalAppDuration":J
    const/4 v4, 0x0

    packed-switch v13, :pswitch_data_fa

    .line 146
    move-wide/from16 v5, p3

    invoke-direct {v9, v15, v14, v5, v6}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->smearScreenBatteryDrain(Landroid/util/SparseArray;Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;J)V

    .line 148
    iget-wide v0, v14, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;->powerMah:D

    .line 149
    iget-wide v2, v14, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;->durationMs:J

    goto :goto_d3

    .line 129
    :pswitch_98
    new-instance v5, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;-><init>(Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration-IA;)V

    .line 130
    .local v5, "appPowerAndDuration":Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v10

    .local v6, "i":I
    :goto_a3
    if-ltz v6, :cond_d1

    .line 131
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UidBatteryConsumer$Builder;

    .line 132
    .local v7, "app":Landroid/os/UidBatteryConsumer$Builder;
    invoke-virtual {v7}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v8

    invoke-direct {v9, v5, v8, v11, v12}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->calculateAppUsingMeasuredEnergy(Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;Landroid/os/BatteryStats$Uid;J)V

    .line 134
    iget-wide v10, v5, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;->durationMs:J

    invoke-virtual {v7, v4, v10, v11}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v8

    check-cast v8, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v10, v5, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;->powerMah:D

    .line 136
    invoke-virtual {v8, v4, v10, v11, v13}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 138
    invoke-virtual {v7}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v8

    if-nez v8, :cond_cb

    .line 139
    iget-wide v10, v5, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;->powerMah:D

    add-double/2addr v0, v10

    .line 140
    iget-wide v10, v5, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;->durationMs:J

    add-long/2addr v2, v10

    .line 130
    .end local v7    # "app":Landroid/os/UidBatteryConsumer$Builder;
    :cond_cb
    add-int/lit8 v6, v6, -0x1

    move-wide/from16 v11, p3

    const/4 v10, 0x1

    goto :goto_a3

    .line 143
    .end local v6    # "i":I
    :cond_d1
    move-wide/from16 v5, p3

    .line 152
    .end local v5    # "appPowerAndDuration":Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;
    :goto_d3
    move-object/from16 v7, p1

    const/4 v8, 0x1

    invoke-virtual {v7, v4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v10

    iget-wide v11, v14, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;->powerMah:D

    .line 155
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    .line 154
    invoke-virtual {v10, v4, v11, v12, v13}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v10

    check-cast v10, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v11, v14, Lcom/android/internal/os/ScreenPowerCalculatorImpl$PowerAndDuration;->durationMs:J

    .line 156
    invoke-virtual {v10, v4, v11, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 159
    invoke-virtual {v7, v8}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v8

    .line 161
    invoke-virtual {v8, v4, v0, v1, v13}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v8

    check-cast v8, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 162
    invoke-virtual {v8, v4, v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 163
    return-void

    nop

    :pswitch_data_fa
    .packed-switch 0x2
        :pswitch_98
    .end packed-switch
.end method

.method public blacklist getDyAppScreenPower(Lcom/android/internal/os/BatteryStatsImpl;)[B
    .registers 25
    .param p1, "batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 376
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 377
    .local v3, "bytes":[B
    invoke-static {}, Lcom/android/internal/os/BatteryStatsManagerStub;->getInstance()Lcom/android/internal/os/BatteryStatsManagerStub;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/os/BatteryStatsManagerStubImpl;

    .line 378
    .local v4, "impl":Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    if-eqz v4, :cond_de

    .line 379
    const-wide/16 v5, 0x0

    .line 380
    .local v5, "powerMah":D
    const-wide/16 v7, 0x0

    .line 381
    .local v7, "fgTimeMs":J
    const/16 v0, 0x64

    new-array v9, v0, [J

    .line 382
    .local v9, "brightnessBinTimes":[J
    iget-object v10, v1, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    array-length v10, v10

    .line 383
    .local v10, "numDisplays":I
    iget-object v11, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v11}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    .line 384
    .local v11, "rawRealtimeUs":J
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->getScreenCalculateMap()Landroid/util/SparseArray;

    move-result-object v13

    .line 385
    .local v13, "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_27
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_b4

    .line 386
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 387
    .local v15, "uid":I
    invoke-virtual {v13, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;

    .line 388
    .local v0, "uidStats":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    if-eqz v0, :cond_9e

    move-object/from16 v16, v3

    .end local v3    # "bytes":[B
    .local v16, "bytes":[B
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v3, :cond_46

    move-object/from16 v17, v4

    move-wide/from16 v18, v5

    goto :goto_a6

    .line 389
    :cond_46
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->packageName:Ljava/lang/String;

    move-object/from16 v17, v4

    .end local v4    # "impl":Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    .local v17, "impl":Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    const-string v4, "com.ss.android.ugc.aweme"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 390
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    iget v4, v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->uid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 391
    .local v3, "bsiUid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-wide/from16 v18, v5

    .end local v5    # "powerMah":D
    .local v18, "powerMah":D
    invoke-virtual {v1, v3, v11, v12}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v4

    .line 392
    .local v4, "timeMs":J
    move-wide v7, v4

    .line 393
    const/4 v6, 0x0

    .local v6, "display":I
    :goto_64
    if-ge v6, v10, :cond_7d

    .line 394
    iget-object v2, v1, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v2, v2, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v20

    add-double v18, v18, v20

    .line 395
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-direct {v1, v6, v2, v11, v12}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->calculateAppsBinPower(I[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;J)D

    move-result-wide v20

    add-double v18, v18, v20

    .line 393
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p1

    goto :goto_64

    .line 397
    .end local v6    # "display":I
    :cond_7d
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_7e
    const/16 v6, 0x64

    if-ge v2, v6, :cond_94

    .line 398
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v6, v6, v2

    move-object/from16 v20, v0

    .end local v0    # "uidStats":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    .local v20, "uidStats":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    const/4 v0, 0x0

    invoke-virtual {v6, v11, v12, v0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v21

    aput-wide v21, v9, v2

    .line 397
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v20

    goto :goto_7e

    .end local v20    # "uidStats":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    .restart local v0    # "uidStats":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    :cond_94
    move-object/from16 v20, v0

    .line 400
    .end local v0    # "uidStats":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    .end local v2    # "j":I
    .restart local v20    # "uidStats":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    move-wide/from16 v5, v18

    goto :goto_ba

    .line 389
    .end local v3    # "bsiUid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "timeMs":J
    .end local v18    # "powerMah":D
    .end local v20    # "uidStats":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    .restart local v0    # "uidStats":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    .restart local v5    # "powerMah":D
    :cond_99
    move-object/from16 v20, v0

    move-wide/from16 v18, v5

    .end local v0    # "uidStats":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    .end local v5    # "powerMah":D
    .restart local v18    # "powerMah":D
    .restart local v20    # "uidStats":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    goto :goto_a6

    .line 388
    .end local v16    # "bytes":[B
    .end local v17    # "impl":Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    .end local v18    # "powerMah":D
    .end local v20    # "uidStats":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    .restart local v0    # "uidStats":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    .local v3, "bytes":[B
    .local v4, "impl":Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    .restart local v5    # "powerMah":D
    :cond_9e
    move-object/from16 v20, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-wide/from16 v18, v5

    .line 385
    .end local v0    # "uidStats":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    .end local v3    # "bytes":[B
    .end local v4    # "impl":Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    .end local v5    # "powerMah":D
    .end local v15    # "uid":I
    .restart local v16    # "bytes":[B
    .restart local v17    # "impl":Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    .restart local v18    # "powerMah":D
    :goto_a6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-wide/from16 v5, v18

    const/16 v0, 0x64

    goto/16 :goto_27

    .end local v16    # "bytes":[B
    .end local v17    # "impl":Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    .end local v18    # "powerMah":D
    .restart local v3    # "bytes":[B
    .restart local v4    # "impl":Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    .restart local v5    # "powerMah":D
    :cond_b4
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-wide/from16 v18, v5

    .line 404
    .end local v3    # "bytes":[B
    .end local v4    # "impl":Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    .end local v14    # "i":I
    .restart local v16    # "bytes":[B
    .restart local v17    # "impl":Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    :goto_ba
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 406
    .local v2, "out":Landroid/os/Parcel;
    :try_start_be
    invoke-virtual {v2, v5, v6}, Landroid/os/Parcel;->writeDouble(D)V

    .line 407
    invoke-virtual {v2, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 408
    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 409
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_cb} :catch_d2
    .catchall {:try_start_be .. :try_end_cb} :catchall_d0

    move-object v3, v0

    .line 413
    .end local v16    # "bytes":[B
    .restart local v3    # "bytes":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 414
    goto :goto_e4

    .line 413
    .end local v3    # "bytes":[B
    .restart local v16    # "bytes":[B
    :catchall_d0
    move-exception v0

    goto :goto_da

    .line 410
    :catch_d2
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    :try_start_d3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_d0

    .line 413
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 414
    goto :goto_e2

    .line 413
    :goto_da
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 414
    throw v0

    .line 378
    .end local v2    # "out":Landroid/os/Parcel;
    .end local v5    # "powerMah":D
    .end local v7    # "fgTimeMs":J
    .end local v9    # "brightnessBinTimes":[J
    .end local v10    # "numDisplays":I
    .end local v11    # "rawRealtimeUs":J
    .end local v13    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;>;"
    .end local v16    # "bytes":[B
    .end local v17    # "impl":Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    .restart local v3    # "bytes":[B
    .restart local v4    # "impl":Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    :cond_de
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 417
    .end local v3    # "bytes":[B
    .end local v4    # "impl":Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    .restart local v16    # "bytes":[B
    .restart local v17    # "impl":Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    :goto_e2
    move-object/from16 v3, v16

    .end local v16    # "bytes":[B
    .restart local v3    # "bytes":[B
    :goto_e4
    return-object v3
.end method

.method public blacklist getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .registers 7
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "rawRealtimeUs"    # J

    .line 367
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 368
    .local v0, "timer":Landroid/os/BatteryStats$Timer;
    if-nez v0, :cond_9

    .line 369
    const-wide/16 v1, 0x0

    return-wide v1

    .line 371
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J
    .registers 13
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "rawRealTimeUs"    # J

    .line 348
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 350
    .local v0, "foregroundTypes":[I
    const-wide/16 v2, 0x0

    .line 351
    .local v2, "timeUs":J
    array-length v4, v0

    move v5, v1

    :goto_a
    if-ge v5, v4, :cond_16

    aget v6, v0, v5

    .line 352
    .local v6, "type":I
    invoke-virtual {p1, v6, p2, p3, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v7

    .line 354
    .local v7, "localTime":J
    add-long/2addr v2, v7

    .line 351
    .end local v6    # "type":I
    .end local v7    # "localTime":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 359
    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    return-wide v4
.end method

.method public blacklist getSoleCalculateAppsBinTime(J)[J
    .registers 12
    .param p1, "rawRealtimeUs"    # J

    .line 299
    const/16 v0, 0x64

    new-array v1, v0, [J

    .line 300
    .local v1, "totalBinTimes":[J
    const/4 v2, 0x0

    .local v2, "bin":I
    :goto_5
    if-ge v2, v0, :cond_31

    .line 301
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    iget-object v4, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mAppDurationMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2e

    .line 302
    iget-object v4, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mAppDurationMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;

    .line 303
    .local v4, "timeStats":Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;
    iget-object v5, v4, Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v5, :cond_1d

    goto :goto_2b

    .line 304
    :cond_1d
    aget-wide v5, v1, v2

    iget-object v7, v4, Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-virtual {v7, p1, p2, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    add-long/2addr v5, v7

    aput-wide v5, v1, v2

    .line 301
    .end local v4    # "timeStats":Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 300
    .end local v3    # "i":I
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 308
    .end local v2    # "bin":I
    :cond_31
    return-object v1
.end method

.method public blacklist init(Lcom/android/internal/os/PowerProfile;)V
    .registers 14
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 61
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumDisplays()I

    move-result v0

    .line 62
    .local v0, "numDisplays":I
    new-array v1, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 63
    new-array v1, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 64
    new-array v1, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mAppScreenLowPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 65
    new-array v1, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mAppScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 66
    new-array v1, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mAppScreenHBMPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 68
    const-string v1, "dy.screen.low"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    .line 69
    .local v1, "dyLowMa":D
    const-string v3, "dy.screen.full"

    invoke-virtual {p1, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v3

    .line 70
    .local v3, "dyFullMa":D
    const-string v5, "dy.screen.hbm"

    invoke-virtual {p1, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    .line 72
    .local v5, "dyHbmMa":D
    const/4 v7, 0x0

    .local v7, "display":I
    :goto_2b
    if-ge v7, v0, :cond_69

    .line 73
    iget-object v8, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v9, Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 74
    const-string v10, "screen.on.display"

    invoke-virtual {p1, v10, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v9, v8, v7

    .line 75
    iget-object v8, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v9, Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 76
    const-string v10, "screen.full.display"

    invoke-virtual {p1, v10, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v9, v8, v7

    .line 79
    iget-object v8, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mAppScreenLowPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v9, Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-direct {v9, v1, v2}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v9, v8, v7

    .line 80
    iget-object v8, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mAppScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v9, Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-direct {v9, v3, v4}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v9, v8, v7

    .line 81
    iget-object v8, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mAppScreenHBMPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v9, Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-direct {v9, v5, v6}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v9, v8, v7

    .line 72
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 84
    .end local v7    # "display":I
    :cond_69
    const-wide/16 v7, 0x0

    cmpl-double v9, v3, v7

    if-eqz v9, :cond_75

    cmpl-double v7, v5, v7

    if-eqz v7, :cond_75

    const/4 v7, 0x1

    goto :goto_76

    :cond_75
    const/4 v7, 0x0

    :goto_76
    iput-boolean v7, p0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;->mHasDyPowerController:Z

    .line 85
    return-void
.end method

.method public blacklist isPowerComponentSupported(I)Z
    .registers 3
    .param p1, "powerComponent"    # I

    .line 89
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
