.class Lcom/android/server/companion/presence/BleCompanionDeviceScanner;
.super Ljava/lang/Object;
.source "BleCompanionDeviceScanner.java"

# interfaces
.implements Lcom/android/server/companion/AssociationStore$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;,
        Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;
    }
.end annotation


# static fields
.field private static final NOTIFY_DEVICE_LOST_DELAY:I = 0x1d4c0

.field private static final SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

.field private static final TAG:Ljava/lang/String; = "CompanionDevice_PresenceMonitor_BLE"


# instance fields
.field private final mAssociationStore:Lcom/android/server/companion/AssociationStore;

.field private mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mCallback:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;

.field private final mMainThreadHandler:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

.field private final mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private mScanning:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmMainThreadHandler(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mMainThreadHandler:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmScanning(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckBleState(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->checkBleState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyDeviceFound(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->notifyDeviceFound(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyDeviceLost(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->notifyDeviceLost(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnameForBleScanCallbackType(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->nameForBleScanCallbackType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 434
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 435
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    .line 436
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    .line 434
    return-void
.end method

.method constructor <init>(Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;)V
    .registers 4
    .param p1, "associationStore"    # Lcom/android/server/companion/AssociationStore;
    .param p2, "callback"    # Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    .line 310
    new-instance v0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;

    invoke-direct {v0, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;-><init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V

    iput-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 109
    iput-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 110
    iput-object p2, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mCallback:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;

    .line 111
    new-instance v0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    invoke-direct {v0, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;-><init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V

    iput-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mMainThreadHandler:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    .line 112
    return-void
.end method

.method private checkBleState()V
    .registers 3

    .line 155
    invoke-direct {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->enforceInitialized()V

    .line 157
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v0

    .line 161
    .local v0, "bleAvailable":Z
    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_15

    :cond_f
    if-nez v0, :cond_16

    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_16

    .line 164
    :cond_15
    return-void

    .line 167
    :cond_16
    if-eqz v0, :cond_27

    .line 168
    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 169
    if-nez v1, :cond_23

    .line 171
    return-void

    .line 175
    :cond_23
    invoke-direct {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->startScan()V

    goto :goto_2d

    .line 179
    :cond_27
    invoke-direct {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->stopScanIfNeeded()V

    .line 180
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 182
    :goto_2d
    return-void
.end method

.method private enforceInitialized()V
    .registers 4

    .line 306
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_5

    return-void

    .line 307
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static nameForBleScanCallbackType(I)Ljava/lang/String;
    .registers 4
    .param p0, "callbackType"    # I

    .line 391
    packed-switch p0, :pswitch_data_2e

    .line 402
    :pswitch_3
    const-string v0, "Unknown"

    .local v0, "name":Ljava/lang/String;
    goto :goto_f

    .line 399
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_6
    const-string v0, "MATCH_LOST"

    .line 400
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_f

    .line 396
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_9
    const-string v0, "FIRST_MATCH"

    .line 397
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_f

    .line 393
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_c
    const-string v0, "ALL_MATCHES"

    .line 394
    .restart local v0    # "name":Ljava/lang/String;
    nop

    .line 404
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private static nameForBleScanErrorCode(I)Ljava/lang/String;
    .registers 4
    .param p0, "errorCode"    # I

    .line 409
    packed-switch p0, :pswitch_data_36

    .line 429
    const-string v0, "Unknown"

    .local v0, "name":Ljava/lang/String;
    goto :goto_18

    .line 426
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_6
    const-string v0, "SCANNING_TOO_FREQUENTLY"

    .line 427
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_18

    .line 423
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_9
    const-string v0, "OUT_OF_HARDWARE_RESOURCES"

    .line 424
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_18

    .line 420
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_c
    const-string v0, "FEATURE_UNSUPPORTED"

    .line 421
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_18

    .line 417
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_f
    const-string v0, "INTERNAL_ERROR"

    .line 418
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_18

    .line 414
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_12
    const-string v0, "APPLICATION_REGISTRATION_FAILED"

    .line 415
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_18

    .line 411
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_15
    const-string v0, "ALREADY_STARTED"

    .line 412
    .restart local v0    # "name":Ljava/lang/String;
    nop

    .line 431
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static nameForBtState(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyDeviceFound(Landroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 257
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 258
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/companion/AssociationStore;->getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 261
    .local v0, "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 262
    .local v2, "association":Landroid/companion/AssociationInfo;
    iget-object v3, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mCallback:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;->onBleCompanionDeviceFound(I)V

    .line 263
    .end local v2    # "association":Landroid/companion/AssociationInfo;
    goto :goto_e

    .line 264
    :cond_24
    return-void
.end method

.method private notifyDeviceLost(Landroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 270
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 271
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/companion/AssociationStore;->getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 274
    .local v0, "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 275
    .local v2, "association":Landroid/companion/AssociationInfo;
    iget-object v3, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mCallback:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;->onBleCompanionDeviceLost(I)V

    .line 276
    .end local v2    # "association":Landroid/companion/AssociationInfo;
    goto :goto_e

    .line 277
    :cond_24
    return-void
.end method

.method private registerBluetoothStateBroadcastReceiver(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 280
    new-instance v0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$1;-><init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V

    .line 298
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 299
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v2, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    return-void
.end method

.method private startScan()V
    .registers 6

    .line 186
    invoke-direct {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->enforceInitialized()V

    .line 188
    iget-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    if-nez v0, :cond_7d

    .line 190
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_75

    .line 195
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 196
    .local v0, "macAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {v1}, Lcom/android/server/companion/AssociationStore;->getAssociations()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 197
    .local v2, "association":Landroid/companion/AssociationInfo;
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_1a

    .line 201
    :cond_2d
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "macAddress":Ljava/lang/String;
    if-eqz v3, :cond_36

    .line 203
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v2    # "association":Landroid/companion/AssociationInfo;
    .end local v3    # "macAddress":Ljava/lang/String;
    :cond_36
    goto :goto_1a

    .line 206
    :cond_37
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 208
    return-void

    .line 216
    :cond_3e
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 218
    .restart local v3    # "macAddress":Ljava/lang/String;
    new-instance v4, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v4}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 219
    invoke-virtual {v4, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v4

    .line 220
    invoke-virtual {v4}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v4

    .line 221
    .local v4, "filter":Landroid/bluetooth/le/ScanFilter;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v3    # "macAddress":Ljava/lang/String;
    .end local v4    # "filter":Landroid/bluetooth/le/ScanFilter;
    goto :goto_4b

    .line 224
    :cond_68
    iget-object v2, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    sget-object v3, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    iget-object v4, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v2, v1, v3, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 225
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    .line 226
    return-void

    .line 190
    .end local v0    # "macAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    :cond_75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BLE is not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_7d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scan is already in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private stopScanIfNeeded()V
    .registers 4

    .line 229
    invoke-direct {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->enforceInitialized()V

    .line 232
    iget-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    if-nez v0, :cond_8

    .line 234
    return-void

    .line 240
    :cond_8
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 242
    :try_start_10
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_17} :catch_18

    .line 247
    goto :goto_20

    .line 243
    :catch_18
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CompanionDevice_PresenceMonitor_BLE"

    const-string v2, "Exception while stopping BLE scanning"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_20
    :goto_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    .line 251
    return-void
.end method


# virtual methods
.method init(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "btAdapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 118
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_18

    .line 121
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 123
    invoke-direct {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->checkBleState()V

    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->registerBluetoothStateBroadcastReceiver(Landroid/content/Context;)V

    .line 126
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {v0, p0}, Lcom/android/server/companion/AssociationStore;->registerListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V

    .line 127
    return-void

    .line 119
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAssociationChanged(ILandroid/companion/AssociationInfo;)V
    .registers 5
    .param p1, "changeType"    # I
    .param p2, "association"    # Landroid/companion/AssociationInfo;

    .line 146
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 147
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->restartScan()V

    goto :goto_18

    .line 149
    :cond_e
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mMainThreadHandler:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    new-instance v1, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V

    invoke-virtual {v0, v1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 151
    :goto_18
    return-void
.end method

.method final restartScan()V
    .registers 2

    .line 131
    invoke-direct {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->enforceInitialized()V

    .line 134
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_8

    .line 136
    return-void

    .line 139
    :cond_8
    invoke-direct {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->stopScanIfNeeded()V

    .line 140
    invoke-direct {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->startScan()V

    .line 141
    return-void
.end method
