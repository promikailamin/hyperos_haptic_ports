.class Landroid/bluetooth/le/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
.super Landroid/bluetooth/le/IScannerCallback$Stub;
.source "BluetoothLeScannerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/BluetoothLeScannerInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BleScanStatisticsCallbackWrapper"
.end annotation


# instance fields
.field private blacklist mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final blacklist mScanCallback:Landroid/bluetooth/le/ScanCallback;


# direct methods
.method public constructor blacklist <init>(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/le/ScanCallback;)V
    .registers 3
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/IBluetoothGatt;
    .param p2, "scanCallback"    # Landroid/bluetooth/le/ScanCallback;

    .line 91
    invoke-direct {p0}, Landroid/bluetooth/le/IScannerCallback$Stub;-><init>()V

    .line 92
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 93
    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 94
    return-void
.end method


# virtual methods
.method public blacklist onBatchScanResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    return-void
.end method

.method public blacklist onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V
    .registers 3
    .param p1, "onFound"    # Z
    .param p2, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .line 121
    return-void
.end method

.method public blacklist onScanManagerErrorCallback(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 124
    return-void
.end method

.method public blacklist onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .registers 4
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .line 111
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 112
    return-void
.end method

.method public blacklist onScannerRegistered(II)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "scannerId"    # I

    .line 115
    return-void
.end method

.method public blacklist startBleScanStatistics()V
    .registers 4

    .line 97
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetoothGatt;->registerStatisticsClient(Landroid/bluetooth/le/IScannerCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 100
    goto :goto_e

    .line 98
    :catch_6
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothLeScannerInjector"

    const-string v2, "Failed to start ble scan statistics."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public blacklist stopBleScanStatistics()V
    .registers 4

    .line 104
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetoothGatt;->unregisterStatisticsClient(Landroid/bluetooth/le/IScannerCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 107
    goto :goto_e

    .line 105
    :catch_6
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothLeScannerInjector"

    const-string v2, "Failed to stop ble scan statistics."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
