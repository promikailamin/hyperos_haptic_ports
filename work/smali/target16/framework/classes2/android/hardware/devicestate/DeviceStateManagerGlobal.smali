.class public final Landroid/hardware/devicestate/DeviceStateManagerGlobal;
.super Ljava/lang/Object;
.source "DeviceStateManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;,
        Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;,
        Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "DeviceStateManagerGlobal"

.field private static blacklist sInstance:Landroid/hardware/devicestate/DeviceStateManagerGlobal;


# instance fields
.field private blacklist mCallback:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;

.field private final blacklist mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

.field private blacklist mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mRequests:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhandleDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/hardware/devicestate/DeviceStateInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->handleDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRequestActive(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->handleRequestActive(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRequestCanceled(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->handleRequestCanceled(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/devicestate/IDeviceStateManager;)V
    .registers 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallbacks:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    .line 92
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    .line 93
    invoke-direct {p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->registerCallbackLocked()V

    .line 94
    return-void
.end method

.method private blacklist findCallbackLocked(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)I
    .registers 4

    .line 299
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 300
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

    invoke-static {v1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->-$$Nest$fgetmDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;)Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 301
    return v0

    .line 299
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 304
    :cond_1f
    const/4 p1, -0x1

    return p1
.end method

.method private blacklist findRequestTokenLocked(Landroid/hardware/devicestate/DeviceStateRequest;)Landroid/os/IBinder;
    .registers 4

    .line 310
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 311
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;

    invoke-static {v1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->-$$Nest$fgetmRequest(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)Landroid/hardware/devicestate/DeviceStateRequest;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 312
    iget-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1

    .line 310
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 315
    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public static blacklist getInstance()Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    .registers 3

    .line 61
    const-class v0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    monitor-enter v0

    .line 62
    :try_start_3
    sget-object v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->sInstance:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    if-nez v1, :cond_1a

    .line 63
    const-string v1, "device_state"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_1a

    .line 65
    new-instance v2, Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    .line 66
    invoke-static {v1}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/devicestate/IDeviceStateManager;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;-><init>(Landroid/hardware/devicestate/IDeviceStateManager;)V

    sput-object v2, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->sInstance:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    .line 69
    :cond_1a
    sget-object v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->sInstance:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    monitor-exit v0

    return-object v1

    .line 70
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private blacklist handleDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V
    .registers 8

    .line 322
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_3
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    .line 324
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    .line 325
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 326
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_4f

    .line 328
    if-nez v1, :cond_13

    const/4 v0, -0x1

    goto :goto_17

    :cond_13
    invoke-virtual {p1, v1}, Landroid/hardware/devicestate/DeviceStateInfo;->diff(Landroid/hardware/devicestate/DeviceStateInfo;)I

    move-result v0

    .line 329
    :goto_17
    and-int/lit8 v1, v0, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_35

    .line 330
    move v1, v3

    :goto_1d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_35

    .line 331
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

    iget-object v5, p1, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    .line 332
    invoke-static {v5}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    .line 331
    invoke-virtual {v4, v5}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->notifySupportedDeviceStatesChanged(Ljava/util/List;)V

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 335
    :cond_35
    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_4e

    .line 336
    nop

    :goto_3a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4e

    .line 337
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

    iget-object v1, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0, v1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->notifyDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V

    .line 336
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 340
    :cond_4e
    return-void

    .line 326
    :catchall_4f
    move-exception p1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method private blacklist handleRequestActive(Landroid/os/IBinder;)V
    .registers 4

    .line 348
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_3
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;

    .line 350
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    .line 351
    if-eqz p1, :cond_11

    .line 352
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->notifyRequestActive()V

    .line 354
    :cond_11
    return-void

    .line 350
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method private blacklist handleRequestCanceled(Landroid/os/IBinder;)V
    .registers 4

    .line 362
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_3
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;

    .line 364
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    .line 365
    if-eqz p1, :cond_11

    .line 366
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->notifyRequestCanceled()V

    .line 368
    :cond_11
    return-void

    .line 364
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method private blacklist registerCallbackLocked()V
    .registers 5

    .line 287
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/hardware/devicestate/DeviceStateManagerGlobal-IA;)V

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallback:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;

    .line 289
    :try_start_8
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_1b

    .line 290
    :try_start_b
    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallback:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;

    invoke-interface {v2, v3}, Landroid/hardware/devicestate/IDeviceStateManager;->registerCallback(Landroid/hardware/devicestate/IDeviceStateManagerCallback;)Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    .line 291
    monitor-exit v0

    .line 295
    nop

    .line 296
    return-void

    .line 291
    :catchall_18
    move-exception v2

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    :try_start_1a
    throw v2
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1b} :catch_1b

    .line 292
    :catch_1b
    move-exception v0

    .line 293
    iput-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallback:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;

    .line 294
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public blacklist cancelBaseStateOverride()V
    .registers 3

    .line 215
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    invoke-interface {v1}, Landroid/hardware/devicestate/IDeviceStateManager;->cancelBaseStateOverride()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_d
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    .line 220
    nop

    .line 221
    :try_start_9
    monitor-exit v0

    .line 222
    return-void

    .line 221
    :catchall_b
    move-exception v1

    goto :goto_13

    .line 218
    :catch_d
    move-exception v1

    .line 219
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 221
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_b

    throw v1
.end method

.method public blacklist cancelStateRequest()V
    .registers 3

    .line 165
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_3
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    invoke-interface {v1}, Landroid/hardware/devicestate/IDeviceStateManager;->cancelStateRequest()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_d
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    .line 170
    nop

    .line 171
    :try_start_9
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_b
    move-exception v1

    goto :goto_13

    .line 168
    :catch_d
    move-exception v1

    .line 169
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 171
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_b

    throw v1
.end method

.method public blacklist getSupportedDeviceStates()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_3
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    if-eqz v1, :cond_a

    .line 108
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1f

    goto :goto_11

    .line 113
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    invoke-interface {v1}, Landroid/hardware/devicestate/IDeviceStateManager;->getDeviceStateInfo()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_19
    .catchall {:try_start_a .. :try_end_10} :catchall_1f

    .line 116
    nop

    .line 119
    :goto_11
    :try_start_11
    iget-object v1, v1, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 114
    :catch_19
    move-exception v1

    .line 115
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 120
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public blacklist onStateRequestOverlayDismissed(Z)V
    .registers 3

    .line 279
    :try_start_0
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    invoke-interface {v0, p1}, Landroid/hardware/devicestate/IDeviceStateManager;->onStateRequestOverlayDismissed(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 282
    nop

    .line 283
    return-void

    .line 280
    :catch_7
    move-exception p1

    .line 281
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist registerDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;Ljava/util/concurrent/Executor;)V
    .registers 6

    .line 232
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->findCallbackLocked(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)I

    move-result v1

    .line 234
    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    .line 236
    monitor-exit v0

    return-void

    .line 241
    :cond_c
    new-instance v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

    invoke-direct {v1, p1, p2}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;-><init>(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;Ljava/util/concurrent/Executor;)V

    .line 243
    iget-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    if-eqz p1, :cond_2c

    .line 246
    iget-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    iget-object p1, p1, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    .line 247
    invoke-static {p1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 246
    invoke-virtual {v1, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->notifySupportedDeviceStatesChanged(Ljava/util/List;)V

    .line 248
    iget-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    iget-object p1, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->notifyDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V

    .line 250
    :cond_2c
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public blacklist requestBaseStateOverride(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V
    .registers 6

    .line 184
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;

    invoke-direct {v0, p1, p3, p2}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;-><init>(Landroid/hardware/devicestate/DeviceStateRequest;Landroid/hardware/devicestate/DeviceStateRequest$Callback;Ljava/util/concurrent/Executor;)V

    .line 186
    iget-object p2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 187
    :try_start_8
    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->findRequestTokenLocked(Landroid/hardware/devicestate/DeviceStateRequest;)Landroid/os/IBinder;

    move-result-object p3

    if-eqz p3, :cond_10

    .line 189
    monitor-exit p2

    return-void

    .line 194
    :cond_10
    new-instance p3, Landroid/os/Binder;

    invoke-direct {p3}, Landroid/os/Binder;-><init>()V

    .line 195
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_35

    .line 198
    :try_start_1a
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateRequest;->getState()I

    move-result v1

    .line 199
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateRequest;->getFlags()I

    move-result p1

    .line 198
    invoke-interface {v0, p3, v1, p1}, Landroid/hardware/devicestate/IDeviceStateManager;->requestBaseStateOverride(Landroid/os/IBinder;II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_2a
    .catchall {:try_start_1a .. :try_end_27} :catchall_35

    .line 203
    nop

    .line 204
    :try_start_28
    monitor-exit p2

    .line 205
    return-void

    .line 200
    :catch_2a
    move-exception p1

    .line 201
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 204
    :catchall_35
    move-exception p1

    monitor-exit p2
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public blacklist requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V
    .registers 6

    .line 134
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;

    invoke-direct {v0, p1, p3, p2}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;-><init>(Landroid/hardware/devicestate/DeviceStateRequest;Landroid/hardware/devicestate/DeviceStateRequest$Callback;Ljava/util/concurrent/Executor;)V

    .line 136
    iget-object p2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 137
    :try_start_8
    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->findRequestTokenLocked(Landroid/hardware/devicestate/DeviceStateRequest;)Landroid/os/IBinder;

    move-result-object p3

    if-eqz p3, :cond_10

    .line 139
    monitor-exit p2

    return-void

    .line 144
    :cond_10
    new-instance p3, Landroid/os/Binder;

    invoke-direct {p3}, Landroid/os/Binder;-><init>()V

    .line 145
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_35

    .line 148
    :try_start_1a
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateRequest;->getState()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateRequest;->getFlags()I

    move-result p1

    invoke-interface {v0, p3, v1, p1}, Landroid/hardware/devicestate/IDeviceStateManager;->requestState(Landroid/os/IBinder;II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_2a
    .catchall {:try_start_1a .. :try_end_27} :catchall_35

    .line 152
    nop

    .line 153
    :try_start_28
    monitor-exit p2

    .line 154
    return-void

    .line 149
    :catch_2a
    move-exception p1

    .line 150
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 153
    :catchall_35
    move-exception p1

    monitor-exit p2
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public blacklist unregisterDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    .registers 4

    .line 261
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->findCallbackLocked(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)I

    move-result p1

    .line 263
    const/4 v1, -0x1

    if-eq p1, v1, :cond_f

    .line 264
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 266
    :cond_f
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method
