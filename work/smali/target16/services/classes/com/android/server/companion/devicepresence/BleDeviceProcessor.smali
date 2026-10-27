.class public Lcom/android/server/companion/devicepresence/BleDeviceProcessor;
.super Ljava/lang/Object;
.source "BleDeviceProcessor.java"

# interfaces
.implements Lcom/android/server/companion/association/AssociationStore$OnChangeListener;


# static fields
.field public static final SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field public mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mCallback:Lcom/android/server/companion/devicepresence/BleDeviceProcessor$Callback;

.field public final mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

.field public final mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field public mScanning:Z


# direct methods
.method public static bridge synthetic -$$Nest$fputmScanning(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckBleState(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->checkBleState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceFound(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->notifyDeviceFound(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceLost(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->notifyDeviceLost(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnameForBleScanCallbackType(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->nameForBleScanCallbackType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 304
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v1, 0x6

    .line 305
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 306
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Lcom/android/server/companion/devicepresence/BleDeviceProcessor$Callback;)V
    .registers 5

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z

    .line 265
    new-instance v0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;

    invoke-direct {v0, p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;-><init>(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;)V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 85
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 86
    iput-object p2, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 87
    iput-object p3, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/BleDeviceProcessor$Callback;

    return-void
.end method

.method public static nameForBleScanCallbackType(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x4

    if-eq p0, v0, :cond_c

    .line 299
    const-string v0, "Unknown"

    goto :goto_14

    .line 298
    :cond_c
    const-string v0, "MATCH_LOST"

    goto :goto_14

    .line 297
    :cond_f
    const-string v0, "FIRST_MATCH"

    goto :goto_14

    .line 296
    :cond_12
    const-string v0, "ALL_MATCHES"

    .line 301
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkBleState()V
    .registers 3

    .line 127
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->enforceInitialized()V

    .line 129
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 130
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_22

    :cond_f
    if-nez v0, :cond_16

    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_16

    goto :goto_22

    :cond_16
    if-eqz v0, :cond_27

    .line 136
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_23

    :cond_22
    :goto_22
    return-void

    .line 142
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->startScan()V

    return-void

    .line 144
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->stopScanIfNeeded()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    return-void
.end method

.method public final enforceInitialized()V
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_5

    return-void

    .line 262
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not initialized"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_18

    .line 95
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object p2, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 97
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->checkBleState()V

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->registerBluetoothStateBroadcastReceiver(Landroid/content/Context;)V

    .line 100
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p1, p0}, Lcom/android/server/companion/association/AssociationStore;->registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V

    return-void

    .line 93
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is already initialized"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final notifyDeviceFound(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    .line 230
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 231
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    .line 232
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/BleDeviceProcessor$Callback;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$Callback;->onBleCompanionDeviceFound(II)V

    goto :goto_e

    :cond_28
    return-void
.end method

.method public final notifyDeviceLost(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 239
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 238
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    .line 240
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/BleDeviceProcessor$Callback;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$Callback;->onBleCompanionDeviceLost(II)V

    goto :goto_e

    :cond_28
    return-void
.end method

.method public onAssociationChanged(ILandroid/companion/AssociationInfo;)V
    .registers 3

    .line 118
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 119
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->restartScan()V

    return-void

    .line 121
    :cond_e
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final registerBluetoothStateBroadcastReceiver(Landroid/content/Context;)V
    .registers 4

    .line 245
    new-instance v0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;-><init>(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;)V

    .line 253
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 254
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final restartScan()V
    .registers 2

    .line 105
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->enforceInitialized()V

    .line 107
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_8

    return-void

    .line 111
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->stopScanIfNeeded()V

    .line 112
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->startScan()V

    return-void
.end method

.method public startScan()V
    .registers 7

    .line 151
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->enforceInitialized()V

    .line 153
    const-string/jumbo v0, "startBleScan()"

    const-string v1, "CDM_BleDeviceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-boolean v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z

    if-eqz v0, :cond_15

    .line 156
    const-string p0, "Scan is already in progress."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 161
    :cond_15
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_1f

    .line 162
    const-string p0, "BLE is not available."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_1f
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 168
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    .line 169
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v5

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 171
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isBtConnected(I)Z

    move-result v3

    if-nez v3, :cond_2e

    if-eqz v4, :cond_2e

    .line 173
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to BLE scan filters."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 177
    :cond_6f
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 178
    const-string p0, "No devices require BLE scanning. BLE scan remains stopped."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 182
    :cond_7b
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_88
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 184
    new-instance v4, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v4}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 185
    invoke-virtual {v4, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v3

    .line 186
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v3

    .line 187
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_88

    .line 192
    :cond_a5
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 194
    :try_start_ad
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    sget-object v3, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    iget-object v4, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z
    :try_end_b9
    .catch Ljava/lang/IllegalStateException; {:try_start_ad .. :try_end_b9} :catch_ba

    return-void

    :catch_ba
    move-exception p0

    .line 197
    const-string v0, "Exception while starting BLE scanning"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 200
    :cond_c1
    const-string p0, "BLE scanning is not turned on"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopScanIfNeeded()V
    .registers 4

    .line 205
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->enforceInitialized()V

    .line 207
    const-string/jumbo v0, "stopBleScan()"

    const-string v1, "CDM_BleDeviceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-boolean v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z

    if-nez v0, :cond_10

    return-void

    .line 215
    :cond_10
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 217
    :try_start_18
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_2c

    :catch_20
    move-exception v0

    .line 219
    const-string v2, "Exception while stopping BLE scanning"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 222
    :cond_27
    const-string v0, "BLE scanning is not turned on"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z

    return-void
.end method
