.class public final Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# instance fields
.field public energy:J

.field public idleTimeMs:J

.field public rxTimeMs:J

.field public txTimeMs:J

.field public uidRxBytes:Landroid/util/SparseLongArray;

.field public uidTxBytes:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .registers 2

    .line 12421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12427
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->uidRxBytes:Landroid/util/SparseLongArray;

    .line 12428
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->uidTxBytes:Landroid/util/SparseLongArray;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/BatteryStatsImpl-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 12444
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->idleTimeMs:J

    .line 12445
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->rxTimeMs:J

    .line 12446
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->txTimeMs:J

    .line 12447
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->energy:J

    .line 12448
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->uidRxBytes:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 12449
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->uidTxBytes:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clear()V

    return-void
.end method

.method public set(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .registers 7

    .line 12431
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->idleTimeMs:J

    .line 12432
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->rxTimeMs:J

    .line 12433
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->txTimeMs:J

    .line 12434
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->energy:J

    .line 12435
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    .line 12436
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/UidTraffic;

    .line 12437
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->uidRxBytes:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v2

    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 12438
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->uidTxBytes:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v2

    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_2a

    :cond_51
    return-void
.end method
