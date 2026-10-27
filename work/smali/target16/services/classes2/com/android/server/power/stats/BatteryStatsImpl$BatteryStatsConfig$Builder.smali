.class public Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# static fields
.field public static final DEFAULT_POWER_STATS_THROTTLE_PERIOD:J

.field public static final DEFAULT_POWER_STATS_THROTTLE_PERIOD_CPU:J


# instance fields
.field public mDefaultPowerStatsThrottlePeriod:J

.field public mHighBatteryLevelAfterCharge:I

.field public mMaxHistorySizeBytes:I

.field public final mPowerStatsThrottlePeriods:Ljava/util/Map;

.field public mResetOnUnplugAfterSignificantCharge:Z

.field public mResetOnUnplugHighBatteryLevel:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDefaultPowerStatsThrottlePeriod(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mDefaultPowerStatsThrottlePeriod:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmHighBatteryLevelAfterCharge(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mHighBatteryLevelAfterCharge:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxHistorySizeBytes(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mMaxHistorySizeBytes:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerStatsThrottlePeriods(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResetOnUnplugAfterSignificantCharge(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugAfterSignificantCharge:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResetOnUnplugHighBatteryLevel(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugHighBatteryLevel:Z

    return p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 724
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 725
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->DEFAULT_POWER_STATS_THROTTLE_PERIOD:J

    .line 726
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 727
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->DEFAULT_POWER_STATS_THROTTLE_PERIOD_CPU:J

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    sget-wide v0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->DEFAULT_POWER_STATS_THROTTLE_PERIOD:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mDefaultPowerStatsThrottlePeriod:J

    .line 734
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    const/high16 v0, 0x400000

    .line 735
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mMaxHistorySizeBytes:I

    const/16 v0, 0x5a

    .line 736
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mHighBatteryLevelAfterCharge:I

    const/4 v0, 0x1

    .line 739
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugHighBatteryLevel:Z

    .line 740
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugAfterSignificantCharge:Z

    .line 741
    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    sget-wide v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->DEFAULT_POWER_STATS_THROTTLE_PERIOD_CPU:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->setPowerStatsThrottlePeriodMillis(Ljava/lang/String;J)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;
    .registers 3

    .line 750
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;Lcom/android/server/power/stats/BatteryStatsImpl-IA;)V

    return-object v0
.end method

.method public setDefaultPowerStatsThrottlePeriodMillis(J)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    .registers 3

    .line 786
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mDefaultPowerStatsThrottlePeriod:J

    return-object p0
.end method

.method public setHighBatteryLevelAfterCharge(I)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    .registers 2

    .line 802
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mHighBatteryLevelAfterCharge:I

    return-object p0
.end method

.method public setMaxHistorySizeBytes(I)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    .registers 2

    .line 795
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mMaxHistorySizeBytes:I

    return-object p0
.end method

.method public setPowerStatsThrottlePeriodMillis(Ljava/lang/String;J)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    .registers 5

    .line 777
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setResetOnUnplugAfterSignificantCharge(Z)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    .registers 2

    .line 767
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugAfterSignificantCharge:Z

    return-object p0
.end method

.method public setResetOnUnplugHighBatteryLevel(Z)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    .registers 2

    .line 758
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugHighBatteryLevel:Z

    return-object p0
.end method
