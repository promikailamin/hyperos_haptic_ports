.class Landroid/bluetooth/le/BluetoothLeScannerInjector$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothLeScannerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeScannerInjector;->startLeScanStatistics(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .registers 2

    .line 52
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeScannerInjector$1;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 8
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .line 55
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    .line 56
    .local v0, "scanRecord":Landroid/bluetooth/le/ScanRecord;
    if-nez v0, :cond_7

    .line 57
    return-void

    .line 59
    :cond_7
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScannerInjector$1;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v3

    .line 60
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v4

    .line 59
    invoke-interface {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    .line 61
    return-void
.end method
