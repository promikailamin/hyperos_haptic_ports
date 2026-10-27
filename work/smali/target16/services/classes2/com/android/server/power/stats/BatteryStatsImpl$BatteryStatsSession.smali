.class public Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# instance fields
.field public final mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final mBatteryTimeRemainingMs:J

.field public final mChargeTimeRemainingMs:J

.field public final mCustomEnergyConsumerNames:[Ljava/lang/String;

.field public final mEstimatedBatteryCapacityMah:J

.field public final mHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field public final mMonotonicStartTime:J

.field public final mStartClockTime:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsHistory;JJJJJ[Ljava/lang/String;Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .registers 14

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 318
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mMonotonicStartTime:J

    .line 319
    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mStartClockTime:J

    .line 320
    iput-wide p10, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mEstimatedBatteryCapacityMah:J

    .line 321
    iput-wide p6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mBatteryTimeRemainingMs:J

    .line 322
    iput-wide p8, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mChargeTimeRemainingMs:J

    .line 323
    iput-object p12, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mCustomEnergyConsumerNames:[Ljava/lang/String;

    .line 324
    iput-object p13, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-void
.end method


# virtual methods
.method public getBatteryTimeRemainingMs()J
    .registers 3

    .line 340
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mBatteryTimeRemainingMs:J

    return-wide v0
.end method

.method public getChargeTimeRemainingMs()J
    .registers 3

    .line 344
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mChargeTimeRemainingMs:J

    return-wide v0
.end method

.method public getCustomEnergyConsumerNames()[Ljava/lang/String;
    .registers 1

    .line 352
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mCustomEnergyConsumerNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getEstimatedBatteryCapacity()J
    .registers 3

    .line 348
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mEstimatedBatteryCapacityMah:J

    return-wide v0
.end method

.method public getHistory()Lcom/android/internal/os/BatteryStatsHistory;
    .registers 1

    .line 328
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    return-object p0
.end method

.method public getMonotonicStartTime()J
    .registers 3

    .line 332
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mMonotonicStartTime:J

    return-wide v0
.end method

.method public getStartClockTime()J
    .registers 3

    .line 336
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mStartClockTime:J

    return-wide v0
.end method
