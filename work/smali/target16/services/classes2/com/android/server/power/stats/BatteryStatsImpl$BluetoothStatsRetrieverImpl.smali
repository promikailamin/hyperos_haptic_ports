.class public Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;


# instance fields
.field public final mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/bluetooth/BluetoothManager;)V
    .registers 3

    .line 448
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    return-void
.end method


# virtual methods
.method public requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)Z
    .registers 4

    .line 462
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 466
    :cond_6
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-nez p0, :cond_d

    return v0

    .line 471
    :cond_d
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    const/4 p0, 0x1

    return p0
.end method

.method public retrieveBluetoothScanTimes(Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever$Callback;)V
    .registers 3

    .line 454
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 455
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$mretrieveBluetoothScanTimesLocked(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever$Callback;)V

    .line 456
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
