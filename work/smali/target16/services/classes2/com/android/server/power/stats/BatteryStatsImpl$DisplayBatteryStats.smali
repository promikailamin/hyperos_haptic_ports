.class public Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# instance fields
.field public screenBrightness:I

.field public screenBrightnessBin:I

.field public screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public screenDozeTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public screenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public screenState:I


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .registers 17

    .line 1224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1201
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenState:I

    const/4 v1, -0x1

    .line 1213
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessBin:I

    .line 1217
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightness:I

    const/4 v1, 0x5

    .line 1221
    new-array v2, v1, [Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 1225
    new-instance v3, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 1227
    new-instance v8, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v9, p1

    move-object/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v8, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    :goto_2a
    if-ge v0, v1, :cond_3f

    .line 1230
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v8, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    rsub-int/lit8 v11, v0, -0x64

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v9, p1

    move-object/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v8, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3f
    return-void
.end method


# virtual methods
.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 1261
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1262
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    :goto_b
    const/4 v1, 0x5

    if-ge v0, v1, :cond_18

    .line 1264
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_18
    return-void
.end method

.method public reset(J)V
    .registers 6

    .line 1239
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    .line 1240
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    move v0, v1

    :goto_c
    const/4 v2, 0x5

    if-ge v0, v2, :cond_19

    .line 1242
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_19
    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;J)V
    .registers 6

    .line 1250
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 1251
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    const/4 v0, 0x0

    :goto_b
    const/4 v1, 0x5

    if-ge v0, v1, :cond_18

    .line 1253
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_18
    return-void
.end method
