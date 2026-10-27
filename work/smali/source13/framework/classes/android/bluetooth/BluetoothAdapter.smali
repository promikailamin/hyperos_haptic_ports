.class public final Landroid/bluetooth/BluetoothAdapter;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;,
        Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;,
        Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;,
        Landroid/bluetooth/BluetoothAdapter$LeScanCallback;,
        Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;,
        Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;,
        Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;,
        Landroid/bluetooth/BluetoothAdapter$OobDataCallback;,
        Landroid/bluetooth/BluetoothAdapter$OobError;,
        Landroid/bluetooth/BluetoothAdapter$LeFeatureReturnValues;,
        Landroid/bluetooth/BluetoothAdapter$BluetoothCache;,
        Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;,
        Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;,
        Landroid/bluetooth/BluetoothAdapter$BluetoothActivityEnergyInfoCallbackError;,
        Landroid/bluetooth/BluetoothAdapter$ConnectionState;,
        Landroid/bluetooth/BluetoothAdapter$ActiveDeviceProfile;,
        Landroid/bluetooth/BluetoothAdapter$ActiveDeviceUse;,
        Landroid/bluetooth/BluetoothAdapter$IoCapability;,
        Landroid/bluetooth/BluetoothAdapter$ScanModeStatusCode;,
        Landroid/bluetooth/BluetoothAdapter$ScanMode;,
        Landroid/bluetooth/BluetoothAdapter$RfcommListenerResult;,
        Landroid/bluetooth/BluetoothAdapter$AdapterState;,
        Landroid/bluetooth/BluetoothAdapter$InternalAdapterState;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTION_BLE_ACL_CONNECTED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLE_ACL_CONNECTED"

.field public static final greylist-max-o ACTION_BLE_ACL_DISCONNECTED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLE_ACL_DISCONNECTED"

.field public static final whitelist ACTION_BLE_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLE_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_BLUETOOTH_ADDRESS_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLUETOOTH_ADDRESS_CHANGED"

.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

.field public static final whitelist ACTION_DISCOVERY_FINISHED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

.field public static final whitelist ACTION_DISCOVERY_STARTED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_STARTED"

.field public static final whitelist ACTION_LOCAL_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

.field public static final whitelist ACTION_REQUEST_BLE_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_BLE_SCAN_ALWAYS_AVAILABLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REQUEST_DISABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_DISABLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REQUEST_DISCOVERABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

.field public static final whitelist ACTION_REQUEST_ENABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_ENABLE"

.field public static final whitelist ACTION_SCAN_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

.field public static final whitelist ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field public static final whitelist ACTIVE_DEVICE_ALL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTIVE_DEVICE_AUDIO:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTIVE_DEVICE_PHONE_CALL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o ADDRESS_LENGTH:I = 0x11

.field private static final blacklist ADDRESS_LHDC_FLAG_EXTENTION:Ljava/lang/String; = ".lhdc_a2dp"

.field private static final blacklist ADDRESS_LHDC_FLAG_LENGTH:I = 0x1b

.field public static final greylist-max-o BLUETOOTH_MANAGER_SERVICE:Ljava/lang/String; = "bluetooth_manager"

.field private static final greylist-max-o DBG:Z = true

.field public static final greylist-max-o DEFAULT_MAC_ADDRESS:Ljava/lang/String; = "02:00:00:00:00:00"

.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.BluetoothAdapter"

.field public static final whitelist ERROR:I = -0x80000000

.field public static final greylist-max-o EXTRA_BLUETOOTH_ADDRESS:Ljava/lang/String; = "android.bluetooth.adapter.extra.BLUETOOTH_ADDRESS"

.field public static final whitelist EXTRA_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.CONNECTION_STATE"

.field public static final whitelist EXTRA_DISCOVERABLE_DURATION:Ljava/lang/String; = "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

.field public static final whitelist EXTRA_LOCAL_NAME:Ljava/lang/String; = "android.bluetooth.adapter.extra.LOCAL_NAME"

.field public static final whitelist EXTRA_PREVIOUS_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

.field public static final whitelist EXTRA_PREVIOUS_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

.field public static final whitelist EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_STATE"

.field public static final whitelist EXTRA_RFCOMM_LISTENER_ID:Ljava/lang/String; = "android.bluetooth.adapter.extra.RFCOMM_LISTENER_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.SCAN_MODE"

.field public static final whitelist EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.STATE"

.field private static final blacklist FILTERING_API:Ljava/lang/String; = "BluetoothAdapter_isOffloadedFilteringSupported"

.field private static final blacklist GET_CONNECTION_API:Ljava/lang/String; = "BluetoothAdapter_getConnectionState"

.field private static final blacklist GET_STATE_API:Ljava/lang/String; = "BluetoothAdapter_getState"

.field public static final blacklist IO_CAPABILITY_IN:I = 0x2

.field public static final blacklist IO_CAPABILITY_IO:I = 0x1

.field public static final blacklist IO_CAPABILITY_KBDISP:I = 0x4

.field public static final blacklist IO_CAPABILITY_MAX:I = 0x5

.field public static final blacklist IO_CAPABILITY_NONE:I = 0x3

.field public static final blacklist IO_CAPABILITY_OUT:I = 0x0

.field public static final blacklist IO_CAPABILITY_UNKNOWN:I = 0xff

.field public static final greylist-max-o LE_PSM_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field private static final blacklist PROFILE_API:Ljava/lang/String; = "BluetoothAdapter_getProfileConnectionState"

.field public static final whitelist SCAN_MODE_CONNECTABLE:I = 0x15

.field public static final whitelist SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x17

.field public static final whitelist SCAN_MODE_NONE:I = 0x14

.field public static final greylist-max-o SOCKET_CHANNEL_AUTO_STATIC_NO_SDP:I = -0x2

.field public static final whitelist STATE_BLE_ON:I = 0xf
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o STATE_BLE_TURNING_OFF:I = 0x10

.field public static final greylist-max-o STATE_BLE_TURNING_ON:I = 0xe

.field public static final whitelist STATE_CONNECTED:I = 0x2

.field public static final whitelist STATE_CONNECTING:I = 0x1

.field public static final whitelist STATE_DISCONNECTED:I = 0x0

.field public static final whitelist STATE_DISCONNECTING:I = 0x3

.field public static final whitelist STATE_OFF:I = 0xa

.field public static final whitelist STATE_ON:I = 0xc

.field public static final whitelist STATE_TURNING_OFF:I = 0xd

.field public static final whitelist STATE_TURNING_ON:I = 0xb

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BluetoothAdapter"

.field private static final greylist-max-o VDBG:Z = false

.field private static greylist-max-o sAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static final blacklist sManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private static final blacklist sProxyServiceStateCallbacks:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sService:Landroid/bluetooth/IBluetooth;

.field private static final blacklist sServiceLock:Ljava/lang/Object;

.field private static blacklist sServiceRegistered:Z


# instance fields
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBluetoothFilteringCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/bluetooth/IBluetooth;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBluetoothFilteringQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Landroid/bluetooth/IBluetooth;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBluetoothGetAdapterConnectionStateCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/bluetooth/IBluetooth;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBluetoothGetAdapterConnectionStateQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Landroid/bluetooth/IBluetooth;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBluetoothGetStateCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/bluetooth/IBluetooth;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBluetoothGetStateQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Landroid/bluetooth/IBluetooth;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private blacklist mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private final blacklist mBluetoothMetadataListener:Landroid/bluetooth/IBluetoothMetadataListener;

.field private final blacklist mBluetoothProfileQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Landroid/util/Pair<",
            "Landroid/bluetooth/IBluetooth;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mConnectionCallback:Landroid/bluetooth/IBluetoothConnectionCallback;

.field private final blacklist mGetProfileConnectionStateCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/util/Pair<",
            "Landroid/bluetooth/IBluetooth;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mLeScanClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
            "Landroid/bluetooth/le/ScanCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private final greylist-max-o mManagerService:Landroid/bluetooth/IBluetoothManager;

.field private final blacklist mMetadataListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;",
            "Ljava/util/concurrent/Executor;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private blacklist mPeriodicAdvertisingManager:Landroid/bluetooth/le/PeriodicAdvertisingManager;

.field private greylist mService:Landroid/bluetooth/IBluetooth;

.field private final greylist-max-o mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final greylist-max-o mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothAdapter;)Landroid/content/AttributionSource;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBluetoothConnectionCallbackExecutorMap(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBluetoothLeAdvertiser(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBluetoothLeScanner(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeScanner;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBluetoothMetadataListener(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothMetadataListener;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothMetadataListener:Landroid/bluetooth/IBluetoothMetadataListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectionCallback(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothConnectionCallback;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mConnectionCallback:Landroid/bluetooth/IBluetoothConnectionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeScanClients(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetadataListeners(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsProxyServiceStateCallbacks()Ljava/util/WeakHashMap;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sProxyServiceStateCallbacks:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsServiceLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsService(Landroid/bluetooth/IBluetooth;)V
    .registers 1

    sput-object p0, Landroid/bluetooth/BluetoothAdapter;->sService:Landroid/bluetooth/IBluetooth;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 255
    nop

    .line 256
    const-string v0, "2d410339-82b6-42aa-b34e-e2e01df8cc1a"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->LE_PSM_CHARACTERISTIC_UUID:Ljava/util/UUID;

    .line 816
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/lang/Object;

    .line 4107
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$6;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothAdapter$6;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 4567
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sProxyServiceStateCallbacks:Ljava/util/WeakHashMap;

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/IBluetoothManager;Landroid/content/AttributionSource;)V
    .registers 7
    .param p1, "managerService"    # Landroid/bluetooth/IBluetoothManager;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 818
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    .line 820
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    .line 822
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    .line 829
    new-instance v1, Landroid/bluetooth/BluetoothAdapter$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$1;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothMetadataListener:Landroid/bluetooth/IBluetoothMetadataListener;

    .line 1282
    new-instance v1, Landroid/bluetooth/BluetoothAdapter$2;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$2;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothGetStateQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 1301
    new-instance v2, Landroid/bluetooth/BluetoothAdapter$BluetoothCache;

    const-string v3, "BluetoothAdapter_getState"

    invoke-direct {v2, v3, v1}, Landroid/bluetooth/BluetoothAdapter$BluetoothCache;-><init>(Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothGetStateCache:Landroid/os/IpcDataCache;

    .line 2458
    new-instance v1, Landroid/bluetooth/BluetoothAdapter$3;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$3;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothFilteringQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 2475
    new-instance v2, Landroid/bluetooth/BluetoothAdapter$BluetoothCache;

    const-string v3, "BluetoothAdapter_isOffloadedFilteringSupported"

    invoke-direct {v2, v3, v1}, Landroid/bluetooth/BluetoothAdapter$BluetoothCache;-><init>(Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothFilteringCache:Landroid/os/IpcDataCache;

    .line 3022
    new-instance v1, Landroid/bluetooth/BluetoothAdapter$4;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$4;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothGetAdapterConnectionStateQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 3042
    new-instance v2, Landroid/bluetooth/BluetoothAdapter$BluetoothCache;

    const-string v3, "BluetoothAdapter_getConnectionState"

    invoke-direct {v2, v3, v1}, Landroid/bluetooth/BluetoothAdapter$BluetoothCache;-><init>(Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothGetAdapterConnectionStateCache:Landroid/os/IpcDataCache;

    .line 3088
    new-instance v1, Landroid/bluetooth/BluetoothAdapter$5;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$5;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothProfileQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 3107
    new-instance v2, Landroid/bluetooth/BluetoothAdapter$BluetoothCache;

    const-string v3, "BluetoothAdapter_getProfileConnectionState"

    invoke-direct {v2, v3, v1}, Landroid/bluetooth/BluetoothAdapter$BluetoothCache;-><init>(Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mGetProfileConnectionStateCache:Landroid/os/IpcDataCache;

    .line 4172
    new-instance v1, Landroid/bluetooth/BluetoothAdapter$7;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$7;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 5122
    new-instance v2, Landroid/bluetooth/BluetoothAdapter$9;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothAdapter$9;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mConnectionCallback:Landroid/bluetooth/IBluetoothConnectionCallback;

    .line 1000
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothManager;

    iput-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    .line 1001
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    iput-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1002
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 1003
    .local v0, "l":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1005
    :try_start_8b
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    :try_end_91
    .catchall {:try_start_8b .. :try_end_91} :catchall_a6

    .line 1007
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1008
    nop

    .line 1009
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    .line 1010
    new-instance v1, Landroid/os/Binder;

    const-string v2, "android.bluetooth.BluetoothAdapter"

    invoke-direct {v1, v2}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    .line 1011
    return-void

    .line 1007
    :catchall_a6
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1008
    throw v1
.end method

.method public static whitelist checkBluetoothAddress(Ljava/lang/String;)Z
    .registers 6
    .param p0, "address"    # Ljava/lang/String;

    .line 4504
    const/4 v0, 0x0

    if-eqz p0, :cond_4d

    .line 4505
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1b

    const/16 v3, 0x11

    if-eq v1, v3, :cond_14

    .line 4506
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v2, :cond_14

    goto :goto_4d

    .line 4509
    :cond_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_23

    .line 4510
    const-string v1, ".lhdc_a2dp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 4511
    return v0

    .line 4514
    :cond_23
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    if-ge v1, v3, :cond_4b

    .line 4515
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4516
    .local v2, "c":C
    rem-int/lit8 v4, v1, 0x3

    packed-switch v4, :pswitch_data_4e

    goto :goto_48

    .line 4525
    :pswitch_30
    const/16 v4, 0x3a

    if-ne v2, v4, :cond_35

    .line 4526
    goto :goto_48

    .line 4528
    :cond_35
    return v0

    .line 4519
    :pswitch_36
    const/16 v4, 0x30

    if-lt v2, v4, :cond_3e

    const/16 v4, 0x39

    if-le v2, v4, :cond_48

    :cond_3e
    const/16 v4, 0x41

    if-lt v2, v4, :cond_47

    const/16 v4, 0x46

    if-gt v2, v4, :cond_47

    .line 4521
    goto :goto_48

    .line 4523
    :cond_47
    return v0

    .line 4514
    .end local v2    # "c":C
    :cond_48
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 4531
    .end local v1    # "i":I
    :cond_4b
    const/4 v0, 0x1

    return v0

    .line 4507
    :cond_4d
    :goto_4d
    return v0

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_36
        :pswitch_36
        :pswitch_30
    .end packed-switch
.end method

.method private blacklist closeBCProfile(Landroid/bluetooth/BluetoothProfile;)V
    .registers 8
    .param p1, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 3622
    const-string v0, "BluetoothAdapter"

    const/4 v1, 0x0

    .line 3623
    .local v1, "bshClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 3625
    .local v2, "bshClose":Ljava/lang/reflect/Method;
    :try_start_4
    const-string v3, "android.bluetooth.BluetoothSyncHelper"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_a} :catch_c

    move-object v1, v3

    .line 3629
    goto :goto_14

    .line 3626
    :catch_c
    move-exception v3

    .line 3627
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "no BSH: exists"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    const/4 v1, 0x0

    .line 3630
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_14
    if-eqz v1, :cond_3f

    .line 3631
    const-string v3, "Able to get BSH class handle"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    const/4 v3, 0x0

    :try_start_1c
    const-string v4, "close"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_22} :catch_24

    move-object v2, v4

    .line 3636
    goto :goto_2b

    .line 3634
    :catch_24
    move-exception v4

    .line 3635
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v5, "no BSH:isSupported method exists"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3637
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :goto_2b
    if-eqz v2, :cond_3f

    .line 3639
    :try_start_2d
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_30} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_30} :catch_31

    .line 3644
    :goto_30
    goto :goto_3f

    .line 3642
    :catch_31
    move-exception v3

    .line 3643
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "bshClose InvocationTargetException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 3640
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_38
    move-exception v3

    .line 3641
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "bshClose IllegalAccessException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_30

    .line 3647
    :cond_3f
    :goto_3f
    const-string v3, "CloseBCProfile returns"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    return-void
.end method

.method private blacklist closeBroadcastProfile(Landroid/bluetooth/BluetoothProfile;)V
    .registers 8
    .param p1, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 4084
    const-string v0, "BluetoothAdapter"

    const/4 v1, 0x0

    .line 4085
    .local v1, "broadcastClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 4087
    .local v2, "broadcastClose":Ljava/lang/reflect/Method;
    :try_start_4
    const-string v3, "android.bluetooth.BluetoothBroadcast"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_a} :catch_c

    move-object v1, v3

    .line 4090
    goto :goto_13

    .line 4088
    :catch_c
    move-exception v3

    .line 4089
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "no BluetoothBroadcast: exists"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4091
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_13
    if-eqz v1, :cond_2f

    .line 4093
    const/4 v3, 0x0

    :try_start_16
    const-string v4, "close"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_1c} :catch_1e

    move-object v2, v0

    .line 4096
    goto :goto_25

    .line 4094
    :catch_1e
    move-exception v4

    .line 4095
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v5, "no Broadcast:close method exists"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4097
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :goto_25
    if-eqz v2, :cond_2f

    .line 4099
    :try_start_27
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 4102
    goto :goto_2f

    .line 4100
    :catch_2b
    move-exception v0

    .line 4101
    .local v0, "ex":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 4105
    .end local v0    # "ex":Ljava/lang/ReflectiveOperationException;
    :cond_2f
    :goto_2f
    return-void
.end method

.method private blacklist closeCSProfile(Landroid/bluetooth/BluetoothProfile;)V
    .registers 8
    .param p1, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 3708
    const-string v0, "BluetoothAdapter"

    const/4 v1, 0x0

    .line 3709
    .local v1, "csClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 3711
    .local v2, "csClose":Ljava/lang/reflect/Method;
    :try_start_4
    const-string v3, "android.bluetooth.BluetoothCsClient"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_a} :catch_c

    move-object v1, v3

    .line 3715
    goto :goto_14

    .line 3712
    :catch_c
    move-exception v3

    .line 3713
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "no CS: exists"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3714
    const/4 v1, 0x0

    .line 3716
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_14
    if-eqz v1, :cond_3f

    .line 3717
    const-string v3, "Able to get CS class handle"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    const/4 v3, 0x0

    :try_start_1c
    const-string v4, "close"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_22} :catch_24

    move-object v2, v4

    .line 3722
    goto :goto_2b

    .line 3720
    :catch_24
    move-exception v4

    .line 3721
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v5, "no CS:isSupported method exists"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :goto_2b
    if-eqz v2, :cond_3f

    .line 3725
    :try_start_2d
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_30} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_30} :catch_31

    .line 3730
    :goto_30
    goto :goto_3f

    .line 3728
    :catch_31
    move-exception v3

    .line 3729
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "csClose InvocationTargetException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 3726
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_38
    move-exception v3

    .line 3727
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "csClose IllegalAccessException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_30

    .line 3733
    :cond_3f
    :goto_3f
    const-string v3, "CloseCSProfile returns"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    return-void
.end method

.method public static blacklist connectionPolicyToPriority(I)I
    .registers 2
    .param p0, "connectionPolicy"    # I

    .line 5358
    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_c

    .line 5366
    return v0

    .line 5360
    :sswitch_5
    const/16 v0, 0x64

    return v0

    .line 5362
    :sswitch_8
    const/4 v0, 0x0

    return v0

    .line 5364
    :sswitch_a
    return v0

    nop

    :sswitch_data_c
    .sparse-switch
        -0x1 -> :sswitch_a
        0x0 -> :sswitch_8
        0x64 -> :sswitch_5
    .end sparse-switch
.end method

.method public static blacklist createAdapter(Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothAdapter;
    .registers 6
    .param p0, "attributionSource"    # Landroid/content/AttributionSource;

    .line 981
    invoke-static {}, Landroid/bluetooth/BluetoothFrameworkInitializer;->getBluetoothServiceManager()Landroid/os/BluetoothServiceManager;

    move-result-object v0

    .line 982
    .local v0, "manager":Landroid/os/BluetoothServiceManager;
    const/4 v1, 0x0

    const-string v2, "BluetoothAdapter"

    if-nez v0, :cond_f

    .line 983
    const-string v3, "BluetoothServiceManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    return-object v1

    .line 986
    :cond_f
    nop

    .line 987
    invoke-virtual {v0}, Landroid/os/BluetoothServiceManager;->getBluetoothManagerServiceRegisterer()Landroid/os/BluetoothServiceManager$ServiceRegisterer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/BluetoothServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v3

    .line 986
    invoke-static {v3}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    .line 988
    .local v3, "service":Landroid/bluetooth/IBluetoothManager;
    if-eqz v3, :cond_24

    .line 989
    new-instance v1, Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v1, v3, p0}, Landroid/bluetooth/BluetoothAdapter;-><init>(Landroid/bluetooth/IBluetoothManager;Landroid/content/AttributionSource;)V

    return-object v1

    .line 991
    :cond_24
    const-string v4, "Bluetooth service is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    return-object v1
.end method

.method private greylist-max-o createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "auth"    # Z
    .param p4, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3474
    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, p3, p4, v1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZLandroid/os/ParcelUuid;)V

    .line 3476
    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothServerSocket;->setServiceName(Ljava/lang/String;)V

    .line 3477
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    .line 3478
    .local v1, "errno":I
    if-nez v1, :cond_17

    .line 3484
    return-object v0

    .line 3482
    :cond_17
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist getBCProfile(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)Z
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sl"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 3651
    const-string v1, "bshCons InstantiationException:"

    const-string v2, "BluetoothAdapter"

    const/4 v3, 0x1

    .line 3652
    .local v3, "ret":Z
    const/4 v4, 0x0

    .line 3653
    .local v4, "isProfileSupported":Z
    const/4 v5, 0x0

    .line 3654
    .local v5, "bshClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 3655
    .local v6, "bshSupported":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    .line 3656
    .local v7, "bshCons":Ljava/lang/reflect/Constructor;
    const/4 v8, 0x0

    .line 3658
    .local v8, "bshObj":Ljava/lang/Object;
    :try_start_a
    const-string v0, "android.bluetooth.BluetoothSyncHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_10} :catch_12

    .line 3662
    .end local v5    # "bshClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "bshClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v5, v0

    goto :goto_1a

    .line 3659
    .end local v0    # "bshClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "bshClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_12
    move-exception v0

    .line 3660
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v9, "no BSH: exists"

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    const/4 v5, 0x0

    .line 3663
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_1a
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v5, :cond_5b

    .line 3664
    const-string v0, "Able to get BSH class handle"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3666
    :try_start_25
    const-string v0, "isSupported"

    invoke-virtual {v5, v0, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_25 .. :try_end_2b} :catch_2d

    move-object v6, v0

    .line 3669
    goto :goto_34

    .line 3667
    :catch_2d
    move-exception v0

    .line 3668
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v13, "no BSH:isSupported method exists: gdm"

    invoke-static {v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_34
    :try_start_34
    new-array v0, v11, [Ljava/lang/Class;

    const-class v13, Landroid/content/Context;

    aput-object v13, v0, v10

    const-class v13, Landroid/bluetooth/BluetoothProfile$ServiceListener;

    aput-object v13, v0, v9

    .line 3672
    invoke-virtual {v5, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_42
    .catch Ljava/lang/NoSuchMethodException; {:try_start_34 .. :try_end_42} :catch_44

    move-object v7, v0

    .line 3677
    goto :goto_5b

    .line 3675
    :catch_44
    move-exception v0

    .line 3676
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bshCons: NoSuchMethodException: gdm"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_5b
    :goto_5b
    if-eqz v5, :cond_cd

    if-eqz v6, :cond_cd

    if-eqz v7, :cond_cd

    .line 3681
    :try_start_61
    invoke-virtual {v6, v12, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_6b
    .catch Ljava/lang/IllegalAccessException; {:try_start_61 .. :try_end_6b} :catch_74
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_61 .. :try_end_6b} :catch_6d

    move v4, v0

    .line 3686
    :goto_6c
    goto :goto_7b

    .line 3684
    :catch_6d
    move-exception v0

    .line 3685
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v12, "BSH:isSupported InvocationTargetException"

    invoke-static {v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 3682
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_74
    move-exception v0

    .line 3683
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v12, "BSH:isSupported IllegalAccessException"

    invoke-static {v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_6c

    .line 3687
    :goto_7b
    if-eqz v4, :cond_cd

    .line 3689
    :try_start_7d
    new-array v0, v11, [Ljava/lang/Object;

    aput-object p1, v0, v10

    aput-object p2, v0, v9

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_87
    .catch Ljava/lang/InstantiationException; {:try_start_7d .. :try_end_87} :catch_b7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7d .. :try_end_87} :catch_a1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7d .. :try_end_87} :catch_89

    move-object v8, v0

    .line 3697
    :goto_88
    goto :goto_cd

    .line 3695
    :catch_89
    move-exception v0

    .line 3696
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bshCons InvocationTargetException:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    .line 3693
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_a1
    move-exception v0

    .line 3694
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    goto :goto_88

    .line 3691
    :catch_b7
    move-exception v0

    .line 3692
    .local v0, "ex":Ljava/lang/InstantiationException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/InstantiationException;
    goto :goto_88

    .line 3700
    :cond_cd
    :goto_cd
    if-nez v8, :cond_d0

    .line 3701
    const/4 v3, 0x0

    .line 3703
    :cond_d0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBCService returns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3704
    return v3
.end method

.method private blacklist getBroadcastProfile(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)Z
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 4052
    const-string v0, "BluetoothAdapter"

    const/4 v1, 0x1

    .line 4053
    .local v1, "ret":Z
    const/4 v2, 0x0

    .line 4054
    .local v2, "broadcastClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 4055
    .local v3, "bcastConstructor":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x0

    .line 4057
    .local v4, "broadcastObj":Ljava/lang/Object;
    :try_start_6
    const-string v5, "android.bluetooth.BluetoothBroadcast"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_c} :catch_e

    move-object v2, v5

    .line 4060
    goto :goto_15

    .line 4058
    :catch_e
    move-exception v5

    .line 4059
    .local v5, "ex":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v6, "no BluetoothBroadcast: exists"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4061
    .end local v5    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_15
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_41

    .line 4063
    :try_start_1a
    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v7

    const-class v9, Landroid/bluetooth/BluetoothProfile$ServiceListener;

    aput-object v9, v8, v6

    .line 4064
    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1a .. :try_end_28} :catch_2a

    move-object v3, v0

    .line 4068
    goto :goto_41

    .line 4066
    :catch_2a
    move-exception v8

    .line 4067
    .local v8, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bcastConstructor: NoSuchMethodException: gdm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4070
    .end local v8    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_41
    :goto_41
    if-eqz v3, :cond_53

    .line 4072
    :try_start_43
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v7

    aput-object p2, v0, v6

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4d
    .catch Ljava/lang/InstantiationException; {:try_start_43 .. :try_end_4d} :catch_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_43 .. :try_end_4d} :catch_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_43 .. :try_end_4d} :catch_4f

    move-object v4, v0

    .line 4076
    goto :goto_53

    .line 4073
    :catch_4f
    move-exception v0

    .line 4075
    .local v0, "ex":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 4078
    .end local v0    # "ex":Ljava/lang/ReflectiveOperationException;
    :cond_53
    :goto_53
    if-nez v4, :cond_56

    .line 4079
    return v7

    .line 4081
    :cond_56
    return v6
.end method

.method private blacklist getCSProfile(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)Z
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sl"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 3737
    const-string v1, "csCons InstantiationException:"

    const/4 v2, 0x1

    .line 3738
    .local v2, "ret":Z
    const/4 v3, 0x0

    .line 3739
    .local v3, "isProfileSupported":Z
    const/4 v4, 0x0

    .line 3740
    .local v4, "csClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 3741
    .local v5, "csSupported":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    .line 3742
    .local v6, "csCons":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x0

    .line 3744
    .local v7, "csObj":Ljava/lang/Object;
    const-string v8, "BluetoothAdapter"

    const-string v0, "getCSProfile enters"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    :try_start_f
    const-string v0, "android.bluetooth.BluetoothCsClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_15} :catch_17

    .line 3750
    .end local v4    # "csClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "csClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v4, v0

    goto :goto_1f

    .line 3747
    .end local v0    # "csClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "csClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_17
    move-exception v0

    .line 3748
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v9, "no CS: exists"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    const/4 v4, 0x0

    .line 3751
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_1f
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v4, :cond_60

    .line 3752
    const-string v0, "Able to get Cs class handle"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3754
    :try_start_2a
    const-string v0, "isSupported"

    invoke-virtual {v4, v0, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2a .. :try_end_30} :catch_32

    move-object v5, v0

    .line 3757
    goto :goto_39

    .line 3755
    :catch_32
    move-exception v0

    .line 3756
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v13, "no CS:isSupported method exists: gdm"

    invoke-static {v8, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_39
    :try_start_39
    new-array v0, v11, [Ljava/lang/Class;

    const-class v13, Landroid/content/Context;

    aput-object v13, v0, v10

    const-class v13, Landroid/bluetooth/BluetoothProfile$ServiceListener;

    aput-object v13, v0, v9

    .line 3760
    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_47
    .catch Ljava/lang/NoSuchMethodException; {:try_start_39 .. :try_end_47} :catch_49

    move-object v6, v0

    .line 3765
    goto :goto_60

    .line 3763
    :catch_49
    move-exception v0

    .line 3764
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "csCons: NoSuchMethodException: gdm"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_60
    :goto_60
    if-eqz v4, :cond_d2

    if-eqz v5, :cond_d2

    if-eqz v6, :cond_d2

    .line 3769
    :try_start_66
    invoke-virtual {v5, v12, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_70
    .catch Ljava/lang/IllegalAccessException; {:try_start_66 .. :try_end_70} :catch_79
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_66 .. :try_end_70} :catch_72

    move v3, v0

    .line 3774
    :goto_71
    goto :goto_80

    .line 3772
    :catch_72
    move-exception v0

    .line 3773
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v12, "CS:isSupported InvocationTargetException"

    invoke-static {v8, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 3770
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_79
    move-exception v0

    .line 3771
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v12, "CS:isSupported IllegalAccessException"

    invoke-static {v8, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_71

    .line 3775
    :goto_80
    if-eqz v3, :cond_d2

    .line 3777
    :try_start_82
    new-array v0, v11, [Ljava/lang/Object;

    aput-object p1, v0, v10

    aput-object p2, v0, v9

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8c
    .catch Ljava/lang/InstantiationException; {:try_start_82 .. :try_end_8c} :catch_bc
    .catch Ljava/lang/IllegalAccessException; {:try_start_82 .. :try_end_8c} :catch_a6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_82 .. :try_end_8c} :catch_8e

    move-object v7, v0

    .line 3785
    :goto_8d
    goto :goto_d2

    .line 3783
    :catch_8e
    move-exception v0

    .line 3784
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "csCons InvocationTargetException:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    .line 3781
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_a6
    move-exception v0

    .line 3782
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    goto :goto_8d

    .line 3779
    :catch_bc
    move-exception v0

    .line 3780
    .local v0, "ex":Ljava/lang/InstantiationException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/InstantiationException;
    goto :goto_8d

    .line 3788
    :cond_d2
    :goto_d2
    if-nez v7, :cond_d5

    .line 3789
    const/4 v2, 0x0

    .line 3791
    :cond_d5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCSProfile returns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3792
    return v2
.end method

.method public static declared-synchronized whitelist getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/bluetooth/BluetoothAdapter;

    monitor-enter v0

    .line 972
    :try_start_3
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_11

    .line 973
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->createAdapter(Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    sput-object v1, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 975
    :cond_11
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object v1

    .line 971
    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private blacklist getStateInternal()I
    .registers 5

    .line 1320
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1322
    :try_start_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_23

    .line 1323
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothGetStateCache:Landroid/os/IpcDataCache;

    invoke-virtual {v1, v0}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_19} :catch_30
    .catchall {:try_start_9 .. :try_end_19} :catchall_2e

    .line 1332
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1323
    return v0

    .line 1332
    :cond_23
    nop

    :goto_24
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1333
    goto :goto_6f

    .line 1332
    :catchall_2e
    move-exception v0

    goto :goto_72

    .line 1325
    :catch_30
    move-exception v0

    .line 1326
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_31
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/util/concurrent/TimeoutException;

    if-nez v1, :cond_44

    .line 1327
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/RemoteException;

    if-eqz v1, :cond_42

    goto :goto_44

    .line 1328
    :cond_42
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    throw v0

    .line 1330
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    :cond_44
    :goto_44
    const-string v1, "BluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_31 .. :try_end_6d} :catchall_2e

    .line 1332
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_24

    .line 1334
    :goto_6f
    const/16 v0, 0xa

    return v0

    .line 1332
    :goto_72
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1333
    throw v0
.end method

.method public static blacklist invalidateBluetoothGetStateCache()V
    .registers 1

    .line 1312
    const-string v0, "BluetoothAdapter_getState"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->invalidateCache(Ljava/lang/String;)V

    .line 1313
    return-void
.end method

.method private static blacklist invalidateCache(Ljava/lang/String;)V
    .registers 2
    .param p0, "api"    # Ljava/lang/String;

    .line 1279
    const-string v0, "bluetooth"

    invoke-static {v0, p0}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    return-void
.end method

.method public static blacklist invalidateGetAdapterConnectionStateCache()V
    .registers 1

    .line 3053
    const-string v0, "BluetoothAdapter_getConnectionState"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->invalidateCache(Ljava/lang/String;)V

    .line 3054
    return-void
.end method

.method public static blacklist invalidateGetProfileConnectionStateCache()V
    .registers 1

    .line 3122
    const-string v0, "BluetoothAdapter_getProfileConnectionState"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->invalidateCache(Ljava/lang/String;)V

    .line 3123
    return-void
.end method

.method public static blacklist invalidateIsOffloadedFilteringSupportedCache()V
    .registers 1

    .line 2486
    const-string v0, "BluetoothAdapter_isOffloadedFilteringSupported"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->invalidateCache(Ljava/lang/String;)V

    .line 2487
    return-void
.end method

.method public static blacklist isAddressRandomStatic(Ljava/lang/String;)Z
    .registers 4
    .param p0, "address"    # Ljava/lang/String;

    .line 4548
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4549
    invoke-static {p0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 4550
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xc0

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 4549
    :goto_20
    return v1
.end method

.method private blacklist isHearingAidProfileSupported()Z
    .registers 4

    .line 2800
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isHearingAidProfileSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2801
    :catch_7
    move-exception v0

    .line 2802
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string/jumbo v2, "remote exception when calling isHearingAidProfileSupported"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2803
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic blacklist lambda$addOnMetadataChangedListener$0(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Landroid/util/Pair;)Z
    .registers 3
    .param p0, "listener"    # Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    .param p1, "pair"    # Landroid/util/Pair;

    .line 5013
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$removeOnMetadataChangedListener$1(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Landroid/util/Pair;)Z
    .registers 3
    .param p0, "listener"    # Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    .param p1, "pair"    # Landroid/util/Pair;

    .line 5080
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist nameForState(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 294
    packed-switch p0, :pswitch_data_32

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?!?!? ("

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

    .line 308
    :pswitch_1d
    const-string v0, "BLE_TURNING_OFF"

    return-object v0

    .line 306
    :pswitch_20
    const-string v0, "BLE_ON"

    return-object v0

    .line 304
    :pswitch_23
    const-string v0, "BLE_TURNING_ON"

    return-object v0

    .line 302
    :pswitch_26
    const-string v0, "TURNING_OFF"

    return-object v0

    .line 300
    :pswitch_29
    const-string v0, "ON"

    return-object v0

    .line 298
    :pswitch_2c
    const-string v0, "TURNING_ON"

    return-object v0

    .line 296
    :pswitch_2f
    const-string v0, "OFF"

    return-object v0

    :pswitch_data_32
    .packed-switch 0xa
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist priorityToConnectionPolicy(I)I
    .registers 4
    .param p0, "priority"    # I

    .line 5334
    const/16 v0, 0x64

    const/4 v1, -0x1

    sparse-switch p0, :sswitch_data_26

    .line 5344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPriority: Invalid priority: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BluetoothAdapter"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5345
    return v1

    .line 5336
    :sswitch_20
    return v0

    .line 5338
    :sswitch_21
    return v0

    .line 5340
    :sswitch_22
    const/4 v0, 0x0

    return v0

    .line 5342
    :sswitch_24
    return v1

    nop

    :sswitch_data_26
    .sparse-switch
        -0x1 -> :sswitch_24
        0x0 -> :sswitch_22
        0x64 -> :sswitch_21
        0x3e8 -> :sswitch_20
    .end sparse-switch
.end method

.method private blacklist registerOrUnregisterAdapterLocked()V
    .registers 5

    .line 4609
    sget-boolean v0, Landroid/bluetooth/BluetoothAdapter;->sServiceRegistered:Z

    .line 4610
    .local v0, "isRegistered":Z
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sProxyServiceStateCallbacks:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 4612
    .local v1, "wantRegistered":Z
    if-eq v0, v1, :cond_33

    .line 4613
    if-eqz v1, :cond_1f

    .line 4615
    :try_start_e
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    sget-object v3, Landroid/bluetooth/BluetoothAdapter;->sManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothManager;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    sput-object v2, Landroid/bluetooth/BluetoothAdapter;->sService:Landroid/bluetooth/IBluetooth;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19

    .line 4618
    goto :goto_2a

    .line 4616
    :catch_19
    move-exception v2

    .line 4617
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 4621
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    sget-object v3, Landroid/bluetooth/BluetoothAdapter;->sManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V

    .line 4622
    const/4 v2, 0x0

    sput-object v2, Landroid/bluetooth/BluetoothAdapter;->sService:Landroid/bluetooth/IBluetooth;
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_29} :catch_2d

    .line 4625
    nop

    .line 4627
    :goto_2a
    sput-boolean v1, Landroid/bluetooth/BluetoothAdapter;->sServiceRegistered:Z

    goto :goto_33

    .line 4623
    :catch_2d
    move-exception v2

    .line 4624
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 4629
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_33
    :goto_33
    return-void
.end method

.method private blacklist toDeviceSet(Ljava/util/List;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 4482
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4483
    .local v0, "deviceSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist addOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z
    .registers 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4987
    const-string v0, "BluetoothAdapter"

    const-string v1, "addOnMetadataChangedListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4989
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    .line 4990
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 4991
    const-string v2, "BluetoothAdapter"

    const-string v3, "Bluetooth is not enabled. Cannot register metadata listener"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4992
    return v1

    .line 4994
    :cond_14
    if-eqz p3, :cond_e7

    .line 4997
    if-eqz p1, :cond_df

    .line 5000
    if-eqz p2, :cond_d7

    .line 5004
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    monitor-enter v2

    .line 5005
    :try_start_1d
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    .line 5006
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 5007
    .local v3, "listenerList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Ljava/util/concurrent/Executor;>;>;"
    if-nez v3, :cond_33

    .line 5009
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 5010
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 5013
    :cond_33
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, p3}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-nez v4, :cond_cc

    .line 5019
    :goto_42
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5020
    .local v4, "listenerPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catchall {:try_start_1d .. :try_end_4a} :catchall_d4

    .line 5022
    const/4 v5, 0x0

    .line 5024
    .local v5, "ret":Z
    :try_start_4b
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v6

    .line 5025
    .local v6, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v7, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothMetadataListener:Landroid/bluetooth/IBluetoothMetadataListener;

    iget-object v8, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v7, p1, v8, v6}, Landroid/bluetooth/IBluetooth;->registerMetadataListener(Landroid/bluetooth/IBluetoothMetadataListener;Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 5027
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_6c} :catch_80
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4b .. :try_end_6c} :catch_80
    .catchall {:try_start_4b .. :try_end_6c} :catchall_7e

    move v5, v1

    .line 5031
    .end local v6    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    if-nez v5, :cond_b8

    .line 5033
    :try_start_6f
    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5034
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 5036
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    :goto_7a
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7d
    .catchall {:try_start_6f .. :try_end_7d} :catchall_d4

    goto :goto_b8

    .line 5031
    :catchall_7e
    move-exception v1

    goto :goto_ba

    .line 5028
    :catch_80
    move-exception v1

    .line 5029
    .local v1, "e":Ljava/lang/Exception;
    :try_start_81
    const-string v6, "BluetoothAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_81 .. :try_end_aa} :catchall_7e

    .line 5031
    .end local v1    # "e":Ljava/lang/Exception;
    if-nez v5, :cond_b8

    .line 5033
    :try_start_ac
    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5034
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 5036
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    goto :goto_7a

    .line 5040
    :cond_b8
    :goto_b8
    monitor-exit v2

    return v5

    .line 5031
    :goto_ba
    if-nez v5, :cond_ca

    .line 5033
    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5034
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 5036
    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5039
    :cond_ca
    nop

    .end local v0    # "service":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    throw v1

    .line 5014
    .end local v4    # "listenerPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Ljava/util/concurrent/Executor;>;"
    .end local v5    # "ret":Z
    .restart local v0    # "service":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    :cond_cc
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "listener was already regestered for the device"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "service":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    throw v1

    .line 5041
    .end local v3    # "listenerList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Ljava/util/concurrent/Executor;>;>;"
    .restart local v0    # "service":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    :catchall_d4
    move-exception v1

    monitor-exit v2
    :try_end_d6
    .catchall {:try_start_ac .. :try_end_d6} :catchall_d4

    throw v1

    .line 5001
    :cond_d7
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "executor is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4998
    :cond_df
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "device is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4995
    :cond_e7
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "listener is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist btCmdGetFunctionCallmap(Z)V
    .registers 4
    .param p1, "isdump"    # Z

    .line 2789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btCmdGetFunctionCallmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    return-void
.end method

.method public whitelist cancelDiscovery()Z
    .registers 6

    .line 2188
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_a

    .line 2189
    return v1

    .line 2192
    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2193
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_42

    .line 2194
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 2195
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v0}, Landroid/bluetooth/IBluetooth;->cancelDiscovery(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2196
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_38} :catch_4f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_38} :catch_4f
    .catchall {:try_start_a .. :try_end_38} :catchall_4d

    .line 2201
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2196
    return v1

    .line 2201
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :cond_42
    nop

    :goto_43
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2202
    goto :goto_7b

    .line 2201
    :catchall_4d
    move-exception v0

    goto :goto_7c

    .line 2198
    :catch_4f
    move-exception v0

    .line 2199
    .local v0, "e":Ljava/lang/Exception;
    :try_start_50
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_50 .. :try_end_79} :catchall_4d

    .line 2201
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_43

    .line 2203
    :goto_7b
    return v1

    .line 2201
    :goto_7c
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2202
    throw v0
.end method

.method public greylist-max-o changeApplicationBluetoothState(ZLandroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)Z
    .registers 4
    .param p1, "on"    # Z
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    .line 4436
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clearBluetooth()Z
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1605
    const-string v0, "BluetoothAdapter"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1606
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    const/4 v3, 0x1

    if-eqz v2, :cond_4b

    .line 1607
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 1608
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v4, v5, v2}, Landroid/bluetooth/IBluetooth;->factoryReset(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1609
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4b

    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    if-eqz v4, :cond_4b

    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1611
    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetoothManager;->onFactoryReset(Landroid/content/AttributionSource;)Z

    move-result v4
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3e} :catch_64
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3e} :catch_64
    .catchall {:try_start_3 .. :try_end_3e} :catchall_62

    if-eqz v4, :cond_4b

    .line 1612
    nop

    .line 1620
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1612
    return v3

    .line 1615
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :cond_4b
    :try_start_4b
    const-string v2, "factoryReset(): Setting persist.bluetooth.factoryreset to retry later"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Landroid/sysprop/BluetoothProperties;->factory_reset(Ljava/lang/Boolean;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_57} :catch_64
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4b .. :try_end_57} :catch_64
    .catchall {:try_start_4b .. :try_end_57} :catchall_62

    .line 1620
    nop

    :goto_58
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1621
    goto :goto_8e

    .line 1620
    :catchall_62
    move-exception v0

    goto :goto_8f

    .line 1617
    :catch_64
    move-exception v2

    .line 1618
    .local v2, "e":Ljava/lang/Exception;
    :try_start_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_65 .. :try_end_8c} :catchall_62

    .line 1620
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_58

    .line 1622
    :goto_8e
    return v1

    .line 1620
    :goto_8f
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1621
    throw v0
.end method

.method public whitelist closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 4
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 3927
    if-nez p2, :cond_3

    .line 3928
    return-void

    .line 3931
    :cond_3
    packed-switch p1, :pswitch_data_da

    :pswitch_6
    goto/16 :goto_d8

    .line 4045
    :pswitch_8
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothAdapter;->closeCSProfile(Landroid/bluetooth/BluetoothProfile;)V

    goto/16 :goto_d8

    .line 4004
    :pswitch_d
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothAdapter;->closeBCProfile(Landroid/bluetooth/BluetoothProfile;)V

    .line 4005
    goto/16 :goto_d8

    .line 4023
    :pswitch_12
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothVcp;

    .line 4024
    .local v0, "vcp":Landroid/bluetooth/BluetoothVcp;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothVcp;->close()V

    .line 4025
    goto/16 :goto_d8

    .line 4001
    .end local v0    # "vcp":Landroid/bluetooth/BluetoothVcp;
    :pswitch_1a
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothAdapter;->closeBroadcastProfile(Landroid/bluetooth/BluetoothProfile;)V

    .line 4002
    goto/16 :goto_d8

    .line 4019
    :pswitch_1f
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothDeviceGroup;

    .line 4020
    .local v0, "groupClient":Landroid/bluetooth/BluetoothDeviceGroup;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->close()V

    .line 4021
    goto/16 :goto_d8

    .line 3961
    .end local v0    # "groupClient":Landroid/bluetooth/BluetoothDeviceGroup;
    :pswitch_27
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothDun;

    .line 3962
    .local v0, "dun":Landroid/bluetooth/BluetoothDun;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDun;->close()V

    .line 3963
    goto/16 :goto_d8

    .line 4040
    .end local v0    # "dun":Landroid/bluetooth/BluetoothDun;
    :pswitch_2f
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    .line 4042
    .local v0, "leAudioBroadcastAssistant":Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->close()V

    .line 4043
    goto/16 :goto_d8

    .line 3997
    .end local v0    # "leAudioBroadcastAssistant":Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    :pswitch_37
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothHapClient;

    .line 3998
    .local v0, "HapClient":Landroid/bluetooth/BluetoothHapClient;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHapClient;->close()V

    .line 3999
    goto/16 :goto_d8

    .line 4036
    .end local v0    # "HapClient":Landroid/bluetooth/BluetoothHapClient;
    :pswitch_3f
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothLeCallControl;

    .line 4037
    .local v0, "tbs":Landroid/bluetooth/BluetoothLeCallControl;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeCallControl;->close()V

    .line 4038
    goto/16 :goto_d8

    .line 4015
    .end local v0    # "tbs":Landroid/bluetooth/BluetoothLeCallControl;
    :pswitch_47
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothLeBroadcast;

    .line 4016
    .local v0, "leAudioBroadcast":Landroid/bluetooth/BluetoothLeBroadcast;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->close()V

    .line 4017
    goto/16 :goto_d8

    .line 4031
    .end local v0    # "leAudioBroadcast":Landroid/bluetooth/BluetoothLeBroadcast;
    :pswitch_4f
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothCsipSetCoordinator;

    .line 4033
    .local v0, "csipSetCoordinator":Landroid/bluetooth/BluetoothCsipSetCoordinator;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->close()V

    .line 4034
    goto/16 :goto_d8

    .line 4027
    .end local v0    # "csipSetCoordinator":Landroid/bluetooth/BluetoothCsipSetCoordinator;
    :pswitch_57
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothVolumeControl;

    .line 4028
    .local v0, "vcs":Landroid/bluetooth/BluetoothVolumeControl;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothVolumeControl;->close()V

    .line 4029
    goto/16 :goto_d8

    .line 4011
    .end local v0    # "vcs":Landroid/bluetooth/BluetoothVolumeControl;
    :pswitch_5f
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothLeAudio;

    .line 4012
    .local v0, "leAudio":Landroid/bluetooth/BluetoothLeAudio;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudio;->close()V

    .line 4013
    goto/16 :goto_d8

    .line 4007
    .end local v0    # "leAudio":Landroid/bluetooth/BluetoothLeAudio;
    :pswitch_67
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothHearingAid;

    .line 4008
    .local v0, "hearingAid":Landroid/bluetooth/BluetoothHearingAid;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHearingAid;->close()V

    .line 4009
    goto/16 :goto_d8

    .line 3993
    .end local v0    # "hearingAid":Landroid/bluetooth/BluetoothHearingAid;
    :pswitch_6f
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothHidDevice;

    .line 3994
    .local v0, "hidDevice":Landroid/bluetooth/BluetoothHidDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHidDevice;->close()V

    .line 3995
    goto :goto_d8

    .line 3989
    .end local v0    # "hidDevice":Landroid/bluetooth/BluetoothHidDevice;
    :pswitch_76
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothMapClient;

    .line 3990
    .local v0, "mapClient":Landroid/bluetooth/BluetoothMapClient;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothMapClient;->close()V

    .line 3991
    goto :goto_d8

    .line 3985
    .end local v0    # "mapClient":Landroid/bluetooth/BluetoothMapClient;
    :pswitch_7d
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothPbapClient;

    .line 3986
    .local v0, "pbapClient":Landroid/bluetooth/BluetoothPbapClient;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPbapClient;->close()V

    .line 3987
    goto :goto_d8

    .line 3977
    .end local v0    # "pbapClient":Landroid/bluetooth/BluetoothPbapClient;
    :pswitch_84
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClient;

    .line 3978
    .local v0, "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->close()V

    .line 3979
    goto :goto_d8

    .line 3945
    .end local v0    # "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    :pswitch_8b
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothAvrcpController;

    .line 3946
    .local v0, "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAvrcpController;->close()V

    .line 3947
    goto :goto_d8

    .line 3941
    .end local v0    # "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    :pswitch_92
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothA2dpSink;

    .line 3942
    .local v0, "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dpSink;->close()V

    .line 3943
    goto :goto_d8

    .line 3981
    .end local v0    # "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    :pswitch_99
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothSap;

    .line 3982
    .local v0, "sap":Landroid/bluetooth/BluetoothSap;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSap;->close()V

    .line 3983
    goto :goto_d8

    .line 3973
    .end local v0    # "sap":Landroid/bluetooth/BluetoothSap;
    :pswitch_a0
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothMap;

    .line 3974
    .local v0, "map":Landroid/bluetooth/BluetoothMap;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothMap;->close()V

    .line 3975
    goto :goto_d8

    .line 3969
    .end local v0    # "map":Landroid/bluetooth/BluetoothMap;
    :pswitch_a7
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothGattServer;

    .line 3970
    .local v0, "gattServer":Landroid/bluetooth/BluetoothGattServer;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattServer;->close()V

    .line 3971
    goto :goto_d8

    .line 3965
    .end local v0    # "gattServer":Landroid/bluetooth/BluetoothGattServer;
    :pswitch_ae
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    .line 3966
    .local v0, "gatt":Landroid/bluetooth/BluetoothGatt;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 3967
    goto :goto_d8

    .line 3957
    .end local v0    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :pswitch_b5
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothPbap;

    .line 3958
    .local v0, "pbap":Landroid/bluetooth/BluetoothPbap;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPbap;->close()V

    .line 3959
    goto :goto_d8

    .line 3953
    .end local v0    # "pbap":Landroid/bluetooth/BluetoothPbap;
    :pswitch_bc
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 3954
    .local v0, "pan":Landroid/bluetooth/BluetoothPan;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->close()V

    .line 3955
    goto :goto_d8

    .line 3949
    .end local v0    # "pan":Landroid/bluetooth/BluetoothPan;
    :pswitch_c3
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothHidHost;

    .line 3950
    .local v0, "iDev":Landroid/bluetooth/BluetoothHidHost;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHidHost;->close()V

    .line 3951
    goto :goto_d8

    .line 3937
    .end local v0    # "iDev":Landroid/bluetooth/BluetoothHidHost;
    :pswitch_ca
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothA2dp;

    .line 3938
    .local v0, "a2dp":Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->close()V

    .line 3939
    goto :goto_d8

    .line 3933
    .end local v0    # "a2dp":Landroid/bluetooth/BluetoothA2dp;
    :pswitch_d1
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothHeadset;

    .line 3934
    .local v0, "headset":Landroid/bluetooth/BluetoothHeadset;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->close()V

    .line 3935
    nop

    .line 4048
    .end local v0    # "headset":Landroid/bluetooth/BluetoothHeadset;
    :goto_d8
    return-void

    nop

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_ca
        :pswitch_6
        :pswitch_c3
        :pswitch_bc
        :pswitch_b5
        :pswitch_ae
        :pswitch_a7
        :pswitch_a0
        :pswitch_99
        :pswitch_92
        :pswitch_8b
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_84
        :pswitch_7d
        :pswitch_76
        :pswitch_6f
        :pswitch_6
        :pswitch_67
        :pswitch_5f
        :pswitch_57
        :pswitch_6
        :pswitch_4f
        :pswitch_47
        :pswitch_3f
        :pswitch_37
        :pswitch_2f
        :pswitch_6
        :pswitch_27
        :pswitch_1f
        :pswitch_1a
        :pswitch_12
        :pswitch_d
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist disable()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1505
    const/16 v0, 0x39

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1507
    :try_start_5
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothManager;->disable(Landroid/content/AttributionSource;Z)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    return v0

    .line 1508
    :catch_f
    move-exception v0

    .line 1509
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1511
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist disable(Z)Z
    .registers 5
    .param p1, "persist"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1529
    const/16 v0, 0x39

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1532
    :try_start_5
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothManager;->disable(Landroid/content/AttributionSource;Z)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e

    return v0

    .line 1533
    :catch_e
    move-exception v0

    .line 1534
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1536
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist disableBLE()Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1206
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isBleScanAlwaysAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1207
    return v1

    .line 1210
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, v3}, Landroid/bluetooth/IBluetoothManager;->disableBle(Landroid/content/AttributionSource;Landroid/os/IBinder;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 1211
    :catch_13
    move-exception v0

    .line 1212
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1214
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist disableBluetoothGetStateCache()V
    .registers 2

    .line 1307
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothGetStateCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0}, Landroid/os/IpcDataCache;->disableForCurrentProcess()V

    .line 1308
    return-void
.end method

.method public blacklist disableGetAdapterConnectionStateCache()V
    .registers 2

    .line 3048
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothGetAdapterConnectionStateCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0}, Landroid/os/IpcDataCache;->disableForCurrentProcess()V

    .line 3049
    return-void
.end method

.method public blacklist disableGetProfileConnectionStateCache()V
    .registers 2

    .line 3115
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mGetProfileConnectionStateCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0}, Landroid/os/IpcDataCache;->disableForCurrentProcess()V

    .line 3116
    return-void
.end method

.method public blacklist disableIsOffloadedFilteringSupportedCache()V
    .registers 2

    .line 2481
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothFilteringCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0}, Landroid/os/IpcDataCache;->disableForCurrentProcess()V

    .line 2482
    return-void
.end method

.method public whitelist enable()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1448
    const/16 v0, 0x38

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1449
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const-string v1, "BluetoothAdapter"

    if-eqz v0, :cond_23

    .line 1451
    const-string v0, "enable(): BT already enabled!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const-string/jumbo v0, "persist.sys.bluetooth_restricte_state"

    const-string v2, "false"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1455
    const/4 v0, 0x1

    return v0

    .line 1460
    :cond_23
    :try_start_23
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetoothManager;->enable(Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2b} :catch_2c

    return v0

    .line 1461
    :catch_2c
    move-exception v0

    .line 1462
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1464
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist enableBLE()Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1252
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isBleScanAlwaysAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1253
    return v1

    .line 1256
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, v3}, Landroid/bluetooth/IBluetoothManager;->enableBle(Landroid/content/AttributionSource;Landroid/os/IBinder;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 1257
    :catch_13
    move-exception v0

    .line 1258
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1261
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist enableNoAutoConnect()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4250
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const-string v1, "BluetoothAdapter"

    if-eqz v0, :cond_f

    .line 4252
    const-string v0, "enableNoAutoConnect(): BT already enabled!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    const/4 v0, 0x1

    return v0

    .line 4257
    :cond_f
    :try_start_f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetoothManager;->enableNoAutoConnect(Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_18

    return v0

    .line 4258
    :catch_18
    move-exception v0

    .line 4259
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4261
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r factoryReset()Z
    .registers 2

    .line 1638
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->clearBluetooth()Z

    move-result v0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4489
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->removeServiceStateCallback(Landroid/bluetooth/IBluetoothManagerCallback;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_a

    .line 4491
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4492
    nop

    .line 4493
    return-void

    .line 4491
    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4492
    throw v0
.end method

.method public whitelist generateLocalOobData(ILjava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OobDataCallback;)V
    .registers 9
    .param p1, "transport"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/bluetooth/BluetoothAdapter$OobDataCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4383
    const/4 v0, 0x1

    if-eq p1, v0, :cond_26

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    goto :goto_26

    .line 4385
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid transport \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4387
    :cond_26
    :goto_26
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4388
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const-string v2, "BluetoothAdapter"

    if-nez v1, :cond_3a

    .line 4389
    const-string v1, "generateLocalOobData(): Adapter isn\'t enabled!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4390
    invoke-interface {p3, v0}, Landroid/bluetooth/BluetoothAdapter$OobDataCallback;->onError(I)V

    goto :goto_80

    .line 4393
    :cond_3a
    :try_start_3a
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 4394
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    new-instance v3, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;

    invoke-direct {v3, p0, p3, p2}, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$OobDataCallback;Ljava/util/concurrent/Executor;)V

    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, v3, v4, v0}, Landroid/bluetooth/IBluetooth;->generateLocalOobData(ILandroid/bluetooth/IBluetoothOobDataCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 4396
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_56} :catch_58
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3a .. :try_end_56} :catch_58

    .line 4399
    nop

    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_80

    .line 4397
    :catch_58
    move-exception v0

    .line 4398
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_80
    return-void
.end method

.method public whitelist getActiveDevices(I)Ljava/util/List;
    .registers 6
    .param p1, "profile"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 2379
    const-string v0, "BluetoothAdapter"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1e

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1e

    const/16 v1, 0x15

    if-eq p1, v1, :cond_1e

    const/16 v1, 0x16

    if-ne p1, v1, :cond_11

    goto :goto_1e

    .line 2383
    :cond_11
    const-string v1, "Invalid profile param value in getActiveDevices"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Profiles must be one of BluetoothProfile.A2DP, BluetoothProfile.HEARING_AID, orBluetoothProfile.HEARING_AIDBluetoothProfile.LE_AUDIO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2391
    :cond_1e
    :goto_1e
    :try_start_1e
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2392
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_73

    .line 2394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveDevices(profile= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2395
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2394
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 2399
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3, v1}, Landroid/bluetooth/IBluetooth;->getActiveDevices(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2400
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_69} :catch_80
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1e .. :try_end_69} :catch_80
    .catchall {:try_start_1e .. :try_end_69} :catchall_7e

    .line 2405
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2400
    return-object v2

    .line 2405
    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    :cond_73
    nop

    :goto_74
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2406
    goto :goto_aa

    .line 2405
    :catchall_7e
    move-exception v0

    goto :goto_b0

    .line 2402
    :catch_80
    move-exception v1

    .line 2403
    .local v1, "e":Ljava/lang/Exception;
    :try_start_81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_81 .. :try_end_a8} :catchall_7e

    .line 2405
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_74

    .line 2408
    :goto_aa
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 2405
    :goto_b0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2406
    throw v0
.end method

.method public whitelist getAddress()Ljava/lang/String;
    .registers 4

    .line 1552
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->getAddress(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 1553
    :catch_9
    move-exception v0

    .line 1554
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1556
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    .line 4563
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    return-object v0
.end method

.method public greylist-max-o getBluetoothClass()Landroid/bluetooth/BluetoothClass;
    .registers 6

    .line 1731
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_a

    .line 1732
    return-object v1

    .line 1735
    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1736
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_3a

    .line 1738
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1739
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/bluetooth/BluetoothClass;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v0}, Landroid/bluetooth/IBluetooth;->getBluetoothClass(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1740
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothClass;
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_30} :catch_47
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_30} :catch_47
    .catchall {:try_start_a .. :try_end_30} :catchall_45

    .line 1745
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1740
    return-object v2

    .line 1745
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/bluetooth/BluetoothClass;>;"
    :cond_3a
    nop

    :goto_3b
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1746
    goto :goto_73

    .line 1745
    :catchall_45
    move-exception v0

    goto :goto_74

    .line 1742
    :catch_47
    move-exception v0

    .line 1743
    .local v0, "e":Ljava/lang/Exception;
    :try_start_48
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_48 .. :try_end_71} :catchall_45

    .line 1745
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3b

    .line 1747
    :goto_73
    return-object v1

    .line 1745
    :goto_74
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1746
    throw v0
.end method

.method public whitelist getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .registers 3

    .line 1088
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1089
    const/4 v0, 0x0

    return-object v0

    .line 1091
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1092
    :try_start_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-nez v1, :cond_16

    .line 1093
    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 1095
    :cond_16
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    monitor-exit v0

    return-object v1

    .line 1096
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;
    .registers 3

    .line 1132
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1133
    const/4 v0, 0x0

    return-object v0

    .line 1135
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1136
    :try_start_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_16

    .line 1137
    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/BluetoothLeScanner;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 1139
    :cond_16
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    monitor-exit v0

    return-object v1

    .line 1140
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public greylist getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    .registers 2

    .line 4557
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    return-object v0
.end method

.method blacklist getBluetoothService()Landroid/bluetooth/IBluetooth;
    .registers 3

    .line 4571
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4572
    :try_start_3
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sService:Landroid/bluetooth/IBluetooth;

    monitor-exit v0

    return-object v1

    .line 4573
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method blacklist getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .registers 5
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .line 4586
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4587
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4588
    :try_start_6
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sProxyServiceStateCallbacks:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4589
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter;->registerOrUnregisterAdapterLocked()V

    .line 4590
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sService:Landroid/bluetooth/IBluetooth;

    monitor-exit v0

    return-object v1

    .line 4591
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist getBondedDevices()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 2954
    const/16 v0, 0x3d

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 2955
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_19

    .line 2956
    new-array v0, v1, [Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 2959
    :cond_19
    :try_start_19
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2960
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_59

    .line 2962
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 2963
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, v0}, Landroid/bluetooth/IBluetooth;->getBondedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2964
    nop

    .line 2965
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2964
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_4f} :catch_6f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_19 .. :try_end_4f} :catch_6f
    .catchall {:try_start_19 .. :try_end_4f} :catchall_6d

    .line 2972
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2964
    return-object v1

    .line 2968
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    :cond_59
    :try_start_59
    new-array v0, v1, [Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_63} :catch_6f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_59 .. :try_end_63} :catch_6f
    .catchall {:try_start_59 .. :try_end_63} :catchall_6d

    .line 2972
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2968
    return-object v0

    .line 2972
    :catchall_6d
    move-exception v0

    goto :goto_a6

    .line 2969
    :catch_6f
    move-exception v0

    .line 2970
    .local v0, "e":Ljava/lang/Exception;
    :try_start_70
    const-string v1, "BluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_70 .. :try_end_99} :catchall_6d

    .line 2972
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2973
    nop

    .line 2974
    const/4 v0, 0x0

    return-object v0

    .line 2972
    :goto_a6
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2973
    throw v0
.end method

.method public whitelist getConnectionState()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3070
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_a

    .line 3071
    return v1

    .line 3073
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3075
    :try_start_13
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_2d

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothGetAdapterConnectionStateCache:Landroid/os/IpcDataCache;

    invoke-virtual {v2, v0}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_23} :catch_3a
    .catchall {:try_start_13 .. :try_end_23} :catchall_38

    .line 3083
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3075
    return v0

    .line 3083
    :cond_2d
    nop

    :goto_2e
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3084
    goto :goto_79

    .line 3083
    :catchall_38
    move-exception v0

    goto :goto_7a

    .line 3076
    :catch_3a
    move-exception v0

    .line 3077
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3b
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/util/concurrent/TimeoutException;

    if-nez v2, :cond_4e

    .line 3078
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Landroid/os/RemoteException;

    if-eqz v2, :cond_4c

    goto :goto_4e

    .line 3079
    :cond_4c
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    throw v0

    .line 3081
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    :cond_4e
    :goto_4e
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_3b .. :try_end_77} :catchall_38

    .line 3083
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_2e

    .line 3085
    :goto_79
    return v1

    .line 3083
    :goto_7a
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3084
    throw v0
.end method

.method public whitelist getDiscoverableTimeout()Ljava/time/Duration;
    .registers 8

    .line 2016
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_a

    .line 2017
    return-object v1

    .line 2020
    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2021
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_4d

    .line 2022
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 2023
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Long;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v0}, Landroid/bluetooth/IBluetooth;->getDiscoverableTimeout(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2024
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2025
    .local v5, "timeout":J
    cmp-long v2, v5, v3

    if-nez v2, :cond_3f

    goto :goto_43

    :cond_3f
    invoke-static {v5, v6}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1
    :try_end_43
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_43} :catch_60
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_43} :catch_5a
    .catchall {:try_start_a .. :try_end_43} :catchall_58

    .line 2032
    :goto_43
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2025
    return-object v1

    .line 2032
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Long;>;"
    .end local v5    # "timeout":J
    :cond_4d
    nop

    :goto_4e
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2033
    goto :goto_8c

    .line 2032
    :catchall_58
    move-exception v0

    goto :goto_8d

    .line 2029
    :catch_5a
    move-exception v0

    .line 2030
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5b
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    throw v1

    .line 2027
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    :catch_60
    move-exception v0

    .line 2028
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_5b .. :try_end_8a} :catchall_58

    .line 2032
    nop

    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_4e

    .line 2034
    :goto_8c
    return-object v1

    .line 2032
    :goto_8d
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2033
    throw v0
.end method

.method public whitelist getDiscoveryEndMillis()J
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2100
    const-wide/16 v0, -0x1

    :try_start_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2101
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_3a

    .line 2102
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 2103
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Long;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, v4, v2}, Landroid/bluetooth/IBluetooth;->getDiscoveryEndMillis(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2104
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_30} :catch_47
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_30} :catch_47
    .catchall {:try_start_2 .. :try_end_30} :catchall_45

    .line 2109
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2104
    return-wide v0

    .line 2109
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Long;>;"
    :cond_3a
    nop

    :goto_3b
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2110
    goto :goto_73

    .line 2109
    :catchall_45
    move-exception v0

    goto :goto_74

    .line 2106
    :catch_47
    move-exception v2

    .line 2107
    .local v2, "e":Ljava/lang/Exception;
    :try_start_48
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_48 .. :try_end_71} :catchall_45

    .line 2109
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_3b

    .line 2111
    :goto_73
    return-wide v0

    .line 2109
    :goto_74
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2110
    throw v0
.end method

.method public blacklist getIoCapability()I
    .registers 6

    .line 1799
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xff

    const/16 v2, 0xc

    if-eq v0, v2, :cond_b

    return v1

    .line 1801
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1802
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_43

    .line 1804
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1805
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v0}, Landroid/bluetooth/IBluetooth;->getIoCapability(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1806
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    .line 1807
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_39} :catch_50
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_39} :catch_50
    .catchall {:try_start_b .. :try_end_39} :catchall_4e

    .line 1812
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1806
    return v1

    .line 1812
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :cond_43
    nop

    :goto_44
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1813
    goto :goto_7c

    .line 1812
    :catchall_4e
    move-exception v0

    goto :goto_7d

    .line 1809
    :catch_50
    move-exception v0

    .line 1810
    .local v0, "e":Ljava/lang/Exception;
    :try_start_51
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_51 .. :try_end_7a} :catchall_4e

    .line 1812
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_44

    .line 1814
    :goto_7c
    return v1

    .line 1812
    :goto_7d
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1813
    throw v0
.end method

.method greylist-max-o getLeAccess()Z
    .registers 4

    .line 1398
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-ne v0, v2, :cond_a

    .line 1399
    return v1

    .line 1400
    :cond_a
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_13

    .line 1401
    return v1

    .line 1404
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLeIoCapability()I
    .registers 6

    .line 1866
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xff

    const/16 v2, 0xc

    if-eq v0, v2, :cond_b

    return v1

    .line 1868
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1869
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_43

    .line 1870
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1871
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v0}, Landroid/bluetooth/IBluetooth;->getLeIoCapability(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1872
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    .line 1873
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_39} :catch_50
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_39} :catch_50
    .catchall {:try_start_b .. :try_end_39} :catchall_4e

    .line 1878
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1872
    return v1

    .line 1878
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :cond_43
    nop

    :goto_44
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1879
    goto :goto_7c

    .line 1878
    :catchall_4e
    move-exception v0

    goto :goto_7d

    .line 1875
    :catch_50
    move-exception v0

    .line 1876
    .local v0, "e":Ljava/lang/Exception;
    :try_start_51
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_51 .. :try_end_7a} :catchall_4e

    .line 1878
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_44

    .line 1880
    :goto_7c
    return v1

    .line 1878
    :goto_7d
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1879
    throw v0
.end method

.method public whitelist getLeMaximumAdvertisingDataLength()I
    .registers 6

    .line 2767
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2768
    return v1

    .line 2771
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2772
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_3e

    .line 2773
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 2774
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, v0}, Landroid/bluetooth/IBluetooth;->getLeMaximumAdvertisingDataLength(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2775
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_34} :catch_4b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_34} :catch_4b
    .catchall {:try_start_8 .. :try_end_34} :catchall_49

    .line 2780
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2775
    return v1

    .line 2780
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :cond_3e
    nop

    :goto_3f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2781
    goto :goto_77

    .line 2780
    :catchall_49
    move-exception v0

    goto :goto_78

    .line 2777
    :catch_4b
    move-exception v0

    .line 2778
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4c
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_4c .. :try_end_75} :catchall_49

    .line 2780
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3f

    .line 2782
    :goto_77
    return v1

    .line 2780
    :goto_78
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2781
    throw v0
.end method

.method public greylist getLeState()I
    .registers 2

    .line 1389
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter;->getStateInternal()I

    move-result v0

    .line 1394
    .local v0, "state":I
    return v0
.end method

.method public whitelist getMaxConnectedAudioDevices()I
    .registers 5

    .line 2818
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2819
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_39

    .line 2820
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 2821
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, v0}, Landroid/bluetooth/IBluetooth;->getMaxConnectedAudioDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2822
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2f} :catch_46
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_2f} :catch_46
    .catchall {:try_start_0 .. :try_end_2f} :catchall_44

    .line 2827
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2822
    return v1

    .line 2827
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :cond_39
    nop

    :goto_3a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2828
    goto :goto_72

    .line 2827
    :catchall_44
    move-exception v0

    goto :goto_74

    .line 2824
    :catch_46
    move-exception v0

    .line 2825
    .local v0, "e":Ljava/lang/Exception;
    :try_start_47
    const-string v1, "BluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_47 .. :try_end_70} :catchall_44

    .line 2827
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3a

    .line 2829
    :goto_72
    const/4 v0, -0x1

    return v0

    .line 2827
    :goto_74
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2828
    throw v0
.end method

.method public whitelist getMostRecentlyConnectedDevices()Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 2919
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_e

    .line 2920
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 2923
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2924
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_4a

    .line 2926
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 2927
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, v0}, Landroid/bluetooth/IBluetooth;->getMostRecentlyConnectedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2928
    nop

    .line 2929
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2928
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_40} :catch_57
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_40} :catch_57
    .catchall {:try_start_e .. :try_end_40} :catchall_55

    .line 2935
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2928
    return-object v1

    .line 2935
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    :cond_4a
    nop

    :goto_4b
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2936
    goto :goto_83

    .line 2935
    :catchall_55
    move-exception v0

    goto :goto_89

    .line 2932
    :catch_57
    move-exception v0

    .line 2933
    .local v0, "e":Ljava/lang/Exception;
    :try_start_58
    const-string v1, "BluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_58 .. :try_end_81} :catchall_55

    .line 2935
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_4b

    .line 2937
    :goto_83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 2935
    :goto_89
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2936
    throw v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 4

    .line 1570
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->getName(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 1571
    :catch_9
    move-exception v0

    .line 1572
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1574
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNameLengthForAdvertise()I
    .registers 5

    .line 1582
    const/4 v0, -0x1

    :try_start_1
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 1583
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v1}, Landroid/bluetooth/IBluetooth;->getNameLengthForAdvertise(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1584
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_22} :catch_23
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_22} :catch_23

    return v0

    .line 1585
    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_23
    move-exception v1

    .line 1586
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothAdapter"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public greylist-max-o getPeriodicAdvertisingManager()Landroid/bluetooth/le/PeriodicAdvertisingManager;
    .registers 3

    .line 1111
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1112
    return-object v1

    .line 1115
    :cond_8
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isLePeriodicAdvertisingSupported()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1116
    return-object v1

    .line 1119
    :cond_f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1120
    :try_start_12
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mPeriodicAdvertisingManager:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    if-nez v1, :cond_1d

    .line 1121
    new-instance v1, Landroid/bluetooth/le/PeriodicAdvertisingManager;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/PeriodicAdvertisingManager;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mPeriodicAdvertisingManager:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    .line 1123
    :cond_1d
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mPeriodicAdvertisingManager:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    monitor-exit v0

    return-object v1

    .line 1124
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist getProfileConnectionState(I)I
    .registers 7
    .param p1, "profile"    # I

    .line 3138
    const/16 v0, 0x40

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 3139
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_f

    .line 3140
    return v1

    .line 3142
    :cond_f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3144
    :try_start_18
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_3b

    .line 3145
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mGetProfileConnectionStateCache:Landroid/os/IpcDataCache;

    new-instance v3, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_31} :catch_48
    .catchall {:try_start_18 .. :try_end_31} :catchall_46

    .line 3154
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3145
    return v0

    .line 3154
    :cond_3b
    nop

    :goto_3c
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3155
    goto :goto_87

    .line 3154
    :catchall_46
    move-exception v0

    goto :goto_88

    .line 3147
    :catch_48
    move-exception v0

    .line 3148
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_49
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/util/concurrent/TimeoutException;

    if-nez v2, :cond_5c

    .line 3149
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Landroid/os/RemoteException;

    if-eqz v2, :cond_5a

    goto :goto_5c

    .line 3150
    :cond_5a
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "profile":I
    throw v0

    .line 3152
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "profile":I
    :cond_5c
    :goto_5c
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_49 .. :try_end_85} :catchall_46

    .line 3154
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_3c

    .line 3156
    :goto_87
    return v1

    .line 3154
    :goto_88
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3155
    throw v0
.end method

.method public whitelist getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "profile"    # I

    .line 3816
    const/4 v0, 0x0

    if-eqz p1, :cond_120

    if-nez p2, :cond_7

    goto/16 :goto_120

    .line 3820
    :cond_7
    const/4 v1, 0x1

    if-ne p3, v1, :cond_10

    .line 3821
    new-instance v0, Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {v0, p1, p2, p0}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 3822
    .local v0, "headset":Landroid/bluetooth/BluetoothHeadset;
    return v1

    .line 3823
    .end local v0    # "headset":Landroid/bluetooth/BluetoothHeadset;
    :cond_10
    const/4 v2, 0x2

    if-ne p3, v2, :cond_19

    .line 3824
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {v0, p1, p2, p0}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 3825
    .local v0, "a2dp":Landroid/bluetooth/BluetoothA2dp;
    return v1

    .line 3826
    .end local v0    # "a2dp":Landroid/bluetooth/BluetoothA2dp;
    :cond_19
    const/16 v2, 0xb

    if-ne p3, v2, :cond_23

    .line 3827
    new-instance v0, Landroid/bluetooth/BluetoothA2dpSink;

    invoke-direct {v0, p1, p2, p0}, Landroid/bluetooth/BluetoothA2dpSink;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 3828
    .local v0, "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    return v1

    .line 3829
    .end local v0    # "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    :cond_23
    const/16 v2, 0xc

    if-ne p3, v2, :cond_2d

    .line 3830
    new-instance v0, Landroid/bluetooth/BluetoothAvrcpController;

    invoke-direct {v0, p1, p2, p0}, Landroid/bluetooth/BluetoothAvrcpController;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 3831
    .local v0, "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    return v1

    .line 3832
    .end local v0    # "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    :cond_2d
    const/4 v2, 0x4

    if-ne p3, v2, :cond_36

    .line 3833
    new-instance v0, Landroid/bluetooth/BluetoothHidHost;

    invoke-direct {v0, p1, p2, p0}, Landroid/bluetooth/BluetoothHidHost;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 3834
    .local v0, "iDev":Landroid/bluetooth/BluetoothHidHost;
    return v1

    .line 3835
    .end local v0    # "iDev":Landroid/bluetooth/BluetoothHidHost;
    :cond_36
    const/4 v2, 0x5

    if-ne p3, v2, :cond_3f

    .line 3836
    new-instance v0, Landroid/bluetooth/BluetoothPan;

    invoke-direct {v0, p1, p2, p0}, Landroid/bluetooth/BluetoothPan;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 3837
    .local v0, "pan":Landroid/bluetooth/BluetoothPan;
    return v1

    .line 3838
    .end local v0    # "pan":Landroid/bluetooth/BluetoothPan;
    :cond_3f
    const/4 v2, 0x6

    if-ne p3, v2, :cond_48

    .line 3839
    new-instance v0, Landroid/bluetooth/BluetoothPbap;

    invoke-direct {v0, p1, p2, p0}, Landroid/bluetooth/BluetoothPbap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 3840
    .local v0, "pbap":Landroid/bluetooth/BluetoothPbap;
    return v1

    .line 3841
    .end local v0    # "pbap":Landroid/bluetooth/BluetoothPbap;
    :cond_48
    const/16 v2, 0x1f

    if-ne p3, v2, :cond_52

    .line 3842
    new-instance v0, Landroid/bluetooth/BluetoothDun;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothDun;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 3843
    .local v0, "dun":Landroid/bluetooth/BluetoothDun;
    return v1

    .line 3844
    .end local v0    # "dun":Landroid/bluetooth/BluetoothDun;
    :cond_52
    const/4 v2, 0x3

    if-ne p3, v2, :cond_5d

    .line 3845
    const-string v1, "BluetoothAdapter"

    const-string v2, "getProfileProxy(): BluetoothHealth is deprecated"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3846
    return v0

    .line 3847
    :cond_5d
    const/16 v2, 0x9

    if-ne p3, v2, :cond_67

    .line 3848
    new-instance v0, Landroid/bluetooth/BluetoothMap;

    invoke-direct {v0, p1, p2, p0}, Landroid/bluetooth/BluetoothMap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 3849
    .local v0, "map":Landroid/bluetooth/BluetoothMap;
    return v1

    .line 3850
    .end local v0    # "map":Landroid/bluetooth/BluetoothMap;
    :cond_67
    const/16 v2, 0x10

    if-ne p3, v2, :cond_71

    .line 3851
    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-direct {v0, p1, p2, p0}, Landroid/bluetooth/BluetoothHeadsetClient;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 3853
    .local v0, "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    return v1

    .line 3854
    .end local v0    # "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    :cond_71
    const/16 v2, 0xa

    if-ne p3, v2, :cond_7b

    .line 3855
    new-instance v0, Landroid/bluetooth/BluetoothSap;

    invoke-direct {v0, p1, p2, p0}, Landroid/bluetooth/BluetoothSap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 3856
    .local v0, "sap":Landroid/bluetooth/BluetoothSap;
    return v1

    .line 3857
    .end local v0    # "sap":Landroid/bluetooth/BluetoothSap;
    :cond_7b
    const/16 v2, 0x11

    if-ne p3, v2, :cond_85

    .line 3858
    new-instance v0, Landroid/bluetooth/BluetoothPbapClient;

    invoke-direct {v0, p1, p2, p0}, Landroid/bluetooth/BluetoothPbapClient;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 3859
    .local v0, "pbapClient":Landroid/bluetooth/BluetoothPbapClient;
    return v1

    .line 3860
    .end local v0    # "pbapClient":Landroid/bluetooth/BluetoothPbapClient;
    :cond_85
    const/16 v2, 0x12

    if-ne p3, v2, :cond_8f

    .line 3861
    new-instance v0, Landroid/bluetooth/BluetoothMapClient;

    invoke-direct {v0, p1, p2, p0}, Landroid/bluetooth/BluetoothMapClient;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 3862
    .local v0, "mapClient":Landroid/bluetooth/BluetoothMapClient;
    return v1

    .line 3863
    .end local v0    # "mapClient":Landroid/bluetooth/BluetoothMapClient;
    :cond_8f
    const/16 v2, 0x13

    if-ne p3, v2, :cond_99

    .line 3864
    new-instance v0, Landroid/bluetooth/BluetoothHidDevice;

    invoke-direct {v0, p1, p2, p0}, Landroid/bluetooth/BluetoothHidDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 3865
    .local v0, "hidDevice":Landroid/bluetooth/BluetoothHidDevice;
    return v1

    .line 3866
    .end local v0    # "hidDevice":Landroid/bluetooth/BluetoothHidDevice;
    :cond_99
    const/16 v2, 0x1c

    if-ne p3, v2, :cond_a3

    .line 3867
    new-instance v0, Landroid/bluetooth/BluetoothHapClient;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothHapClient;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 3868
    .local v0, "HapClient":Landroid/bluetooth/BluetoothHapClient;
    return v1

    .line 3869
    .end local v0    # "HapClient":Landroid/bluetooth/BluetoothHapClient;
    :cond_a3
    const/16 v2, 0x21

    if-ne p3, v2, :cond_ac

    .line 3870
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->getBroadcastProfile(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)Z

    move-result v0

    return v0

    .line 3871
    :cond_ac
    const/16 v2, 0x23

    if-ne p3, v2, :cond_b5

    .line 3872
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->getBCProfile(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)Z

    move-result v0

    return v0

    .line 3873
    :cond_b5
    const/16 v2, 0x15

    if-ne p3, v2, :cond_c6

    .line 3874
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter;->isHearingAidProfileSupported()Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 3875
    new-instance v0, Landroid/bluetooth/BluetoothHearingAid;

    invoke-direct {v0, p1, p2, p0}, Landroid/bluetooth/BluetoothHearingAid;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 3876
    .local v0, "hearingAid":Landroid/bluetooth/BluetoothHearingAid;
    return v1

    .line 3878
    .end local v0    # "hearingAid":Landroid/bluetooth/BluetoothHearingAid;
    :cond_c5
    return v0

    .line 3879
    :cond_c6
    const/16 v2, 0x20

    if-ne p3, v2, :cond_d0

    .line 3880
    new-instance v0, Landroid/bluetooth/BluetoothDeviceGroup;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothDeviceGroup;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 3881
    .local v0, "groupClient":Landroid/bluetooth/BluetoothDeviceGroup;
    return v1

    .line 3882
    .end local v0    # "groupClient":Landroid/bluetooth/BluetoothDeviceGroup;
    :cond_d0
    const/16 v2, 0x22

    if-ne p3, v2, :cond_da

    .line 3883
    new-instance v0, Landroid/bluetooth/BluetoothVcp;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothVcp;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 3884
    .local v0, "vcp":Landroid/bluetooth/BluetoothVcp;
    return v1

    .line 3885
    .end local v0    # "vcp":Landroid/bluetooth/BluetoothVcp;
    :cond_da
    const/16 v2, 0x16

    if-ne p3, v2, :cond_e4

    .line 3886
    new-instance v0, Landroid/bluetooth/BluetoothLeAudio;

    invoke-direct {v0, p1, p2, p0}, Landroid/bluetooth/BluetoothLeAudio;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 3887
    .local v0, "leAudio":Landroid/bluetooth/BluetoothLeAudio;
    return v1

    .line 3888
    .end local v0    # "leAudio":Landroid/bluetooth/BluetoothLeAudio;
    :cond_e4
    const/16 v2, 0x1a

    if-ne p3, v2, :cond_ee

    .line 3889
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 3890
    .local v0, "leAudio":Landroid/bluetooth/BluetoothLeBroadcast;
    return v1

    .line 3891
    .end local v0    # "leAudio":Landroid/bluetooth/BluetoothLeBroadcast;
    :cond_ee
    const/16 v2, 0x17

    if-ne p3, v2, :cond_f8

    .line 3892
    new-instance v0, Landroid/bluetooth/BluetoothVolumeControl;

    invoke-direct {v0, p1, p2, p0}, Landroid/bluetooth/BluetoothVolumeControl;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 3893
    .local v0, "vcs":Landroid/bluetooth/BluetoothVolumeControl;
    return v1

    .line 3894
    .end local v0    # "vcs":Landroid/bluetooth/BluetoothVolumeControl;
    :cond_f8
    const/16 v2, 0x19

    if-ne p3, v2, :cond_102

    .line 3895
    new-instance v0, Landroid/bluetooth/BluetoothCsipSetCoordinator;

    invoke-direct {v0, p1, p2, p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 3897
    .local v0, "csipSetCoordinator":Landroid/bluetooth/BluetoothCsipSetCoordinator;
    return v1

    .line 3898
    .end local v0    # "csipSetCoordinator":Landroid/bluetooth/BluetoothCsipSetCoordinator;
    :cond_102
    const/16 v2, 0x1b

    if-ne p3, v2, :cond_10c

    .line 3899
    new-instance v0, Landroid/bluetooth/BluetoothLeCallControl;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 3900
    .local v0, "tbs":Landroid/bluetooth/BluetoothLeCallControl;
    return v1

    .line 3901
    .end local v0    # "tbs":Landroid/bluetooth/BluetoothLeCallControl;
    :cond_10c
    const/16 v2, 0x1d

    if-ne p3, v2, :cond_116

    .line 3902
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 3904
    .local v0, "leAudioBroadcastAssistant":Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    return v1

    .line 3905
    .end local v0    # "leAudioBroadcastAssistant":Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    :cond_116
    const/16 v1, 0x27

    if-ne p3, v1, :cond_11f

    .line 3906
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->getCSProfile(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)Z

    move-result v0

    return v0

    .line 3908
    :cond_11f
    return v0

    .line 3817
    :cond_120
    :goto_120
    return v0
.end method

.method public whitelist getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .line 1027
    const/16 v0, 0x3e

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1028
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    .line 1029
    .local v0, "res":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setAttributionSource(Landroid/content/AttributionSource;)V

    .line 1030
    return-object v0
.end method

.method public whitelist getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;
    .registers 7
    .param p1, "address"    # [B

    .line 1067
    const/16 v0, 0x3e

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1068
    if-eqz p1, :cond_56

    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_56

    .line 1071
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-byte v4, p1, v3

    .line 1072
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aget-byte v4, p1, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aget-byte v4, p1, v3

    .line 1073
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x3

    aget-byte v4, p1, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x4

    aget-byte v4, p1, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x5

    aget-byte v4, p1, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1072
    const-string v3, "%02X:%02X:%02X:%02X:%02X:%02X"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v0, "res":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setAttributionSource(Landroid/content/AttributionSource;)V

    .line 1075
    return-object v0

    .line 1069
    .end local v0    # "res":Landroid/bluetooth/BluetoothDevice;
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bluetooth address must have 6 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRemoteLeDevice(Ljava/lang/String;I)Landroid/bluetooth/BluetoothDevice;
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "addressType"    # I

    .line 1049
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;I)V

    .line 1050
    .local v0, "res":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setAttributionSource(Landroid/content/AttributionSource;)V

    .line 1051
    return-object v0
.end method

.method public whitelist getScanMode()I
    .registers 6

    .line 1938
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0x14

    const/16 v2, 0xc

    if-eq v0, v2, :cond_b

    .line 1939
    return v1

    .line 1942
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1943
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_43

    .line 1944
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1945
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v0}, Landroid/bluetooth/IBluetooth;->getScanMode(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1946
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_39
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_39} :catch_56
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_39} :catch_50
    .catchall {:try_start_b .. :try_end_39} :catchall_4e

    .line 1953
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1946
    return v1

    .line 1953
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :cond_43
    nop

    :goto_44
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1954
    goto :goto_82

    .line 1953
    :catchall_4e
    move-exception v0

    goto :goto_83

    .line 1950
    :catch_50
    move-exception v0

    .line 1951
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_51
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    throw v1

    .line 1948
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    :catch_56
    move-exception v0

    .line 1949
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_51 .. :try_end_80} :catchall_4e

    .line 1953
    nop

    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_44

    .line 1955
    :goto_82
    return v1

    .line 1953
    :goto_83
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1954
    throw v0
.end method

.method public whitelist getState()I
    .registers 3

    .line 1350
    const/16 v0, 0x3f

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1351
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter;->getStateInternal()I

    move-result v0

    .line 1354
    .local v0, "state":I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_15

    const/16 v1, 0xe

    if-eq v0, v1, :cond_15

    const/16 v1, 0x10

    if-ne v0, v1, :cond_17

    .line 1359
    :cond_15
    const/16 v0, 0xa

    .line 1365
    :cond_17
    return v0
.end method

.method public whitelist getSupportedProfiles()Ljava/util/List;
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2994
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2997
    .local v0, "supportedProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_5
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_5c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_8} :catch_5c

    .line 2998
    :try_start_8
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_48

    .line 2999
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 3000
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Long;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, v4, v2}, Landroid/bluetooth/IBluetooth;->getSupportedProfiles(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 3001
    nop

    .line 3002
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3004
    .local v6, "supportedProfilesBitMask":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    const/16 v8, 0x27

    if-gt v3, v8, :cond_47

    .line 3005
    const-wide/16 v8, 0x1

    shl-long/2addr v8, v3

    and-long/2addr v8, v6

    cmp-long v8, v8, v4

    if-eqz v8, :cond_44

    .line 3006
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3004
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 3009
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Long;>;"
    .end local v3    # "i":I
    .end local v6    # "supportedProfilesBitMask":J
    :cond_47
    goto :goto_57

    .line 3011
    :cond_48
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter;->isHearingAidProfileSupported()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 3012
    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3015
    :cond_57
    :goto_57
    monitor-exit v1

    .line 3018
    goto :goto_86

    .line 3015
    :catchall_59
    move-exception v2

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_8 .. :try_end_5b} :catchall_59

    .end local v0    # "supportedProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    :try_start_5b
    throw v2
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_5c} :catch_5c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5b .. :try_end_5c} :catch_5c

    .line 3016
    .restart local v0    # "supportedProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    :catch_5c
    move-exception v1

    .line 3017
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_86
    return-object v0
.end method

.method public greylist getUuids()[Landroid/os/ParcelUuid;
    .registers 3

    .line 1652
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getUuidsList()Ljava/util/List;

    move-result-object v0

    .line 1653
    .local v0, "parcels":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/ParcelUuid;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/ParcelUuid;

    return-object v1
.end method

.method public whitelist getUuidsList()Ljava/util/List;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 1665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1666
    .local v0, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_80

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_12

    goto :goto_80

    .line 1669
    :cond_12
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1672
    :try_start_1b
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 1673
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/os/ParcelUuid;>;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v1}, Landroid/bluetooth/IBluetooth;->getUuids(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1674
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_34} :catch_40
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1b .. :try_end_34} :catch_40
    .catchall {:try_start_1b .. :try_end_34} :catchall_3e

    .line 1678
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1674
    return-object v2

    .line 1678
    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/os/ParcelUuid;>;>;"
    :catchall_3e
    move-exception v1

    goto :goto_76

    .line 1675
    :catch_40
    move-exception v1

    .line 1676
    .local v1, "e":Ljava/lang/Exception;
    :try_start_41
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_41 .. :try_end_6a} :catchall_3e

    .line 1678
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1679
    nop

    .line 1680
    return-object v0

    .line 1678
    :goto_76
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1679
    throw v1

    .line 1667
    :cond_80
    :goto_80
    return-object v0
.end method

.method public blacklist isBleAppPresent()Z
    .registers 4

    .line 5400
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isBleAppPresent()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 5401
    :catch_7
    move-exception v0

    .line 5402
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5404
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isBleScanAlwaysAvailable()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2451
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isBleScanAlwaysAvailable()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2452
    :catch_7
    move-exception v0

    .line 2453
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string/jumbo v2, "remote exception when calling isBleScanAlwaysAvailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2454
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isBroadcastActive()Z
    .registers 4

    .line 2349
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2350
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1d

    .line 2351
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->isBroadcastActive(Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_20
    .catchall {:try_start_0 .. :try_end_13} :catchall_1e

    .line 2356
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2351
    return v0

    .line 2356
    :cond_1d
    goto :goto_29

    :catchall_1e
    move-exception v0

    goto :goto_35

    .line 2353
    :catch_20
    move-exception v0

    .line 2354
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_21
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_1e

    .line 2356
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2357
    nop

    .line 2358
    const/4 v0, 0x0

    return v0

    .line 2356
    :goto_35
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2357
    throw v0
.end method

.method public whitelist isDiscovering()Z
    .registers 6

    .line 2228
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_a

    .line 2229
    return v1

    .line 2232
    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2233
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_42

    .line 2234
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 2235
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v0}, Landroid/bluetooth/IBluetooth;->isDiscovering(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2236
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_38} :catch_4f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_38} :catch_4f
    .catchall {:try_start_a .. :try_end_38} :catchall_4d

    .line 2241
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2236
    return v1

    .line 2241
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :cond_42
    nop

    :goto_43
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2242
    goto :goto_7b

    .line 2241
    :catchall_4d
    move-exception v0

    goto :goto_7c

    .line 2238
    :catch_4f
    move-exception v0

    .line 2239
    .local v0, "e":Ljava/lang/Exception;
    :try_start_50
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_50 .. :try_end_79} :catchall_4d

    .line 2241
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_43

    .line 2243
    :goto_7b
    return v1

    .line 2241
    :goto_7c
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2242
    throw v0
.end method

.method public whitelist isEnabled()Z
    .registers 3

    .line 1153
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist-max-o isHardwareTrackingFiltersAvailable()Z
    .registers 6

    .line 2841
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2842
    return v1

    .line 2845
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0

    .line 2846
    .local v0, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v0, :cond_11

    .line 2848
    return v1

    .line 2850
    :cond_11
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 2851
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v3, v2}, Landroid/bluetooth/IBluetoothGatt;->numHwTrackFiltersAvailable(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2852
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_30
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_30} :catch_34
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_30} :catch_34

    if-eqz v3, :cond_33

    const/4 v1, 0x1

    :cond_33
    return v1

    .line 2853
    .end local v0    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_34
    move-exception v0

    .line 2854
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2856
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public whitelist isLe2MPhySupported()Z
    .registers 6

    .line 2549
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2550
    return v1

    .line 2553
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2554
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_3e

    .line 2555
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 2556
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, v0}, Landroid/bluetooth/IBluetooth;->isLe2MPhySupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2557
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_34} :catch_4b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_34} :catch_4b
    .catchall {:try_start_8 .. :try_end_34} :catchall_49

    .line 2562
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2557
    return v1

    .line 2562
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :cond_3e
    nop

    :goto_3f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2563
    goto :goto_77

    .line 2562
    :catchall_49
    move-exception v0

    goto :goto_78

    .line 2559
    :catch_4b
    move-exception v0

    .line 2560
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4c
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_4c .. :try_end_75} :catchall_49

    .line 2562
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3f

    .line 2564
    :goto_77
    return v1

    .line 2562
    :goto_78
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2563
    throw v0
.end method

.method public whitelist isLeAudioBroadcastAssistantSupported()I
    .registers 6

    .line 2734
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2735
    const/4 v0, 0x1

    return v0

    .line 2738
    :cond_8
    const v0, 0x7fffffff

    :try_start_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2739
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_41

    .line 2740
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 2741
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, v1}, Landroid/bluetooth/IBluetooth;->isLeAudioBroadcastAssistantSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2742
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    .line 2743
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_37
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_37} :catch_5a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_37} :catch_4b
    .catchall {:try_start_b .. :try_end_37} :catchall_49

    .line 2753
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2742
    return v0

    .line 2745
    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :cond_41
    :try_start_41
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "LE state is on, but there is no bluetooth service."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    throw v1
    :try_end_49
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_41 .. :try_end_49} :catch_5a
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_49} :catch_4b
    .catchall {:try_start_41 .. :try_end_49} :catchall_49

    .line 2753
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    :catchall_49
    move-exception v0

    goto :goto_87

    .line 2750
    :catch_4b
    move-exception v1

    .line 2751
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4c
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_49

    .line 2753
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_50
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2754
    goto :goto_86

    .line 2748
    :catch_5a
    move-exception v1

    .line 2749
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_5b
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_5b .. :try_end_84} :catchall_49

    .line 2753
    nop

    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_50

    .line 2755
    :goto_86
    return v0

    .line 2753
    :goto_87
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2754
    throw v0
.end method

.method public whitelist isLeAudioBroadcastSourceSupported()I
    .registers 6

    .line 2699
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2700
    const/4 v0, 0x1

    return v0

    .line 2703
    :cond_8
    const v0, 0x7fffffff

    :try_start_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2704
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_41

    .line 2705
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 2706
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, v1}, Landroid/bluetooth/IBluetooth;->isLeAudioBroadcastSourceSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2707
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    .line 2708
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_37
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_37} :catch_5a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_37} :catch_4b
    .catchall {:try_start_b .. :try_end_37} :catchall_49

    .line 2718
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2707
    return v0

    .line 2710
    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :cond_41
    :try_start_41
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "LE state is on, but there is no bluetooth service."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    throw v1
    :try_end_49
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_41 .. :try_end_49} :catch_5a
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_49} :catch_4b
    .catchall {:try_start_41 .. :try_end_49} :catchall_49

    .line 2718
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    :catchall_49
    move-exception v0

    goto :goto_87

    .line 2715
    :catch_4b
    move-exception v1

    .line 2716
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4c
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_49

    .line 2718
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_50
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2719
    goto :goto_86

    .line 2713
    :catch_5a
    move-exception v1

    .line 2714
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_5b
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_5b .. :try_end_84} :catchall_49

    .line 2718
    nop

    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_50

    .line 2721
    :goto_86
    return v0

    .line 2718
    :goto_87
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2719
    throw v0
.end method

.method public whitelist isLeAudioSupported()I
    .registers 6

    .line 2665
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2666
    const/4 v0, 0x1

    return v0

    .line 2669
    :cond_8
    const v0, 0x7fffffff

    :try_start_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2670
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_41

    .line 2671
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 2672
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, v1}, Landroid/bluetooth/IBluetooth;->isLeAudioSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2673
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    .line 2674
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_37
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_37} :catch_5a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_37} :catch_4b
    .catchall {:try_start_b .. :try_end_37} :catchall_49

    .line 2684
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2673
    return v0

    .line 2676
    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :cond_41
    :try_start_41
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "LE state is on, but there is no bluetooth service."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    throw v1
    :try_end_49
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_41 .. :try_end_49} :catch_5a
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_49} :catch_4b
    .catchall {:try_start_41 .. :try_end_49} :catchall_49

    .line 2684
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    :catchall_49
    move-exception v0

    goto :goto_87

    .line 2681
    :catch_4b
    move-exception v1

    .line 2682
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4c
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_49

    .line 2684
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_50
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2685
    goto :goto_86

    .line 2679
    :catch_5a
    move-exception v1

    .line 2680
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_5b
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_5b .. :try_end_84} :catchall_49

    .line 2684
    nop

    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_50

    .line 2686
    :goto_86
    return v0

    .line 2684
    :goto_87
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2685
    throw v0
.end method

.method public whitelist isLeCodedPhySupported()Z
    .registers 6

    .line 2575
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2576
    return v1

    .line 2579
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2580
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_3e

    .line 2581
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 2582
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, v0}, Landroid/bluetooth/IBluetooth;->isLeCodedPhySupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2583
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_34} :catch_4b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_34} :catch_4b
    .catchall {:try_start_8 .. :try_end_34} :catchall_49

    .line 2588
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2583
    return v1

    .line 2588
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :cond_3e
    nop

    :goto_3f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2589
    goto :goto_77

    .line 2588
    :catchall_49
    move-exception v0

    goto :goto_78

    .line 2585
    :catch_4b
    move-exception v0

    .line 2586
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4c
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_4c .. :try_end_75} :catchall_49

    .line 2588
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3f

    .line 2590
    :goto_77
    return v1

    .line 2588
    :goto_78
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2589
    throw v0
.end method

.method public whitelist isLeEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1167
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v0

    .line 1169
    .local v0, "state":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLeEnabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const/16 v1, 0xc

    if-eq v0, v1, :cond_33

    const/16 v1, 0xf

    if-eq v0, v1, :cond_33

    const/16 v1, 0xb

    if-eq v0, v1, :cond_33

    const/16 v1, 0xd

    if-ne v0, v1, :cond_31

    goto :goto_33

    :cond_31
    const/4 v1, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v1, 0x1

    :goto_34
    return v1
.end method

.method public whitelist isLeExtendedAdvertisingSupported()Z
    .registers 6

    .line 2601
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2602
    return v1

    .line 2605
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2606
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_3e

    .line 2607
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 2608
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, v0}, Landroid/bluetooth/IBluetooth;->isLeExtendedAdvertisingSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2609
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_34} :catch_4b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_34} :catch_4b
    .catchall {:try_start_8 .. :try_end_34} :catchall_49

    .line 2614
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2609
    return v1

    .line 2614
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :cond_3e
    nop

    :goto_3f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2615
    goto :goto_77

    .line 2614
    :catchall_49
    move-exception v0

    goto :goto_78

    .line 2611
    :catch_4b
    move-exception v0

    .line 2612
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4c
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_4c .. :try_end_75} :catchall_49

    .line 2614
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3f

    .line 2616
    :goto_77
    return v1

    .line 2614
    :goto_78
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2615
    throw v0
.end method

.method public whitelist isLePeriodicAdvertisingSupported()Z
    .registers 6

    .line 2627
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2628
    return v1

    .line 2631
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2632
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_3e

    .line 2633
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 2634
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, v0}, Landroid/bluetooth/IBluetooth;->isLePeriodicAdvertisingSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2635
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_34} :catch_4b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_34} :catch_4b
    .catchall {:try_start_8 .. :try_end_34} :catchall_49

    .line 2640
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2635
    return v1

    .line 2640
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :cond_3e
    nop

    :goto_3f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2641
    goto :goto_77

    .line 2640
    :catchall_49
    move-exception v0

    goto :goto_78

    .line 2637
    :catch_4b
    move-exception v0

    .line 2638
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4c
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_4c .. :try_end_75} :catchall_49

    .line 2640
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3f

    .line 2642
    :goto_77
    return v1

    .line 2640
    :goto_78
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2641
    throw v0
.end method

.method public whitelist isMultipleAdvertisementSupported()Z
    .registers 6

    .line 2419
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_a

    .line 2420
    return v1

    .line 2423
    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2424
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_40

    .line 2425
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 2426
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, v0}, Landroid/bluetooth/IBluetooth;->isMultiAdvertisementSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2427
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_36} :catch_4d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_36} :catch_4d
    .catchall {:try_start_a .. :try_end_36} :catchall_4b

    .line 2432
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2427
    return v1

    .line 2432
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :cond_40
    nop

    :goto_41
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2433
    goto :goto_79

    .line 2432
    :catchall_4b
    move-exception v0

    goto :goto_7a

    .line 2429
    :catch_4d
    move-exception v0

    .line 2430
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4e
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_4e .. :try_end_77} :catchall_4b

    .line 2432
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_41

    .line 2434
    :goto_79
    return v1

    .line 2432
    :goto_7a
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2433
    throw v0
.end method

.method public whitelist isOffloadedFilteringSupported()Z
    .registers 6

    .line 2497
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2498
    return v1

    .line 2500
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2502
    :try_start_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_2b

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothFilteringCache:Landroid/os/IpcDataCache;

    invoke-virtual {v2, v0}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_21} :catch_38
    .catchall {:try_start_11 .. :try_end_21} :catchall_36

    .line 2510
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2502
    return v0

    .line 2510
    :cond_2b
    nop

    :goto_2c
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2511
    goto :goto_77

    .line 2510
    :catchall_36
    move-exception v0

    goto :goto_78

    .line 2503
    :catch_38
    move-exception v0

    .line 2504
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_39
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/util/concurrent/TimeoutException;

    if-nez v2, :cond_4c

    .line 2505
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Landroid/os/RemoteException;

    if-eqz v2, :cond_4a

    goto :goto_4c

    .line 2506
    :cond_4a
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    throw v0

    .line 2508
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    :cond_4c
    :goto_4c
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_39 .. :try_end_75} :catchall_36

    .line 2510
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_2c

    .line 2512
    :goto_77
    return v1

    .line 2510
    :goto_78
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2511
    throw v0
.end method

.method public whitelist isOffloadedScanBatchingSupported()Z
    .registers 6

    .line 2523
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2524
    return v1

    .line 2527
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2528
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_3e

    .line 2529
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 2530
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, v0}, Landroid/bluetooth/IBluetooth;->isOffloadedScanBatchingSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2531
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_34} :catch_4b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_34} :catch_4b
    .catchall {:try_start_8 .. :try_end_34} :catchall_49

    .line 2536
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2531
    return v1

    .line 2536
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :cond_3e
    nop

    :goto_3f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2537
    goto :goto_77

    .line 2536
    :catchall_49
    move-exception v0

    goto :goto_78

    .line 2533
    :catch_4b
    move-exception v0

    .line 2534
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4c
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_4c .. :try_end_75} :catchall_49

    .line 2536
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3f

    .line 2538
    :goto_77
    return v1

    .line 2536
    :goto_78
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2537
    throw v0
.end method

.method public greylist-max-r listenUsingEncryptedRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3466
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist listenUsingInsecureL2capChannel()Landroid/bluetooth/BluetoothServerSocket;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4938
    new-instance v7, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    .line 4941
    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    .line 4942
    .local v1, "errno":I
    if-nez v1, :cond_40

    .line 4946
    iget-object v2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    .line 4947
    .local v2, "assignedPsm":I
    if-eqz v2, :cond_38

    .line 4951
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listenUsingInsecureL2capChannel: set assigned PSM to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothAdapter"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4954
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    .line 4956
    return-object v0

    .line 4948
    :cond_38
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Error: Unable to assign PSM value"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4943
    .end local v2    # "assignedPsm":I
    :cond_40
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public greylist-max-o listenUsingInsecureL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 11
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listenUsingInsecureL2capOn: port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move v6, p1

    invoke-direct/range {v2 .. v8}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    .line 3588
    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v2

    .line 3589
    .local v2, "errno":I
    const/4 v3, -0x2

    if-ne p1, v3, :cond_4c

    .line 3590
    iget-object v3, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v3

    .line 3592
    .local v3, "assignedChannel":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listenUsingInsecureL2capOn: set assigned channel to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    .line 3597
    .end local v3    # "assignedChannel":I
    :cond_4c
    if-nez v2, :cond_4f

    .line 3603
    return-object v0

    .line 3601
    :cond_4f
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 7
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3499
    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 3501
    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    .line 3502
    .local v1, "errno":I
    const/4 v2, -0x2

    if-ne p1, v2, :cond_19

    .line 3503
    iget-object v2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    .line 3505
    :cond_19
    if-nez v1, :cond_1c

    .line 3511
    return-object v0

    .line 3509
    :cond_1c
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3423
    const/16 v0, 0x3b

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 3424
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist listenUsingL2capChannel()Landroid/bluetooth/BluetoothServerSocket;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4890
    new-instance v7, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    .line 4893
    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    .line 4894
    .local v1, "errno":I
    if-nez v1, :cond_40

    .line 4898
    iget-object v2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    .line 4899
    .local v2, "assignedPsm":I
    if-eqz v2, :cond_38

    .line 4903
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listenUsingL2capChannel: set assigned PSM to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothAdapter"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4906
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    .line 4908
    return-object v0

    .line 4900
    :cond_38
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Error: Unable to assign PSM value"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4895
    .end local v2    # "assignedPsm":I
    :cond_40
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public greylist-max-o listenUsingL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3566
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->listenUsingL2capOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o listenUsingL2capOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;
    .registers 12
    .param p1, "port"    # I
    .param p2, "mitm"    # Z
    .param p3, "min16DigitPin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3533
    new-instance v7, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v7

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    .line 3536
    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    .line 3537
    .local v1, "errno":I
    const/4 v2, -0x2

    if-ne p1, v2, :cond_36

    .line 3538
    iget-object v2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    .line 3539
    .local v2, "assignedChannel":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listenUsingL2capOn: set assigned channel to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothAdapter"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    .line 3542
    .end local v2    # "assignedChannel":I
    :cond_36
    if-nez v1, :cond_39

    .line 3548
    return-object v0

    .line 3546
    :cond_39
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public greylist-max-o listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 3
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3177
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public greylist listenUsingRfcommOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;
    .registers 12
    .param p1, "channel"    # I
    .param p2, "mitm"    # Z
    .param p3, "min16DigitPin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3205
    new-instance v7, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v7

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    .line 3208
    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    .line 3209
    .local v1, "errno":I
    const/4 v2, -0x2

    if-ne p1, v2, :cond_1e

    .line 3210
    iget-object v2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    .line 3212
    :cond_1e
    if-nez v1, :cond_21

    .line 3218
    return-object v0

    .line 3216
    :cond_21
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3248
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o readOutOfBandData()Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[B[B>;"
        }
    .end annotation

    .line 3618
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist registerBluetoothConnectionCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)Z
    .registers 9
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5166
    const-string v0, "BluetoothAdapter"

    const-string/jumbo v1, "registerBluetoothConnectionCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5167
    const/4 v0, 0x0

    if-eqz p2, :cond_c0

    if-nez p1, :cond_f

    goto/16 :goto_c0

    .line 5171
    :cond_f
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v1

    .line 5173
    :try_start_12
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_bd

    if-eqz v2, :cond_a5

    .line 5175
    :try_start_1a
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 5176
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_58

    .line 5178
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 5179
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mConnectionCallback:Landroid/bluetooth/IBluetoothConnectionCallback;

    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, v4, v5, v2}, Landroid/bluetooth/IBluetooth;->registerBluetoothConnectionCallback(Landroid/bluetooth/IBluetoothConnectionCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 5181
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_4a} :catch_64
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1a .. :try_end_4a} :catch_64
    .catchall {:try_start_1a .. :try_end_4a} :catchall_62

    if-nez v3, :cond_58

    .line 5182
    nop

    .line 5189
    :try_start_4d
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    monitor-exit v1

    .line 5182
    return v0

    .line 5189
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :cond_58
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    :goto_5e
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_bd

    .line 5190
    goto :goto_a5

    .line 5189
    :catchall_62
    move-exception v0

    goto :goto_9a

    .line 5185
    :catch_64
    move-exception v0

    .line 5186
    .local v0, "e":Ljava/lang/Exception;
    :try_start_65
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5187
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catchall {:try_start_65 .. :try_end_93} :catchall_62

    .line 5189
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_93
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    goto :goto_5e

    :goto_9a
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5190
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
    throw v0

    .line 5194
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
    :cond_a5
    :goto_a5
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 5197
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5198
    monitor-exit v1

    .line 5200
    const/4 v0, 0x1

    return v0

    .line 5195
    :cond_b5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "This callback has already been registered"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
    throw v0

    .line 5198
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
    :catchall_bd
    move-exception v0

    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_93 .. :try_end_bf} :catchall_bd

    throw v0

    .line 5168
    :cond_c0
    :goto_c0
    return v0
.end method

.method public blacklist registerServiceLifecycleCallback(Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;)Z
    .registers 3
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;

    .line 4665
    iget-object v0, p1, Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;->mRemote:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist removeActiveDevice(I)Z
    .registers 7
    .param p1, "profiles"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2267
    const-string v0, "BluetoothAdapter"

    if-eqz p1, :cond_18

    const/4 v1, 0x1

    if-eq p1, v1, :cond_18

    const/4 v1, 0x2

    if-ne p1, v1, :cond_b

    goto :goto_18

    .line 2269
    :cond_b
    const-string v1, "Invalid profiles param value in removeActiveDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Profiles must be one of BluetoothAdapter.ACTIVE_DEVICE_AUDIO, BluetoothAdapter.ACTIVE_DEVICE_PHONE_CALL, or BluetoothAdapter.ACTIVE_DEVICE_ALL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2276
    :cond_18
    :goto_18
    const/4 v1, 0x0

    :try_start_19
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2277
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_68

    .line 2278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeActiveDevice, profiles: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 2280
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, p1, v4, v2}, Landroid/bluetooth/IBluetooth;->removeActiveDevice(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2281
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_5e} :catch_75
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_19 .. :try_end_5e} :catch_75
    .catchall {:try_start_19 .. :try_end_5e} :catchall_73

    .line 2286
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2281
    return v0

    .line 2286
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :cond_68
    nop

    :goto_69
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2287
    goto :goto_9f

    .line 2286
    :catchall_73
    move-exception v0

    goto :goto_a0

    .line 2283
    :catch_75
    move-exception v2

    .line 2284
    .local v2, "e":Ljava/lang/Exception;
    :try_start_76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_76 .. :try_end_9d} :catchall_73

    .line 2286
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_69

    .line 2289
    :goto_9f
    return v1

    .line 2286
    :goto_a0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2287
    throw v0
.end method

.method public whitelist removeOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5067
    const-string v0, "BluetoothAdapter"

    const-string/jumbo v1, "removeOnMetadataChangedListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5068
    if-eqz p1, :cond_a4

    .line 5071
    if-eqz p2, :cond_9c

    .line 5075
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    monitor-enter v0

    .line 5076
    :try_start_f
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 5080
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 5082
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8f

    .line 5085
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5086
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    .line 5087
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_41

    .line 5089
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_99

    return v2

    .line 5092
    :cond_41
    const/4 v2, 0x0

    :try_start_42
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 5093
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, v4, v3}, Landroid/bluetooth/IBluetooth;->unregisterMetadataListener(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 5094
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_61} :catch_63
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_42 .. :try_end_61} :catch_63
    .catchall {:try_start_42 .. :try_end_61} :catchall_99

    :try_start_61
    monitor-exit v0

    return v2

    .line 5095
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_63
    move-exception v3

    .line 5096
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "BluetoothAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5097
    monitor-exit v0

    return v2

    .line 5100
    .end local v1    # "service":Landroid/bluetooth/IBluetooth;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8f
    monitor-exit v0

    .line 5101
    return v2

    .line 5077
    :cond_91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "device was not registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "listener":Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    throw v1

    .line 5100
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "listener":Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    :catchall_99
    move-exception v1

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_61 .. :try_end_9b} :catchall_99

    throw v1

    .line 5072
    :cond_9c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5069
    :cond_a4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "device is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o removeServiceStateCallback(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .registers 4
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .line 4595
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4596
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4597
    :try_start_6
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sProxyServiceStateCallbacks:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4598
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter;->registerOrUnregisterAdapterLocked()V

    .line 4599
    monitor-exit v0

    .line 4600
    return-void

    .line 4599
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2881
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2882
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2883
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    .line 2886
    .local v0, "proxy":Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;
    :try_start_f
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2887
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_22

    .line 2888
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v0, v2}, Landroid/bluetooth/IBluetooth;->requestActivityInfo(Landroid/bluetooth/IBluetoothActivityEnergyInfoListener;Landroid/content/AttributionSource;)V

    goto :goto_27

    .line 2892
    :cond_22
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->onError(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_27} :catch_33
    .catchall {:try_start_f .. :try_end_27} :catchall_31

    .line 2898
    :goto_27
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2899
    goto :goto_53

    .line 2898
    :catchall_31
    move-exception v1

    goto :goto_54

    .line 2894
    :catch_33
    move-exception v1

    .line 2895
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_34
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getControllerActivityEnergyInfoCallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->onError(I)V
    :try_end_52
    .catchall {:try_start_34 .. :try_end_52} :catchall_31

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_27

    .line 2900
    :goto_53
    return-void

    .line 2898
    :goto_54
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2899
    throw v1
.end method

.method public whitelist retrieveConnectedRfcommSocket(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .registers 8
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3353
    const-string v0, "BluetoothAdapter"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 3354
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/bluetooth/IncomingRfcommSocketInfo;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, v4, v5, v2}, Landroid/bluetooth/IBluetooth;->retrievePendingSocketForServiceRecord(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 3356
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IncomingRfcommSocketInfo;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_21} :catch_62
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_21} :catch_62

    move-object v2, v3

    .line 3360
    .local v2, "socketInfo":Landroid/bluetooth/IncomingRfcommSocketInfo;
    nop

    .line 3361
    if-nez v2, :cond_26

    .line 3362
    return-object v1

    .line 3365
    :cond_26
    iget v3, v2, Landroid/bluetooth/IncomingRfcommSocketInfo;->status:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_8c

    .line 3383
    new-array v3, v5, [Ljava/lang/Object;

    iget v5, v2, Landroid/bluetooth/IncomingRfcommSocketInfo;->status:I

    .line 3387
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3384
    const-string v4, "Unexpected result: (%d), from the adapter service while retrieving an rfcomm socket"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3383
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    return-object v1

    .line 3381
    :sswitch_41
    return-object v1

    .line 3376
    :sswitch_42
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 3377
    const-string v3, "RFCOMM listener for UUID %s was not registered by this app"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3368
    :sswitch_52
    :try_start_52
    iget-object v0, v2, Landroid/bluetooth/IncomingRfcommSocketInfo;->pfd:Landroid/os/ParcelFileDescriptor;

    iget-object v3, v2, Landroid/bluetooth/IncomingRfcommSocketInfo;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-static {v0, v3, v4}, Landroid/bluetooth/BluetoothSocket;->createSocketFromOpenFd(Landroid/os/ParcelFileDescriptor;Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5f} :catch_60

    return-object v0

    .line 3372
    :catch_60
    move-exception v0

    .line 3373
    .local v0, "e":Ljava/io/IOException;
    return-object v1

    .line 3357
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "socketInfo":Landroid/bluetooth/IncomingRfcommSocketInfo;
    :catch_62
    move-exception v2

    .line 3358
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    return-object v1

    nop

    :sswitch_data_8c
    .sparse-switch
        0x0 -> :sswitch_52
        0x7d2 -> :sswitch_42
        0x7d5 -> :sswitch_41
    .end sparse-switch
.end method

.method public whitelist setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profiles"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2315
    const-string v0, "BluetoothAdapter"

    if-eqz p1, :cond_b6

    .line 2319
    if-eqz p2, :cond_1a

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1a

    const/4 v1, 0x2

    if-ne p2, v1, :cond_d

    goto :goto_1a

    .line 2321
    :cond_d
    const-string v1, "Invalid profiles param value in setActiveDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Profiles must be one of BluetoothAdapter.ACTIVE_DEVICE_AUDIO, BluetoothAdapter.ACTIVE_DEVICE_PHONE_CALL, or BluetoothAdapter.ACTIVE_DEVICE_ALL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2328
    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    :try_start_1b
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2329
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_74

    .line 2331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActiveDevice, device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", profiles: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 2334
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, p1, p2, v4, v2}, Landroid/bluetooth/IBluetooth;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2335
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_6a} :catch_81
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1b .. :try_end_6a} :catch_81
    .catchall {:try_start_1b .. :try_end_6a} :catchall_7f

    .line 2340
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2335
    return v0

    .line 2340
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :cond_74
    nop

    :goto_75
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2341
    goto :goto_ab

    .line 2340
    :catchall_7f
    move-exception v0

    goto :goto_ac

    .line 2337
    :catch_81
    move-exception v2

    .line 2338
    .local v2, "e":Ljava/lang/Exception;
    :try_start_82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_82 .. :try_end_a9} :catchall_7f

    .line 2340
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_75

    .line 2343
    :goto_ab
    return v1

    .line 2340
    :goto_ac
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2341
    throw v0

    .line 2316
    :cond_b6
    const-string/jumbo v1, "setActiveDevice: Null device passed as parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setBluetoothClass(Landroid/bluetooth/BluetoothClass;)Z
    .registers 7
    .param p1, "bluetoothClass"    # Landroid/bluetooth/BluetoothClass;

    .line 1767
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_a

    .line 1768
    return v1

    .line 1771
    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1772
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_42

    .line 1773
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1774
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3, v0}, Landroid/bluetooth/IBluetooth;->setBluetoothClass(Landroid/bluetooth/BluetoothClass;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1775
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_38} :catch_4f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_38} :catch_4f
    .catchall {:try_start_a .. :try_end_38} :catchall_4d

    .line 1780
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1775
    return v1

    .line 1780
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :cond_42
    nop

    :goto_43
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1781
    goto :goto_7b

    .line 1780
    :catchall_4d
    move-exception v0

    goto :goto_7c

    .line 1777
    :catch_4f
    move-exception v0

    .line 1778
    .local v0, "e":Ljava/lang/Exception;
    :try_start_50
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_50 .. :try_end_79} :catchall_4d

    .line 1780
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_43

    .line 1782
    :goto_7b
    return v1

    .line 1780
    :goto_7c
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1781
    throw v0
.end method

.method public whitelist setDiscoverableTimeout(Ljava/time/Duration;)I
    .registers 8
    .param p1, "timeout"    # Ljava/time/Duration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2059
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_a

    .line 2060
    const/4 v0, 0x1

    return v0

    .line 2062
    :cond_a
    invoke-virtual {p1}, Ljava/time/Duration;->toSeconds()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9e

    .line 2067
    const v0, 0x7fffffff

    :try_start_18
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2068
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_54

    .line 2069
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 2070
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-virtual {p1}, Ljava/time/Duration;->toSeconds()J

    move-result-wide v3

    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v4, v5, v1}, Landroid/bluetooth/IBluetooth;->setDiscoverableTimeout(JLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2071
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    .line 2072
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_4a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_18 .. :try_end_4a} :catch_67
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_4a} :catch_61
    .catchall {:try_start_18 .. :try_end_4a} :catchall_5f

    .line 2079
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2071
    return v0

    .line 2079
    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :cond_54
    nop

    :goto_55
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2080
    goto :goto_93

    .line 2079
    :catchall_5f
    move-exception v0

    goto :goto_94

    .line 2076
    :catch_61
    move-exception v0

    .line 2077
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_62
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "timeout":Ljava/time/Duration;
    throw v1

    .line 2074
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "timeout":Ljava/time/Duration;
    :catch_67
    move-exception v1

    .line 2075
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_62 .. :try_end_91} :catchall_5f

    .line 2079
    nop

    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_55

    .line 2081
    :goto_93
    return v0

    .line 2079
    :goto_94
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2080
    throw v0

    .line 2063
    :cond_9e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout in seconds must be less or equal to 2147483647"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setIoCapability(I)Z
    .registers 7
    .param p1, "capability"    # I

    .line 1836
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_a

    return v1

    .line 1838
    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1839
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_42

    .line 1840
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1841
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3, v0}, Landroid/bluetooth/IBluetooth;->setIoCapability(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1842
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_38} :catch_4f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_38} :catch_4f
    .catchall {:try_start_a .. :try_end_38} :catchall_4d

    .line 1847
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1842
    return v1

    .line 1847
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :cond_42
    nop

    :goto_43
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1848
    goto :goto_7b

    .line 1847
    :catchall_4d
    move-exception v0

    goto :goto_7c

    .line 1844
    :catch_4f
    move-exception v0

    .line 1845
    .local v0, "e":Ljava/lang/Exception;
    :try_start_50
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_50 .. :try_end_79} :catchall_4d

    .line 1847
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_43

    .line 1849
    :goto_7b
    return v1

    .line 1847
    :goto_7c
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1848
    throw v0
.end method

.method public blacklist setLeIoCapability(I)Z
    .registers 7
    .param p1, "capability"    # I

    .line 1902
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_a

    return v1

    .line 1904
    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1905
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_42

    .line 1906
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1907
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3, v0}, Landroid/bluetooth/IBluetooth;->setLeIoCapability(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1908
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_38} :catch_4f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_38} :catch_4f
    .catchall {:try_start_a .. :try_end_38} :catchall_4d

    .line 1913
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1908
    return v1

    .line 1913
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :cond_42
    nop

    :goto_43
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1914
    goto :goto_7b

    .line 1913
    :catchall_4d
    move-exception v0

    goto :goto_7c

    .line 1910
    :catch_4f
    move-exception v0

    .line 1911
    .local v0, "e":Ljava/lang/Exception;
    :try_start_50
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_50 .. :try_end_79} :catchall_4d

    .line 1913
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_43

    .line 1915
    :goto_7b
    return v1

    .line 1913
    :goto_7c
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1914
    throw v0
.end method

.method public whitelist setName(Ljava/lang/String;)Z
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 1701
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_a

    .line 1702
    return v1

    .line 1705
    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1706
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_42

    .line 1707
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1708
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3, v0}, Landroid/bluetooth/IBluetooth;->setName(Ljava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1709
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_38} :catch_4f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_38} :catch_4f
    .catchall {:try_start_a .. :try_end_38} :catchall_4d

    .line 1714
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1709
    return v1

    .line 1714
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :cond_42
    nop

    :goto_43
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1715
    goto :goto_7b

    .line 1714
    :catchall_4d
    move-exception v0

    goto :goto_7c

    .line 1711
    :catch_4f
    move-exception v0

    .line 1712
    .local v0, "e":Ljava/lang/Exception;
    :try_start_50
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_50 .. :try_end_79} :catchall_4d

    .line 1714
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_43

    .line 1716
    :goto_7b
    return v1

    .line 1714
    :goto_7c
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1715
    throw v0
.end method

.method public blacklist setSarLimit(I)V
    .registers 5
    .param p1, "set"    # I

    .line 5378
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_9

    .line 5379
    return-void

    .line 5382
    :cond_9
    :try_start_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 5383
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_19

    .line 5384
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetooth;->setSARLimit(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1c
    .catchall {:try_start_9 .. :try_end_19} :catchall_1a

    .line 5389
    :cond_19
    goto :goto_25

    :catchall_1a
    move-exception v0

    goto :goto_30

    .line 5386
    :catch_1c
    move-exception v0

    .line 5387
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_1a

    .line 5389
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_25
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5390
    nop

    .line 5391
    return-void

    .line 5389
    :goto_30
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5390
    throw v0
.end method

.method public whitelist setScanMode(I)I
    .registers 7
    .param p1, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1983
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_a

    .line 1984
    const/4 v0, 0x1

    return v0

    .line 1986
    :cond_a
    const/16 v0, 0x14

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x17

    if-ne p1, v0, :cond_17

    goto :goto_1f

    .line 1988
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid scan mode param value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1991
    :cond_1f
    :goto_1f
    const v0, 0x7fffffff

    :try_start_22
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1992
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_5a

    .line 1993
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 1994
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3, v1}, Landroid/bluetooth/IBluetooth;->setScanMode(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1995
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    .line 1996
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_50
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_22 .. :try_end_50} :catch_6d
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_50} :catch_67
    .catchall {:try_start_22 .. :try_end_50} :catchall_65

    .line 2003
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1995
    return v0

    .line 2003
    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :cond_5a
    nop

    :goto_5b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2004
    goto :goto_99

    .line 2003
    :catchall_65
    move-exception v0

    goto :goto_9a

    .line 2000
    :catch_67
    move-exception v0

    .line 2001
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_68
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "mode":I
    throw v1

    .line 1998
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "mode":I
    :catch_6d
    move-exception v1

    .line 1999
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_68 .. :try_end_97} :catchall_65

    .line 2003
    nop

    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_5b

    .line 2005
    :goto_99
    return v0

    .line 2003
    :goto_9a
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2004
    throw v0
.end method

.method public whitelist startDiscovery()Z
    .registers 6

    .line 2149
    const/16 v0, 0x3a

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 2150
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_f

    .line 2151
    return v1

    .line 2154
    :cond_f
    :try_start_f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2155
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_47

    .line 2156
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 2157
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v0}, Landroid/bluetooth/IBluetooth;->startDiscovery(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2158
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3d} :catch_54
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f .. :try_end_3d} :catch_54
    .catchall {:try_start_f .. :try_end_3d} :catchall_52

    .line 2163
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2158
    return v1

    .line 2163
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :cond_47
    nop

    :goto_48
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2164
    goto :goto_80

    .line 2163
    :catchall_52
    move-exception v0

    goto :goto_81

    .line 2160
    :catch_54
    move-exception v0

    .line 2161
    .local v0, "e":Ljava/lang/Exception;
    :try_start_55
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_55 .. :try_end_7e} :catchall_52

    .line 2163
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_48

    .line 2165
    :goto_80
    return v1

    .line 2163
    :goto_81
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2164
    throw v0
.end method

.method public whitelist startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .registers 3
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4724
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    return v0
.end method

.method public whitelist startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .registers 14
    .param p1, "serviceUuids"    # [Ljava/util/UUID;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4747
    const-string v0, "BluetoothAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startLeScan(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4749
    const/4 v0, 0x0

    if-nez p2, :cond_29

    .line 4751
    const-string v1, "BluetoothAdapter"

    const-string/jumbo v2, "startLeScan: null callback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4753
    return v0

    .line 4755
    :cond_29
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    .line 4756
    .local v1, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    if-nez v1, :cond_38

    .line 4758
    const-string v2, "BluetoothAdapter"

    const-string/jumbo v3, "startLeScan: cannot get BluetoothLeScanner"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4760
    return v0

    .line 4763
    :cond_38
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    monitor-enter v2

    .line 4764
    :try_start_3b
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 4766
    const-string v3, "BluetoothAdapter"

    const-string v4, "LE Scan has already started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4768
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_3b .. :try_end_4b} :catchall_a4

    return v0

    .line 4772
    :cond_4c
    :try_start_4c
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_52} :catch_99
    .catchall {:try_start_4c .. :try_end_52} :catchall_a4

    .line 4773
    .local v3, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v3, :cond_56

    .line 4775
    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_a4

    return v0

    .line 4779
    :cond_56
    :try_start_56
    new-instance v4, Landroid/bluetooth/BluetoothAdapter$8;

    invoke-direct {v4, p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$8;-><init>(Landroid/bluetooth/BluetoothAdapter;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 4808
    .local v4, "scanCallback":Landroid/bluetooth/le/ScanCallback;
    new-instance v5, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v5}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v5

    const/4 v7, 0x2

    .line 4810
    invoke-virtual {v5, v7}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v5

    .line 4811
    invoke-virtual {v5}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v5

    .line 4813
    .local v5, "settings":Landroid/bluetooth/le/ScanSettings;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4814
    .local v7, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    if-eqz p1, :cond_8f

    array-length v8, p1

    if-lez v8, :cond_8f

    .line 4817
    new-instance v8, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v8}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    new-instance v9, Landroid/os/ParcelUuid;

    aget-object v10, p1, v0

    invoke-direct {v9, v10}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 4818
    invoke-virtual {v8, v9}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v8

    .line 4819
    invoke-virtual {v8}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v8

    .line 4820
    .local v8, "filter":Landroid/bluetooth/le/ScanFilter;
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4822
    .end local v8    # "filter":Landroid/bluetooth/le/ScanFilter;
    :cond_8f
    invoke-virtual {v1, v7, v5, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 4824
    iget-object v8, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v8, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_97} :catch_99
    .catchall {:try_start_56 .. :try_end_97} :catchall_a4

    .line 4825
    :try_start_97
    monitor-exit v2

    return v6

    .line 4827
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v4    # "scanCallback":Landroid/bluetooth/le/ScanCallback;
    .end local v5    # "settings":Landroid/bluetooth/le/ScanSettings;
    .end local v7    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    :catch_99
    move-exception v3

    .line 4828
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "BluetoothAdapter"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4830
    nop

    .end local v3    # "e":Landroid/os/RemoteException;
    monitor-exit v2

    .line 4831
    return v0

    .line 4830
    :catchall_a4
    move-exception v0

    monitor-exit v2
    :try_end_a6
    .catchall {:try_start_97 .. :try_end_a6} :catchall_a4

    throw v0
.end method

.method public whitelist startRfcommServer(Ljava/lang/String;Ljava/util/UUID;Landroid/app/PendingIntent;)I
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3284
    invoke-virtual {p3}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 3288
    :try_start_6
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 3289
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v2, p1

    move-object v4, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/bluetooth/IBluetooth;->startRfcommListener(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/app/PendingIntent;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 3291
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/16 v2, 0x9

    .line 3292
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_31} :catch_32
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_31} :catch_32

    .line 3291
    return v1

    .line 3293
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_32
    move-exception v0

    .line 3294
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothAdapter"

    const-string v2, "Failed to transact RFCOMM listener start request"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3295
    const/16 v1, 0xf

    return v1

    .line 3285
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provided PendingIntent is not immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4847
    const-string v0, "BluetoothAdapter"

    const-string/jumbo v1, "stopLeScan()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4849
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    .line 4850
    .local v0, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    if-nez v0, :cond_f

    .line 4851
    return-void

    .line 4853
    :cond_f
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    monitor-enter v1

    .line 4854
    :try_start_12
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanCallback;

    .line 4855
    .local v2, "scanCallback":Landroid/bluetooth/le/ScanCallback;
    if-nez v2, :cond_26

    .line 4857
    const-string v3, "BluetoothAdapter"

    const-string/jumbo v4, "scan not started yet"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4859
    monitor-exit v1

    return-void

    .line 4861
    :cond_26
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 4862
    .end local v2    # "scanCallback":Landroid/bluetooth/le/ScanCallback;
    monitor-exit v1

    .line 4863
    return-void

    .line 4862
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public whitelist stopRfcommServer(Ljava/util/UUID;)I
    .registers 6
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3317
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 3318
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, v3, v0}, Landroid/bluetooth/IBluetooth;->stopRfcommListener(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 3319
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/16 v2, 0x9

    .line 3320
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_28} :catch_29

    .line 3319
    return v1

    .line 3321
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_29
    move-exception v0

    .line 3322
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothAdapter"

    const-string v2, "Failed to transact RFCOMM listener stop request"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3323
    const/16 v1, 0xf

    return v1
.end method

.method public blacklist unregisterAdapter()V
    .registers 4

    .line 4471
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    if-eqz v0, :cond_9

    .line 4472
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 4478
    :cond_9
    goto :goto_15

    .line 4476
    :catchall_a
    move-exception v0

    goto :goto_16

    .line 4474
    :catch_c
    move-exception v0

    .line 4475
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_d
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_a

    .line 4478
    nop

    .line 4479
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    return-void

    .line 4478
    :goto_16
    throw v0
.end method

.method public whitelist unregisterBluetoothConnectionCallback(Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)Z
    .registers 7
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5218
    const-string v0, "BluetoothAdapter"

    const-string/jumbo v1, "unregisterBluetoothConnectionCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5219
    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 5220
    return v0

    .line 5223
    :cond_c
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v1

    .line 5224
    :try_start_f
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 5225
    monitor-exit v1

    return v0

    .line 5227
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_a2

    .line 5229
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    .line 5230
    const/4 v0, 0x1

    return v0

    .line 5235
    :cond_24
    :try_start_24
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 5236
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_5e

    .line 5237
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 5238
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mConnectionCallback:Landroid/bluetooth/IBluetoothConnectionCallback;

    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v4, v1}, Landroid/bluetooth/IBluetooth;->unregisterBluetoothConnectionCallback(Landroid/bluetooth/IBluetoothConnectionCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 5240
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_54} :catch_6b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_24 .. :try_end_54} :catch_6b
    .catchall {:try_start_24 .. :try_end_54} :catchall_69

    .line 5245
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5240
    return v0

    .line 5245
    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :cond_5e
    nop

    :goto_5f
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5246
    goto :goto_97

    .line 5245
    :catchall_69
    move-exception v0

    goto :goto_98

    .line 5242
    :catch_6b
    move-exception v1

    .line 5243
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6c
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_6c .. :try_end_95} :catchall_69

    .line 5245
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_5f

    .line 5248
    :goto_97
    return v0

    .line 5245
    :goto_98
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5246
    throw v0

    .line 5227
    :catchall_a2
    move-exception v0

    :try_start_a3
    monitor-exit v1
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v0
.end method

.method public blacklist unregisterServiceLifecycleCallback(Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;

    .line 4675
    iget-object v0, p1, Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;->mRemote:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->removeServiceStateCallback(Landroid/bluetooth/IBluetoothManagerCallback;)V

    .line 4676
    return-void
.end method
