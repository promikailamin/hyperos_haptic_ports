.class public Lcom/android/server/power/batterysaver/BatterySavingStats;
.super Ljava/lang/Object;
.source "BatterySavingStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$PlugState;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final STATE_NOT_INITIALIZED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BatterySavingStats"


# instance fields
.field private mAdaptiveBatterySaverEnabledCount:I

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBatterySaverEnabledCount:I

.field private mCurrentState:I

.field private mLastAdaptiveBatterySaverDisabledTime:J

.field private mLastAdaptiveBatterySaverEnabledTime:J

.field private mLastBatterySaverDisabledTime:J

.field private mLastBatterySaverEnabledTime:J

.field private final mLock:Ljava/lang/Object;

.field final mStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    sget-boolean v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 5
    .param p1, "lock"    # Ljava/lang/Object;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/SparseArray;

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    .line 174
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    .line 177
    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    .line 180
    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    .line 183
    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    .line 186
    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    .line 192
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    .line 193
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 194
    return-void
.end method

.method private dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V
    .registers 15
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "interactiveState"    # I
    .param p3, "interactiveLabel"    # Ljava/lang/String;
    .param p4, "dozeState"    # I
    .param p5, "dozeLabel"    # Ljava/lang/String;

    .line 482
    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 483
    const-string v0, " "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 485
    const-string v0, ": "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 487
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p4, v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(IIII)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v1

    .line 489
    .local v1, "offStat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    const/4 v2, 0x1

    invoke-direct {p0, v2, p2, p4, v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(IIII)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v3

    .line 492
    .local v3, "onStat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    .line 493
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalMinutes()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    iget v0, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    div-int/lit16 v0, v0, 0x3e8

    .line 494
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    iget v0, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 495
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v4, v2

    .line 496
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v4, v2

    .line 497
    invoke-virtual {v3}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalMinutes()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v4, v2

    iget v0, v3, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    div-int/lit16 v0, v0, 0x3e8

    .line 498
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v4, v2

    iget v0, v3, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 499
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, v4, v2

    .line 500
    invoke-virtual {v3}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    move-result-wide v5

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v4, v2

    .line 492
    const-string v0, "%6dm %6dmAh(%3d%%) %8.1fmAh/h     %6dm %6dmAh(%3d%%) %8.1fmAh/h"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method private endLastStateLocked(JII)V
    .registers 26
    .param p1, "now"    # J
    .param p3, "batteryLevel"    # I
    .param p4, "batteryPercent"    # I

    .line 337
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-gez v1, :cond_7

    .line 338
    return-void

    .line 340
    :cond_7
    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v1

    .line 342
    .local v1, "stat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    move/from16 v2, p3

    iput v2, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryLevel:I

    .line 343
    move/from16 v3, p4

    iput v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryPercent:I

    .line 344
    move-wide/from16 v4, p1

    iput-wide v4, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    .line 346
    iget-wide v6, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    iget-wide v8, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startTime:J

    sub-long/2addr v6, v8

    .line 347
    .local v6, "deltaTime":J
    iget v8, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    iget v9, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryLevel:I

    sub-int/2addr v8, v9

    .line 348
    .local v8, "deltaDrain":I
    iget v9, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    iget v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryPercent:I

    sub-int/2addr v9, v10

    .line 350
    .local v9, "deltaPercent":I
    iget-wide v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    add-long/2addr v10, v6

    iput-wide v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    .line 351
    iget v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    add-int/2addr v10, v8

    iput v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    .line 352
    iget v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    add-int/2addr v10, v9

    iput v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 354
    sget-boolean v10, Lcom/android/server/power/batterysaver/BatterySavingStats;->DEBUG:Z

    if-eqz v10, :cond_a9

    .line 355
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "State summary: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    invoke-static {v11}, Lcom/android/server/power/batterysaver/BatterySavingStats;->stateToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    div-long v11, v6, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "s Start level: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "uA End level: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryLevel:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "uA Start percent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% End percent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryPercent:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% Drain "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "uA"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "BatterySavingStats"

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_a9
    iget v10, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 364
    invoke-static {v10}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v10

    iget v11, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 365
    invoke-static {v11}, Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;->fromIndex(I)I

    move-result v11

    iget v12, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 366
    invoke-static {v12}, Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;->fromIndex(I)I

    move-result v12

    iget-wide v13, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    iget v15, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    iget v0, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 363
    move-wide/from16 v17, v13

    move-wide v13, v6

    move/from16 v19, v15

    move v15, v8

    move/from16 v16, v9

    move/from16 v20, v0

    invoke-static/range {v10 .. v20}, Lcom/android/server/EventLogTags;->writeBatterySavingStats(IIIJIIJII)V

    .line 374
    return-void
.end method

.method private getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_17

    .line 198
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 199
    if-nez v0, :cond_17

    .line 200
    const-string v0, "BatterySavingStats"

    const-string v1, "BatteryManagerInternal not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_17
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object v0
.end method

.method private getStat(IIII)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    .registers 6
    .param p1, "batterySaverState"    # I
    .param p2, "interactiveState"    # I
    .param p3, "dozeState"    # I
    .param p4, "plugState"    # I

    .line 254
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v0

    return-object v0
.end method

.method private startNewStateLocked(IJII)V
    .registers 9
    .param p1, "newState"    # I
    .param p2, "now"    # J
    .param p4, "batteryLevel"    # I
    .param p5, "batteryPercent"    # I

    .line 378
    sget-boolean v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatterySavingStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_20
    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 383
    if-gez p1, :cond_25

    .line 384
    return-void

    .line 387
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v0

    .line 388
    .local v0, "stat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    iput p4, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    .line 389
    iput p5, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    .line 390
    iput-wide p2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startTime:J

    .line 391
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    .line 392
    return-void
.end method

.method static stateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 224
    packed-switch p0, :pswitch_data_48

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 229
    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",D="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 230
    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",P="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 231
    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$PlugState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    return-object v0

    .line 226
    :pswitch_45
    const-string v0, "NotInitialized"

    return-object v0

    :pswitch_data_48
    .packed-switch -0x1
        :pswitch_45
    .end packed-switch
.end method

.method static statesToIndex(IIII)I
    .registers 6
    .param p0, "batterySaverState"    # I
    .param p1, "interactiveState"    # I
    .param p2, "dozeState"    # I
    .param p3, "plugState"    # I

    .line 212
    and-int/lit8 v0, p0, 0x3

    .line 213
    .local v0, "ret":I
    and-int/lit8 v1, p1, 0x1

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 214
    and-int/lit8 v1, p2, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    .line 215
    and-int/lit8 v1, p3, 0x1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    .line 216
    return v0
.end method

.method private transitionStateLocked(I)V
    .registers 14
    .param p1, "newState"    # I

    .line 294
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-ne v0, p1, :cond_5

    .line 295
    return-void

    .line 297
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v7

    .line 298
    .local v7, "now":J
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectBatteryLevel()I

    move-result v0

    .line 299
    .local v0, "batteryLevel":I
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectBatteryPercent()I

    move-result v9

    .line 301
    .local v9, "batteryPercent":I
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    const/4 v2, 0x0

    if-gez v1, :cond_18

    .line 302
    move v1, v2

    goto :goto_1c

    :cond_18
    invoke-static {v1}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v1

    :goto_1c
    move v10, v1

    .line 303
    .local v10, "oldBatterySaverState":I
    if-gez p1, :cond_20

    .line 304
    goto :goto_24

    :cond_20
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v2

    :goto_24
    move v11, v2

    .line 305
    .local v11, "newBatterySaverState":I
    if-eq v10, v11, :cond_4c

    .line 306
    const/4 v1, 0x1

    packed-switch v11, :pswitch_data_58

    goto :goto_4c

    .line 322
    :pswitch_2c
    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    .line 323
    iput-wide v7, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    .line 324
    if-ne v10, v1, :cond_4c

    .line 325
    iput-wide v7, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    goto :goto_4c

    .line 308
    :pswitch_38
    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    .line 309
    iput-wide v7, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    .line 310
    const/4 v1, 0x2

    if-ne v10, v1, :cond_4c

    .line 311
    iput-wide v7, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    goto :goto_4c

    .line 315
    :pswitch_45
    if-ne v10, v1, :cond_4a

    .line 316
    iput-wide v7, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    goto :goto_4c

    .line 318
    :cond_4a
    iput-wide v7, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    .line 331
    :cond_4c
    :goto_4c
    invoke-direct {p0, v7, v8, v0, v9}, Lcom/android/server/power/batterysaver/BatterySavingStats;->endLastStateLocked(JII)V

    .line 332
    move-object v1, p0

    move v2, p1

    move-wide v3, v7

    move v5, v0

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->startNewStateLocked(IJII)V

    .line 333
    return-void

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_45
        :pswitch_38
        :pswitch_2c
    .end packed-switch
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 18
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 395
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v0, "Battery saving stats:"

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 398
    iget-object v9, v7, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 399
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v10, v0

    .line 400
    .local v10, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v0

    move-wide v12, v0

    .line 401
    .local v12, "nowElapsed":J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const-string v1, "Battery Saver is currently: "

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget v1, v7, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    invoke-static {v1}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v1

    packed-switch v1, :pswitch_data_166

    goto :goto_42

    .line 412
    :pswitch_30
    const-string v1, "ADAPTIVE"

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_42

    .line 409
    :pswitch_36
    const-string v1, "ON"

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 410
    goto :goto_42

    .line 406
    :pswitch_3c
    const-string v1, "OFF"

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 407
    nop

    .line 416
    :goto_42
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 417
    iget-wide v1, v7, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_70

    .line 418
    const-string v1, "Last ON time: "

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 419
    new-instance v1, Ljava/util/Date;

    sub-long v5, v10, v12

    iget-wide v14, v7, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    add-long/2addr v5, v14

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 420
    const-string v1, " "

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 421
    iget-wide v1, v7, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    invoke-static {v1, v2, v12, v13, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 425
    :cond_70
    iget-wide v1, v7, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_99

    .line 426
    const-string v1, "Last OFF time: "

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 427
    new-instance v1, Ljava/util/Date;

    sub-long v5, v10, v12

    iget-wide v14, v7, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    add-long/2addr v5, v14

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 428
    const-string v1, " "

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 429
    iget-wide v1, v7, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    invoke-static {v1, v2, v12, v13, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 430
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 433
    :cond_99
    const-string v1, "Times full enabled: "

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 434
    iget v1, v7, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 436
    iget-wide v1, v7, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_cc

    .line 437
    const-string v1, "Last ADAPTIVE ON time: "

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 438
    new-instance v1, Ljava/util/Date;

    sub-long v5, v10, v12

    iget-wide v14, v7, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    add-long/2addr v5, v14

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 440
    const-string v1, " "

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 441
    iget-wide v1, v7, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    invoke-static {v1, v2, v12, v13, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 442
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 444
    :cond_cc
    iget-wide v1, v7, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_f5

    .line 445
    const-string v1, "Last ADAPTIVE OFF time: "

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 446
    new-instance v1, Ljava/util/Date;

    sub-long v2, v10, v12

    iget-wide v4, v7, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 448
    const-string v1, " "

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 449
    iget-wide v1, v7, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    invoke-static {v1, v2, v12, v13, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 450
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 452
    :cond_f5
    const-string v1, "Times adaptive enabled: "

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 453
    iget v1, v7, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 455
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 456
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 458
    const-string v1, "Drain stats:"

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 460
    const-string v1, "                   Battery saver OFF                          ON"

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 461
    const/4 v3, 0x0

    const-string v4, "NonIntr"

    const/4 v5, 0x0

    const-string v6, "NonDoze"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 463
    const/4 v3, 0x1

    const-string v4, "   Intr"

    const/4 v5, 0x0

    const-string v6, "       "

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 466
    const/4 v3, 0x0

    const-string v4, "NonIntr"

    const/4 v5, 0x2

    const-string v6, "Deep   "

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 468
    const/4 v3, 0x1

    const-string v4, "   Intr"

    const/4 v5, 0x2

    const-string v6, "       "

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 471
    const/4 v3, 0x0

    const-string v4, "NonIntr"

    const/4 v5, 0x1

    const-string v6, "Light  "

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 473
    const/4 v3, 0x1

    const-string v4, "   Intr"

    const/4 v5, 0x1

    const-string v6, "       "

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 475
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v10    # "now":J
    .end local v12    # "nowElapsed":J
    monitor-exit v9
    :try_end_15e
    .catchall {:try_start_f .. :try_end_15e} :catchall_162

    .line 476
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 477
    return-void

    .line 475
    :catchall_162
    move-exception v0

    :try_start_163
    monitor-exit v9
    :try_end_164
    .catchall {:try_start_163 .. :try_end_164} :catchall_162

    throw v0

    nop

    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_36
        :pswitch_30
    .end packed-switch
.end method

.method getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    .registers 5
    .param p1, "stateIndex"    # I

    .line 239
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    .line 241
    .local v1, "stat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    if-nez v1, :cond_18

    .line 242
    new-instance v2, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    invoke-direct {v2}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;-><init>()V

    move-object v1, v2

    .line 243
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    :cond_18
    monitor-exit v0

    return-object v1

    .line 246
    .end local v1    # "stat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method injectBatteryLevel()I
    .registers 3

    .line 264
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object v0

    .line 265
    .local v0, "bmi":Landroid/os/BatteryManagerInternal;
    if-nez v0, :cond_8

    .line 266
    const/4 v1, 0x0

    return v1

    .line 268
    :cond_8
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryChargeCounter()I

    move-result v1

    return v1
.end method

.method injectBatteryPercent()I
    .registers 3

    .line 273
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object v0

    .line 274
    .local v0, "bmi":Landroid/os/BatteryManagerInternal;
    if-nez v0, :cond_8

    .line 275
    const/4 v1, 0x0

    return v1

    .line 277
    :cond_8
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    return v1
.end method

.method injectCurrentTime()J
    .registers 3

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method transitionState(IIII)V
    .registers 7
    .param p1, "batterySaverState"    # I
    .param p2, "interactiveState"    # I
    .param p3, "dozeState"    # I
    .param p4, "plugState"    # I

    .line 285
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(IIII)I

    move-result v1

    .line 288
    .local v1, "newState":I
    invoke-direct {p0, v1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionStateLocked(I)V

    .line 289
    .end local v1    # "newState":I
    monitor-exit v0

    .line 290
    return-void

    .line 289
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
