.class public interface abstract Lcom/android/server/audio/BtHelperStub;
.super Ljava/lang/Object;
.source "BtHelperStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/audio/BtHelperStub;
    .registers 1

    .line 13
    const-class v0, Lcom/android/server/audio/BtHelperStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/BtHelperStub;

    return-object v0
.end method


# virtual methods
.method public checkEncoderFormat(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .registers 3
    .param p1, "btCodecConfig"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public handleSpatialAudioDeviceConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 5
    .param p1, "spatialDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "currActiveDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "spatialAudioType"    # I

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public handleSpatialAudioDeviceDisConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .param p1, "spatialDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "previousActiveDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 24
    return-void
.end method
