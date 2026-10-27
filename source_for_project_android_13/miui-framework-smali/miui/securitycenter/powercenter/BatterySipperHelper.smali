.class Lmiui/securitycenter/powercenter/BatterySipperHelper;
.super Ljava/lang/Object;
.source "BatterySipperHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BatteryStatsHelper"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist makeBatterySipperApp(Landroid/content/Context;ILandroid/os/UidBatteryConsumer;Lcom/android/internal/os/BatteryStatsImpl;)Lmiui/securitycenter/powercenter/BatterySipper;
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drainType"    # I
    .param p2, "uidBatteryConsumer"    # Landroid/os/UidBatteryConsumer;
    .param p3, "batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 23
    move-object/from16 v0, p2

    if-eqz v0, :cond_86

    if-nez p3, :cond_8

    goto/16 :goto_86

    .line 26
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v7

    .line 27
    .local v7, "uid":I
    new-instance v8, Lmiui/securitycenter/powercenter/BatterySipper;

    invoke-virtual/range {p2 .. p2}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v5

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v3, p1

    move v4, v7

    invoke-direct/range {v1 .. v6}, Lmiui/securitycenter/powercenter/BatterySipper;-><init>(Landroid/content/Context;IID)V

    .line 28
    .local v1, "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/UidBatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v3

    iput-wide v3, v1, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    .line 29
    invoke-virtual {v0, v2}, Landroid/os/UidBatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v3

    iput-wide v3, v1, Lmiui/securitycenter/powercenter/BatterySipper;->cpuTime:J

    .line 30
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/os/UidBatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v3

    iput-wide v3, v1, Lmiui/securitycenter/powercenter/BatterySipper;->gpsTime:J

    .line 31
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/os/UidBatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v3

    iput-wide v3, v1, Lmiui/securitycenter/powercenter/BatterySipper;->wifiRunningTime:J

    .line 32
    invoke-virtual {v0, v2, v2}, Landroid/os/UidBatteryConsumer;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v3

    .line 33
    .local v3, "cpuFgKey":Landroid/os/BatteryConsumer$Key;
    if-eqz v3, :cond_44

    .line 34
    invoke-virtual {v0, v3}, Landroid/os/UidBatteryConsumer;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J

    move-result-wide v4

    iput-wide v4, v1, Lmiui/securitycenter/powercenter/BatterySipper;->cpuFgTime:J

    .line 36
    :cond_44
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/os/UidBatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v4

    iput-wide v4, v1, Lmiui/securitycenter/powercenter/BatterySipper;->wakeLockTime:J

    .line 38
    iget-object v4, v1, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 39
    invoke-virtual/range {p2 .. p2}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    .line 42
    :cond_5a
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v4

    .line 43
    .local v4, "uidSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    const/4 v5, 0x0

    .line 44
    .local v5, "currentUid":Landroid/os/BatteryStats$Uid;
    if-eqz v4, :cond_68

    .line 45
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Landroid/os/BatteryStats$Uid;

    .line 47
    :cond_68
    if-eqz v5, :cond_85

    .line 48
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    iput-wide v8, v1, Lmiui/securitycenter/powercenter/BatterySipper;->mobileRxBytes:J

    .line 49
    invoke-virtual {v5, v2, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    iput-wide v8, v1, Lmiui/securitycenter/powercenter/BatterySipper;->mobileTxBytes:J

    .line 50
    const/4 v2, 0x2

    invoke-virtual {v5, v2, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    iput-wide v8, v1, Lmiui/securitycenter/powercenter/BatterySipper;->wifiRxBytes:J

    .line 51
    const/4 v2, 0x3

    invoke-virtual {v5, v2, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    iput-wide v8, v1, Lmiui/securitycenter/powercenter/BatterySipper;->wifiTxBytes:J

    .line 53
    :cond_85
    return-object v1

    .line 24
    .end local v1    # "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    .end local v3    # "cpuFgKey":Landroid/os/BatteryConsumer$Key;
    .end local v4    # "uidSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v5    # "currentUid":Landroid/os/BatteryStats$Uid;
    .end local v7    # "uid":I
    :cond_86
    :goto_86
    new-instance v1, Lmiui/securitycenter/powercenter/BatterySipper;

    const/4 v13, -0x1

    const-wide/16 v14, 0x0

    move-object v10, v1

    move-object/from16 v11, p0

    move/from16 v12, p1

    invoke-direct/range {v10 .. v15}, Lmiui/securitycenter/powercenter/BatterySipper;-><init>(Landroid/content/Context;IID)V

    return-object v1
.end method

.method static blacklist makeBatterySipperMisc(Landroid/content/Context;IDJ)Lmiui/securitycenter/powercenter/BatterySipper;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drainType"    # I
    .param p2, "deviceConsumerPower"    # D
    .param p4, "deviceUsageMills"    # J

    .line 59
    new-instance v6, Lmiui/securitycenter/powercenter/BatterySipper;

    const/4 v3, -0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/powercenter/BatterySipper;-><init>(Landroid/content/Context;IID)V

    .line 60
    .local v0, "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    iput-wide p4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    .line 61
    return-object v0
.end method
