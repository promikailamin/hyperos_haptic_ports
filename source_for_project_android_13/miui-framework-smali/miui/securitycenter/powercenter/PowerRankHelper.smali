.class public Lmiui/securitycenter/powercenter/PowerRankHelper;
.super Ljava/lang/Object;
.source "PowerRankHelper.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist POWER_COMPONENT_APP:I = 0x6

.field private static final blacklist TAG:Ljava/lang/String; = "PowerRankHelper"

.field private static blacklist componetToDrainTypeMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAppUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBatteryStatsManager:Landroid/os/BatteryStatsManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mMaxPower:D

.field private blacklist mMiscPower:D

.field private final blacklist mMiscUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final blacklist mSystemAppUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTotalPower:D

.field private blacklist mUm:Landroid/os/UserManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiui/securitycenter/powercenter/PowerRankHelper;->componetToDrainTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lmiui/securitycenter/powercenter/PowerRankHelper;->componetToDrainTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lmiui/securitycenter/powercenter/PowerRankHelper;->componetToDrainTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lmiui/securitycenter/powercenter/PowerRankHelper;->componetToDrainTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lmiui/securitycenter/powercenter/PowerRankHelper;->componetToDrainTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lmiui/securitycenter/powercenter/PowerRankHelper;->componetToDrainTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lmiui/securitycenter/powercenter/PowerRankHelper;->componetToDrainTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lmiui/securitycenter/powercenter/PowerRankHelper;->componetToDrainTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lmiui/securitycenter/powercenter/PowerRankHelper;->componetToDrainTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMaxPower:D

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mSystemAppUsageList:Ljava/util/List;

    .line 57
    invoke-static {}, Lmiui/securitycenter/powercenter/BatteryStatsUtils;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 58
    const-class v0, Landroid/os/BatteryStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsManager;

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mBatteryStatsManager:Landroid/os/BatteryStatsManager;

    .line 59
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mUm:Landroid/os/UserManager;

    .line 60
    iput-object p1, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private blacklist addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V
    .registers 6
    .param p1, "sipper"    # Lmiui/securitycenter/powercenter/BatterySipper;

    .line 113
    iget-wide v0, p1, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    iget-wide v2, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMaxPower:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_c

    .line 114
    iget-wide v0, p1, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMaxPower:D

    .line 115
    :cond_c
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    iget-wide v2, p1, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    .line 116
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscPower:D

    iget-wide v2, p1, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscPower:D

    .line 117
    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method private blacklist getBatteryUsageStats()Landroid/os/BatteryUsageStats;
    .registers 5

    .line 64
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 65
    .local v0, "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeBatteryHistory()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 66
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 68
    :try_start_b
    iget-object v1, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mBatteryStatsManager:Landroid/os/BatteryStatsManager;

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_15} :catch_16

    return-object v1

    .line 69
    :catch_16
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "PowerRankHelper"

    const-string v3, "loadInBackground() for getBatteryUsageStats()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    new-instance v2, Landroid/os/BatteryUsageStats$Builder;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist getAppUsageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMiscUsageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMiscUsageTotal()D
    .registers 3

    .line 131
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscPower:D

    return-wide v0
.end method

.method public whitelist getSystemAppUsageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mSystemAppUsageList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getUsageTotal()D
    .registers 3

    .line 135
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    return-wide v0
.end method

.method public whitelist refreshStats()V
    .registers 16

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMaxPower:D

    .line 79
    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    .line 80
    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscPower:D

    .line 82
    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mSystemAppUsageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    invoke-direct {p0}, Lmiui/securitycenter/powercenter/PowerRankHelper;->getBatteryUsageStats()Landroid/os/BatteryUsageStats;

    move-result-object v0

    .line 87
    .local v0, "batteryUsageStats":Landroid/os/BatteryUsageStats;
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v1

    .line 89
    .local v1, "uidBatteryConsumersList":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UidBatteryConsumer;

    .line 90
    .local v3, "uidBatteryConsumer":Landroid/os/UidBatteryConsumer;
    iget-object v4, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x6

    iget-object v7, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v5, v6, v3, v7}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipperApp(Landroid/content/Context;ILandroid/os/UidBatteryConsumer;Lcom/android/internal/os/BatteryStatsImpl;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v3    # "uidBatteryConsumer":Landroid/os/UidBatteryConsumer;
    goto :goto_23

    .line 92
    :cond_3e
    const/4 v2, 0x0

    .line 93
    invoke-virtual {v0, v2}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/BatteryConsumer;

    move-result-object v2

    .line 96
    .local v2, "deviceConsumer":Landroid/os/BatteryConsumer;
    const/4 v3, 0x0

    .local v3, "componentId":I
    :goto_44
    const/16 v4, 0x12

    if-ge v3, v4, :cond_7c

    .line 97
    sget-object v4, Lmiui/securitycenter/powercenter/PowerRankHelper;->componetToDrainTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 98
    invoke-virtual {v2, v3}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v11

    .line 99
    .local v11, "deviceConsumerPower":D
    invoke-virtual {v2, v3}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v13

    .line 100
    .local v13, "deviceUsageMills":J
    iget-object v4, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    sget-object v6, Lmiui/securitycenter/powercenter/PowerRankHelper;->componetToDrainTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-wide v7, v11

    move-wide v9, v13

    invoke-static/range {v5 .. v10}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipperMisc(Landroid/content/Context;IDJ)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v11    # "deviceConsumerPower":D
    .end local v13    # "deviceUsageMills":J
    :cond_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 104
    .end local v3    # "componentId":I
    :cond_7c
    iget-object v3, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_8a

    .line 105
    iget-object v3, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 107
    :cond_8a
    iget-object v3, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v4, :cond_97

    .line 108
    iget-object v3, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 110
    :cond_97
    return-void
.end method
