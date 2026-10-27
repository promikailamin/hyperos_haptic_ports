.class public final Landroid/bluetooth/le/BluetoothLeAdvertiser;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"


# static fields
.field private static final greylist-max-o FLAGS_FIELD_BYTES:I = 0x3

.field private static final greylist-max-o MANUFACTURER_SPECIFIC_DATA_LENGTH:I = 0x2

.field private static final greylist-max-o MAX_ADVERTISING_DATA_BYTES:I = 0x672

.field private static final greylist-max-o MAX_LEGACY_ADVERTISING_DATA_BYTES:I = 0x1f

.field private static final greylist-max-o OVERHEAD_BYTES_PER_FIELD:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BluetoothLeAdvertiser"


# instance fields
.field private final greylist-max-o mAdvertisingSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/le/AdvertisingSet;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final greylist-max-o mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final greylist-max-o mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

.field private final greylist-max-o mCallbackWrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/le/AdvertisingSetCallback;",
            "Landroid/bluetooth/le/IAdvertisingSetCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mLegacyAdvertisers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/le/AdvertiseCallback;",
            "Landroid/bluetooth/le/AdvertisingSetCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdvertisingSets(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Landroid/content/AttributionSource;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBluetoothManager(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Landroid/bluetooth/IBluetoothManager;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackWrappers(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpostStartFailure(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostStartSuccess(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    .line 87
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 88
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    .line 89
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAttributionSource:Landroid/content/AttributionSource;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    .line 91
    return-void
.end method

.method private greylist-max-o byteLength([B)I
    .registers 3
    .param p1, "array"    # [B

    .line 605
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    array-length v0, p1

    :goto_5
    return v0
.end method

.method private greylist-max-o postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "error"    # I

    .line 746
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$4;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 752
    return-void
.end method

.method private greylist-max-o postStartSetFailure(Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;I)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p3, "error"    # I

    .line 736
    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$3;

    invoke-direct {v0, p0, p2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$3;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertisingSetCallback;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 742
    return-void
.end method

.method private greylist-max-o postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .registers 5
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .line 757
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$5;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 764
    return-void
.end method

.method private greylist-max-o totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I
    .registers 10
    .param p1, "data"    # Landroid/bluetooth/le/AdvertiseData;
    .param p2, "isFlagsIncluded"    # Z

    .line 523
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 525
    :cond_4
    if-eqz p2, :cond_7

    const/4 v0, 0x3

    .line 526
    .local v0, "size":I
    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 527
    const/4 v1, 0x0

    .line 528
    .local v1, "num16BitUuids":I
    const/4 v2, 0x0

    .line 529
    .local v2, "num32BitUuids":I
    const/4 v3, 0x0

    .line 530
    .local v3, "num128BitUuids":I
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 531
    .local v5, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v5}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 533
    :cond_2d
    invoke-static {v5}, Landroid/bluetooth/BluetoothUuid;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 534
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 536
    :cond_36
    add-int/lit8 v3, v3, 0x1

    .line 538
    .end local v5    # "uuid":Landroid/os/ParcelUuid;
    :goto_38
    goto :goto_18

    .line 540
    :cond_39
    if-eqz v1, :cond_40

    .line 541
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 544
    :cond_40
    if-eqz v2, :cond_47

    .line 545
    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 548
    :cond_47
    if-eqz v3, :cond_4e

    .line 549
    mul-int/lit8 v4, v3, 0x10

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 553
    .end local v1    # "num16BitUuids":I
    .end local v2    # "num32BitUuids":I
    .end local v3    # "num128BitUuids":I
    :cond_4e
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceSolicitationUuids()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_95

    .line 554
    const/4 v1, 0x0

    .line 555
    .restart local v1    # "num16BitUuids":I
    const/4 v2, 0x0

    .line 556
    .restart local v2    # "num32BitUuids":I
    const/4 v3, 0x0

    .line 557
    .restart local v3    # "num128BitUuids":I
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceSolicitationUuids()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_80

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 558
    .restart local v5    # "uuid":Landroid/os/ParcelUuid;
    invoke-static {v5}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    .line 560
    :cond_74
    invoke-static {v5}, Landroid/bluetooth/BluetoothUuid;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    .line 563
    :cond_7d
    add-int/lit8 v3, v3, 0x1

    .line 565
    .end local v5    # "uuid":Landroid/os/ParcelUuid;
    :goto_7f
    goto :goto_5f

    .line 567
    :cond_80
    if-eqz v1, :cond_87

    .line 568
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 571
    :cond_87
    if-eqz v2, :cond_8e

    .line 572
    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 575
    :cond_8e
    if-eqz v3, :cond_95

    .line 576
    mul-int/lit8 v4, v3, 0x10

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 580
    .end local v1    # "num16BitUuids":I
    .end local v2    # "num32BitUuids":I
    .end local v3    # "num128BitUuids":I
    :cond_95
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getTransportDiscoveryData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/TransportDiscoveryData;

    .line 581
    .local v2, "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    invoke-virtual {v2}, Landroid/bluetooth/le/TransportDiscoveryData;->totalBytes()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 582
    .end local v2    # "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    goto :goto_9d

    .line 583
    :cond_b1
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 584
    .local v2, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v2}, Landroid/bluetooth/BluetoothUuid;->uuidToBytes(Landroid/os/ParcelUuid;)[B

    move-result-object v3

    array-length v3, v3

    .line 585
    .local v3, "uuidLen":I
    add-int/lit8 v4, v3, 0x2

    .line 586
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {p0, v5}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 587
    .end local v2    # "uuid":Landroid/os/ParcelUuid;
    .end local v3    # "uuidLen":I
    goto :goto_bd

    .line 588
    :cond_e1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e2
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_101

    .line 589
    nop

    .line 590
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {p0, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 588
    add-int/lit8 v1, v1, 0x1

    goto :goto_e2

    .line 592
    .end local v1    # "i":I
    :cond_101
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeTxPowerLevel()Z

    move-result v1

    if-eqz v1, :cond_109

    .line 593
    add-int/lit8 v0, v0, 0x3

    .line 595
    :cond_109
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 596
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getNameLengthForAdvertise()I

    move-result v1

    .line 597
    .local v1, "length":I
    if-ltz v1, :cond_11a

    .line 598
    add-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    .line 601
    .end local v1    # "length":I
    :cond_11a
    return v0
.end method


# virtual methods
.method public greylist-max-o cleanup()V
    .registers 2

    .line 514
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 515
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 516
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 517
    return-void
.end method

.method public whitelist startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .registers 5
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 107
    return-void
.end method

.method public whitelist startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .registers 24
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .line 126
    move-object/from16 v10, p0

    move-object/from16 v11, p4

    iget-object v12, v10, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    monitor-enter v12

    .line 127
    :try_start_7
    iget-object v0, v10, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 128
    if-eqz v11, :cond_e3

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->isConnectable()Z

    move-result v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_ef

    .line 132
    .local v0, "isConnectable":Z
    move-object/from16 v13, p2

    :try_start_14
    invoke-direct {v10, v13, v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_e1

    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-gt v1, v2, :cond_da

    const/4 v1, 0x0

    .line 133
    move-object/from16 v14, p3

    :try_start_20
    invoke-direct {v10, v14, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v1

    if-le v1, v2, :cond_28

    goto/16 :goto_dc

    .line 137
    :cond_28
    iget-object v1, v10, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_36

    .line 138
    invoke-direct {v10, v11, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 139
    monitor-exit v12

    return-void

    .line 142
    :cond_36
    new-instance v1, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;-><init>()V

    move-object v15, v1

    .line 143
    .local v15, "parameters":Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    invoke-virtual {v15, v3}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setLegacyMode(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    .line 144
    invoke-virtual {v15, v0}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    .line 145
    invoke-virtual {v15, v3}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setScannable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getOwnAddressType()I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setOwnAddressType(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v1

    const/4 v4, 0x2

    if-nez v1, :cond_59

    .line 148
    const/16 v1, 0x640

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_70

    .line 149
    :cond_59
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v1

    if-ne v1, v3, :cond_65

    .line 150
    const/16 v1, 0x190

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_70

    .line 151
    :cond_65
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v1

    if-ne v1, v4, :cond_70

    .line 152
    const/16 v1, 0xa0

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    .line 155
    :cond_70
    :goto_70
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    if-nez v1, :cond_7c

    .line 156
    const/16 v1, -0x15

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_9c

    .line 157
    :cond_7c
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    if-ne v1, v3, :cond_88

    .line 158
    const/16 v1, -0xf

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_9c

    .line 159
    :cond_88
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    if-ne v1, v4, :cond_93

    .line 160
    const/4 v1, -0x7

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_9c

    .line 161
    :cond_93
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    if-ne v1, v2, :cond_9c

    .line 162
    invoke-virtual {v15, v3}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    .line 165
    :cond_9c
    :goto_9c
    const/4 v1, 0x0

    .line 166
    .local v1, "duration":I
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTimeout()I

    move-result v2

    move v9, v2

    .line 167
    .local v9, "timeoutMillis":I
    if-lez v9, :cond_af

    .line 168
    const/16 v2, 0xa

    if-ge v9, v2, :cond_a9

    goto :goto_ab

    :cond_a9
    div-int/lit8 v3, v9, 0xa

    :goto_ab
    move v1, v3

    move/from16 v16, v1

    goto :goto_b1

    .line 167
    :cond_af
    move/from16 v16, v1

    .line 171
    .end local v1    # "duration":I
    .local v16, "duration":I
    :goto_b1
    move-object/from16 v8, p1

    invoke-virtual {v10, v11, v8}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->wrapOldCallback(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)Landroid/bluetooth/le/AdvertisingSetCallback;

    move-result-object v1

    move-object v7, v1

    .line 172
    .local v7, "wrapped":Landroid/bluetooth/le/AdvertisingSetCallback;
    iget-object v1, v10, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v1, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {v15}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->build()Landroid/bluetooth/le/AdvertisingSetParameters;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v18, v7

    .end local v7    # "wrapped":Landroid/bluetooth/le/AdvertisingSetCallback;
    .local v18, "wrapped":Landroid/bluetooth/le/AdvertisingSetCallback;
    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v17, v9

    .end local v9    # "timeoutMillis":I
    .local v17, "timeoutMillis":I
    move-object/from16 v9, v18

    invoke-virtual/range {v1 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;)V

    .line 175
    .end local v0    # "isConnectable":Z
    .end local v15    # "parameters":Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .end local v16    # "duration":I
    .end local v17    # "timeoutMillis":I
    .end local v18    # "wrapped":Landroid/bluetooth/le/AdvertisingSetCallback;
    monitor-exit v12

    .line 176
    return-void

    .line 132
    .restart local v0    # "isConnectable":Z
    :cond_da
    move-object/from16 v14, p3

    .line 134
    :goto_dc
    invoke-direct {v10, v11, v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 135
    monitor-exit v12

    return-void

    .line 175
    .end local v0    # "isConnectable":Z
    :catchall_e1
    move-exception v0

    goto :goto_f2

    .line 129
    :cond_e3
    move-object/from16 v13, p2

    move-object/from16 v14, p3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .end local p1    # "settings":Landroid/bluetooth/le/AdvertiseSettings;
    .end local p2    # "advertiseData":Landroid/bluetooth/le/AdvertiseData;
    .end local p3    # "scanResponse":Landroid/bluetooth/le/AdvertiseData;
    .end local p4    # "callback":Landroid/bluetooth/le/AdvertiseCallback;
    throw v0

    .line 175
    .restart local p0    # "this":Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .restart local p1    # "settings":Landroid/bluetooth/le/AdvertiseSettings;
    .restart local p2    # "advertiseData":Landroid/bluetooth/le/AdvertiseData;
    .restart local p3    # "scanResponse":Landroid/bluetooth/le/AdvertiseData;
    .restart local p4    # "callback":Landroid/bluetooth/le/AdvertiseCallback;
    :catchall_ef
    move-exception v0

    move-object/from16 v13, p2

    :goto_f2
    move-object/from16 v14, p3

    :goto_f4
    monitor-exit v12
    :try_end_f5
    .catchall {:try_start_20 .. :try_end_f5} :catchall_f6

    throw v0

    :catchall_f6
    move-exception v0

    goto :goto_f4
.end method

.method public whitelist startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;)V
    .registers 19
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "periodicParameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .param p5, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p6, "duration"    # I
    .param p7, "maxExtendedAdvertisingEvents"    # I
    .param p8, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 335
    new-instance v9, Landroid/os/Handler;

    .line 337
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 335
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    .line 338
    return-void
.end method

.method public whitelist startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V
    .registers 30
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "periodicParameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .param p5, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p6, "duration"    # I
    .param p7, "maxExtendedAdvertisingEvents"    # I
    .param p8, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p9, "handler"    # Landroid/os/Handler;

    .line 378
    move-object/from16 v1, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p6

    move/from16 v12, p7

    move-object/from16 v11, p8

    move-object/from16 v10, p9

    const-string v9, "BluetoothLeAdvertiser"

    iget-object v0, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 379
    if-eqz v11, :cond_1a9

    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->isConnectable()Z

    move-result v8

    .line 384
    .local v8, "isConnectable":Z
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->isLegacy()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_44

    .line 385
    invoke-direct {v1, v13, v8}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v0

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_3c

    .line 389
    invoke-direct {v1, v14, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v0

    if-gt v0, v3, :cond_34

    move-object/from16 v7, p5

    goto/16 :goto_a9

    .line 390
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Legacy scan response data too big"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Legacy advertising data too big"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_44
    iget-object v0, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeCodedPhySupported()Z

    move-result v0

    .line 394
    .local v0, "supportCodedPhy":Z
    iget-object v3, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isLe2MPhySupported()Z

    move-result v3

    .line 395
    .local v3, "support2MPhy":Z
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->getPrimaryPhy()I

    move-result v4

    .line 396
    .local v4, "pphy":I
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->getSecondaryPhy()I

    move-result v5

    .line 397
    .local v5, "sphy":I
    const/4 v6, 0x3

    if-ne v4, v6, :cond_66

    if-eqz v0, :cond_5e

    goto :goto_66

    .line 398
    :cond_5e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unsupported primary PHY selected"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 401
    :cond_66
    :goto_66
    if-ne v5, v6, :cond_6a

    if-eqz v0, :cond_70

    :cond_6a
    const/4 v6, 0x2

    if-ne v5, v6, :cond_78

    if-eqz v3, :cond_70

    goto :goto_78

    .line 403
    :cond_70
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unsupported secondary PHY selected"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 406
    :cond_78
    :goto_78
    iget-object v6, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getLeMaximumAdvertisingDataLength()I

    move-result v6

    .line 407
    .local v6, "maxData":I
    invoke-direct {v1, v13, v8}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v7

    if-gt v7, v6, :cond_19f

    .line 411
    invoke-direct {v1, v14, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v7

    if-gt v7, v6, :cond_195

    .line 415
    move-object/from16 v7, p5

    invoke-direct {v1, v7, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v2

    if-gt v2, v6, :cond_18b

    .line 419
    iget-object v2, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isLePeriodicAdvertisingSupported()Z

    move-result v2

    .line 420
    .local v2, "supportPeriodic":Z
    if-eqz p4, :cond_a7

    if-eqz v2, :cond_9d

    goto :goto_a9

    .line 421
    :cond_9d
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move/from16 v16, v0

    .end local v0    # "supportCodedPhy":Z
    .local v16, "supportCodedPhy":Z
    const-string v0, "Controller does not support LE Periodic Advertising"

    invoke-direct {v9, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 420
    .end local v16    # "supportCodedPhy":Z
    .restart local v0    # "supportCodedPhy":Z
    :cond_a7
    move/from16 v16, v0

    .line 426
    .end local v0    # "supportCodedPhy":Z
    .end local v2    # "supportPeriodic":Z
    .end local v3    # "support2MPhy":Z
    .end local v4    # "pphy":I
    .end local v5    # "sphy":I
    .end local v6    # "maxData":I
    :goto_a9
    if-ltz v12, :cond_16b

    const/16 v0, 0xff

    if-gt v12, v0, :cond_16b

    .line 431
    if-eqz v12, :cond_c2

    iget-object v0, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 432
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLePeriodicAdvertisingSupported()Z

    move-result v0

    if-eqz v0, :cond_ba

    goto :goto_c2

    .line 433
    :cond_ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t use maxExtendedAdvertisingEvents with controller that don\'t support LE Extended Advertising"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_c2
    :goto_c2
    if-ltz v15, :cond_14c

    const v0, 0xffff

    if-gt v15, v0, :cond_14c

    .line 444
    const/4 v6, 0x4

    :try_start_ca
    iget-object v0, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_ca .. :try_end_d0} :catch_13c

    move-object/from16 v16, v0

    .line 450
    .local v16, "gatt":Landroid/bluetooth/IBluetoothGatt;
    nop

    .line 452
    if-nez v16, :cond_de

    .line 453
    const-string v0, "Bluetooth GATT is null"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-direct {v1, v10, v11, v6}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSetFailure(Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;I)V

    .line 456
    return-void

    .line 459
    :cond_de
    invoke-virtual {v1, v11, v10}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->wrap(Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IAdvertisingSetCallback;

    move-result-object v5

    .line 460
    .local v5, "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    iget-object v0, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v0, v11, v5}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_134

    .line 466
    :try_start_ea
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 467
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v4, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_f0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_ea .. :try_end_f0} :catch_122
    .catch Landroid/os/RemoteException; {:try_start_ea .. :try_end_f0} :catch_122

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move-object/from16 v17, v4

    move-object/from16 v4, p2

    move-object/from16 v18, v5

    .end local v5    # "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .local v18, "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    move-object/from16 v5, p3

    move v13, v6

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v19, v8

    .end local v8    # "isConnectable":Z
    .local v19, "isConnectable":Z
    move/from16 v8, p6

    move-object v13, v9

    move/from16 v9, p7

    move-object v14, v10

    move-object/from16 v10, v18

    move-object v15, v11

    move-object/from16 v11, v17

    move-object v12, v0

    :try_start_10f
    invoke-interface/range {v2 .. v12}, Landroid/bluetooth/IBluetoothGatt;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/IAdvertisingSetCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 470
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_10f .. :try_end_11e} :catch_120
    .catch Landroid/os/RemoteException; {:try_start_10f .. :try_end_11e} :catch_120

    .line 476
    nop

    .line 477
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    return-void

    .line 471
    :catch_120
    move-exception v0

    goto :goto_12a

    .end local v18    # "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .end local v19    # "isConnectable":Z
    .restart local v5    # "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .restart local v8    # "isConnectable":Z
    :catch_122
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object v13, v9

    move-object v14, v10

    move-object v15, v11

    .line 472
    .end local v5    # "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .end local v8    # "isConnectable":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .restart local v19    # "isConnectable":Z
    :goto_12a
    const-string v2, "Failed to start advertising set - "

    invoke-static {v13, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 473
    const/4 v2, 0x4

    invoke-direct {v1, v14, v15, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSetFailure(Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;I)V

    .line 475
    return-void

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v18    # "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .end local v19    # "isConnectable":Z
    .restart local v5    # "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .restart local v8    # "isConnectable":Z
    :cond_134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback instance already associated with advertising"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    .end local v5    # "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .end local v16    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_13c
    move-exception v0

    move/from16 v19, v8

    move-object v13, v9

    move-object v14, v10

    move-object v15, v11

    .line 446
    .end local v8    # "isConnectable":Z
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v19    # "isConnectable":Z
    const-string v2, "Failed to get Bluetooth GATT - "

    invoke-static {v13, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    const/4 v2, 0x4

    invoke-direct {v1, v14, v15, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSetFailure(Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;I)V

    .line 449
    return-void

    .line 438
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v19    # "isConnectable":Z
    .restart local v8    # "isConnectable":Z
    :cond_14c
    move/from16 v19, v8

    move-object v14, v10

    move-object v15, v11

    .line 439
    .end local v8    # "isConnectable":Z
    .restart local v19    # "isConnectable":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v7, p6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    .end local v19    # "isConnectable":Z
    .restart local v8    # "isConnectable":Z
    :cond_16b
    move/from16 v19, v8

    move-object v14, v10

    move v7, v15

    .line 427
    .end local v8    # "isConnectable":Z
    .restart local v19    # "isConnectable":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxExtendedAdvertisingEvents out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v8, p7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    .end local v19    # "isConnectable":Z
    .local v0, "supportCodedPhy":Z
    .restart local v3    # "support2MPhy":Z
    .restart local v4    # "pphy":I
    .local v5, "sphy":I
    .restart local v6    # "maxData":I
    .restart local v8    # "isConnectable":Z
    :cond_18b
    move/from16 v16, v0

    .end local v0    # "supportCodedPhy":Z
    .local v16, "supportCodedPhy":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Periodic advertising data too big"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    .end local v16    # "supportCodedPhy":Z
    .restart local v0    # "supportCodedPhy":Z
    :cond_195
    move/from16 v16, v0

    .end local v0    # "supportCodedPhy":Z
    .restart local v16    # "supportCodedPhy":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Scan response data too big"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    .end local v16    # "supportCodedPhy":Z
    .restart local v0    # "supportCodedPhy":Z
    :cond_19f
    move/from16 v16, v0

    .end local v0    # "supportCodedPhy":Z
    .restart local v16    # "supportCodedPhy":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Advertising data too big"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    .end local v3    # "support2MPhy":Z
    .end local v4    # "pphy":I
    .end local v5    # "sphy":I
    .end local v6    # "maxData":I
    .end local v8    # "isConnectable":Z
    .end local v16    # "supportCodedPhy":Z
    :cond_1a9
    move-object v14, v10

    move v8, v12

    move v7, v15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertisingSetCallback;)V
    .registers 17
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "periodicParameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .param p5, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p6, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 262
    new-instance v9, Landroid/os/Handler;

    .line 263
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 262
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    .line 264
    return-void
.end method

.method public whitelist startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V
    .registers 18
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "periodicParameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .param p5, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p6, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p7, "handler"    # Landroid/os/Handler;

    .line 296
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    .line 298
    return-void
.end method

.method public whitelist stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .line 221
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    monitor-enter v0

    .line 222
    if-eqz p1, :cond_1e

    .line 225
    :try_start_5
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 226
    .local v1, "wrapper":Landroid/bluetooth/le/AdvertisingSetCallback;
    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    .line 228
    :cond_11
    invoke-virtual {p0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetCallback;)V

    .line 230
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    nop

    .end local v1    # "wrapper":Landroid/bluetooth/le/AdvertisingSetCallback;
    monitor-exit v0

    .line 232
    return-void

    .line 231
    :catchall_1c
    move-exception v1

    goto :goto_26

    .line 223
    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .end local p1    # "callback":Landroid/bluetooth/le/AdvertiseCallback;
    throw v1

    .line 231
    .restart local p0    # "this":Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .restart local p1    # "callback":Landroid/bluetooth/le/AdvertiseCallback;
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_1c

    throw v1
.end method

.method public whitelist stopAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 487
    if-eqz p1, :cond_33

    .line 491
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/IAdvertisingSetCallback;

    .line 492
    .local v0, "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    if-nez v0, :cond_d

    .line 493
    return-void

    .line 498
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    .line 499
    .local v1, "gatt":Landroid/bluetooth/IBluetoothGatt;
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 500
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v0, v3, v2}, Landroid/bluetooth/IBluetoothGatt;->stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 501
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_28} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_28} :catch_2a

    .line 504
    nop

    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_32

    .line 502
    .end local v1    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_2a
    move-exception v1

    .line 503
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothLeAdvertiser"

    const-string v3, "Failed to stop advertising - "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_32
    return-void

    .line 488
    .end local v0    # "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o wrap(Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IAdvertisingSetCallback;
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 610
    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    invoke-direct {v0, p0, p2, p1}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;)V

    return-object v0
.end method

.method greylist-max-o wrapOldCallback(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)Landroid/bluetooth/le/AdvertisingSetCallback;
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .line 183
    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    return-object v0
.end method
