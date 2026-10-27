.class public Lmiui/securitycenter/powercenter/BatteryHistoryHelper;
.super Ljava/lang/Object;
.source "BatteryHistoryHelper.java"


# instance fields
.field private blacklist mStats:Landroid/os/BatteryStats;

.field private blacklist rec:Landroid/os/BatteryStats$HistoryItem;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    return-void
.end method


# virtual methods
.method public whitelist finishIterate()V
    .registers 2

    .line 58
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_5

    .line 59
    return-void

    .line 61
    :cond_5
    invoke-virtual {v0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 62
    return-void
.end method

.method public whitelist getBatteryUsageRealtime()J
    .registers 6

    .line 33
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_7

    .line 34
    const-wide/16 v0, 0x0

    return-wide v0

    .line 36
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v0

    .line 38
    .local v0, "batteryUsageRealtimeT":J
    return-wide v0
.end method

.method public blacklist getLatstResetTime()J
    .registers 3

    .line 29
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getNextHistoryItem(Lmiui/securitycenter/powercenter/HistoryItemWrapper;)Z
    .registers 7
    .param p1, "item"    # Lmiui/securitycenter/powercenter/HistoryItemWrapper;

    .line 65
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 66
    return v1

    .line 68
    :cond_6
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v0

    .line 69
    .local v0, "ret":Z
    if-nez v0, :cond_f

    .line 70
    return v1

    .line 72
    :cond_f
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    .line 73
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->time:J

    .line 74
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryLevel:B

    .line 75
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryStatus:B

    .line 76
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryHealth:B

    .line 77
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryPlugType:B

    .line 78
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-short v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput-short v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryTemperature:S

    .line 79
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-char v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput-char v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryVoltage:C

    .line 81
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_4b

    move v2, v3

    goto :goto_4c

    :cond_4b
    move v2, v1

    :goto_4c
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->wifiOn:Z

    .line 82
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x20000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_59

    move v2, v3

    goto :goto_5a

    :cond_59
    move v2, v1

    :goto_5a
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->gpsOn:Z

    .line 83
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-eqz v2, :cond_67

    move v2, v3

    goto :goto_68

    :cond_67
    move v2, v1

    :goto_68
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->charging:Z

    .line 84
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x100000

    and-int/2addr v2, v4

    if-eqz v2, :cond_75

    move v2, v3

    goto :goto_76

    :cond_75
    move v2, v1

    :goto_76
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->screenOn:Z

    .line 85
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v2, v4

    if-eqz v2, :cond_83

    move v2, v3

    goto :goto_84

    :cond_83
    move v2, v1

    :goto_84
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->wakelockOn:Z

    .line 86
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, -0x80000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_90

    move v1, v3

    :cond_90
    iput-boolean v1, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cpuRunning:Z

    .line 89
    iget-object v1, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v1, v1, 0x1c0

    shr-int/lit8 v1, v1, 0x6

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9f

    .line 92
    const/4 v1, 0x0

    .local v1, "bin":I
    goto :goto_b3

    .line 93
    .end local v1    # "bin":I
    :cond_9f
    iget-object v1, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x200000

    and-int/2addr v1, v4

    if-eqz v1, :cond_aa

    .line 94
    const/4 v1, 0x1

    .restart local v1    # "bin":I
    goto :goto_b3

    .line 96
    .end local v1    # "bin":I
    :cond_aa
    iget-object v1, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v1, v1, 0x38

    shr-int/2addr v1, v2

    .line 98
    .restart local v1    # "bin":I
    add-int/lit8 v1, v1, 0x2

    .line 100
    :goto_b3
    iput v1, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->phoneSignalStrength:I

    .line 101
    return v3
.end method

.method public whitelist getScreenOnTime()J
    .registers 7

    .line 42
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_7

    .line 43
    const-wide/16 v0, 0x0

    return-wide v0

    .line 45
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 46
    .local v0, "rawRealTime":J
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v2

    .line 47
    .local v2, "batteryRealTime":J
    iget-object v4, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v4

    return-wide v4
.end method

.method public whitelist refreshHistory()V
    .registers 2

    .line 15
    invoke-static {}, Lmiui/securitycenter/powercenter/BatteryStatsUtils;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    .line 16
    return-void
.end method

.method public blacklist refreshHistory(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-static {}, Lmiui/securitycenter/powercenter/BatteryStatsUtils;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    .line 23
    return-void
.end method

.method public whitelist startIterate()Z
    .registers 2

    .line 51
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_6

    .line 52
    const/4 v0, 0x0

    return v0

    .line 54
    :cond_6
    invoke-virtual {v0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v0

    return v0
.end method
