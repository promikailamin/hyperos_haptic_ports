.class public Lcom/android/server/media/BluetoothDeviceRoutesManager;
.super Ljava/lang/Object;
.source "BluetoothDeviceRoutesManager.java"


# static fields
.field public static final BT_DEVICE_TYPES:Ljava/util/List;


# instance fields
.field public final mAdapterStateChangedReceiver:Lcom/android/server/media/BluetoothDeviceRoutesManager$AdapterStateChangedReceiver;

.field public mAddressToBondedDevice:Ljava/util/Map;

.field public final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

.field public final mBluetoothRoutes:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceStateChangedReceiver:Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

.field public final mHandler:Landroid/os/Handler;

.field public mListener:Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRoutesUpdatedListener;


# direct methods
.method public static synthetic $r8$lambda$31dx830jzrMOVR7xL_IdjbdT-XA(Ljava/lang/String;Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Z
    .registers 2

    .line 326
    invoke-static {p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6G_FtZfwC0FssiEyFwtAK6cLn_o(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/bluetooth/BluetoothDevice;
    .registers 1

    .line 328
    invoke-static {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->-$$Nest$fgetmBtDevice(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E6IxsV8CrGIZ1N5nB_8UcP_WOS8()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$TFFF3iFNgn47asuwnKMK43NnWko(Lcom/android/server/media/BluetoothDeviceRoutesManager;Landroid/bluetooth/BluetoothDevice;)Landroid/media/MediaRoute2Info;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->lambda$getBroadcastingDeviceRoutes$4(Landroid/bluetooth/BluetoothDevice;)Landroid/media/MediaRoute2Info;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jkRnjKdnGOYQgPJGbDysFD9XMjc(Ljava/util/Set;Landroid/media/MediaRoute2Info;)Z
    .registers 2

    .line 356
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pxL0Ye4UP2L8C6bI_3KiULcxXx4(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRoutesUpdatedListener;)V
    .registers 1

    .line 138
    invoke-interface {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRoutesUpdatedListener;->onBluetoothRoutesUpdated()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/media/BluetoothDeviceRoutesManager;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleBluetoothAdapterStateChange(Lcom/android/server/media/BluetoothDeviceRoutesManager;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->handleBluetoothAdapterStateChange(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/BluetoothDeviceRoutesManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->notifyBluetoothRoutesUpdated()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBluetoothRoutes(Lcom/android/server/media/BluetoothDeviceRoutesManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->updateBluetoothRoutes()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x1a

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x17

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 73
    invoke-static {v0, v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->BT_DEVICE_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 5

    .line 115
    new-instance v0, Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/media/BluetoothProfileMonitor;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/bluetooth/BluetoothAdapter;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/BluetoothProfileMonitor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/BluetoothProfileMonitor;)V
    .registers 7

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/server/media/BluetoothDeviceRoutesManager$AdapterStateChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$AdapterStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothDeviceRoutesManager;Lcom/android/server/media/BluetoothDeviceRoutesManager-IA;)V

    iput-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAdapterStateChangedReceiver:Lcom/android/server/media/BluetoothDeviceRoutesManager$AdapterStateChangedReceiver;

    .line 96
    new-instance v0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothDeviceRoutesManager;Lcom/android/server/media/BluetoothDeviceRoutesManager-IA;)V

    iput-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mDeviceStateChangedReceiver:Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAddressToBondedDevice:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    .line 128
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mContext:Landroid/content/Context;

    .line 129
    new-instance p1, Landroid/os/Handler;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mHandler:Landroid/os/Handler;

    .line 130
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Landroid/bluetooth/BluetoothAdapter;

    iput-object p3, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 131
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    .line 133
    new-instance p1, Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda2;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mListener:Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRoutesUpdatedListener;

    return-void
.end method


# virtual methods
.method public declared-synchronized activateBluetoothDeviceWithAddress(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 186
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;

    if-nez v0, :cond_25

    .line 189
    const-string v0, "MR2SystemProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateBluetoothDeviceWithAddress: Ignoring unknown address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 190
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    goto :goto_31

    .line 192
    :cond_25
    :try_start_25
    iget-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->-$$Nest$fgetmBtDevice(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_23

    .line 193
    monitor-exit p0

    return-void

    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_23

    throw p1
.end method

.method public declared-synchronized containsBondedDeviceWithAddress(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    .line 168
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAddressToBondedDevice:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public final createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;Z)Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;
    .registers 8

    .line 388
    new-instance v0, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;-><init>(Lcom/android/server/media/BluetoothDeviceRoutesManager-IA;)V

    .line 389
    invoke-static {v0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->-$$Nest$fputmBtDevice(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;Landroid/bluetooth/BluetoothDevice;)V

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 393
    invoke-virtual {p0, p1, v2}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getRouteIdForType(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v3

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getConnectedProfiles(Landroid/bluetooth/BluetoothDevice;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->-$$Nest$fputmConnectedProfiles(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;Landroid/util/SparseBooleanArray;)V

    .line 396
    new-instance v4, Landroid/media/MediaRoute2Info$Builder;

    invoke-direct {v4, v3, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "android.media.route.feature.LIVE_AUDIO"

    .line 398
    invoke-virtual {v4, v1}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    const-string v3, "android.media.route.feature.LOCAL_PLAYBACK"

    .line 399
    invoke-virtual {v1, v3}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    const/4 v3, 0x0

    .line 400
    invoke-virtual {v1, v3}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mContext:Landroid/content/Context;

    .line 402
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10401c8

    .line 403
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 404
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 401
    invoke-virtual {v1, v3}, Landroid/media/MediaRoute2Info$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    .line 405
    invoke-virtual {v1, v2}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    .line 406
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRoute2Info$Builder;->setAddress(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    if-eqz p2, :cond_64

    .line 412
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->getDeviceVolume(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p0

    const/16 p1, 0xff

    .line 414
    invoke-virtual {p0, p1}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    .line 416
    :cond_64
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->-$$Nest$fputmRoute(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;Landroid/media/MediaRoute2Info;)V

    return-object v0
.end method

.method public getAvailableBluetoothRoutes()Ljava/util/List;
    .registers 6

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 255
    monitor-enter p0

    .line 256
    :try_start_b
    iget-object v2, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;

    .line 258
    invoke-static {v3}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 259
    invoke-static {v3}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :catchall_37
    move-exception v0

    goto :goto_3b

    .line 262
    :cond_39
    monitor-exit p0

    return-object v0

    :goto_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_37

    throw v0
.end method

.method public getBroadcastingDeviceRoutes()Ljava/util/List;
    .registers 4

    .line 345
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 348
    iget-object v1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-virtual {v1}, Lcom/android/server/media/BluetoothProfileMonitor;->getDevicesWithBroadcastSource()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/BluetoothDeviceRoutesManager;)V

    .line 349
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    .line 356
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 357
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getConnectedProfiles(Landroid/bluetooth/BluetoothDevice;)Landroid/util/SparseBooleanArray;
    .registers 6

    .line 432
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 433
    iget-object v1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->isProfileSupported(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    .line 434
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 436
    :cond_12
    iget-object v1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->isProfileSupported(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 437
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 439
    :cond_1f
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    const/16 v1, 0x16

    invoke-virtual {p0, v1, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->isProfileSupported(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 440
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2c
    return-object v0
.end method

.method public final getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 3

    .line 423
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p1

    .line 425
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 426
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x104000e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    return-object p1
.end method

.method public final getDeviceType(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4

    .line 447
    iget-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    const/16 v1, 0x16

    invoke-virtual {v0, v1, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->isProfileSupported(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p0, 0x1a

    return p0

    .line 451
    :cond_d
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->isProfileSupported(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/16 p0, 0x17

    return p0

    :cond_1a
    const/16 p0, 0x8

    return p0
.end method

.method public declared-synchronized getNameForBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAddressToBondedDevice:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_12

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    goto :goto_13

    :catchall_10
    move-exception p1

    goto :goto_15

    :cond_12
    const/4 p1, 0x0

    :goto_13
    monitor-exit p0

    return-object p1

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_10

    throw p1
.end method

.method public declared-synchronized getRouteIdForBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 173
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAddressToBondedDevice:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_16

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getRouteIdForType(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_14

    goto :goto_17

    :catchall_14
    move-exception p1

    goto :goto_19

    :cond_16
    const/4 p1, 0x0

    .line 174
    :goto_17
    monitor-exit p0

    return-object p1

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_14

    throw p1
.end method

.method public final getRouteIdForType(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x17

    if-eq p2, v0, :cond_27

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_d

    .line 469
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 461
    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LE_AUDIO_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    const/16 v0, 0x16

    .line 462
    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->getGroupId(ILandroid/bluetooth/BluetoothDevice;)J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 465
    :cond_27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HEARING_AID_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    const/16 v0, 0x15

    .line 466
    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->getGroupId(ILandroid/bluetooth/BluetoothDevice;)J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleBluetoothAdapterStateChange(I)V
    .registers 3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_22

    const/16 v0, 0xd

    if-ne p1, v0, :cond_9

    goto :goto_22

    :cond_9
    const/16 v0, 0xc

    if-ne p1, v0, :cond_21

    .line 480
    invoke-virtual {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->updateBluetoothRoutes()V

    .line 483
    monitor-enter p0

    .line 484
    :try_start_11
    iget-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    .line 485
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1e

    if-nez p1, :cond_21

    .line 488
    invoke-virtual {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->notifyBluetoothRoutesUpdated()V

    return-void

    :catchall_1e
    move-exception p1

    .line 485
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1

    :cond_21
    return-void

    .line 475
    :cond_22
    :goto_22
    monitor-enter p0

    .line 476
    :try_start_23
    iget-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 477
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_2d

    .line 478
    invoke-virtual {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->notifyBluetoothRoutesUpdated()V

    return-void

    :catchall_2d
    move-exception p1

    .line 477
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public isBtRoute(Landroid/media/MediaRoute2Info;)Z
    .registers 2

    .line 311
    sget-object p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->BT_DEVICE_TYPES:Ljava/util/List;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isLEAudioBroadcastSupported()Z
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeAudioBroadcastAssistantSupported()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_14

    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 364
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isLeAudioBroadcastSourceSupported()I

    move-result p0

    if-ne p0, v1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized isMediaOnlyRouteInBroadcast(Ljava/lang/String;)Z
    .registers 5

    monitor-enter p0

    .line 196
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;

    .line 197
    invoke-static {v1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 198
    iget-object v2, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {v1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->-$$Nest$fgetmBtDevice(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/media/BluetoothProfileMonitor;->isMediaOnlyDeviceInBroadcast(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_34

    if-eqz v1, :cond_b

    .line 199
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_34
    move-exception p1

    goto :goto_39

    .line 203
    :cond_36
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_39
    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_34

    throw p1
.end method

.method public final synthetic lambda$getBroadcastingDeviceRoutes$4(Landroid/bluetooth/BluetoothDevice;)Landroid/media/MediaRoute2Info;
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    .line 354
    invoke-virtual {v0, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->isMediaOnlyDeviceInBroadcast(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 351
    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;Z)Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object p0

    return-object p0
.end method

.method public final notifyBluetoothRoutesUpdated()V
    .registers 1

    .line 369
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mListener:Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRoutesUpdatedListener;

    invoke-interface {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRoutesUpdatedListener;->onBluetoothRoutesUpdated()V

    return-void
.end method

.method public removeRouteFromBroadcast(Ljava/lang/String;)V
    .registers 2

    .line 301
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-virtual {p0}, Lcom/android/server/media/BluetoothProfileMonitor;->stopBroadcast()V

    return-void
.end method

.method public declared-synchronized setRouteVolume(Ljava/lang/String;I)Z
    .registers 8

    monitor-enter p0

    .line 208
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;

    .line 209
    invoke-static {v3}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 212
    iget-object v2, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {v3}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->-$$Nest$fgetmBtDevice(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3, p2, v1}, Lcom/android/server/media/BluetoothProfileMonitor;->setDeviceVolume(Landroid/bluetooth/BluetoothDevice;IZ)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    const/4 v2, 0x1

    goto :goto_d

    :catchall_32
    move-exception p1

    goto :goto_36

    .line 217
    :cond_34
    monitor-exit p0

    return v2

    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_32

    throw p1
.end method

.method public start(Landroid/os/UserHandle;Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRoutesUpdatedListener;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 137
    iput-object v1, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mListener:Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRoutesUpdatedListener;

    .line 138
    iget-object v2, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    new-instance v3, Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRoutesUpdatedListener;)V

    invoke-virtual {v2, v3}, Lcom/android/server/media/BluetoothProfileMonitor;->start(Lcom/android/server/media/BluetoothDeviceRoutesManager$OnBroadcastSinkChangedListener;)V

    .line 140
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v4, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAdapterStateChangedReceiver:Lcom/android/server/media/BluetoothDeviceRoutesManager$AdapterStateChangedReceiver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 146
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v1, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v10, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mDeviceStateChangedReceiver:Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v12, p1

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 158
    invoke-virtual {v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->updateBluetoothRoutes()V

    return-void
.end method

.method public startBroadcast(Ljava/util/List;)V
    .registers 6

    .line 272
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1e

    .line 273
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to start broadcast, incorrect number of routes: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MR2SystemProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 279
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    iget-object v1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;

    .line 283
    invoke-static {v2}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-static {v2}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->-$$Nest$fgetmBtDevice(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 284
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 285
    invoke-static {v2}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->-$$Nest$fgetmBtDevice(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 289
    :cond_59
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-virtual {p0, v0}, Lcom/android/server/media/BluetoothProfileMonitor;->startBroadcast(Ljava/util/List;)V

    return-void
.end method

.method public stopBroadcast()V
    .registers 1

    .line 306
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-virtual {p0}, Lcom/android/server/media/BluetoothProfileMonitor;->stopBroadcast()V

    return-void
.end method

.method public stopBroadcast(Ljava/lang/String;)V
    .registers 5

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopBroadcast: for route id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2SystemProvider"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_1b

    goto :goto_42

    .line 329
    :cond_1b
    iget-object v1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    .line 325
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 327
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda5;-><init>()V

    .line 328
    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    .line 329
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 330
    :goto_42
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-virtual {p0, v0}, Lcom/android/server/media/BluetoothProfileMonitor;->stopBroadcast(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public final updateBluetoothRoutes()V
    .registers 5

    .line 221
    iget-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 223
    monitor-enter p0

    .line 224
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    if-nez v0, :cond_19

    .line 227
    const-string v0, "MR2SystemProvider"

    const-string v1, "BluetoothAdapter.getBondedDevices returned null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    goto :goto_63

    .line 234
    :cond_19
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda6;-><init>()V

    .line 237
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v3

    .line 236
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 235
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAddressToBondedDevice:Ljava/util/Map;

    .line 238
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_36
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 239
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x0

    .line 241
    invoke-virtual {p0, v1, v2}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;Z)Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;

    move-result-object v2

    .line 242
    invoke-static {v2}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->-$$Nest$fgetmConnectedProfiles(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lez v3, :cond_36

    .line 243
    iget-object v3, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 247
    :cond_61
    monitor-exit p0

    return-void

    :goto_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_7 .. :try_end_64} :catchall_17

    throw v0
.end method
