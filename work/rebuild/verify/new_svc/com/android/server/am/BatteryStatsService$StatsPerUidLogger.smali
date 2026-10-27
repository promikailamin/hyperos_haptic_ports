.class public Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;
.super Ljava/lang/Object;
.source "BatteryStatsService.java"


# static fields
.field public static final UID_PROCESS_STATES:[I


# instance fields
.field public final mFrameworkStatsLogger:Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 1097
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->UID_PROCESS_STATES:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;)V
    .registers 2

    .line 1115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1116
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->mFrameworkStatsLogger:Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;

    return-void
.end method

.method public static clampPowerMah(DLjava/lang/String;)F
    .registers 5

    .line 1120
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 1121
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " reported powerMah float overflow : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryStatsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_29
    return v0
.end method


# virtual methods
.method public final addStatsAtom(Ljava/util/List;Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;IIJLjava/lang/String;FFJ)Z
    .registers 32

    move-object/from16 v0, p0

    .line 1262
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->mFrameworkStatsLogger:Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;

    .line 1263
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->startTs()J

    move-result-wide v2

    .line 1264
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->endTs()J

    move-result-wide v4

    .line 1265
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->duration()J

    move-result-wide v6

    .line 1266
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->dischargePercentage()I

    move-result v8

    .line 1267
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->dischargeDuration()J

    move-result-wide v9

    move/from16 v11, p3

    move/from16 v12, p4

    move-wide/from16 v13, p5

    move-object/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move-wide/from16 v18, p10

    .line 1262
    invoke-virtual/range {v1 .. v19}, Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;->buildStatsEvent(JJJIJIIJLjava/lang/String;FFJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1277
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xbb8

    if-ne v0, v1, :cond_40

    .line 1278
    const-string v0, "BatteryStatsService"

    const-string v1, "BATTERY_USAGE_STATS_PER_UID is complete reaching dimension guardrail"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_40
    const/4 v0, 0x1

    return v0
.end method

.method public final addStatsForPowerComponent(Ljava/util/List;Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;IIFJLandroid/os/BatteryConsumer;I)Z
    .registers 22

    move-object/from16 v0, p8

    move/from16 v4, p4

    move/from16 v1, p9

    .line 1221
    invoke-virtual {v0, v1, v4}, Landroid/os/BatteryConsumer;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_e

    return v3

    .line 1226
    :cond_e
    invoke-virtual/range {p8 .. p9}, Landroid/os/BatteryConsumer;->getPowerComponentName(I)Ljava/lang/String;

    move-result-object v7

    .line 1227
    invoke-virtual {v0, v2}, Landroid/os/BatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v5

    .line 1228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uid-"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1229
    invoke-static {v5, v6, v1}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->clampPowerMah(DLjava/lang/String;)F

    move-result v9

    .line 1231
    invoke-virtual {v0, v2}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J

    move-result-wide v10

    const/4 v0, 0x0

    cmpl-float v0, v9, v0

    if-nez v0, :cond_44

    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-nez v0, :cond_44

    return v3

    :cond_44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v8, p5

    move-wide/from16 v5, p6

    .line 1236
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->addStatsAtom(Ljava/util/List;Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;IIJLjava/lang/String;FFJ)Z

    move-result p0

    return p0
.end method

.method public logStats(Landroid/os/BatteryUsageStats;Ljava/util/List;)I
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BatteryUsageStats;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1134
    new-instance v2, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;

    move-object v0, v2

    .line 1136
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide v1

    .line 1137
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    move-result-wide v3

    .line 1138
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getStatsDuration()J

    move-result-wide v5

    .line 1139
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getDischargePercentage()I

    move-result v7

    .line 1140
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getDischargeDurationMs()J

    move-result-wide v8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;-><init>(JJJIJ)V

    const/4 v10, 0x0

    move-object/from16 v11, p1

    .line 1145
    invoke-virtual {v11, v10}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v8

    .line 1149
    invoke-virtual {v8}, Landroid/os/BatteryConsumer;->getConsumedPower()D

    move-result-wide v1

    const-string v3, "AggregateBatteryConsumer"

    invoke-static {v1, v2, v3}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->clampPowerMah(DLjava/lang/String;)F

    move-result v5

    .line 1152
    invoke-virtual {v8}, Landroid/os/BatteryConsumer;->getPowerComponentIds()[I

    move-result-object v12

    array-length v13, v12

    move v14, v10

    :goto_31
    const/16 v15, 0x12

    if-ge v14, v13, :cond_5e

    aget v9, v12, v14

    if-ne v9, v15, :cond_3a

    goto :goto_5b

    .line 1157
    :cond_3a
    sget-object v15, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->UID_PROCESS_STATES:[I

    array-length v1, v15

    move v2, v10

    :goto_3e
    if-ge v2, v1, :cond_5b

    aget v4, v15, v2

    const/4 v3, -0x1

    const-wide/16 v6, 0x0

    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v1, p2

    move-object v2, v0

    move-object/from16 v0, p0

    .line 1159
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->addStatsForPowerComponent(Ljava/util/List;Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;IIFJLandroid/os/BatteryConsumer;I)Z

    move-result v3

    move-object v0, v2

    if-nez v3, :cond_56

    return v10

    :cond_56
    add-int/lit8 v2, v17, 0x1

    move/from16 v1, v16

    goto :goto_3e

    :cond_5b
    :goto_5b
    add-int/lit8 v14, v14, 0x1

    goto :goto_31

    .line 1173
    :cond_5e
    invoke-virtual {v11}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v1

    .line 1174
    new-instance v2, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$$ExternalSyntheticLambda0;-><init>()V

    .line 1175
    invoke-static {v2}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v2

    .line 1176
    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    .line 1174
    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1179
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_76
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_da

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/os/UidBatteryConsumer;

    .line 1180
    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v3

    .line 1183
    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uidConsumer-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->clampPowerMah(DLjava/lang/String;)F

    move-result v5

    .line 1186
    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer;->getPowerComponentIds()[I

    move-result-object v12

    array-length v13, v12

    move v14, v10

    :goto_a7
    if-ge v14, v13, :cond_76

    aget v9, v12, v14

    if-ne v9, v15, :cond_ae

    goto :goto_d7

    .line 1191
    :cond_ae
    sget-object v1, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->UID_PROCESS_STATES:[I

    array-length v2, v1

    move v4, v10

    :goto_b2
    if-ge v4, v2, :cond_d7

    move v6, v4

    aget v4, v1, v6

    move/from16 v16, v6

    .line 1193
    invoke-virtual {v8, v4}, Landroid/os/UidBatteryConsumer;->getTimeInProcessStateMs(I)J

    move-result-wide v6

    move/from16 v17, v2

    move/from16 v18, v16

    move-object v2, v0

    move-object/from16 v16, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1195
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->addStatsForPowerComponent(Ljava/util/List;Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;IIFJLandroid/os/BatteryConsumer;I)Z

    move-result v4

    move-object v0, v2

    if-nez v4, :cond_d0

    return v10

    :cond_d0
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_b2

    :cond_d7
    :goto_d7
    add-int/lit8 v14, v14, 0x1

    goto :goto_a7

    :cond_da
    return v10
.end method
