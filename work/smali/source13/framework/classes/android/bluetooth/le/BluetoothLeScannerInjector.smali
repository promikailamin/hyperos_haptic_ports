.class public final Landroid/bluetooth/le/BluetoothLeScannerInjector;
.super Ljava/lang/Object;
.source "BluetoothLeScannerInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothLeScannerInjector"

.field private static final blacklist sLeScanStatisticsClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
            "Landroid/bluetooth/le/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 32
    const-string/jumbo v0, "power.bluetooth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/le/BluetoothLeScannerInjector;->DBG:Z

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/bluetooth/le/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static whitelist startLeScanStatistics(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .registers 8
    .param p0, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 39
    const-string v0, "BluetoothLeScannerInjector"

    const-string/jumbo v1, "startLeScanStatistics()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x0

    if-nez p1, :cond_14

    .line 41
    const-string v1, "BluetoothLeScannerInjector"

    const-string/jumbo v2, "startLeScanStatistics: null callback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return v0

    .line 44
    :cond_14
    sget-object v1, Landroid/bluetooth/le/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    monitor-enter v1

    .line 46
    :try_start_17
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    .line 47
    .local v2, "btManager":Landroid/bluetooth/IBluetoothManager;
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_38
    .catchall {:try_start_17 .. :try_end_1f} :catchall_36

    .line 48
    .local v3, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v3, :cond_23

    .line 50
    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_36

    return v0

    .line 52
    :cond_23
    :try_start_23
    new-instance v4, Landroid/bluetooth/le/BluetoothLeScannerInjector$1;

    invoke-direct {v4, p1}, Landroid/bluetooth/le/BluetoothLeScannerInjector$1;-><init>(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 63
    .local v4, "scanCallback":Landroid/bluetooth/le/ScanCallback;
    new-instance v5, Landroid/bluetooth/le/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;

    invoke-direct {v5, v3, v4}, Landroid/bluetooth/le/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;-><init>(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/le/ScanCallback;)V

    .line 65
    .local v5, "wrapper":Landroid/bluetooth/le/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
    invoke-virtual {v5}, Landroid/bluetooth/le/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->startBleScanStatistics()V

    .line 66
    invoke-interface {v1, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_33} :catch_38
    .catchall {:try_start_23 .. :try_end_33} :catchall_36

    .line 67
    const/4 v0, 0x1

    :try_start_34
    monitor-exit v1

    return v0

    .line 71
    .end local v2    # "btManager":Landroid/bluetooth/IBluetoothManager;
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v4    # "scanCallback":Landroid/bluetooth/le/ScanCallback;
    .end local v5    # "wrapper":Landroid/bluetooth/le/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
    :catchall_36
    move-exception v0

    goto :goto_43

    .line 68
    :catch_38
    move-exception v2

    .line 69
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothLeScannerInjector"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    monitor-exit v1

    .line 72
    return v0

    .line 71
    :goto_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_34 .. :try_end_44} :catchall_36

    throw v0
.end method

.method public static whitelist stopLeScanStatistics(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .registers 5
    .param p0, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 76
    const-string v0, "BluetoothLeScannerInjector"

    const-string/jumbo v1, "stopLeScanStatistics()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v0, Landroid/bluetooth/le/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    monitor-enter v0

    .line 78
    nop

    .line 79
    :try_start_c
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;

    .line 80
    .local v1, "wrapper":Landroid/bluetooth/le/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
    if-nez v1, :cond_1e

    .line 81
    const-string v2, "BluetoothLeScannerInjector"

    const-string/jumbo v3, "no ble scan statistics callback found."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    monitor-exit v0

    return-void

    .line 84
    :cond_1e
    invoke-virtual {v1}, Landroid/bluetooth/le/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->stopBleScanStatistics()V

    .line 85
    .end local v1    # "wrapper":Landroid/bluetooth/le/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_23

    throw v1
.end method
