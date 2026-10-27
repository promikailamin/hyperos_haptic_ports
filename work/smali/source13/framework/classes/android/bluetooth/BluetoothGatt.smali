.class public final Landroid/bluetooth/BluetoothGatt;
.super Ljava/lang/Object;
.source "BluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGatt$WriteOperationReturnValues;
    }
.end annotation


# static fields
.field static final greylist-max-o AUTHENTICATION_MITM:I = 0x2

.field static final greylist-max-o AUTHENTICATION_NONE:I = 0x0

.field static final greylist-max-o AUTHENTICATION_NO_MITM:I = 0x1

.field private static final greylist-max-o AUTH_RETRY_STATE_IDLE:I = 0x0

.field private static final greylist-max-o AUTH_RETRY_STATE_MITM:I = 0x2

.field private static final greylist-max-o AUTH_RETRY_STATE_NO_MITM:I = 0x1

.field public static final whitelist CONNECTION_PRIORITY_BALANCED:I = 0x0

.field public static final whitelist CONNECTION_PRIORITY_HIGH:I = 0x1

.field public static final whitelist CONNECTION_PRIORITY_LOW_POWER:I = 0x2

.field private static final greylist-max-o CONN_STATE_CLOSED:I = 0x4

.field private static final greylist-max-o CONN_STATE_CONNECTED:I = 0x2

.field private static final greylist-max-o CONN_STATE_CONNECTING:I = 0x1

.field private static final greylist-max-o CONN_STATE_DISCONNECTING:I = 0x3

.field private static final greylist-max-o CONN_STATE_IDLE:I = 0x0

.field private static final greylist-max-o DBG:Z = true

.field public static final whitelist GATT_CONNECTION_CONGESTED:I = 0x8f

.field public static final whitelist GATT_FAILURE:I = 0x101

.field public static final whitelist GATT_INSUFFICIENT_AUTHENTICATION:I = 0x5

.field public static final whitelist GATT_INSUFFICIENT_AUTHORIZATION:I = 0x8

.field public static final whitelist GATT_INSUFFICIENT_ENCRYPTION:I = 0xf

.field public static final whitelist GATT_INVALID_ATTRIBUTE_LENGTH:I = 0xd

.field public static final whitelist GATT_INVALID_OFFSET:I = 0x7

.field public static final whitelist GATT_READ_NOT_PERMITTED:I = 0x2

.field public static final whitelist GATT_REQUEST_NOT_SUPPORTED:I = 0x6

.field public static final whitelist GATT_SUCCESS:I = 0x0

.field public static final whitelist GATT_WRITE_NOT_PERMITTED:I = 0x3

.field public static final blacklist SUBRATE_REQ_BALANCED:I = 0x0

.field public static final blacklist SUBRATE_REQ_HIGH:I = 0x1

.field public static final blacklist SUBRATE_REQ_LOW_POWER:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BluetoothGatt"

.field private static final greylist-max-o VDBG:Z = false

.field private static final blacklist WRITE_CHARACTERISTIC_MAX_RETRIES:I = 0x5

.field private static final blacklist WRITE_CHARACTERISTIC_TIME_TO_WAIT:I = 0xa


# instance fields
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private greylist-max-p mAuthRetryState:I

.field private greylist mAutoConnect:Z

.field private final greylist-max-o mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

.field private volatile greylist mCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private greylist mClientIf:I

.field private greylist-max-o mConnState:I

.field private greylist-max-o mDevice:Landroid/bluetooth/BluetoothDevice;

.field private greylist-max-r mDeviceBusy:Ljava/lang/Boolean;

.field private final blacklist mDeviceBusyLock:Ljava/lang/Object;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mOpportunistic:Z

.field private greylist-max-o mPhy:I

.field private greylist mService:Landroid/bluetooth/IBluetoothGatt;

.field private greylist-max-o mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mStateLock:Ljava/lang/Object;

.field private greylist-max-r mTransport:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothGatt;)Landroid/content/AttributionSource;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I
    .registers 1

    iget p0, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetryState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutoConnect(Landroid/bluetooth/BluetoothGatt;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/bluetooth/BluetoothGatt;->mAutoConnect:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientIf(Landroid/bluetooth/BluetoothGatt;)I
    .registers 1

    iget p0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceBusyLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOpportunistic(Landroid/bluetooth/BluetoothGatt;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/bluetooth/BluetoothGatt;->mOpportunistic:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhy(Landroid/bluetooth/BluetoothGatt;)I
    .registers 1

    iget p0, p0, Landroid/bluetooth/BluetoothGatt;->mPhy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServices(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStateLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransport(Landroid/bluetooth/BluetoothGatt;)I
    .registers 1

    iget p0, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAuthRetryState(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetryState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClientIf(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnState(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeviceBusy(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGatt;->runOrQueueCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/BluetoothDevice;IZILandroid/content/AttributionSource;)V
    .registers 9
    .param p1, "iGatt"    # Landroid/bluetooth/IBluetoothGatt;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "transport"    # I
    .param p4, "opportunistic"    # Z
    .param p5, "phy"    # I
    .param p6, "attributionSource"    # Landroid/content/AttributionSource;

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    .line 112
    nop

    .line 113
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 232
    new-instance v1, Landroid/bluetooth/BluetoothGatt$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothGatt$1;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

    .line 860
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    .line 861
    iput-object p2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 862
    iput p3, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    .line 863
    iput p5, p0, Landroid/bluetooth/BluetoothGatt;->mPhy:I

    .line 864
    iput-boolean p4, p0, Landroid/bluetooth/BluetoothGatt;->mOpportunistic:Z

    .line 865
    iput-object p6, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    .line 866
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    .line 868
    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    .line 869
    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetryState:I

    .line 870
    return-void
.end method

.method private greylist-max-o registerApp(Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;)Z
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 971
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/bluetooth/BluetoothGatt;->registerApp(Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;Z)Z

    move-result v0

    return v0
.end method

.method private blacklist registerApp(Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;Z)Z
    .registers 14
    .param p1, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "eatt_support"    # Z

    .line 991
    const-string v0, "BluetoothGatt"

    const-string/jumbo v1, "registerApp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return v2

    .line 994
    :cond_e
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 995
    iput-object p2, p0, Landroid/bluetooth/BluetoothGatt;->mHandler:Landroid/os/Handler;

    .line 996
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 997
    .local v1, "uuid":Ljava/util/UUID;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerApp() - UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :try_start_2d
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 1001
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-direct {v5, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v6, p0, Landroid/bluetooth/BluetoothGatt;->mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

    iget-object v8, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    move v7, p3

    move-object v9, v3

    invoke-interface/range {v4 .. v9}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;ZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1003
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4d} :catch_50
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2d .. :try_end_4d} :catch_50

    .line 1007
    nop

    .line 1009
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    const/4 v0, 0x1

    return v0

    .line 1004
    :catch_50
    move-exception v3

    .line 1005
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, ""

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1006
    return v2
.end method

.method private greylist-max-o runOrQueueCallback(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "cb"    # Ljava/lang/Runnable;

    .line 946
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_11

    .line 948
    :try_start_4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    .line 951
    :goto_7
    goto :goto_14

    .line 949
    :catch_8
    move-exception v0

    .line 950
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "BluetoothGatt"

    const-string v2, "Unhandled exception in callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_7

    .line 953
    :cond_11
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 955
    :goto_14
    return-void
.end method

.method private greylist unregisterApp()V
    .registers 7

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterApp() - mClientIf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGatt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_4a

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_24

    goto :goto_4a

    .line 1023
    :cond_24
    const/4 v0, 0x0

    :try_start_25
    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 1024
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 1025
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, v4, v5, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1026
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_42} :catch_43
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_25 .. :try_end_42} :catch_43

    .line 1030
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_49

    .line 1028
    :catch_43
    move-exception v0

    .line 1029
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1031
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_49
    return-void

    .line 1020
    :cond_4a
    :goto_4a
    return-void
.end method


# virtual methods
.method public whitelist abortReliableWrite()V
    .registers 8

    .line 1803
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_35

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_9

    goto :goto_35

    .line 1806
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1807
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/bluetooth/IBluetoothGatt;->endReliableWrite(ILjava/lang/String;ZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1809
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2a} :catch_2c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_2a} :catch_2c

    .line 1812
    nop

    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_34

    .line 1810
    :catch_2c
    move-exception v0

    .line 1811
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1813
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_34
    return-void

    .line 1803
    :cond_35
    :goto_35
    return-void
.end method

.method public whitelist abortReliableWrite(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2
    .param p1, "mDevice"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1822
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->abortReliableWrite()V

    .line 1823
    return-void
.end method

.method public whitelist beginReliableWrite()Z
    .registers 7

    .line 1739
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_a

    goto :goto_35

    .line 1742
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1743
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v4, v5, v0}, Landroid/bluetooth/IBluetoothGatt;->beginReliableWrite(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1744
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_29} :catch_2c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_29} :catch_2c

    .line 1748
    nop

    .line 1750
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    const/4 v0, 0x1

    return v0

    .line 1745
    :catch_2c
    move-exception v0

    .line 1746
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1747
    return v1

    .line 1739
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_35
    :goto_35
    return v1
.end method

.method public blacklist bleSubrateRequest(IIIII)Z
    .registers 23
    .param p1, "subrateMin"    # I
    .param p2, "subrateMax"    # I
    .param p3, "maxLatency"    # I
    .param p4, "contNumber"    # I
    .param p5, "supervisionTimeout"    # I

    .line 2072
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bleSubrateRequest() - subrateMin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v11, p1

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " subrateMax="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v12, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " maxLatency= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v13, p3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "contNumber="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v14, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " supervisionTimeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, p5

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "BluetoothGatt"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    iget-object v2, v1, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/16 v16, 0x0

    if-eqz v2, :cond_7b

    iget v3, v1, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v3, :cond_57

    goto :goto_7b

    .line 2079
    :cond_57
    :try_start_57
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5f} :catch_73

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object v1, v10

    move-object v10, v0

    :try_start_6b
    invoke-interface/range {v2 .. v10}, Landroid/bluetooth/IBluetoothGatt;->leSubrateRequest(ILjava/lang/String;IIIIILandroid/content/AttributionSource;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_6e} :catch_71

    .line 2086
    nop

    .line 2088
    const/4 v0, 0x1

    return v0

    .line 2083
    :catch_71
    move-exception v0

    goto :goto_75

    :catch_73
    move-exception v0

    move-object v1, v10

    .line 2084
    .local v0, "e":Landroid/os/RemoteException;
    :goto_75
    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2085
    return v16

    .line 2076
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_7b
    :goto_7b
    return v16
.end method

.method public whitelist close()V
    .registers 3

    .line 881
    const-string v0, "BluetoothGatt"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGatt;->unregisterApp()V

    .line 884
    const/4 v0, 0x4

    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    .line 885
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetryState:I

    .line 886
    return-void
.end method

.method public whitelist connect()Z
    .registers 11

    .line 1154
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1155
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    iget-boolean v6, p0, Landroid/bluetooth/BluetoothGatt;->mOpportunistic:Z

    iget v7, p0, Landroid/bluetooth/BluetoothGatt;->mPhy:I

    iget-object v8, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v9, v0

    invoke-interface/range {v1 .. v9}, Landroid/bluetooth/IBluetoothGatt;->clientConnect(ILjava/lang/String;ZIZILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1157
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_27} :catch_29

    .line 1158
    const/4 v1, 0x1

    return v1

    .line 1159
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    :catch_29
    move-exception v0

    .line 1160
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1161
    const/4 v1, 0x0

    return v1
.end method

.method greylist-max-r connect(Ljava/lang/Boolean;Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;)Z
    .registers 5
    .param p1, "autoConnect"    # Ljava/lang/Boolean;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1059
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/bluetooth/BluetoothGatt;->connect(Ljava/lang/Boolean;Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;Z)Z

    move-result v0

    return v0
.end method

.method greylist connect(Ljava/lang/Boolean;Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;Z)Z
    .registers 8
    .param p1, "autoConnect"    # Ljava/lang/Boolean;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "eattSupport"    # Z

    .line 1095
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1096
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", auto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", eattSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1095
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1100
    :try_start_35
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    if-nez v1, :cond_5c

    .line 1103
    const/4 v1, 0x1

    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    .line 1104
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_64

    .line 1106
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothGatt;->mAutoConnect:Z

    .line 1108
    invoke-direct {p0, p2, p3, p4}, Landroid/bluetooth/BluetoothGatt;->registerApp(Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;Z)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1109
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1110
    const/4 v1, 0x0

    :try_start_4d
    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    .line 1111
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_58

    .line 1112
    const-string v0, "BluetoothGatt"

    const-string v2, "Failed to register callback"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    return v1

    .line 1111
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1

    .line 1117
    :cond_5b
    return v1

    .line 1101
    :cond_5c
    :try_start_5c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not idle"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothGatt;
    .end local p1    # "autoConnect":Ljava/lang/Boolean;
    .end local p2    # "callback":Landroid/bluetooth/BluetoothGattCallback;
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "eattSupport":Z
    throw v1

    .line 1104
    .restart local p0    # "this":Landroid/bluetooth/BluetoothGatt;
    .restart local p1    # "autoConnect":Ljava/lang/Boolean;
    .restart local p2    # "callback":Landroid/bluetooth/BluetoothGattCallback;
    .restart local p3    # "handler":Landroid/os/Handler;
    .restart local p4    # "eattSupport":Z
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_64

    throw v1
.end method

.method public whitelist connect(Z)Z
    .registers 12
    .param p1, "autoConnect"    # Z

    .line 1183
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1184
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    iget-boolean v6, p0, Landroid/bluetooth/BluetoothGatt;->mOpportunistic:Z

    iget v7, p0, Landroid/bluetooth/BluetoothGatt;->mPhy:I

    iget-object v8, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    move v4, p1

    move-object v9, v0

    invoke-interface/range {v1 .. v9}, Landroid/bluetooth/IBluetoothGatt;->clientConnect(ILjava/lang/String;ZIZILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1186
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_27} :catch_29

    .line 1187
    const/4 v1, 0x1

    return v1

    .line 1188
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    :catch_29
    move-exception v0

    .line 1189
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1190
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist disconnect()V
    .registers 7

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelOpen() - device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGatt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_4f

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_27

    goto :goto_4f

    .line 1132
    :cond_27
    :try_start_27
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1133
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v4, v5, v0}, Landroid/bluetooth/IBluetoothGatt;->clientDisconnect(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1134
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_46} :catch_48
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_27 .. :try_end_46} :catch_48

    .line 1137
    nop

    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_4e

    .line 1135
    :catch_48
    move-exception v0

    .line 1136
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1138
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4e
    return-void

    .line 1129
    :cond_4f
    :goto_4f
    return-void
.end method

.method public greylist-max-o discoverServiceByUuid(Ljava/util/UUID;)Z
    .registers 11
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "discoverServiceByUuid() - device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGatt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v0, :cond_5c

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_28

    goto :goto_5c

    .line 1299
    :cond_28
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1302
    :try_start_2d
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1303
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/ParcelUuid;

    invoke-direct {v6, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v7, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v8, v0

    invoke-interface/range {v3 .. v8}, Landroid/bluetooth/IBluetoothGatt;->discoverServiceByUuid(ILjava/lang/String;Landroid/os/ParcelUuid;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1305
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_52} :catch_55
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2d .. :try_end_52} :catch_55

    .line 1309
    nop

    .line 1310
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    const/4 v0, 0x1

    return v0

    .line 1306
    :catch_55
    move-exception v0

    .line 1307
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1308
    return v2

    .line 1297
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5c
    :goto_5c
    return v2
.end method

.method public whitelist discoverServices()Z
    .registers 8

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "discoverServices() - device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGatt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v0, :cond_56

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_28

    goto :goto_56

    .line 1270
    :cond_28
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1273
    :try_start_2d
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1274
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, v4, v5, v6, v0}, Landroid/bluetooth/IBluetoothGatt;->discoverServices(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1275
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4c} :catch_4f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2d .. :try_end_4c} :catch_4f

    .line 1279
    nop

    .line 1281
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    const/4 v0, 0x1

    return v0

    .line 1276
    :catch_4f
    move-exception v0

    .line 1277
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1278
    return v2

    .line 1268
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_56
    :goto_56
    return v2
.end method

.method public whitelist executeReliableWrite()Z
    .registers 10

    .line 1769
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_a

    goto :goto_5c

    .line 1771
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1772
    :try_start_d
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_17

    monitor-exit v0

    return v1

    .line 1773
    :cond_17
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1774
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_59

    .line 1777
    :try_start_1f
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1778
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v8, v0

    invoke-interface/range {v3 .. v8}, Landroid/bluetooth/IBluetoothGatt;->endReliableWrite(ILjava/lang/String;ZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1780
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_40} :catch_42
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1f .. :try_end_40} :catch_42

    .line 1787
    nop

    .line 1789
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    return v2

    .line 1781
    :catch_42
    move-exception v0

    move-object v2, v0

    .line 1782
    .local v2, "e":Ljava/lang/Exception;
    const-string v0, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1783
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1784
    :try_start_4e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1785
    monitor-exit v3

    .line 1786
    return v1

    .line 1785
    :catchall_56
    move-exception v0

    monitor-exit v3
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_56

    throw v0

    .line 1774
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1

    .line 1769
    :cond_5c
    :goto_5c
    return v1
.end method

.method greylist-max-o getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "instanceId"    # I

    .line 913
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 914
    .local v1, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 915
    .local v3, "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v4

    if-ne v4, p2, :cond_2d

    .line 916
    return-object v3

    .line 918
    .end local v3    # "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_2d
    goto :goto_1a

    .line 919
    .end local v1    # "svc":Landroid/bluetooth/BluetoothGattService;
    :cond_2e
    goto :goto_6

    .line 920
    :cond_2f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectedDevices instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectionState instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getDescriptorById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattDescriptor;
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "instanceId"    # I

    .line 929
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 930
    .local v1, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 931
    .local v3, "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 932
    .local v5, "desc":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v6

    if-ne v6, p2, :cond_41

    .line 933
    return-object v5

    .line 935
    .end local v5    # "desc":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_41
    goto :goto_2e

    .line 936
    .end local v3    # "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_42
    goto :goto_1a

    .line 937
    .end local v1    # "svc":Landroid/bluetooth/BluetoothGattService;
    :cond_43
    goto :goto_6

    .line 938
    :cond_44
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 1249
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 4
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getDevicesMatchingConnectionStates instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattService;
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I

    .line 895
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 896
    .local v1, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 897
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v2

    if-ne v2, p3, :cond_2d

    .line 898
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 899
    return-object v1

    .line 901
    .end local v1    # "svc":Landroid/bluetooth/BluetoothGattService;
    :cond_2d
    goto :goto_6

    .line 902
    :cond_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .registers 6
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 1354
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 1355
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1356
    return-object v1

    .line 1358
    .end local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_29
    goto :goto_6

    .line 1360
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getServices()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 1325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1328
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 1329
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1330
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1332
    .end local v2    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_26
    goto :goto_b

    .line 1334
    :cond_27
    return-object v0
.end method

.method public whitelist readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 14
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1377
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1378
    return v1

    .line 1382
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_75

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_13

    goto :goto_75

    .line 1384
    :cond_13
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 1385
    .local v0, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v0, :cond_1a

    return v1

    .line 1387
    :cond_1a
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1388
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v2, :cond_21

    return v1

    .line 1390
    :cond_21
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1391
    :try_start_24
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2e

    monitor-exit v3

    return v1

    .line 1392
    :cond_2e
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1393
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_72

    .line 1396
    :try_start_36
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 1397
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v6, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 1398
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v8

    const/4 v9, 0x0

    iget-object v10, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1397
    move-object v11, v3

    invoke-interface/range {v5 .. v11}, Landroid/bluetooth/IBluetoothGatt;->readCharacteristic(ILjava/lang/String;IILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1399
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_59} :catch_5b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_36 .. :try_end_59} :catch_5b

    .line 1406
    nop

    .line 1408
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    return v4

    .line 1400
    :catch_5b
    move-exception v3

    move-object v4, v3

    .line 1401
    .local v4, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothGatt"

    const-string v5, ""

    invoke-static {v3, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1402
    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1403
    :try_start_67
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1404
    monitor-exit v5

    .line 1405
    return v1

    .line 1404
    :catchall_6f
    move-exception v1

    monitor-exit v5
    :try_end_71
    .catchall {:try_start_67 .. :try_end_71} :catchall_6f

    throw v1

    .line 1393
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_72
    move-exception v1

    :try_start_73
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v1

    .line 1382
    .end local v0    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_75
    :goto_75
    return v1
.end method

.method public whitelist readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .registers 15
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .line 1589
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_73

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_a

    goto :goto_73

    .line 1591
    :cond_a
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 1592
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_11

    return v1

    .line 1594
    :cond_11
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 1595
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v2, :cond_18

    return v1

    .line 1597
    :cond_18
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 1598
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v3, :cond_1f

    return v1

    .line 1600
    :cond_1f
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1601
    :try_start_22
    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2c

    monitor-exit v4

    return v1

    .line 1602
    :cond_2c
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1603
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_70

    .line 1606
    :try_start_34
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1607
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v6, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v7, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 1608
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v9

    const/4 v10, 0x0

    iget-object v11, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1607
    move-object v12, v4

    invoke-interface/range {v6 .. v12}, Landroid/bluetooth/IBluetoothGatt;->readDescriptor(ILjava/lang/String;IILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1609
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_57} :catch_59
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_34 .. :try_end_57} :catch_59

    .line 1616
    nop

    .line 1618
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    return v5

    .line 1610
    :catch_59
    move-exception v4

    move-object v5, v4

    .line 1611
    .local v5, "e":Ljava/lang/Exception;
    const-string v4, "BluetoothGatt"

    const-string v6, ""

    invoke-static {v4, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1612
    iget-object v6, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1613
    :try_start_65
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1614
    monitor-exit v6

    .line 1615
    return v1

    .line 1614
    :catchall_6d
    move-exception v1

    monitor-exit v6
    :try_end_6f
    .catchall {:try_start_65 .. :try_end_6f} :catchall_6d

    throw v1

    .line 1603
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v4
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v1

    .line 1589
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v2    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_73
    :goto_73
    return v1
.end method

.method public whitelist readPhy()V
    .registers 6

    .line 1234
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1235
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/bluetooth/IBluetoothGatt;->clientReadPhy(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1236
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_21
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_1f} :catch_21

    .line 1239
    nop

    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_29

    .line 1237
    :catch_21
    move-exception v0

    .line 1238
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1240
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_29
    return-void
.end method

.method public whitelist readRemoteRssi()Z
    .registers 8

    .line 1904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readRssi() - device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGatt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v0, :cond_52

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_29

    goto :goto_52

    .line 1908
    :cond_29
    :try_start_29
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1909
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, v4, v5, v6, v0}, Landroid/bluetooth/IBluetoothGatt;->readRemoteRssi(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1910
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_48} :catch_4b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_29 .. :try_end_48} :catch_4b

    .line 1914
    nop

    .line 1916
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    const/4 v0, 0x1

    return v0

    .line 1911
    :catch_4b
    move-exception v0

    .line 1912
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1913
    return v2

    .line 1905
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_52
    :goto_52
    return v2
.end method

.method public greylist-max-o readUsingCharacteristicUuid(Ljava/util/UUID;II)Z
    .registers 16
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "startHandle"    # I
    .param p3, "endHandle"    # I

    .line 1427
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_63

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_a

    goto :goto_63

    .line 1429
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1430
    :try_start_d
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_17

    monitor-exit v0

    return v1

    .line 1431
    :cond_17
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1432
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_60

    .line 1435
    :try_start_1f
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1436
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/ParcelUuid;

    invoke-direct {v6, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v9, 0x0

    iget-object v10, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    move v7, p2

    move v8, p3

    move-object v11, v0

    invoke-interface/range {v3 .. v11}, Landroid/bluetooth/IBluetoothGatt;->readUsingCharacteristicUuid(ILjava/lang/String;Landroid/os/ParcelUuid;IIILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1439
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_47} :catch_49
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1f .. :try_end_47} :catch_49

    .line 1446
    nop

    .line 1448
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    return v2

    .line 1440
    :catch_49
    move-exception v0

    move-object v2, v0

    .line 1441
    .local v2, "e":Ljava/lang/Exception;
    const-string v0, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1442
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1443
    :try_start_55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1444
    monitor-exit v3

    .line 1445
    return v1

    .line 1444
    :catchall_5d
    move-exception v0

    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_55 .. :try_end_5f} :catchall_5d

    throw v0

    .line 1432
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_60
    move-exception v1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v1

    .line 1427
    :cond_63
    :goto_63
    return v1
.end method

.method public greylist refresh()Z
    .registers 8

    .line 1877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refresh() - device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGatt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v0, :cond_52

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_29

    goto :goto_52

    .line 1881
    :cond_29
    :try_start_29
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1882
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, v4, v5, v6, v0}, Landroid/bluetooth/IBluetoothGatt;->refreshDevice(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1883
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_48} :catch_4b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_29 .. :try_end_48} :catch_4b

    .line 1887
    nop

    .line 1889
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    const/4 v0, 0x1

    return v0

    .line 1884
    :catch_4b
    move-exception v0

    .line 1885
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1886
    return v2

    .line 1878
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_52
    :goto_52
    return v2
.end method

.method public whitelist requestConnectionPriority(I)Z
    .registers 11
    .param p1, "connectionPriority"    # I

    .line 1967
    if-ltz p1, :cond_54

    const/4 v0, 0x2

    if-gt p1, v0, :cond_54

    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestConnectionPriority() - params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGatt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v0, :cond_53

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_28

    goto :goto_53

    .line 1976
    :cond_28
    :try_start_28
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1977
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    move v6, p1

    move-object v8, v0

    invoke-interface/range {v3 .. v8}, Landroid/bluetooth/IBluetoothGatt;->connectionParameterUpdate(ILjava/lang/String;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1979
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_49} :catch_4c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_28 .. :try_end_49} :catch_4c

    .line 1983
    nop

    .line 1985
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    const/4 v0, 0x1

    return v0

    .line 1980
    :catch_4c
    move-exception v0

    .line 1981
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1982
    return v2

    .line 1973
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_53
    :goto_53
    return v2

    .line 1969
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionPriority not within valid range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o requestLeConnectionUpdate(IIIIII)Z
    .registers 25
    .param p1, "minConnectionInterval"    # I
    .param p2, "maxConnectionInterval"    # I
    .param p3, "slaveLatency"    # I
    .param p4, "supervisionTimeout"    # I
    .param p5, "minConnectionEventLen"    # I
    .param p6, "maxConnectionEventLen"    # I

    .line 2002
    move-object/from16 v1, p0

    move/from16 v13, p1

    move/from16 v14, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestLeConnectionUpdate() - min=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-double v3, v13

    const-wide/high16 v5, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "msec, max=("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-double v2, v14

    mul-double/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "msec, latency="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, p3

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", timeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v12, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "msec, min_ce="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v11, p5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", max_ce="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v10, p6

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "BluetoothGatt"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/16 v16, 0x0

    if-eqz v0, :cond_bd

    iget v0, v1, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_7f

    goto :goto_bd

    .line 2012
    :cond_7f
    :try_start_7f
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 2013
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v2, v1, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, v1, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v4, v1, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v1, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_8f} :catch_b5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7f .. :try_end_8f} :catch_b5

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v17, v8

    move/from16 v8, p4

    move-object v1, v9

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, v17

    move-object v12, v0

    :try_start_a1
    invoke-interface/range {v2 .. v12}, Landroid/bluetooth/IBluetoothGatt;->leConnectionUpdate(ILjava/lang/String;IIIIIILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2018
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_b0} :catch_b3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a1 .. :try_end_b0} :catch_b3

    .line 2022
    nop

    .line 2024
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    const/4 v0, 0x1

    return v0

    .line 2019
    :catch_b3
    move-exception v0

    goto :goto_b7

    :catch_b5
    move-exception v0

    move-object v1, v9

    .line 2020
    .local v0, "e":Ljava/lang/Exception;
    :goto_b7
    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2021
    return v16

    .line 2009
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_bd
    :goto_bd
    return v16
.end method

.method public whitelist requestMtu(I)Z
    .registers 11
    .param p1, "mtu"    # I

    .line 1936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configureMTU() - device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mtu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGatt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v0, :cond_5d

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_32

    goto :goto_5d

    .line 1942
    :cond_32
    :try_start_32
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1943
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    move v6, p1

    move-object v8, v0

    invoke-interface/range {v3 .. v8}, Landroid/bluetooth/IBluetoothGatt;->configureMTU(ILjava/lang/String;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1944
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_53} :catch_56
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_32 .. :try_end_53} :catch_56

    .line 1948
    nop

    .line 1950
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    const/4 v0, 0x1

    return v0

    .line 1945
    :catch_56
    move-exception v0

    .line 1946
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1947
    return v2

    .line 1939
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5d
    :goto_5d
    return v2
.end method

.method public blacklist requestSubrateMode(I)Z
    .registers 8
    .param p1, "subrateMode"    # I

    .line 2042
    if-ltz p1, :cond_3e

    const/4 v0, 0x2

    if-gt p1, v0, :cond_3e

    .line 2047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestsubrateMode() - params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGatt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v3, :cond_28

    goto :goto_3d

    .line 2051
    :cond_28
    :try_start_28
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2052
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2051
    invoke-interface {v0, v3, v4, p1, v5}, Landroid/bluetooth/IBluetoothGatt;->subrateModeRequest(ILjava/lang/String;ILandroid/content/AttributionSource;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_33} :catch_36

    .line 2056
    nop

    .line 2058
    const/4 v0, 0x1

    return v0

    .line 2053
    :catch_36
    move-exception v0

    .line 2054
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2055
    return v2

    .line 2048
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3d
    :goto_3d
    return v2

    .line 2044
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Subrate Mode not within valid range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .registers 15
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "enable"    # Z

    .line 1843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCharacteristicNotification() - uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGatt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v0, :cond_6c

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_31

    goto :goto_6c

    .line 1848
    :cond_31
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 1849
    .local v0, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v0, :cond_38

    return v2

    .line 1851
    :cond_38
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 1852
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v3, :cond_3f

    return v2

    .line 1855
    :cond_3f
    :try_start_3f
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1856
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v6, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 1857
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v8

    iget-object v10, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1856
    move v9, p2

    move-object v11, v4

    invoke-interface/range {v5 .. v11}, Landroid/bluetooth/IBluetoothGatt;->registerForNotification(ILjava/lang/String;IZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1858
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_62} :catch_65
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3f .. :try_end_62} :catch_65

    .line 1862
    nop

    .line 1864
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    const/4 v1, 0x1

    return v1

    .line 1859
    :catch_65
    move-exception v4

    .line 1860
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, ""

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1861
    return v2

    .line 1846
    .end local v0    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6c
    :goto_6c
    return v2
.end method

.method public whitelist setPreferredPhy(III)V
    .registers 13
    .param p1, "txPhy"    # I
    .param p2, "rxPhy"    # I
    .param p3, "phyOptions"    # I

    .line 1217
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1218
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v8, v0

    invoke-interface/range {v1 .. v8}, Landroid/bluetooth/IBluetoothGatt;->clientSetPreferredPhy(ILjava/lang/String;IIILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1220
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_25
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_23} :catch_25

    .line 1223
    nop

    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_2d

    .line 1221
    :catch_25
    move-exception v0

    .line 1222
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1224
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2d
    return-void
.end method

.method public whitelist writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[BI)I
    .registers 23
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "value"    # [B
    .param p3, "writeType"    # I

    .line 1508
    move-object/from16 v1, p0

    if-eqz p1, :cond_f0

    .line 1511
    if-eqz p2, :cond_e7

    .line 1515
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_19

    .line 1516
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_19

    .line 1518
    const/16 v0, 0xc8

    return v0

    .line 1520
    :cond_19
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/16 v11, 0x9

    if-eqz v0, :cond_e6

    iget v0, v1, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_25

    goto/16 :goto_e6

    .line 1524
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v12

    .line 1525
    .local v12, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v12, :cond_de

    .line 1529
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v13

    .line 1530
    .local v13, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v13, :cond_d6

    .line 1534
    iget-object v2, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1535
    :try_start_34
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v14, 0xc9

    if-eqz v0, :cond_40

    .line 1536
    monitor-exit v2

    return v14

    .line 1538
    :cond_40
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1539
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_34 .. :try_end_48} :catchall_d3

    .line 1541
    const v0, 0x7fffffff

    .line 1543
    .local v0, "requestStatus":I
    const/4 v2, 0x0

    move v15, v0

    move v10, v2

    .end local v0    # "requestStatus":I
    .local v10, "i":I
    .local v15, "requestStatus":I
    :goto_4e
    const/4 v0, 0x5

    if-ge v10, v0, :cond_cf

    .line 1544
    const/16 v16, 0x0

    :try_start_53
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    move-object v9, v0

    .line 1545
    .local v9, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, v1, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1546
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v5

    const/4 v7, 0x0

    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1545
    move/from16 v6, p3

    move-object/from16 v8, p2

    move-object/from16 v17, v9

    .end local v9    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    .local v17, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    move-object v9, v0

    move/from16 v18, v10

    .end local v10    # "i":I
    .local v18, "i":I
    move-object/from16 v10, v17

    invoke-interface/range {v2 .. v10}, Landroid/bluetooth/IBluetoothGatt;->writeCharacteristic(ILjava/lang/String;III[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1548
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v0

    move-object/from16 v2, v17

    .end local v17    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    invoke-virtual {v2, v0}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v0

    .line 1549
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_8d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_53 .. :try_end_8d} :catch_b7
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_8d} :catch_9b

    move v15, v0

    .line 1550
    if-eq v15, v14, :cond_91

    .line 1551
    goto :goto_d1

    .line 1554
    :cond_91
    const-wide/16 v3, 0xa

    :try_start_93
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_96
    .catch Ljava/lang/InterruptedException; {:try_start_93 .. :try_end_96} :catch_97
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_93 .. :try_end_96} :catch_b7
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_96} :catch_9b

    .line 1556
    goto :goto_98

    .line 1555
    :catch_97
    move-exception v0

    .line 1543
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :goto_98
    add-int/lit8 v10, v18, 0x1

    .end local v18    # "i":I
    .restart local v10    # "i":I
    goto :goto_4e

    .line 1563
    .end local v10    # "i":I
    :catch_9b
    move-exception v0

    move v2, v15

    .end local v15    # "requestStatus":I
    .local v2, "requestStatus":I
    move-object v3, v0

    .line 1564
    .local v3, "e":Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    const-string v4, ""

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1565
    iget-object v4, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1566
    :try_start_a8
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1567
    monitor-exit v4
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_b4

    .line 1568
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1567
    :catchall_b4
    move-exception v0

    :try_start_b5
    monitor-exit v4
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw v0

    .line 1558
    .end local v2    # "requestStatus":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v15    # "requestStatus":I
    :catch_b7
    move-exception v0

    move v2, v15

    .end local v15    # "requestStatus":I
    .restart local v2    # "requestStatus":I
    move-object v3, v0

    .line 1559
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    const-string v0, "BluetoothGatt"

    const-string v4, ""

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1560
    iget-object v4, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1561
    :try_start_c4
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1562
    monitor-exit v4

    .line 1569
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_d2

    .line 1562
    .restart local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_cc
    move-exception v0

    monitor-exit v4
    :try_end_ce
    .catchall {:try_start_c4 .. :try_end_ce} :catchall_cc

    throw v0

    .line 1543
    .end local v2    # "requestStatus":I
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    .restart local v10    # "i":I
    .restart local v15    # "requestStatus":I
    :cond_cf
    move/from16 v18, v10

    .line 1569
    .end local v10    # "i":I
    :goto_d1
    move v2, v15

    .line 1571
    .end local v15    # "requestStatus":I
    .restart local v2    # "requestStatus":I
    :goto_d2
    return v2

    .line 1539
    .end local v2    # "requestStatus":I
    :catchall_d3
    move-exception v0

    :try_start_d4
    monitor-exit v2
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    throw v0

    .line 1531
    :cond_d6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Service must have a non-null device"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1526
    .end local v13    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_de
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Characteristic must have a non-null service"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1521
    .end local v12    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_e6
    :goto_e6
    return v11

    .line 1512
    :cond_e7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "value must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1509
    :cond_f0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "characteristic must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 5
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1472
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    .line 1473
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v2

    .line 1472
    invoke-virtual {p0, p1, v1, v2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[BI)I

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_11

    if-nez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 1474
    :catch_11
    move-exception v1

    .line 1475
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public whitelist writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)I
    .registers 18
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "value"    # [B

    .line 1663
    move-object v1, p0

    if-eqz p1, :cond_c5

    .line 1666
    if-eqz p2, :cond_bc

    .line 1670
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/16 v10, 0x9

    if-eqz v0, :cond_bb

    iget v0, v1, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_11

    goto/16 :goto_bb

    .line 1674
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v11

    .line 1675
    .local v11, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v11, :cond_b3

    .line 1679
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v12

    .line 1680
    .local v12, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v12, :cond_ab

    .line 1684
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v13

    .line 1685
    .local v13, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v13, :cond_a3

    .line 1689
    iget-object v2, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1690
    :try_start_26
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_32

    const/16 v0, 0xc9

    monitor-exit v2

    return v0

    .line 1691
    :cond_32
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1692
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_a0

    .line 1695
    const/4 v14, 0x0

    :try_start_3b
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1696
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, v1, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1697
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v5

    const/4 v6, 0x0

    iget-object v8, v1, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1696
    move-object/from16 v7, p2

    move-object v9, v0

    invoke-interface/range {v2 .. v9}, Landroid/bluetooth/IBluetoothGatt;->writeDescriptor(ILjava/lang/String;II[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1699
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    .line 1700
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_6a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3b .. :try_end_6a} :catch_85
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_6a} :catch_6b

    .line 1699
    return v2

    .line 1706
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_6b
    move-exception v0

    move-object v2, v0

    .line 1707
    .local v2, "e":Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1708
    iget-object v3, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1709
    :try_start_77
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1710
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_82

    .line 1711
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_99

    .line 1710
    :catchall_82
    move-exception v0

    :try_start_83
    monitor-exit v3
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v0

    .line 1701
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_85
    move-exception v0

    move-object v3, v0

    .line 1702
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    const-string v0, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1703
    iget-object v4, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1704
    :try_start_91
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1705
    monitor-exit v4

    .line 1712
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    nop

    .line 1713
    :goto_99
    const v0, 0x7fffffff

    return v0

    .line 1705
    .restart local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_9d
    move-exception v0

    monitor-exit v4
    :try_end_9f
    .catchall {:try_start_91 .. :try_end_9f} :catchall_9d

    throw v0

    .line 1692
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_a0
    move-exception v0

    :try_start_a1
    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    throw v0

    .line 1686
    :cond_a3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Service must have a non-null device"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1681
    .end local v13    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_ab
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Characteristic must have a non-null service"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1676
    .end local v12    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_b3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Descriptor must have a non-null characteristic"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1671
    .end local v11    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_bb
    :goto_bb
    return v10

    .line 1667
    :cond_bc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "value must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1664
    :cond_c5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "descriptor must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .registers 4
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1641
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)I

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_d

    if-nez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    .line 1643
    :catch_d
    move-exception v1

    .line 1644
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
