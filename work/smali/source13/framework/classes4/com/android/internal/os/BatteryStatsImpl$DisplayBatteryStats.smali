.class public Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayBatteryStats"
.end annotation


# instance fields
.field public blacklist screenBrightnessBin:I

.field public blacklist screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field public blacklist screenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field public blacklist screenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field public blacklist screenState:I

.field public blacklist screenStateAtLastEnergyMeasurement:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .registers 18
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 905
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenState:I

    .line 893
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessBin:I

    .line 897
    const/16 v2, 0x64

    new-array v3, v2, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 903
    iput v1, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenStateAtLastEnergyMeasurement:I

    .line 906
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v4, v1

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 908
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v9, v1

    move-object/from16 v10, p1

    move-object/from16 v14, p2

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 910
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31
    if-ge v1, v2, :cond_48

    .line 911
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v10, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    rsub-int/lit8 v7, v1, -0x64

    const/4 v8, 0x0

    move-object v4, v10

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v10, v3, v1

    .line 910
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 914
    .end local v1    # "i":I
    :cond_48
    return-void
.end method


# virtual methods
.method public blacklist reset(J)V
    .registers 6
    .param p1, "elapsedRealtimeUs"    # J

    .line 920
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    .line 921
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    .line 922
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    const/16 v2, 0x64

    if-ge v0, v2, :cond_1a

    .line 923
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    .line 922
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 925
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method
