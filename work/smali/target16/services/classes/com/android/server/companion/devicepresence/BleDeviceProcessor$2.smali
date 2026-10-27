.class public Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;
.super Landroid/bluetooth/le/ScanCallback;
.source "BleDeviceProcessor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;)V
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;->this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .registers 2

    .line 290
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;->this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->-$$Nest$fputmScanning(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;Z)V

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 4

    .line 269
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_25

    .line 281
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected callback "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {p1}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->-$$Nest$smnameForBleScanCallbackType(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 281
    const-string p1, "CDM_BleDeviceProcessor"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 277
    :cond_25
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;->this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    invoke-static {p0, p2}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->-$$Nest$mnotifyDeviceLost(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 273
    :cond_2b
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;->this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    invoke-static {p0, p2}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->-$$Nest$mnotifyDeviceFound(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
